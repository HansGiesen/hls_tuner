set_directive_interface -mode m_axi -offset direct "encrypt" buf -bundle=buf
set_directive_interface -mode m_axi -offset direct "encrypt" ctx_key -bundle=ctx_key
set_directive_interface -mode m_axi -offset direct "encrypt" ctx_enckey -bundle=ctx_enckey
set_directive_interface -mode m_axi -offset direct "encrypt" ctx_deckey -bundle=ctx_deckey
set_directive_interface -mode bram "encrypt" k
set_directive_resource -core RAM_1P "encrypt" k
set_directive_latency -min 1 encrypt
