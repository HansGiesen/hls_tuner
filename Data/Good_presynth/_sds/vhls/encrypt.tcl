set_directive_interface -mode bram "encrypt" k
set_directive_resource -core RAM_1P "encrypt" k
set_directive_interface -mode m_axi -offset direct "encrypt" buf -bundle=buf
set_directive_data_pack encrypt ctx
set_directive_interface -mode m_axi -offset direct "encrypt" ctx -bundle=ctx
set_directive_latency -min 1 encrypt
