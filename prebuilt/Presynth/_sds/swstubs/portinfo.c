/* File: /scratch/local/tmp.soPlafqy6w/_sds/p0/.cf_work/portinfo.c */
#include "cf_lib.h"
#include "cf_request.h"
#include "sds_lib.h"
#include "sds_trace.h"
#include "portinfo.h"
#include "stdio.h"  // for printf
#include "xlnk_core_cf.h"
#include "accel_info.h"
#include "axi_dma_simple_dm.h"
#include "axi_lite_dm.h"
#include "sysport_info.h"
#include "zero_copy_dm.h"

sysport_info_t _sds_sysport_p0_processing_system7_0_S_AXI_ACP = {
  .name = "processing_system7_0_S_AXI_ACP",
  .id = 1,
  .address_space = 0,
  .cmd_type = sysport_commands_type_no_action,
};

sysport_info_t _sds_sysport_p0_processing_system7_0_S_AXI_HP0 = {
  .name = "processing_system7_0_S_AXI_HP0",
  .id = 2,
  .address_space = 0,
  .cmd_type = sysport_commands_type_non_coherent,
};

accel_info_t _sds__p0_encrypt_1 = {
  .device_id = 1,
  .phys_base_addr = 0x43c00000,
  .addr_range = 0x10000,
  .func_name = "encrypt_1",
  .ip_type = "axis_acc_adapter",
  .irq = 0,
};

axi_dma_simple_info_t _p0_dm_0 = {
  .name = "dm_0",
  .phys_base_addr = 0x40400000,
  .addr_range = 0x10000,
  .device_id = 0,
  .dir = XLNK_DMA_TO_DEV,
  .irq = -1,
  .data_sysport = &_sds_sysport_p0_processing_system7_0_S_AXI_ACP,
  .data_width = 64,
};

int _p0_swinst_encrypt_1_cmd_encrypt_sg_list[] = {0x8};

axi_lite_info_t _p0_swinst_encrypt_1_cmd_encrypt_info = {
  .phys_base_addr = 0x43c00000,
  .data_reg_offset = _p0_swinst_encrypt_1_cmd_encrypt_sg_list,
  .data_reg_sg_size = 1,
  .write_status_reg_offset = 0x0,
  .read_status_reg_offset = 0x0,
  .config = XLNK_AXI_LITE_SG |
    XLNK_AXI_LITE_STAT_REG_READ(XLNK_AXI_LITE_STAT_REG_NOCHECK) |
    XLNK_AXI_LITE_STAT_REG_WRITE(XLNK_AXI_LITE_STAT_REG_NOCHECK),
  .acc_info = &_sds__p0_encrypt_1,
};

zero_copy_info_t _p0_swinst_encrypt_1_ctx_key_offset_info = {
  .phys_base_addr = 0x43c00000,
  .data_reg_offset = 0xc,
  .status_reg_offset = 0x40c,
  .config = XLNK_ZERO_COPY_KEYHOLE |
    XLNK_ZERO_COPY_STAT_REG_WRITE(XLNK_ZERO_COPY_STAT_REG_QUEUING),
  .data_sysport = &_sds_sysport_p0_processing_system7_0_S_AXI_HP0,
  .dir = XLNK_BI_DIRECTIONAL,
  .cache = 0,
  .acc_info = &_sds__p0_encrypt_1,
};

zero_copy_info_t _p0_swinst_encrypt_1_ctx_enckey_offset_info = {
  .phys_base_addr = 0x43c00000,
  .data_reg_offset = 0x10,
  .status_reg_offset = 0x410,
  .config = XLNK_ZERO_COPY_KEYHOLE |
    XLNK_ZERO_COPY_STAT_REG_WRITE(XLNK_ZERO_COPY_STAT_REG_QUEUING),
  .data_sysport = &_sds_sysport_p0_processing_system7_0_S_AXI_ACP,
  .dir = XLNK_BI_DIRECTIONAL,
  .cache = 0,
  .acc_info = &_sds__p0_encrypt_1,
};

zero_copy_info_t _p0_swinst_encrypt_1_ctx_deckey_offset_info = {
  .phys_base_addr = 0x43c00000,
  .data_reg_offset = 0x14,
  .status_reg_offset = 0x414,
  .config = XLNK_ZERO_COPY_KEYHOLE |
    XLNK_ZERO_COPY_STAT_REG_WRITE(XLNK_ZERO_COPY_STAT_REG_QUEUING),
  .data_sysport = &_sds_sysport_p0_processing_system7_0_S_AXI_ACP,
  .dir = XLNK_BI_DIRECTIONAL,
  .cache = 0,
  .acc_info = &_sds__p0_encrypt_1,
};

zero_copy_info_t _p0_swinst_encrypt_1_buf_offset_info = {
  .phys_base_addr = 0x43c00000,
  .data_reg_offset = 0x18,
  .status_reg_offset = 0x418,
  .config = XLNK_ZERO_COPY_KEYHOLE |
    XLNK_ZERO_COPY_STAT_REG_WRITE(XLNK_ZERO_COPY_STAT_REG_QUEUING),
  .data_sysport = &_sds_sysport_p0_processing_system7_0_S_AXI_ACP,
  .dir = XLNK_BI_DIRECTIONAL,
  .cache = 0,
  .acc_info = &_sds__p0_encrypt_1,
};

