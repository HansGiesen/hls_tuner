// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "A"
#define AUTOTB_TVIN_A  "../tv/cdatafile/c.cholesky_top.autotvin_A.dat"
// wrapc file define: "L"
#define AUTOTB_TVOUT_L  "../tv/cdatafile/c.cholesky_top.autotvout_L.dat"
#define AUTOTB_TVIN_L  "../tv/cdatafile/c.cholesky_top.autotvin_L.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.cholesky_top.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "L"
#define AUTOTB_TVOUT_PC_L  "../tv/rtldatafile/rtl.cholesky_top.autotvout_L.dat"
// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.cholesky_top.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			A_depth = 0;
			L_depth = 0;
			ap_return_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{A " << A_depth << "}\n";
			total_list << "{L " << L_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int A_depth;
		int L_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern int cholesky_top (
float A[66][66],
float L[66][66]);

int AESL_WRAP_cholesky_top (
float A[66][66],
float L[66][66])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		int AESL_return;

		// output port post check: "L"
		aesl_fh.read(AUTOTB_TVOUT_PC_L, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_L, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_L, AESL_token); // data

			sc_bv<32> *L_pc_buffer = new sc_bv<32>[4356];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'L', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'L', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					L_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_L, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_L))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: L
				{
					// bitslice(31, 0)
					// {
						// celement: L(31, 0)
						// {
							sc_lv<32>* L_lv0_0_65_1_lv1_0_65_1 = new sc_lv<32>[4356];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: L(31, 0)
						{
							// carray: (0) => (65) @ (1)
							for (int i_0 = 0; i_0 <= 65; i_0 += 1)
							{
								// carray: (0) => (65) @ (1)
								for (int i_1 = 0; i_1 <= 65; i_1 += 1)
								{
									if (&(L[0][0]) != NULL) // check the null address if the c port is array or others
									{
										L_lv0_0_65_1_lv1_0_65_1[hls_map_index].range(31, 0) = sc_bv<32>(L_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: L(31, 0)
						{
							// carray: (0) => (65) @ (1)
							for (int i_0 = 0; i_0 <= 65; i_0 += 1)
							{
								// carray: (0) => (65) @ (1)
								for (int i_1 = 0; i_1 <= 65; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : L[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : L[0][0]
									// output_left_conversion : *(int*)&L[i_0][i_1]
									// output_type_conversion : (L_lv0_0_65_1_lv1_0_65_1[hls_map_index]).to_uint64()
									if (&(L[0][0]) != NULL) // check the null address if the c port is array or others
									{
										*(int*)&L[i_0][i_1] = (L_lv0_0_65_1_lv1_0_65_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] L_pc_buffer;
		}

		// output port post check: "ap_return"
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data

			sc_bv<32> ap_return_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					ap_return_pc_buffer = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ap_return
				{
					// bitslice(31, 0)
					// {
						// celement: return(31, 0)
						// {
							sc_lv<32> return_lv0_0_1_0;
						// }
					// }

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									return_lv0_0_1_0.range(31, 0) = sc_bv<32>(ap_return_pc_buffer.range(31, 0));
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : AESL_return
								// output_type_conversion : (return_lv0_0_1_0).to_uint64()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									AESL_return = (return_lv0_0_1_0).to_uint64();
								}
							}
						}
					}
				}
			}
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "A"
		char* tvin_A = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_A);

		// "L"
		char* tvin_L = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_L);
		char* tvout_L = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_L);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_A, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_A, tvin_A);

		sc_bv<32>* A_tvin_wrapc_buffer = new sc_bv<32>[4356];

		// RTL Name: A
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: A(31, 0)
				{
					// carray: (0) => (65) @ (1)
					for (int i_0 = 0; i_0 <= 65; i_0 += 1)
					{
						// carray: (0) => (65) @ (1)
						for (int i_1 = 0; i_1 <= 65; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : A[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : A[0][0]
							// regulate_c_name       : A
							// input_type_conversion : *(int*)&A[i_0][i_1]
							if (&(A[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> A_tmp_mem;
								A_tmp_mem = *(int*)&A[i_0][i_1];
								A_tvin_wrapc_buffer[hls_map_index].range(31, 0) = A_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4356; i++)
		{
			sprintf(tvin_A, "%s\n", (A_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_A, tvin_A);
		}

		tcl_file.set_num(4356, &tcl_file.A_depth);
		sprintf(tvin_A, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_A, tvin_A);

		// release memory allocation
		delete [] A_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_L, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_L, tvin_L);

		sc_bv<32>* L_tvin_wrapc_buffer = new sc_bv<32>[4356];

		// RTL Name: L
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: L(31, 0)
				{
					// carray: (0) => (65) @ (1)
					for (int i_0 = 0; i_0 <= 65; i_0 += 1)
					{
						// carray: (0) => (65) @ (1)
						for (int i_1 = 0; i_1 <= 65; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : L[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : L[0][0]
							// regulate_c_name       : L
							// input_type_conversion : *(int*)&L[i_0][i_1]
							if (&(L[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> L_tmp_mem;
								L_tmp_mem = *(int*)&L[i_0][i_1];
								L_tvin_wrapc_buffer[hls_map_index].range(31, 0) = L_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4356; i++)
		{
			sprintf(tvin_L, "%s\n", (L_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_L, tvin_L);
		}

		tcl_file.set_num(4356, &tcl_file.L_depth);
		sprintf(tvin_L, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_L, tvin_L);

		// release memory allocation
		delete [] L_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		int AESL_return = cholesky_top(A, L);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_L, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_L, tvout_L);

		sc_bv<32>* L_tvout_wrapc_buffer = new sc_bv<32>[4356];

		// RTL Name: L
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: L(31, 0)
				{
					// carray: (0) => (65) @ (1)
					for (int i_0 = 0; i_0 <= 65; i_0 += 1)
					{
						// carray: (0) => (65) @ (1)
						for (int i_1 = 0; i_1 <= 65; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : L[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : L[0][0]
							// regulate_c_name       : L
							// input_type_conversion : *(int*)&L[i_0][i_1]
							if (&(L[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> L_tmp_mem;
								L_tmp_mem = *(int*)&L[i_0][i_1];
								L_tvout_wrapc_buffer[hls_map_index].range(31, 0) = L_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4356; i++)
		{
			sprintf(tvout_L, "%s\n", (L_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_L, tvout_L);
		}

		tcl_file.set_num(4356, &tcl_file.L_depth);
		sprintf(tvout_L, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_L, tvout_L);

		// release memory allocation
		delete [] L_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<32> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(31, 0)
			{
				// celement: return(31, 0)
				{
					// carray: (0) => (1) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : return
						// input_type_conversion : AESL_return
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> return_tmp_mem;
							return_tmp_mem = AESL_return;
							ap_return_tvout_wrapc_buffer.range(31, 0) = return_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);
		}

		tcl_file.set_num(1, &tcl_file.ap_return_depth);
		sprintf(tvout_ap_return, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "A"
		delete [] tvin_A;
		// release memory allocation: "L"
		delete [] tvout_L;
		delete [] tvin_L;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

