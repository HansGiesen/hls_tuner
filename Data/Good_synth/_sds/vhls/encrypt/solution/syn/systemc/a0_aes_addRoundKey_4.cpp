#include "a0_aes_addRoundKey.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void a0_aes_addRoundKey::thread_tmp_1485_fu_2045_p1() {
    tmp_1485_fu_2045_p1 = esl_zext<256,9>(tmp_1483_reg_2794.read());
}

void a0_aes_addRoundKey::thread_tmp_1487_fu_2048_p2() {
    tmp_1487_fu_2048_p2 = (!tmp_1485_fu_2045_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1485_fu_2045_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1488_fu_2054_p2() {
    tmp_1488_fu_2054_p2 = (tmp_1486_reg_3183.read() & tmp_1487_fu_2048_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1489_fu_2059_p1() {
    tmp_1489_fu_2059_p1 = tmp_1488_fu_2054_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1490_fu_938_p2() {
    tmp_1490_fu_938_p2 = (!tmp_236_fu_925_p3.read().is_01() || !tmp_237_fu_932_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_236_fu_925_p3.read()) > sc_biguint<8>(tmp_237_fu_932_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1491_fu_1283_p1() {
    tmp_1491_fu_1283_p1 = esl_zext<9,8>(tmp_236_reg_2799.read());
}

void a0_aes_addRoundKey::thread_tmp_1492_fu_1286_p1() {
    tmp_1492_fu_1286_p1 = esl_zext<9,8>(tmp_237_reg_2804.read());
}

void a0_aes_addRoundKey::thread_tmp_1493_fu_561_p4() {
    tmp_1493_fu_561_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1494_fu_1289_p2() {
    tmp_1494_fu_1289_p2 = (!tmp_1491_fu_1283_p1.read().is_01() || !tmp_1492_fu_1286_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1491_fu_1283_p1.read()) - sc_biguint<9>(tmp_1492_fu_1286_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1495_fu_1295_p2() {
    tmp_1495_fu_1295_p2 = (tmp_1491_fu_1283_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1496_fu_1301_p2() {
    tmp_1496_fu_1301_p2 = (!tmp_1492_fu_1286_p1.read().is_01() || !tmp_1491_fu_1283_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1492_fu_1286_p1.read()) - sc_biguint<9>(tmp_1491_fu_1283_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1497_fu_1307_p3() {
    tmp_1497_fu_1307_p3 = (!tmp_1490_reg_2809.read()[0].is_01())? sc_lv<9>(): ((tmp_1490_reg_2809.read()[0].to_bool())? tmp_1494_fu_1289_p2.read(): tmp_1496_fu_1301_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1498_fu_944_p3() {
    tmp_1498_fu_944_p3 = (!tmp_1490_fu_938_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1490_fu_938_p2.read()[0].to_bool())? tmp_1493_reg_2624.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1499_fu_1314_p3() {
    tmp_1499_fu_1314_p3 = (!tmp_1490_reg_2809.read()[0].is_01())? sc_lv<9>(): ((tmp_1490_reg_2809.read()[0].to_bool())? tmp_1495_fu_1295_p2.read(): tmp_1491_fu_1283_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1500_fu_1321_p2() {
    tmp_1500_fu_1321_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1497_fu_1307_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1497_fu_1307_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1502_fu_2079_p1() {
    tmp_1502_fu_2079_p1 = esl_zext<256,9>(tmp_1500_reg_3103.read());
}

void a0_aes_addRoundKey::thread_tmp_1504_fu_2082_p2() {
    tmp_1504_fu_2082_p2 = (!tmp_1502_fu_2079_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1502_fu_2079_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1505_fu_2088_p2() {
    tmp_1505_fu_2088_p2 = (tmp_1503_reg_3203.read() & tmp_1504_fu_2082_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1506_fu_2093_p1() {
    tmp_1506_fu_2093_p1 = tmp_1505_fu_2088_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1507_fu_963_p2() {
    tmp_1507_fu_963_p2 = (!tmp_239_fu_950_p3.read().is_01() || !tmp_240_fu_957_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_239_fu_950_p3.read()) > sc_biguint<8>(tmp_240_fu_957_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1508_fu_1335_p1() {
    tmp_1508_fu_1335_p1 = esl_zext<9,8>(tmp_239_reg_2820.read());
}

void a0_aes_addRoundKey::thread_tmp_1509_fu_1338_p1() {
    tmp_1509_fu_1338_p1 = esl_zext<9,8>(tmp_240_reg_2825.read());
}

void a0_aes_addRoundKey::thread_tmp_1510_fu_571_p4() {
    tmp_1510_fu_571_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1511_fu_1341_p2() {
    tmp_1511_fu_1341_p2 = (!tmp_1508_fu_1335_p1.read().is_01() || !tmp_1509_fu_1338_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1508_fu_1335_p1.read()) - sc_biguint<9>(tmp_1509_fu_1338_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1512_fu_1347_p2() {
    tmp_1512_fu_1347_p2 = (tmp_1508_fu_1335_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1513_fu_1353_p2() {
    tmp_1513_fu_1353_p2 = (!tmp_1509_fu_1338_p1.read().is_01() || !tmp_1508_fu_1335_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1509_fu_1338_p1.read()) - sc_biguint<9>(tmp_1508_fu_1335_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1514_fu_1359_p3() {
    tmp_1514_fu_1359_p3 = (!tmp_1507_reg_2830.read()[0].is_01())? sc_lv<9>(): ((tmp_1507_reg_2830.read()[0].to_bool())? tmp_1511_fu_1341_p2.read(): tmp_1513_fu_1353_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1515_fu_969_p3() {
    tmp_1515_fu_969_p3 = (!tmp_1507_fu_963_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1507_fu_963_p2.read()[0].to_bool())? tmp_1510_reg_2629.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1516_fu_1366_p3() {
    tmp_1516_fu_1366_p3 = (!tmp_1507_reg_2830.read()[0].is_01())? sc_lv<9>(): ((tmp_1507_reg_2830.read()[0].to_bool())? tmp_1512_fu_1347_p2.read(): tmp_1508_fu_1335_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1517_fu_1373_p2() {
    tmp_1517_fu_1373_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1514_fu_1359_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1514_fu_1359_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1519_fu_2113_p1() {
    tmp_1519_fu_2113_p1 = esl_zext<256,9>(tmp_1517_reg_3118.read());
}

void a0_aes_addRoundKey::thread_tmp_1521_fu_2116_p2() {
    tmp_1521_fu_2116_p2 = (!tmp_1519_fu_2113_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1519_fu_2113_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1522_fu_2122_p2() {
    tmp_1522_fu_2122_p2 = (tmp_1520_reg_3223.read() & tmp_1521_fu_2116_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1523_fu_2127_p1() {
    tmp_1523_fu_2127_p1 = tmp_1522_fu_2122_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1524_fu_988_p2() {
    tmp_1524_fu_988_p2 = (!tmp_242_fu_975_p3.read().is_01() || !tmp_243_fu_982_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_242_fu_975_p3.read()) > sc_biguint<8>(tmp_243_fu_982_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1525_fu_1387_p1() {
    tmp_1525_fu_1387_p1 = esl_zext<9,8>(tmp_242_reg_2841.read());
}

void a0_aes_addRoundKey::thread_tmp_1526_fu_1390_p1() {
    tmp_1526_fu_1390_p1 = esl_zext<9,8>(tmp_243_reg_2846.read());
}

void a0_aes_addRoundKey::thread_tmp_1527_fu_581_p4() {
    tmp_1527_fu_581_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1528_fu_1393_p2() {
    tmp_1528_fu_1393_p2 = (!tmp_1525_fu_1387_p1.read().is_01() || !tmp_1526_fu_1390_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1525_fu_1387_p1.read()) - sc_biguint<9>(tmp_1526_fu_1390_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1529_fu_1399_p2() {
    tmp_1529_fu_1399_p2 = (tmp_1525_fu_1387_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1530_fu_1405_p2() {
    tmp_1530_fu_1405_p2 = (!tmp_1526_fu_1390_p1.read().is_01() || !tmp_1525_fu_1387_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1526_fu_1390_p1.read()) - sc_biguint<9>(tmp_1525_fu_1387_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1531_fu_1411_p3() {
    tmp_1531_fu_1411_p3 = (!tmp_1524_reg_2851.read()[0].is_01())? sc_lv<9>(): ((tmp_1524_reg_2851.read()[0].to_bool())? tmp_1528_fu_1393_p2.read(): tmp_1530_fu_1405_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1532_fu_994_p3() {
    tmp_1532_fu_994_p3 = (!tmp_1524_fu_988_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1524_fu_988_p2.read()[0].to_bool())? tmp_1527_reg_2634.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1533_fu_1418_p3() {
    tmp_1533_fu_1418_p3 = (!tmp_1524_reg_2851.read()[0].is_01())? sc_lv<9>(): ((tmp_1524_reg_2851.read()[0].to_bool())? tmp_1529_fu_1399_p2.read(): tmp_1525_fu_1387_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1534_fu_1425_p2() {
    tmp_1534_fu_1425_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1531_fu_1411_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1531_fu_1411_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1536_fu_2147_p1() {
    tmp_1536_fu_2147_p1 = esl_zext<256,9>(tmp_1534_reg_3133.read());
}

void a0_aes_addRoundKey::thread_tmp_1538_fu_2150_p2() {
    tmp_1538_fu_2150_p2 = (!tmp_1536_fu_2147_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1536_fu_2147_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1539_fu_2156_p2() {
    tmp_1539_fu_2156_p2 = (tmp_1537_reg_3243.read() & tmp_1538_fu_2150_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1540_fu_2161_p1() {
    tmp_1540_fu_2161_p1 = tmp_1539_fu_2156_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1541_fu_1013_p2() {
    tmp_1541_fu_1013_p2 = (!tmp_245_fu_1000_p3.read().is_01() || !tmp_246_fu_1007_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_245_fu_1000_p3.read()) > sc_biguint<8>(tmp_246_fu_1007_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1542_fu_1439_p1() {
    tmp_1542_fu_1439_p1 = esl_zext<9,8>(tmp_245_reg_2862.read());
}

void a0_aes_addRoundKey::thread_tmp_1543_fu_1442_p1() {
    tmp_1543_fu_1442_p1 = esl_zext<9,8>(tmp_246_reg_2867.read());
}

void a0_aes_addRoundKey::thread_tmp_1544_fu_591_p4() {
    tmp_1544_fu_591_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1545_fu_1445_p2() {
    tmp_1545_fu_1445_p2 = (!tmp_1542_fu_1439_p1.read().is_01() || !tmp_1543_fu_1442_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1542_fu_1439_p1.read()) - sc_biguint<9>(tmp_1543_fu_1442_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1546_fu_1451_p2() {
    tmp_1546_fu_1451_p2 = (tmp_1542_fu_1439_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1547_fu_1457_p2() {
    tmp_1547_fu_1457_p2 = (!tmp_1543_fu_1442_p1.read().is_01() || !tmp_1542_fu_1439_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1543_fu_1442_p1.read()) - sc_biguint<9>(tmp_1542_fu_1439_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1548_fu_1463_p3() {
    tmp_1548_fu_1463_p3 = (!tmp_1541_reg_2872.read()[0].is_01())? sc_lv<9>(): ((tmp_1541_reg_2872.read()[0].to_bool())? tmp_1545_fu_1445_p2.read(): tmp_1547_fu_1457_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1549_fu_1019_p3() {
    tmp_1549_fu_1019_p3 = (!tmp_1541_fu_1013_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1541_fu_1013_p2.read()[0].to_bool())? tmp_1544_reg_2639.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1550_fu_1470_p3() {
    tmp_1550_fu_1470_p3 = (!tmp_1541_reg_2872.read()[0].is_01())? sc_lv<9>(): ((tmp_1541_reg_2872.read()[0].to_bool())? tmp_1546_fu_1451_p2.read(): tmp_1542_fu_1439_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1551_fu_1477_p2() {
    tmp_1551_fu_1477_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1548_fu_1463_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1548_fu_1463_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1553_fu_2181_p1() {
    tmp_1553_fu_2181_p1 = esl_zext<256,9>(tmp_1551_reg_3148.read());
}

void a0_aes_addRoundKey::thread_tmp_1555_fu_2184_p2() {
    tmp_1555_fu_2184_p2 = (!tmp_1553_fu_2181_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1553_fu_2181_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1556_fu_2190_p2() {
    tmp_1556_fu_2190_p2 = (tmp_1554_reg_3263.read() & tmp_1555_fu_2184_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1557_fu_2195_p1() {
    tmp_1557_fu_2195_p1 = tmp_1556_fu_2190_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1558_fu_1038_p2() {
    tmp_1558_fu_1038_p2 = (!tmp_248_fu_1025_p3.read().is_01() || !tmp_249_fu_1032_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_248_fu_1025_p3.read()) > sc_biguint<8>(tmp_249_fu_1032_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1559_fu_1491_p1() {
    tmp_1559_fu_1491_p1 = esl_zext<9,8>(tmp_248_reg_2883.read());
}

void a0_aes_addRoundKey::thread_tmp_1560_fu_1494_p1() {
    tmp_1560_fu_1494_p1 = esl_zext<9,8>(tmp_249_reg_2888.read());
}

void a0_aes_addRoundKey::thread_tmp_1561_fu_601_p4() {
    tmp_1561_fu_601_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1562_fu_1497_p2() {
    tmp_1562_fu_1497_p2 = (!tmp_1559_fu_1491_p1.read().is_01() || !tmp_1560_fu_1494_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1559_fu_1491_p1.read()) - sc_biguint<9>(tmp_1560_fu_1494_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1563_fu_1503_p2() {
    tmp_1563_fu_1503_p2 = (tmp_1559_fu_1491_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1564_fu_1509_p2() {
    tmp_1564_fu_1509_p2 = (!tmp_1560_fu_1494_p1.read().is_01() || !tmp_1559_fu_1491_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1560_fu_1494_p1.read()) - sc_biguint<9>(tmp_1559_fu_1491_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1565_fu_1515_p3() {
    tmp_1565_fu_1515_p3 = (!tmp_1558_reg_2893.read()[0].is_01())? sc_lv<9>(): ((tmp_1558_reg_2893.read()[0].to_bool())? tmp_1562_fu_1497_p2.read(): tmp_1564_fu_1509_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1566_fu_1044_p3() {
    tmp_1566_fu_1044_p3 = (!tmp_1558_fu_1038_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1558_fu_1038_p2.read()[0].to_bool())? tmp_1561_reg_2644.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1567_fu_1522_p3() {
    tmp_1567_fu_1522_p3 = (!tmp_1558_reg_2893.read()[0].is_01())? sc_lv<9>(): ((tmp_1558_reg_2893.read()[0].to_bool())? tmp_1563_fu_1503_p2.read(): tmp_1559_fu_1491_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1568_fu_1529_p2() {
    tmp_1568_fu_1529_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1565_fu_1515_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1565_fu_1515_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1570_fu_2215_p1() {
    tmp_1570_fu_2215_p1 = esl_zext<256,9>(tmp_1568_reg_3173.read());
}

void a0_aes_addRoundKey::thread_tmp_1572_fu_2218_p2() {
    tmp_1572_fu_2218_p2 = (!tmp_1570_fu_2215_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1570_fu_2215_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1573_fu_2224_p2() {
    tmp_1573_fu_2224_p2 = (tmp_1571_reg_3283.read() & tmp_1572_fu_2218_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1574_fu_2229_p1() {
    tmp_1574_fu_2229_p1 = tmp_1573_fu_2224_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1575_fu_1063_p2() {
    tmp_1575_fu_1063_p2 = (!tmp_251_fu_1050_p3.read().is_01() || !tmp_252_fu_1057_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_251_fu_1050_p3.read()) > sc_biguint<8>(tmp_252_fu_1057_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1576_fu_1566_p1() {
    tmp_1576_fu_1566_p1 = esl_zext<9,8>(tmp_251_reg_2904.read());
}

void a0_aes_addRoundKey::thread_tmp_1577_fu_1569_p1() {
    tmp_1577_fu_1569_p1 = esl_zext<9,8>(tmp_252_reg_2909.read());
}

void a0_aes_addRoundKey::thread_tmp_1578_fu_611_p4() {
    tmp_1578_fu_611_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1579_fu_1572_p2() {
    tmp_1579_fu_1572_p2 = (!tmp_1576_fu_1566_p1.read().is_01() || !tmp_1577_fu_1569_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1576_fu_1566_p1.read()) - sc_biguint<9>(tmp_1577_fu_1569_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1580_fu_1578_p2() {
    tmp_1580_fu_1578_p2 = (tmp_1576_fu_1566_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1581_fu_1584_p2() {
    tmp_1581_fu_1584_p2 = (!tmp_1577_fu_1569_p1.read().is_01() || !tmp_1576_fu_1566_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1577_fu_1569_p1.read()) - sc_biguint<9>(tmp_1576_fu_1566_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1582_fu_1590_p3() {
    tmp_1582_fu_1590_p3 = (!tmp_1575_reg_2914.read()[0].is_01())? sc_lv<9>(): ((tmp_1575_reg_2914.read()[0].to_bool())? tmp_1579_fu_1572_p2.read(): tmp_1581_fu_1584_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1583_fu_1069_p3() {
    tmp_1583_fu_1069_p3 = (!tmp_1575_fu_1063_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1575_fu_1063_p2.read()[0].to_bool())? tmp_1578_reg_2649.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1584_fu_1597_p3() {
    tmp_1584_fu_1597_p3 = (!tmp_1575_reg_2914.read()[0].is_01())? sc_lv<9>(): ((tmp_1575_reg_2914.read()[0].to_bool())? tmp_1580_fu_1578_p2.read(): tmp_1576_fu_1566_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1585_fu_1604_p2() {
    tmp_1585_fu_1604_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1582_fu_1590_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1582_fu_1590_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1587_fu_2249_p1() {
    tmp_1587_fu_2249_p1 = esl_zext<256,9>(tmp_1585_reg_3198.read());
}

void a0_aes_addRoundKey::thread_tmp_1589_fu_2252_p2() {
    tmp_1589_fu_2252_p2 = (!tmp_1587_fu_2249_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1587_fu_2249_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1590_fu_2258_p2() {
    tmp_1590_fu_2258_p2 = (tmp_1588_reg_3310.read() & tmp_1589_fu_2252_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1591_fu_2263_p1() {
    tmp_1591_fu_2263_p1 = tmp_1590_fu_2258_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1592_fu_1088_p2() {
    tmp_1592_fu_1088_p2 = (!tmp_254_fu_1075_p3.read().is_01() || !tmp_255_fu_1082_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_254_fu_1075_p3.read()) > sc_biguint<8>(tmp_255_fu_1082_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1593_fu_1618_p1() {
    tmp_1593_fu_1618_p1 = esl_zext<9,8>(tmp_254_reg_2925.read());
}

void a0_aes_addRoundKey::thread_tmp_1594_fu_1621_p1() {
    tmp_1594_fu_1621_p1 = esl_zext<9,8>(tmp_255_reg_2930.read());
}

void a0_aes_addRoundKey::thread_tmp_1595_fu_621_p4() {
    tmp_1595_fu_621_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1596_fu_1624_p2() {
    tmp_1596_fu_1624_p2 = (!tmp_1593_fu_1618_p1.read().is_01() || !tmp_1594_fu_1621_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1593_fu_1618_p1.read()) - sc_biguint<9>(tmp_1594_fu_1621_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1597_fu_1630_p2() {
    tmp_1597_fu_1630_p2 = (tmp_1593_fu_1618_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1598_fu_1636_p2() {
    tmp_1598_fu_1636_p2 = (!tmp_1594_fu_1621_p1.read().is_01() || !tmp_1593_fu_1618_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1594_fu_1621_p1.read()) - sc_biguint<9>(tmp_1593_fu_1618_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1599_fu_1642_p3() {
    tmp_1599_fu_1642_p3 = (!tmp_1592_reg_2935.read()[0].is_01())? sc_lv<9>(): ((tmp_1592_reg_2935.read()[0].to_bool())? tmp_1596_fu_1624_p2.read(): tmp_1598_fu_1636_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1600_fu_1094_p3() {
    tmp_1600_fu_1094_p3 = (!tmp_1592_fu_1088_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1592_fu_1088_p2.read()[0].to_bool())? tmp_1595_reg_2654.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1601_fu_1649_p3() {
    tmp_1601_fu_1649_p3 = (!tmp_1592_reg_2935.read()[0].is_01())? sc_lv<9>(): ((tmp_1592_reg_2935.read()[0].to_bool())? tmp_1597_fu_1630_p2.read(): tmp_1593_fu_1618_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1602_fu_1656_p2() {
    tmp_1602_fu_1656_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1599_fu_1642_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1599_fu_1642_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1604_fu_2283_p1() {
    tmp_1604_fu_2283_p1 = esl_zext<256,9>(tmp_1602_reg_3218.read());
}

void a0_aes_addRoundKey::thread_tmp_1606_fu_2286_p2() {
    tmp_1606_fu_2286_p2 = (!tmp_1604_fu_2283_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1604_fu_2283_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1607_fu_2292_p2() {
    tmp_1607_fu_2292_p2 = (tmp_1605_reg_3330.read() & tmp_1606_fu_2286_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1608_fu_2297_p1() {
    tmp_1608_fu_2297_p1 = tmp_1607_fu_2292_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1609_fu_1113_p2() {
    tmp_1609_fu_1113_p2 = (!tmp_257_fu_1100_p3.read().is_01() || !tmp_258_fu_1107_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_257_fu_1100_p3.read()) > sc_biguint<8>(tmp_258_fu_1107_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1610_fu_1670_p1() {
    tmp_1610_fu_1670_p1 = esl_zext<9,8>(tmp_257_reg_2946.read());
}

void a0_aes_addRoundKey::thread_tmp_1611_fu_1673_p1() {
    tmp_1611_fu_1673_p1 = esl_zext<9,8>(tmp_258_reg_2951.read());
}

void a0_aes_addRoundKey::thread_tmp_1612_fu_631_p4() {
    tmp_1612_fu_631_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1613_fu_1676_p2() {
    tmp_1613_fu_1676_p2 = (!tmp_1610_fu_1670_p1.read().is_01() || !tmp_1611_fu_1673_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1610_fu_1670_p1.read()) - sc_biguint<9>(tmp_1611_fu_1673_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1614_fu_1682_p2() {
    tmp_1614_fu_1682_p2 = (tmp_1610_fu_1670_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1615_fu_1688_p2() {
    tmp_1615_fu_1688_p2 = (!tmp_1611_fu_1673_p1.read().is_01() || !tmp_1610_fu_1670_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1611_fu_1673_p1.read()) - sc_biguint<9>(tmp_1610_fu_1670_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1616_fu_1694_p3() {
    tmp_1616_fu_1694_p3 = (!tmp_1609_reg_2956.read()[0].is_01())? sc_lv<9>(): ((tmp_1609_reg_2956.read()[0].to_bool())? tmp_1613_fu_1676_p2.read(): tmp_1615_fu_1688_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1617_fu_1119_p3() {
    tmp_1617_fu_1119_p3 = (!tmp_1609_fu_1113_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1609_fu_1113_p2.read()[0].to_bool())? tmp_1612_reg_2659.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1618_fu_1701_p3() {
    tmp_1618_fu_1701_p3 = (!tmp_1609_reg_2956.read()[0].is_01())? sc_lv<9>(): ((tmp_1609_reg_2956.read()[0].to_bool())? tmp_1614_fu_1682_p2.read(): tmp_1610_fu_1670_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1619_fu_1708_p2() {
    tmp_1619_fu_1708_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1616_fu_1694_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1616_fu_1694_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1621_fu_2317_p1() {
    tmp_1621_fu_2317_p1 = esl_zext<256,9>(tmp_1619_reg_3238.read());
}

void a0_aes_addRoundKey::thread_tmp_1623_fu_2320_p2() {
    tmp_1623_fu_2320_p2 = (!tmp_1621_fu_2317_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1621_fu_2317_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1624_fu_2326_p2() {
    tmp_1624_fu_2326_p2 = (tmp_1622_reg_3350.read() & tmp_1623_fu_2320_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1625_fu_2331_p1() {
    tmp_1625_fu_2331_p1 = tmp_1624_fu_2326_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1626_fu_1138_p2() {
    tmp_1626_fu_1138_p2 = (!tmp_260_fu_1125_p3.read().is_01() || !tmp_261_fu_1132_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_260_fu_1125_p3.read()) > sc_biguint<8>(tmp_261_fu_1132_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1627_fu_1722_p1() {
    tmp_1627_fu_1722_p1 = esl_zext<9,8>(tmp_260_reg_2967.read());
}

void a0_aes_addRoundKey::thread_tmp_1628_fu_1725_p1() {
    tmp_1628_fu_1725_p1 = esl_zext<9,8>(tmp_261_reg_2972.read());
}

void a0_aes_addRoundKey::thread_tmp_1629_fu_641_p4() {
    tmp_1629_fu_641_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1630_fu_1728_p2() {
    tmp_1630_fu_1728_p2 = (!tmp_1627_fu_1722_p1.read().is_01() || !tmp_1628_fu_1725_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1627_fu_1722_p1.read()) - sc_biguint<9>(tmp_1628_fu_1725_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1631_fu_1734_p2() {
    tmp_1631_fu_1734_p2 = (tmp_1627_fu_1722_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1632_fu_1740_p2() {
    tmp_1632_fu_1740_p2 = (!tmp_1628_fu_1725_p1.read().is_01() || !tmp_1627_fu_1722_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1628_fu_1725_p1.read()) - sc_biguint<9>(tmp_1627_fu_1722_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1633_fu_1746_p3() {
    tmp_1633_fu_1746_p3 = (!tmp_1626_reg_2977.read()[0].is_01())? sc_lv<9>(): ((tmp_1626_reg_2977.read()[0].to_bool())? tmp_1630_fu_1728_p2.read(): tmp_1632_fu_1740_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1634_fu_1144_p3() {
    tmp_1634_fu_1144_p3 = (!tmp_1626_fu_1138_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1626_fu_1138_p2.read()[0].to_bool())? tmp_1629_reg_2664.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1635_fu_1753_p3() {
    tmp_1635_fu_1753_p3 = (!tmp_1626_reg_2977.read()[0].is_01())? sc_lv<9>(): ((tmp_1626_reg_2977.read()[0].to_bool())? tmp_1631_fu_1734_p2.read(): tmp_1627_fu_1722_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1636_fu_1760_p2() {
    tmp_1636_fu_1760_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1633_fu_1746_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1633_fu_1746_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1638_fu_2351_p1() {
    tmp_1638_fu_2351_p1 = esl_zext<256,9>(tmp_1636_reg_3258.read());
}

void a0_aes_addRoundKey::thread_tmp_1640_fu_2354_p2() {
    tmp_1640_fu_2354_p2 = (!tmp_1638_fu_2351_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1638_fu_2351_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1641_fu_2360_p2() {
    tmp_1641_fu_2360_p2 = (tmp_1639_reg_3370.read() & tmp_1640_fu_2354_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1642_fu_2365_p1() {
    tmp_1642_fu_2365_p1 = tmp_1641_fu_2360_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1643_fu_1163_p2() {
    tmp_1643_fu_1163_p2 = (!tmp_263_fu_1150_p3.read().is_01() || !tmp_264_fu_1157_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_263_fu_1150_p3.read()) > sc_biguint<8>(tmp_264_fu_1157_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1644_fu_1774_p1() {
    tmp_1644_fu_1774_p1 = esl_zext<9,8>(tmp_263_reg_2988.read());
}

void a0_aes_addRoundKey::thread_tmp_1645_fu_1777_p1() {
    tmp_1645_fu_1777_p1 = esl_zext<9,8>(tmp_264_reg_2993.read());
}

void a0_aes_addRoundKey::thread_tmp_1646_fu_651_p4() {
    tmp_1646_fu_651_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1647_fu_1780_p2() {
    tmp_1647_fu_1780_p2 = (!tmp_1644_fu_1774_p1.read().is_01() || !tmp_1645_fu_1777_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1644_fu_1774_p1.read()) - sc_biguint<9>(tmp_1645_fu_1777_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1648_fu_1786_p2() {
    tmp_1648_fu_1786_p2 = (tmp_1644_fu_1774_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1649_fu_1792_p2() {
    tmp_1649_fu_1792_p2 = (!tmp_1645_fu_1777_p1.read().is_01() || !tmp_1644_fu_1774_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1645_fu_1777_p1.read()) - sc_biguint<9>(tmp_1644_fu_1774_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1650_fu_1798_p3() {
    tmp_1650_fu_1798_p3 = (!tmp_1643_reg_2998.read()[0].is_01())? sc_lv<9>(): ((tmp_1643_reg_2998.read()[0].to_bool())? tmp_1647_fu_1780_p2.read(): tmp_1649_fu_1792_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1651_fu_1169_p3() {
    tmp_1651_fu_1169_p3 = (!tmp_1643_fu_1163_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1643_fu_1163_p2.read()[0].to_bool())? tmp_1646_reg_2669.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1652_fu_1805_p3() {
    tmp_1652_fu_1805_p3 = (!tmp_1643_reg_2998.read()[0].is_01())? sc_lv<9>(): ((tmp_1643_reg_2998.read()[0].to_bool())? tmp_1648_fu_1786_p2.read(): tmp_1644_fu_1774_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1653_fu_1812_p2() {
    tmp_1653_fu_1812_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1650_fu_1798_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1650_fu_1798_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1655_fu_2385_p1() {
    tmp_1655_fu_2385_p1 = esl_zext<256,9>(tmp_1653_reg_3278.read());
}

void a0_aes_addRoundKey::thread_tmp_1657_fu_2388_p2() {
    tmp_1657_fu_2388_p2 = (!tmp_1655_fu_2385_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1655_fu_2385_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1658_fu_2394_p2() {
    tmp_1658_fu_2394_p2 = (tmp_1656_reg_3380.read() & tmp_1657_fu_2388_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1659_fu_2399_p1() {
    tmp_1659_fu_2399_p1 = tmp_1658_fu_2394_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1660_fu_1188_p2() {
    tmp_1660_fu_1188_p2 = (!tmp_266_fu_1175_p3.read().is_01() || !tmp_267_fu_1182_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_266_fu_1175_p3.read()) > sc_biguint<8>(tmp_267_fu_1182_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1661_fu_1826_p1() {
    tmp_1661_fu_1826_p1 = esl_zext<9,8>(tmp_266_reg_3009.read());
}

void a0_aes_addRoundKey::thread_tmp_1662_fu_1829_p1() {
    tmp_1662_fu_1829_p1 = esl_zext<9,8>(tmp_267_reg_3014.read());
}

void a0_aes_addRoundKey::thread_tmp_1663_fu_661_p4() {
    tmp_1663_fu_661_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1664_fu_1832_p2() {
    tmp_1664_fu_1832_p2 = (!tmp_1661_fu_1826_p1.read().is_01() || !tmp_1662_fu_1829_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1661_fu_1826_p1.read()) - sc_biguint<9>(tmp_1662_fu_1829_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1665_fu_1838_p2() {
    tmp_1665_fu_1838_p2 = (tmp_1661_fu_1826_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1666_fu_1844_p2() {
    tmp_1666_fu_1844_p2 = (!tmp_1662_fu_1829_p1.read().is_01() || !tmp_1661_fu_1826_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1662_fu_1829_p1.read()) - sc_biguint<9>(tmp_1661_fu_1826_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1667_fu_1850_p3() {
    tmp_1667_fu_1850_p3 = (!tmp_1660_reg_3019.read()[0].is_01())? sc_lv<9>(): ((tmp_1660_reg_3019.read()[0].to_bool())? tmp_1664_fu_1832_p2.read(): tmp_1666_fu_1844_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1668_fu_1194_p3() {
    tmp_1668_fu_1194_p3 = (!tmp_1660_fu_1188_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1660_fu_1188_p2.read()[0].to_bool())? tmp_1663_reg_2674.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1669_fu_1857_p3() {
    tmp_1669_fu_1857_p3 = (!tmp_1660_reg_3019.read()[0].is_01())? sc_lv<9>(): ((tmp_1660_reg_3019.read()[0].to_bool())? tmp_1665_fu_1838_p2.read(): tmp_1661_fu_1826_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1670_fu_1864_p2() {
    tmp_1670_fu_1864_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1667_fu_1850_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1667_fu_1850_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1672_fu_2446_p1() {
    tmp_1672_fu_2446_p1 = esl_zext<256,9>(tmp_1670_reg_3298.read());
}

void a0_aes_addRoundKey::thread_tmp_1674_fu_2449_p2() {
    tmp_1674_fu_2449_p2 = (!tmp_1672_fu_2446_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1672_fu_2446_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1675_fu_2455_p2() {
    tmp_1675_fu_2455_p2 = (tmp_1673_reg_3385.read() & tmp_1674_fu_2449_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1676_fu_2460_p1() {
    tmp_1676_fu_2460_p1 = tmp_1675_fu_2455_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1677_fu_1213_p2() {
    tmp_1677_fu_1213_p2 = (!tmp_269_fu_1200_p3.read().is_01() || !tmp_270_fu_1207_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_269_fu_1200_p3.read()) > sc_biguint<8>(tmp_270_fu_1207_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1678_fu_1889_p1() {
    tmp_1678_fu_1889_p1 = esl_zext<9,8>(tmp_269_reg_3030.read());
}

void a0_aes_addRoundKey::thread_tmp_1679_fu_1892_p1() {
    tmp_1679_fu_1892_p1 = esl_zext<9,8>(tmp_270_reg_3035.read());
}

void a0_aes_addRoundKey::thread_tmp_1680_fu_671_p4() {
    tmp_1680_fu_671_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1681_fu_1895_p2() {
    tmp_1681_fu_1895_p2 = (!tmp_1678_fu_1889_p1.read().is_01() || !tmp_1679_fu_1892_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1678_fu_1889_p1.read()) - sc_biguint<9>(tmp_1679_fu_1892_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1682_fu_1901_p2() {
    tmp_1682_fu_1901_p2 = (tmp_1678_fu_1889_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1683_fu_1907_p2() {
    tmp_1683_fu_1907_p2 = (!tmp_1679_fu_1892_p1.read().is_01() || !tmp_1678_fu_1889_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1679_fu_1892_p1.read()) - sc_biguint<9>(tmp_1678_fu_1889_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1684_fu_1913_p3() {
    tmp_1684_fu_1913_p3 = (!tmp_1677_reg_3040.read()[0].is_01())? sc_lv<9>(): ((tmp_1677_reg_3040.read()[0].to_bool())? tmp_1681_fu_1895_p2.read(): tmp_1683_fu_1907_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1685_fu_1219_p3() {
    tmp_1685_fu_1219_p3 = (!tmp_1677_fu_1213_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1677_fu_1213_p2.read()[0].to_bool())? tmp_1680_reg_2679.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1686_fu_1920_p3() {
    tmp_1686_fu_1920_p3 = (!tmp_1677_reg_3040.read()[0].is_01())? sc_lv<9>(): ((tmp_1677_reg_3040.read()[0].to_bool())? tmp_1682_fu_1901_p2.read(): tmp_1678_fu_1889_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1687_fu_1927_p2() {
    tmp_1687_fu_1927_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1684_fu_1913_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1684_fu_1913_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1689_fu_2469_p1() {
    tmp_1689_fu_2469_p1 = esl_zext<256,9>(tmp_1687_reg_3325.read());
}

void a0_aes_addRoundKey::thread_tmp_1691_fu_2472_p2() {
    tmp_1691_fu_2472_p2 = (!tmp_1689_fu_2469_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1689_fu_2469_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1692_fu_2478_p2() {
    tmp_1692_fu_2478_p2 = (tmp_1690_reg_3390.read() & tmp_1691_fu_2472_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1693_fu_2483_p1() {
    tmp_1693_fu_2483_p1 = tmp_1692_fu_2478_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1694_fu_1238_p2() {
    tmp_1694_fu_1238_p2 = (!tmp_272_fu_1225_p3.read().is_01() || !tmp_273_fu_1232_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_272_fu_1225_p3.read()) > sc_biguint<8>(tmp_273_fu_1232_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1695_fu_1941_p1() {
    tmp_1695_fu_1941_p1 = esl_zext<9,8>(tmp_272_reg_3051.read());
}

void a0_aes_addRoundKey::thread_tmp_1696_fu_1944_p1() {
    tmp_1696_fu_1944_p1 = esl_zext<9,8>(tmp_273_reg_3056.read());
}

void a0_aes_addRoundKey::thread_tmp_1697_fu_681_p4() {
    tmp_1697_fu_681_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1698_fu_1947_p2() {
    tmp_1698_fu_1947_p2 = (!tmp_1695_fu_1941_p1.read().is_01() || !tmp_1696_fu_1944_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1695_fu_1941_p1.read()) - sc_biguint<9>(tmp_1696_fu_1944_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1699_fu_1953_p2() {
    tmp_1699_fu_1953_p2 = (tmp_1695_fu_1941_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1700_fu_1959_p2() {
    tmp_1700_fu_1959_p2 = (!tmp_1696_fu_1944_p1.read().is_01() || !tmp_1695_fu_1941_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1696_fu_1944_p1.read()) - sc_biguint<9>(tmp_1695_fu_1941_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1701_fu_1965_p3() {
    tmp_1701_fu_1965_p3 = (!tmp_1694_reg_3061.read()[0].is_01())? sc_lv<9>(): ((tmp_1694_reg_3061.read()[0].to_bool())? tmp_1698_fu_1947_p2.read(): tmp_1700_fu_1959_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1702_fu_1244_p3() {
    tmp_1702_fu_1244_p3 = (!tmp_1694_fu_1238_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1694_fu_1238_p2.read()[0].to_bool())? tmp_1697_reg_2684.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1703_fu_1972_p3() {
    tmp_1703_fu_1972_p3 = (!tmp_1694_reg_3061.read()[0].is_01())? sc_lv<9>(): ((tmp_1694_reg_3061.read()[0].to_bool())? tmp_1699_fu_1953_p2.read(): tmp_1695_fu_1941_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1704_fu_1979_p2() {
    tmp_1704_fu_1979_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1701_fu_1965_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1701_fu_1965_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1706_fu_2492_p1() {
    tmp_1706_fu_2492_p1 = esl_zext<256,9>(tmp_1704_reg_3345.read());
}

void a0_aes_addRoundKey::thread_tmp_1708_fu_2495_p2() {
    tmp_1708_fu_2495_p2 = (!tmp_1706_fu_2492_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1706_fu_2492_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1709_fu_2501_p2() {
    tmp_1709_fu_2501_p2 = (tmp_1707_reg_3395.read() & tmp_1708_fu_2495_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1710_fu_2506_p1() {
    tmp_1710_fu_2506_p1 = tmp_1709_fu_2501_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_1711_fu_1263_p2() {
    tmp_1711_fu_1263_p2 = (!tmp_274_fu_1250_p3.read().is_01() || !tmp_275_fu_1257_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_274_fu_1250_p3.read()) > sc_biguint<8>(tmp_275_fu_1257_p2.read()));
}

void a0_aes_addRoundKey::thread_tmp_1712_fu_1993_p1() {
    tmp_1712_fu_1993_p1 = esl_zext<9,8>(tmp_274_reg_3072.read());
}

void a0_aes_addRoundKey::thread_tmp_1713_fu_1996_p1() {
    tmp_1713_fu_1996_p1 = esl_zext<9,8>(tmp_275_reg_3077.read());
}

void a0_aes_addRoundKey::thread_tmp_1714_fu_691_p4() {
    tmp_1714_fu_691_p4 = m_axi_key_RDATA.read().range(0, 255);
}

void a0_aes_addRoundKey::thread_tmp_1715_fu_1999_p2() {
    tmp_1715_fu_1999_p2 = (!tmp_1712_fu_1993_p1.read().is_01() || !tmp_1713_fu_1996_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1712_fu_1993_p1.read()) - sc_biguint<9>(tmp_1713_fu_1996_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1716_fu_2005_p2() {
    tmp_1716_fu_2005_p2 = (tmp_1712_fu_1993_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_addRoundKey::thread_tmp_1717_fu_2011_p2() {
    tmp_1717_fu_2011_p2 = (!tmp_1713_fu_1996_p1.read().is_01() || !tmp_1712_fu_1993_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_1713_fu_1996_p1.read()) - sc_biguint<9>(tmp_1712_fu_1993_p1.read()));
}

void a0_aes_addRoundKey::thread_tmp_1718_fu_2017_p3() {
    tmp_1718_fu_2017_p3 = (!tmp_1711_reg_3082.read()[0].is_01())? sc_lv<9>(): ((tmp_1711_reg_3082.read()[0].to_bool())? tmp_1715_fu_1999_p2.read(): tmp_1717_fu_2011_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1719_fu_1269_p3() {
    tmp_1719_fu_1269_p3 = (!tmp_1711_fu_1263_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_1711_fu_1263_p2.read()[0].to_bool())? tmp_1714_reg_2689.read(): tmp_1455_reg_2594.read());
}

void a0_aes_addRoundKey::thread_tmp_1720_fu_2024_p3() {
    tmp_1720_fu_2024_p3 = (!tmp_1711_reg_3082.read()[0].is_01())? sc_lv<9>(): ((tmp_1711_reg_3082.read()[0].to_bool())? tmp_1716_fu_2005_p2.read(): tmp_1712_fu_1993_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_1721_fu_2031_p2() {
    tmp_1721_fu_2031_p2 = (!ap_const_lv9_FF.is_01() || !tmp_1718_fu_2017_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_1718_fu_2017_p3.read()));
}

void a0_aes_addRoundKey::thread_tmp_1723_fu_2515_p1() {
    tmp_1723_fu_2515_p1 = esl_zext<256,9>(tmp_1721_reg_3365.read());
}

void a0_aes_addRoundKey::thread_tmp_1725_fu_2518_p2() {
    tmp_1725_fu_2518_p2 = (!tmp_1723_fu_2515_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_2 >> (unsigned short)tmp_1723_fu_2515_p1.read().to_uint();
}

void a0_aes_addRoundKey::thread_tmp_1726_fu_2524_p2() {
    tmp_1726_fu_2524_p2 = (tmp_1724_reg_3405.read() & tmp_1725_fu_2518_p2.read());
}

void a0_aes_addRoundKey::thread_tmp_1727_fu_2529_p1() {
    tmp_1727_fu_2529_p1 = tmp_1726_fu_2524_p2.read().range(8-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_230_fu_701_p3() {
    tmp_230_fu_701_p3 = esl_concat<5,3>(tmp_s_reg_2589.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_231_fu_708_p2() {
    tmp_231_fu_708_p2 = (tmp_230_fu_701_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_232_fu_774_p2() {
    tmp_232_fu_774_p2 = (!ap_const_lv5_E.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_E) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_233_fu_852_p3() {
    tmp_233_fu_852_p3 = esl_concat<5,3>(tmp_232_reg_2709.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_234_fu_859_p2() {
    tmp_234_fu_859_p2 = (tmp_233_fu_852_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_235_fu_779_p2() {
    tmp_235_fu_779_p2 = (!ap_const_lv5_D.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_D) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_236_fu_925_p3() {
    tmp_236_fu_925_p3 = esl_concat<5,3>(tmp_235_reg_2714.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_237_fu_932_p2() {
    tmp_237_fu_932_p2 = (tmp_236_fu_925_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_238_fu_784_p2() {
    tmp_238_fu_784_p2 = (!ap_const_lv5_C.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_C) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_239_fu_950_p3() {
    tmp_239_fu_950_p3 = esl_concat<5,3>(tmp_238_reg_2719.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_240_fu_957_p2() {
    tmp_240_fu_957_p2 = (tmp_239_fu_950_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_241_fu_789_p2() {
    tmp_241_fu_789_p2 = (!ap_const_lv5_B.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_B) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_242_fu_975_p3() {
    tmp_242_fu_975_p3 = esl_concat<5,3>(tmp_241_reg_2724.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_243_fu_982_p2() {
    tmp_243_fu_982_p2 = (tmp_242_fu_975_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_244_fu_794_p2() {
    tmp_244_fu_794_p2 = (!ap_const_lv5_A.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_A) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_245_fu_1000_p3() {
    tmp_245_fu_1000_p3 = esl_concat<5,3>(tmp_244_reg_2729.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_246_fu_1007_p2() {
    tmp_246_fu_1007_p2 = (tmp_245_fu_1000_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_247_fu_799_p2() {
    tmp_247_fu_799_p2 = (!ap_const_lv5_9.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_9) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_248_fu_1025_p3() {
    tmp_248_fu_1025_p3 = esl_concat<5,3>(tmp_247_reg_2734.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_249_fu_1032_p2() {
    tmp_249_fu_1032_p2 = (tmp_248_fu_1025_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_250_fu_804_p2() {
    tmp_250_fu_804_p2 = (!ap_const_lv5_8.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_8) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_251_fu_1050_p3() {
    tmp_251_fu_1050_p3 = esl_concat<5,3>(tmp_250_reg_2739.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_252_fu_1057_p2() {
    tmp_252_fu_1057_p2 = (tmp_251_fu_1050_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_253_fu_809_p2() {
    tmp_253_fu_809_p2 = (!ap_const_lv5_7.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_7) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_254_fu_1075_p3() {
    tmp_254_fu_1075_p3 = esl_concat<5,3>(tmp_253_reg_2744.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_255_fu_1082_p2() {
    tmp_255_fu_1082_p2 = (tmp_254_fu_1075_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_256_fu_814_p2() {
    tmp_256_fu_814_p2 = (!ap_const_lv5_6.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_6) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_257_fu_1100_p3() {
    tmp_257_fu_1100_p3 = esl_concat<5,3>(tmp_256_reg_2749.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_258_fu_1107_p2() {
    tmp_258_fu_1107_p2 = (tmp_257_fu_1100_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_259_fu_819_p2() {
    tmp_259_fu_819_p2 = (!ap_const_lv5_5.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_5) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_260_fu_1125_p3() {
    tmp_260_fu_1125_p3 = esl_concat<5,3>(tmp_259_reg_2754.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_261_fu_1132_p2() {
    tmp_261_fu_1132_p2 = (tmp_260_fu_1125_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_262_fu_824_p2() {
    tmp_262_fu_824_p2 = (!ap_const_lv5_4.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_4) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_263_fu_1150_p3() {
    tmp_263_fu_1150_p3 = esl_concat<5,3>(tmp_262_reg_2759.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_264_fu_1157_p2() {
    tmp_264_fu_1157_p2 = (tmp_263_fu_1150_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_265_fu_829_p2() {
    tmp_265_fu_829_p2 = (!ap_const_lv5_3.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_3) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_266_fu_1175_p3() {
    tmp_266_fu_1175_p3 = esl_concat<5,3>(tmp_265_reg_2764.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_267_fu_1182_p2() {
    tmp_267_fu_1182_p2 = (tmp_266_fu_1175_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_268_fu_834_p2() {
    tmp_268_fu_834_p2 = (!ap_const_lv5_2.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_2) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_269_fu_1200_p3() {
    tmp_269_fu_1200_p3 = esl_concat<5,3>(tmp_268_reg_2769.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_270_fu_1207_p2() {
    tmp_270_fu_1207_p2 = (tmp_269_fu_1200_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_271_fu_839_p2() {
    tmp_271_fu_839_p2 = (!ap_const_lv5_1.is_01() || !tmp_reg_2570.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_1) + sc_biguint<5>(tmp_reg_2570.read()));
}

void a0_aes_addRoundKey::thread_tmp_272_fu_1225_p3() {
    tmp_272_fu_1225_p3 = esl_concat<5,3>(tmp_271_reg_2774.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_273_fu_1232_p2() {
    tmp_273_fu_1232_p2 = (tmp_272_fu_1225_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_274_fu_1250_p3() {
    tmp_274_fu_1250_p3 = esl_concat<5,3>(tmp_reg_2570.read(), ap_const_lv3_0);
}

void a0_aes_addRoundKey::thread_tmp_275_fu_1257_p2() {
    tmp_275_fu_1257_p2 = (tmp_274_fu_1250_p3.read() | ap_const_lv8_7);
}

void a0_aes_addRoundKey::thread_tmp_69_10_fu_2403_p2() {
    tmp_69_10_fu_2403_p2 = (buf_addr_61_read_reg_3575.read() ^ tmp_1659_fu_2399_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_11_fu_2464_p2() {
    tmp_69_11_fu_2464_p2 = (buf_addr_62_read_reg_3613.read() ^ tmp_1676_fu_2460_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_12_fu_2487_p2() {
    tmp_69_12_fu_2487_p2 = (buf_addr_63_read_reg_3623.read() ^ tmp_1693_fu_2483_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_13_fu_2510_p2() {
    tmp_69_13_fu_2510_p2 = (buf_addr_64_read_reg_3633.read() ^ tmp_1710_fu_2506_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_14_fu_2533_p2() {
    tmp_69_14_fu_2533_p2 = (buf_addr_read_reg_3643.read() ^ tmp_1727_fu_2529_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_1_fu_2063_p2() {
    tmp_69_1_fu_2063_p2 = (buf_addr_51_read_reg_3400.read() ^ tmp_1489_fu_2059_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_2_fu_2097_p2() {
    tmp_69_2_fu_2097_p2 = (buf_addr_52_read_reg_3422.read() ^ tmp_1506_fu_2093_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_3_fu_2131_p2() {
    tmp_69_3_fu_2131_p2 = (buf_addr_53_read_reg_3439.read() ^ tmp_1523_fu_2127_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_4_fu_2165_p2() {
    tmp_69_4_fu_2165_p2 = (buf_addr_54_read_reg_3456.read() ^ tmp_1540_fu_2161_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_5_fu_2199_p2() {
    tmp_69_5_fu_2199_p2 = (buf_addr_55_read_reg_3473.read() ^ tmp_1557_fu_2195_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_6_fu_2233_p2() {
    tmp_69_6_fu_2233_p2 = (buf_addr_56_read_reg_3490.read() ^ tmp_1574_fu_2229_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_7_fu_2267_p2() {
    tmp_69_7_fu_2267_p2 = (buf_addr_57_read_reg_3507.read() ^ tmp_1591_fu_2263_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_8_fu_2301_p2() {
    tmp_69_8_fu_2301_p2 = (buf_addr_58_read_reg_3524.read() ^ tmp_1608_fu_2297_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_9_fu_2335_p2() {
    tmp_69_9_fu_2335_p2 = (buf_addr_59_read_reg_3541.read() ^ tmp_1625_fu_2331_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_fu_1553_p2() {
    tmp_69_fu_1553_p2 = (buf_addr_50_read_reg_3158.read() ^ tmp_1472_fu_1549_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_69_s_fu_2369_p2() {
    tmp_69_s_fu_2369_p2 = (buf_addr_60_read_reg_3558.read() ^ tmp_1642_fu_2365_p1.read());
}

void a0_aes_addRoundKey::thread_tmp_fu_527_p1() {
    tmp_fu_527_p1 = ap_port_reg_key_offset_offset.read().range(5-1, 0);
}

void a0_aes_addRoundKey::thread_tmp_s_fu_531_p2() {
    tmp_s_fu_531_p2 = (!ap_const_lv5_F.is_01() || !tmp_fu_527_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_F) + sc_biguint<5>(tmp_fu_527_p1.read()));
}

}

