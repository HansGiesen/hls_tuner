#include "a0_encrypt.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void a0_encrypt::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWVALID\" :  \"" << m_axi_ctx_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_AWREADY\" :  \"" << m_axi_ctx_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWADDR\" :  \"" << m_axi_ctx_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWID\" :  \"" << m_axi_ctx_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWLEN\" :  \"" << m_axi_ctx_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWSIZE\" :  \"" << m_axi_ctx_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWBURST\" :  \"" << m_axi_ctx_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWLOCK\" :  \"" << m_axi_ctx_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWCACHE\" :  \"" << m_axi_ctx_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWPROT\" :  \"" << m_axi_ctx_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWQOS\" :  \"" << m_axi_ctx_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWREGION\" :  \"" << m_axi_ctx_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_AWUSER\" :  \"" << m_axi_ctx_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_WVALID\" :  \"" << m_axi_ctx_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_WREADY\" :  \"" << m_axi_ctx_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_WDATA\" :  \"" << m_axi_ctx_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_WSTRB\" :  \"" << m_axi_ctx_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_WLAST\" :  \"" << m_axi_ctx_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_WID\" :  \"" << m_axi_ctx_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_WUSER\" :  \"" << m_axi_ctx_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARVALID\" :  \"" << m_axi_ctx_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_ARREADY\" :  \"" << m_axi_ctx_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARADDR\" :  \"" << m_axi_ctx_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARID\" :  \"" << m_axi_ctx_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARLEN\" :  \"" << m_axi_ctx_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARSIZE\" :  \"" << m_axi_ctx_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARBURST\" :  \"" << m_axi_ctx_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARLOCK\" :  \"" << m_axi_ctx_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARCACHE\" :  \"" << m_axi_ctx_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARPROT\" :  \"" << m_axi_ctx_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARQOS\" :  \"" << m_axi_ctx_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARREGION\" :  \"" << m_axi_ctx_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_ARUSER\" :  \"" << m_axi_ctx_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_RVALID\" :  \"" << m_axi_ctx_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_RREADY\" :  \"" << m_axi_ctx_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_RDATA\" :  \"" << m_axi_ctx_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_RLAST\" :  \"" << m_axi_ctx_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_RID\" :  \"" << m_axi_ctx_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_RUSER\" :  \"" << m_axi_ctx_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_RRESP\" :  \"" << m_axi_ctx_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_BVALID\" :  \"" << m_axi_ctx_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_ctx_BREADY\" :  \"" << m_axi_ctx_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_BRESP\" :  \"" << m_axi_ctx_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_BID\" :  \"" << m_axi_ctx_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_ctx_BUSER\" :  \"" << m_axi_ctx_BUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWVALID\" :  \"" << m_axi_buf_r_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_AWREADY\" :  \"" << m_axi_buf_r_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWADDR\" :  \"" << m_axi_buf_r_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWID\" :  \"" << m_axi_buf_r_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWLEN\" :  \"" << m_axi_buf_r_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWSIZE\" :  \"" << m_axi_buf_r_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWBURST\" :  \"" << m_axi_buf_r_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWLOCK\" :  \"" << m_axi_buf_r_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWCACHE\" :  \"" << m_axi_buf_r_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWPROT\" :  \"" << m_axi_buf_r_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWQOS\" :  \"" << m_axi_buf_r_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWREGION\" :  \"" << m_axi_buf_r_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_AWUSER\" :  \"" << m_axi_buf_r_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_WVALID\" :  \"" << m_axi_buf_r_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_WREADY\" :  \"" << m_axi_buf_r_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_WDATA\" :  \"" << m_axi_buf_r_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_WSTRB\" :  \"" << m_axi_buf_r_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_WLAST\" :  \"" << m_axi_buf_r_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_WID\" :  \"" << m_axi_buf_r_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_WUSER\" :  \"" << m_axi_buf_r_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARVALID\" :  \"" << m_axi_buf_r_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_ARREADY\" :  \"" << m_axi_buf_r_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARADDR\" :  \"" << m_axi_buf_r_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARID\" :  \"" << m_axi_buf_r_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARLEN\" :  \"" << m_axi_buf_r_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARSIZE\" :  \"" << m_axi_buf_r_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARBURST\" :  \"" << m_axi_buf_r_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARLOCK\" :  \"" << m_axi_buf_r_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARCACHE\" :  \"" << m_axi_buf_r_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARPROT\" :  \"" << m_axi_buf_r_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARQOS\" :  \"" << m_axi_buf_r_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARREGION\" :  \"" << m_axi_buf_r_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_ARUSER\" :  \"" << m_axi_buf_r_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_RVALID\" :  \"" << m_axi_buf_r_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_RREADY\" :  \"" << m_axi_buf_r_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_RDATA\" :  \"" << m_axi_buf_r_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_RLAST\" :  \"" << m_axi_buf_r_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_RID\" :  \"" << m_axi_buf_r_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_RUSER\" :  \"" << m_axi_buf_r_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_RRESP\" :  \"" << m_axi_buf_r_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_BVALID\" :  \"" << m_axi_buf_r_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_buf_r_BREADY\" :  \"" << m_axi_buf_r_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_BRESP\" :  \"" << m_axi_buf_r_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_BID\" :  \"" << m_axi_buf_r_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_buf_r_BUSER\" :  \"" << m_axi_buf_r_BUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ctx_offset\" :  \"" << ctx_offset.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"k_Addr_A\" :  \"" << k_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"k_EN_A\" :  \"" << k_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"k_WEN_A\" :  \"" << k_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"k_Din_A\" :  \"" << k_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"k_Dout_A\" :  \"" << k_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"k_Clk_A\" :  \"" << k_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"k_Rst_A\" :  \"" << k_Rst_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"buf_offset\" :  \"" << buf_offset.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