struct _p0_swblk_encrypt _p0_swinst_encrypt_1 = {
  .cmd_encrypt = { .base = { .channel_info = &_p0_swinst_encrypt_1_cmd_encrypt_info}, 
    .send_i = &axi_lite_send },
  .ctx_key_offset = { .base = { .channel_info = &_p0_swinst_encrypt_1_ctx_key_offset_info}, 
    .send_ref_i = &zero_copy_send_ref_i },
  .ctx_enckey_offset = { .base = { .channel_info = &_p0_swinst_encrypt_1_ctx_enckey_offset_info}, 
    .send_ref_i = &zero_copy_send_ref_i },
  .ctx_deckey_offset = { .base = { .channel_info = &_p0_swinst_encrypt_1_ctx_deckey_offset_info}, 
    .send_ref_i = &zero_copy_send_ref_i },
  .k_PORTA = { .base = { .channel_info = &_p0_dm_0},
    .send_i = &axi_dma_simple_send_i },
  .buf_offset = { .base = { .channel_info = &_p0_swinst_encrypt_1_buf_offset_info}, 
    .send_ref_i = &zero_copy_send_ref_i },
};

extern void pfm_hook_init();
extern void pfm_hook_shutdown();
void _p0_cf_framework_open(int first)
{
  int xlnk_init_done;
  cf_context_init();
  xlnkCounterMap(650000000);
  xlnk_init_done = cf_xlnk_open(first);
  if (!xlnk_init_done) {
    pfm_hook_init();
    cf_xlnk_init(first);
  } else if (xlnk_init_done < 0) {
    fprintf(stderr, "ERROR: unable to open xlnk\n");
    exit(-1);
  }
  cf_get_current_context();
  sysport_open(&_sds_sysport_p0_processing_system7_0_S_AXI_ACP);
  sysport_open(&_sds_sysport_p0_processing_system7_0_S_AXI_HP0);
  axi_dma_simple_open(&_p0_dm_0);
  axi_lite_open(&_p0_swinst_encrypt_1_cmd_encrypt_info);
  zero_copy_open(&_p0_swinst_encrypt_1_ctx_key_offset_info);
  zero_copy_open(&_p0_swinst_encrypt_1_ctx_enckey_offset_info);
  zero_copy_open(&_p0_swinst_encrypt_1_ctx_deckey_offset_info);
  zero_copy_open(&_p0_swinst_encrypt_1_buf_offset_info);
  _sds__p0_encrypt_1.arg_dm_id[0] = _p0_swinst_encrypt_1_cmd_encrypt_info.dm_id;
  _sds__p0_encrypt_1.arg_dm_id[1] = _p0_swinst_encrypt_1_ctx_key_offset_info.dm_id;
  _sds__p0_encrypt_1.arg_dm_id[2] = _p0_swinst_encrypt_1_ctx_enckey_offset_info.dm_id;
  _sds__p0_encrypt_1.arg_dm_id[3] = _p0_swinst_encrypt_1_ctx_deckey_offset_info.dm_id;
  _sds__p0_encrypt_1.arg_dm_id[4] = _p0_dm_0.dm_id;
  _sds__p0_encrypt_1.arg_dm_id[5] = _p0_swinst_encrypt_1_buf_offset_info.dm_id;
  _sds__p0_encrypt_1.arg_dm_id_count = 6;
  accel_open(&_sds__p0_encrypt_1);
}

void _p0_cf_framework_close(int last)
{
  accel_close(&_sds__p0_encrypt_1);
  axi_dma_simple_close(&_p0_dm_0);
  axi_lite_close(&_p0_swinst_encrypt_1_cmd_encrypt_info);
  zero_copy_close(&_p0_swinst_encrypt_1_ctx_key_offset_info);
  zero_copy_close(&_p0_swinst_encrypt_1_ctx_enckey_offset_info);
  zero_copy_close(&_p0_swinst_encrypt_1_ctx_deckey_offset_info);
  zero_copy_close(&_p0_swinst_encrypt_1_buf_offset_info);
  sysport_close(&_sds_sysport_p0_processing_system7_0_S_AXI_ACP);
  sysport_close(&_sds_sysport_p0_processing_system7_0_S_AXI_HP0);
  pfm_hook_shutdown();
  xlnkClose(last, NULL);
}

#define TOTAL_PARTITIONS 1
int current_partition_num = 0;
struct {
  void (*open)(int);
  void (*close)(int);
}

_ptable[TOTAL_PARTITIONS]  = {
    {.open = &_p0_cf_framework_open, .close= &_p0_cf_framework_close}, 
};

void switch_to_next_partition(int partition_num)
{
#ifdef __linux__
  if (current_partition_num != partition_num) {
    _ptable[current_partition_num].close(0);
    char buf[128];
    sprintf(buf, "cat /mnt/_sds/_p%d_.bin > /dev/xdevcfg", partition_num);
    system(buf);
    _ptable[partition_num].open(0);
    current_partition_num = partition_num;
  }
#endif
}

void init_first_partition() __attribute__ ((constructor));
void close_last_partition() __attribute__ ((destructor));
void init_first_partition()
{
    current_partition_num = 0;
    _ptable[current_partition_num].open(1);

    sds_trace_setup();
}


void close_last_partition()
{
#ifdef PERF_EST
    apf_perf_estimation_exit();
#endif
    sds_trace_cleanup();
    _ptable[current_partition_num].close(1);
    current_partition_num = 0;
}

