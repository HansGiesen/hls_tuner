#ifdef __cplusplus
extern "C" {
#endif

struct _p0_swblk_top {
  cf_port_send_t cmd_top;
  cf_port_send_t wt_i_V;
  cf_port_send_t kh_i_V;
  cf_port_send_t dmem_i_V;
  cf_port_receive_t dmem_o_V;
  cf_port_send_t n_inputs_V;
  cf_port_send_t n_outputs_V;
  cf_port_send_t input_words_V;
  cf_port_send_t output_words_V;
  cf_port_send_t layer_mode_V;
  cf_port_send_t dmem_mode_V;
  cf_port_send_t width_mode_V;
  cf_port_send_t norm_mode_V;
};

extern struct _p0_swblk_top _p0_swinst_top_1;
void _p0_cf_framework_open(int);
void _p0_cf_framework_close(int);

#ifdef __cplusplus
};
#endif
