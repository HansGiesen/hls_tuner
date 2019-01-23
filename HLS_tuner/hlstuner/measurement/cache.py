#!/usr/bin/env python
#
# Cache for tuning results
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Import used objects.
import os
from opentuner.resultsdb.models import CompressedPickler, Result
from sqlalchemy import create_engine, Column, Float, Index, Integer, PickleType, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm.exc import NoResultFound
from sqlalchemy.orm import scoped_session, sessionmaker

#######################################################################################################################

# Retrieve the base class of all database objects.
Base = declarative_base()

class CachedResult(Base):
  """
  Class for storing one tuning result
  """

  # Name of associated SQL table for storing tuning results.
  __tablename__ = "results"

  id            = Column(Integer, primary_key = True)             # Unique number of object
  cfg           = Column(PickleType(pickler = CompressedPickler)) # Configuration
  cfg_hash      = Column(String(64))                              # Hash of configuration for quick lookup
  state         = Column(String(7))                               # Result code
  msg           = Column(String(128))                             # Human-readible result message
  presynth_time = Column(Float, default = float('inf'))           # Time needed for presynthesis
  synth_time    = Column(Float, default = float('inf'))           # Time needed for synthesis
  impl_time     = Column(Float, default = float('inf'))           # Time needed for implementation
  run_time      = Column(Float, default = float('inf'))           # Time needed for running application
  accuracy      = Column(Float)                                   # Accuracy of application
  energy        = Column(Float)                                   # Energy of application
  size          = Column(Float)                                   # Size of application
  confidence    = Column(Float)                                   # Confidence of result

# Maintain an index to accelerate searches for results.
Index('ix_result_hash', CachedResult.cfg_hash)

#######################################################################################################################

class ResultsCache:
  """
  Class for storing tuning results
  """

  def __init__(self, manipulator, db_file):
    """
    Create a new cache or open an existing cache.
    """

    # Keep track of the manipulator, which we need to hash configurations.
    self.manipulator = manipulator

    # Extract the directory name from the database name.
    db_dir = os.path.dirname(db_file)

    # Create the directory if it does not exist.
    if db_dir != "" and not os.path.isdir(db_dir):
      os.makedirs(db_dir)

    # Open the database file with the old results.
    engine = create_engine('sqlite:///' + db_file)

    # Create the database if it does not exist yet.
    Base.metadata.create_all(engine)

    # Create a new session.  With scoped_session, we don't need to worry about using the database from multiple
    # threads.
    self.Session = scoped_session(sessionmaker(bind = engine))


  def add(self, cfg, result):
    """
    Add a result to the cache.
    """

    # Copy the relevant fields from the Result object into the CachedResult object.  Unfortunately, we cannot reuse the
    # Result object easily because it is already associated with another database.
    new_result = CachedResult(cfg = cfg)
    for column in CachedResult.__table__.columns.keys():
      if column not in ["id", "cfg", "cfg_hash"]:
        setattr(new_result, column, getattr(result, column))
    new_result.cfg_hash = self._get_hash(cfg)

    # Inform the database engine that we have a new result.
    self.Session.add(new_result)

    # Commit the result to the database.
    self.Session.commit()


  def lookup(self, cfg):
    """
    Look up a configuration in the database and return the associated result if it exists, and None otherwise.
    """

    # Generate a hash for the configuration.
    hash = self._get_hash(cfg)

    # Query the database for the configuration.
    try:
      result = self.Session.query(CachedResult).filter_by(cfg_hash = hash).one()
    except NoResultFound:
      return None
    finally:
      # Closing the connection appears necessary to avoid warnings that database objects are created in one thread and
      # used in another.       
      self.Session.remove()

    # Copy the relevant fields from the CacheResult object to a new Result object.
    new_result = Result()
    for column in CachedResult.__table__.columns.keys():
      if column not in ["id", "cfg", "cfg_hash"]:
        setattr(new_result, column, getattr(result, column))

    # Return the Result object.
    return new_result


  def _get_hash(self, cfg):
    """
    Compute the hash of a configuration.
    """
    self.manipulator.normalize(cfg)
    return self.manipulator.hash_config(cfg)

