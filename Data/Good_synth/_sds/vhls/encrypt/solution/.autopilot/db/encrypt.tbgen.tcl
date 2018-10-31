set C_TypeInfoList {{ 
"encrypt" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"ctx": [[],{ "pointer": "0"}] }, {"k": [[], {"array": ["1", [32]]}] }, {"buf": [[], {"array": ["1", [16]]}] }],[],""], 
"0": [ "aes256_context", {"typedef": [[[],"2"],""]}], 
"1": [ "uint8_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}], 
"2": [ "", {"struct": [[],[],[{ "key": [[],  {"array": ["1", [32]]}]},{ "enckey": [[],  {"array": ["1", [32]]}]},{ "deckey": [[],  {"array": ["1", [32]]}]},{ "dummy": [[],  {"array": ["1", [32]]}]}],""]}]
}}
set moduleName encrypt
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx int 1024 regular {axi_master 2}  }
	{ buf_r int 8 regular {axi_master 2}  }
	{ ctx_offset int 32 regular  }
	{ k int 8 regular {bram 32 { 1 } 1 1 }  }
	{ buf_offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":8,"up":15,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]},{"low":16,"up":23,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]},{"low":24,"up":31,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]},{"low":32,"up":39,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]},{"low":40,"up":47,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]},{"low":48,"up":55,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]},{"low":56,"up":63,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]},{"low":64,"up":71,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]},{"low":72,"up":79,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]},{"low":80,"up":87,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]},{"low":88,"up":95,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]},{"low":96,"up":103,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]},{"low":104,"up":111,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]},{"low":112,"up":119,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]},{"low":120,"up":127,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]},{"low":128,"up":135,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]},{"low":136,"up":143,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]},{"low":144,"up":151,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 18,"up" : 18,"step" : 2}]}]},{"low":152,"up":159,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 19,"up" : 19,"step" : 2}]}]},{"low":160,"up":167,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 20,"up" : 20,"step" : 2}]}]},{"low":168,"up":175,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 21,"up" : 21,"step" : 2}]}]},{"low":176,"up":183,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 22,"up" : 22,"step" : 2}]}]},{"low":184,"up":191,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 23,"up" : 23,"step" : 2}]}]},{"low":192,"up":199,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 24,"up" : 24,"step" : 2}]}]},{"low":200,"up":207,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 25,"up" : 25,"step" : 2}]}]},{"low":208,"up":215,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 26,"up" : 26,"step" : 2}]}]},{"low":216,"up":223,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 27,"up" : 27,"step" : 2}]}]},{"low":224,"up":231,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 28,"up" : 28,"step" : 2}]}]},{"low":232,"up":239,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 29,"up" : 29,"step" : 2}]}]},{"low":240,"up":247,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 30,"up" : 30,"step" : 2}]}]},{"low":248,"up":255,"cElement": [{"cName": "ctx.key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 31,"up" : 31,"step" : 2}]}]},{"low":256,"up":263,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":264,"up":271,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]},{"low":272,"up":279,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]},{"low":280,"up":287,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]},{"low":288,"up":295,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]},{"low":296,"up":303,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]},{"low":304,"up":311,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]},{"low":312,"up":319,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]},{"low":320,"up":327,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]},{"low":328,"up":335,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]},{"low":336,"up":343,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]},{"low":344,"up":351,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]},{"low":352,"up":359,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]},{"low":360,"up":367,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]},{"low":368,"up":375,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]},{"low":376,"up":383,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]},{"low":384,"up":391,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]},{"low":392,"up":399,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]},{"low":400,"up":407,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 18,"up" : 18,"step" : 2}]}]},{"low":408,"up":415,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 19,"up" : 19,"step" : 2}]}]},{"low":416,"up":423,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 20,"up" : 20,"step" : 2}]}]},{"low":424,"up":431,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 21,"up" : 21,"step" : 2}]}]},{"low":432,"up":439,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 22,"up" : 22,"step" : 2}]}]},{"low":440,"up":447,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 23,"up" : 23,"step" : 2}]}]},{"low":448,"up":455,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 24,"up" : 24,"step" : 2}]}]},{"low":456,"up":463,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 25,"up" : 25,"step" : 2}]}]},{"low":464,"up":471,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 26,"up" : 26,"step" : 2}]}]},{"low":472,"up":479,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 27,"up" : 27,"step" : 2}]}]},{"low":480,"up":487,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 28,"up" : 28,"step" : 2}]}]},{"low":488,"up":495,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 29,"up" : 29,"step" : 2}]}]},{"low":496,"up":503,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 30,"up" : 30,"step" : 2}]}]},{"low":504,"up":511,"cElement": [{"cName": "ctx.enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 31,"up" : 31,"step" : 2}]}]},{"low":512,"up":519,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":520,"up":527,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]},{"low":528,"up":535,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]},{"low":536,"up":543,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]},{"low":544,"up":551,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]},{"low":552,"up":559,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]},{"low":560,"up":567,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]},{"low":568,"up":575,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]},{"low":576,"up":583,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]},{"low":584,"up":591,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]},{"low":592,"up":599,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]},{"low":600,"up":607,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]},{"low":608,"up":615,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]},{"low":616,"up":623,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]},{"low":624,"up":631,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]},{"low":632,"up":639,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]},{"low":640,"up":647,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]},{"low":648,"up":655,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]},{"low":656,"up":663,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 18,"up" : 18,"step" : 2}]}]},{"low":664,"up":671,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 19,"up" : 19,"step" : 2}]}]},{"low":672,"up":679,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 20,"up" : 20,"step" : 2}]}]},{"low":680,"up":687,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 21,"up" : 21,"step" : 2}]}]},{"low":688,"up":695,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 22,"up" : 22,"step" : 2}]}]},{"low":696,"up":703,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 23,"up" : 23,"step" : 2}]}]},{"low":704,"up":711,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 24,"up" : 24,"step" : 2}]}]},{"low":712,"up":719,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 25,"up" : 25,"step" : 2}]}]},{"low":720,"up":727,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 26,"up" : 26,"step" : 2}]}]},{"low":728,"up":735,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 27,"up" : 27,"step" : 2}]}]},{"low":736,"up":743,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 28,"up" : 28,"step" : 2}]}]},{"low":744,"up":751,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 29,"up" : 29,"step" : 2}]}]},{"low":752,"up":759,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 30,"up" : 30,"step" : 2}]}]},{"low":760,"up":767,"cElement": [{"cName": "ctx.deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 31,"up" : 31,"step" : 2}]}]},{"low":768,"up":775,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":776,"up":783,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]},{"low":784,"up":791,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]},{"low":792,"up":799,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]},{"low":800,"up":807,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]},{"low":808,"up":815,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]},{"low":816,"up":823,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]},{"low":824,"up":831,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]},{"low":832,"up":839,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]},{"low":840,"up":847,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]},{"low":848,"up":855,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]},{"low":856,"up":863,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]},{"low":864,"up":871,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]},{"low":872,"up":879,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]},{"low":880,"up":887,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]},{"low":888,"up":895,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]},{"low":896,"up":903,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]},{"low":904,"up":911,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]},{"low":912,"up":919,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 18,"up" : 18,"step" : 2}]}]},{"low":920,"up":927,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 19,"up" : 19,"step" : 2}]}]},{"low":928,"up":935,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 20,"up" : 20,"step" : 2}]}]},{"low":936,"up":943,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 21,"up" : 21,"step" : 2}]}]},{"low":944,"up":951,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 22,"up" : 22,"step" : 2}]}]},{"low":952,"up":959,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 23,"up" : 23,"step" : 2}]}]},{"low":960,"up":967,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 24,"up" : 24,"step" : 2}]}]},{"low":968,"up":975,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 25,"up" : 25,"step" : 2}]}]},{"low":976,"up":983,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 26,"up" : 26,"step" : 2}]}]},{"low":984,"up":991,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 27,"up" : 27,"step" : 2}]}]},{"low":992,"up":999,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 28,"up" : 28,"step" : 2}]}]},{"low":1000,"up":1007,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 29,"up" : 29,"step" : 2}]}]},{"low":1008,"up":1015,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 30,"up" : 30,"step" : 2}]}]},{"low":1016,"up":1023,"cElement": [{"cName": "ctx.dummy","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_offset"},"direction": "READWRITE","cArray": [{"low" : 31,"up" : 31,"step" : 2}]}]}]} , 
 	{ "Name" : "buf_r", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buf","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "buf_offset"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "ctx_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "k","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "buf_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ctx_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ctx_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ctx_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_WDATA sc_out sc_lv 1024 signal 0 } 
	{ m_axi_ctx_WSTRB sc_out sc_lv 128 signal 0 } 
	{ m_axi_ctx_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ctx_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ctx_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_RDATA sc_in sc_lv 1024 signal 0 } 
	{ m_axi_ctx_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ctx_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ctx_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_buf_r_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_buf_r_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_buf_r_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_buf_r_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_buf_r_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_buf_r_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_buf_r_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_buf_r_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_buf_r_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_buf_r_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_buf_r_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_buf_r_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_buf_r_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_buf_r_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_buf_r_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_buf_r_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_buf_r_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_buf_r_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_buf_r_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_buf_r_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_buf_r_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_buf_r_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_buf_r_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_buf_r_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_buf_r_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_buf_r_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_buf_r_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_buf_r_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_buf_r_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_buf_r_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_buf_r_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_buf_r_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_buf_r_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_buf_r_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_buf_r_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_buf_r_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_buf_r_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_buf_r_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_buf_r_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_buf_r_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_buf_r_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_buf_r_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_buf_r_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_buf_r_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_buf_r_BUSER sc_in sc_lv 1 signal 1 } 
	{ ctx_offset sc_in sc_lv 32 signal 2 } 
	{ k_Addr_A sc_out sc_lv 32 signal 3 } 
	{ k_EN_A sc_out sc_logic 1 signal 3 } 
	{ k_WEN_A sc_out sc_lv 1 signal 3 } 
	{ k_Din_A sc_out sc_lv 8 signal 3 } 
	{ k_Dout_A sc_in sc_lv 8 signal 3 } 
	{ k_Clk_A sc_out sc_logic 1 signal 3 } 
	{ k_Rst_A sc_out sc_logic 1 signal 3 } 
	{ buf_offset sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_ctx_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ctx_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ctx_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ctx_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWID" }} , 
 	{ "name": "m_axi_ctx_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ctx_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ctx_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ctx_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ctx_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ctx_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ctx_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ctx_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ctx_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ctx_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WVALID" }} , 
 	{ "name": "m_axi_ctx_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WREADY" }} , 
 	{ "name": "m_axi_ctx_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ctx", "role": "WDATA" }} , 
 	{ "name": "m_axi_ctx_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ctx", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ctx_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WLAST" }} , 
 	{ "name": "m_axi_ctx_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WID" }} , 
 	{ "name": "m_axi_ctx_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WUSER" }} , 
 	{ "name": "m_axi_ctx_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ctx_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ctx_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ctx_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARID" }} , 
 	{ "name": "m_axi_ctx_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ctx_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ctx_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ctx_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ctx_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ctx_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ctx_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ctx_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ctx_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ctx_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RVALID" }} , 
 	{ "name": "m_axi_ctx_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RREADY" }} , 
 	{ "name": "m_axi_ctx_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ctx", "role": "RDATA" }} , 
 	{ "name": "m_axi_ctx_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RLAST" }} , 
 	{ "name": "m_axi_ctx_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RID" }} , 
 	{ "name": "m_axi_ctx_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RUSER" }} , 
 	{ "name": "m_axi_ctx_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "RRESP" }} , 
 	{ "name": "m_axi_ctx_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BVALID" }} , 
 	{ "name": "m_axi_ctx_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BREADY" }} , 
 	{ "name": "m_axi_ctx_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "BRESP" }} , 
 	{ "name": "m_axi_ctx_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BID" }} , 
 	{ "name": "m_axi_ctx_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BUSER" }} , 
 	{ "name": "m_axi_buf_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_buf_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_buf_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_buf_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWID" }} , 
 	{ "name": "m_axi_buf_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_buf_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_buf_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_buf_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_buf_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_buf_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_buf_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_buf_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_buf_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_buf_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_buf_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_buf_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_buf_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_buf_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_buf_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WID" }} , 
 	{ "name": "m_axi_buf_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_buf_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_buf_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_buf_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_buf_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARID" }} , 
 	{ "name": "m_axi_buf_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_buf_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_buf_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_buf_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_buf_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_buf_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_buf_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_buf_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_buf_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_buf_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_buf_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_buf_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_buf_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_buf_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RID" }} , 
 	{ "name": "m_axi_buf_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_buf_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_buf_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_buf_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_buf_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_buf_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BID" }} , 
 	{ "name": "m_axi_buf_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BUSER" }} , 
 	{ "name": "ctx_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_offset", "role": "default" }} , 
 	{ "name": "k_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k", "role": "Addr_A" }} , 
 	{ "name": "k_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "EN_A" }} , 
 	{ "name": "k_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "WEN_A" }} , 
 	{ "name": "k_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "k", "role": "Din_A" }} , 
 	{ "name": "k_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "k", "role": "Dout_A" }} , 
 	{ "name": "k_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "Clk_A" }} , 
 	{ "name": "k_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "Rst_A" }} , 
 	{ "name": "buf_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "29", "48", "65", "67", "68", "70"],
		"CDFG" : "encrypt",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_1_fu_527"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_cpy_fu_538"}],
		"Port" : [
			{"Name" : "ctx", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "ctx_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_aes_addRoundKey_cpy_fu_538", "Port" : "ctx"},
					{"ID" : "48", "SubInstance" : "grp_aes_addRoundKey_fu_548", "Port" : "key"},
					{"ID" : "65", "SubInstance" : "grp_aes_expandEncKey_fu_561", "Port" : "k"},
					{"ID" : "3", "SubInstance" : "grp_aes_expandEncKey_1_fu_527", "Port" : "k"}]},
			{"Name" : "buf_r", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "buf_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_aes_addRoundKey_cpy_fu_538", "Port" : "buf_r"},
					{"ID" : "48", "SubInstance" : "grp_aes_addRoundKey_fu_548", "Port" : "buf_r"},
					{"ID" : "67", "SubInstance" : "grp_aes_mixColumns_fu_571", "Port" : "buf_r"},
					{"ID" : "68", "SubInstance" : "grp_aes_subBytes_fu_578", "Port" : "buf_r"},
					{"ID" : "70", "SubInstance" : "grp_aes_shiftRows_fu_587", "Port" : "buf_r"}]},
			{"Name" : "ctx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_aes_subBytes_fu_578", "Port" : "sbox"},
					{"ID" : "65", "SubInstance" : "grp_aes_expandEncKey_fu_561", "Port" : "sbox"},
					{"ID" : "3", "SubInstance" : "grp_aes_expandEncKey_1_fu_527", "Port" : "sbox"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_aes_addRoundKey_fu_548", "SubBlockPort" : ["buf_r_blk_n_AR", "buf_r_blk_n_R", "buf_r_blk_n_AW", "buf_r_blk_n_W", "buf_r_blk_n_B", "key_blk_n_AR", "key_blk_n_R"]},
			{"SubInstance" : "grp_aes_expandEncKey_fu_561", "SubBlockPort" : ["k_blk_n_AR", "k_blk_n_R", "k_blk_n_AW", "k_blk_n_W", "k_blk_n_B"]},
			{"SubInstance" : "grp_aes_mixColumns_fu_571", "SubBlockPort" : ["buf_r_blk_n_AR", "buf_r_blk_n_R", "buf_r_blk_n_AW", "buf_r_blk_n_W", "buf_r_blk_n_B"]},
			{"SubInstance" : "grp_aes_subBytes_fu_578", "SubBlockPort" : ["buf_r_blk_n_AR", "buf_r_blk_n_R", "buf_r_blk_n_AW", "buf_r_blk_n_W", "buf_r_blk_n_B"]},
			{"SubInstance" : "grp_aes_shiftRows_fu_587", "SubBlockPort" : ["buf_r_blk_n_AR", "buf_r_blk_n_R", "buf_r_blk_n_AW", "buf_r_blk_n_W", "buf_r_blk_n_B"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_ctx_m_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_buf_r_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "aes_expandEncKey_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "k", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "k_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "k_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "k_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "k_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "k_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "k_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rc_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.sbox_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U1", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U2", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U3", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U4", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U5", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U6", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U7", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U8", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U9", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U10", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U11", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U12", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U13", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U14", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U15", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U16", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U17", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U18", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U19", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U20", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U21", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U22", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U23", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_1_fu_527.encrypt_lshr_256ncud_U24", "Parent" : "3"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "aes_addRoundKey_cpy",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_r", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "buf_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "ctx_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ctx_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U29", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U30", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U31", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U32", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U33", "Parent" : "29"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U34", "Parent" : "29"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U35", "Parent" : "29"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U36", "Parent" : "29"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U37", "Parent" : "29"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U38", "Parent" : "29"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U39", "Parent" : "29"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U40", "Parent" : "29"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U41", "Parent" : "29"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U42", "Parent" : "29"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U43", "Parent" : "29"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U44", "Parent" : "29"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U45", "Parent" : "29"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_538.encrypt_lshr_256ncud_x_U46", "Parent" : "29"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548", "Parent" : "0", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "aes_addRoundKey",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "buf_r_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_R", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_AW", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_W", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_B", "Type" : "RtlPort"}]},
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "key", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "key_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "key_blk_n_R", "Type" : "RtlPort"}]},
			{"Name" : "key_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_offset_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U61", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U62", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U63", "Parent" : "48"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U64", "Parent" : "48"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U65", "Parent" : "48"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U66", "Parent" : "48"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U67", "Parent" : "48"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U68", "Parent" : "48"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U69", "Parent" : "48"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U70", "Parent" : "48"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U71", "Parent" : "48"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U72", "Parent" : "48"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U73", "Parent" : "48"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U74", "Parent" : "48"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U75", "Parent" : "48"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_548.encrypt_lshr_256ncud_x_U76", "Parent" : "48"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_fu_561", "Parent" : "0", "Child" : ["66"],
		"CDFG" : "aes_expandEncKey",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "k", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "k_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "k_blk_n_R", "Type" : "RtlPort"},
					{"Name" : "k_blk_n_AW", "Type" : "RtlPort"},
					{"Name" : "k_blk_n_W", "Type" : "RtlPort"},
					{"Name" : "k_blk_n_B", "Type" : "RtlPort"}]},
			{"Name" : "k_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rc_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_fu_561.sbox_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_mixColumns_fu_571", "Parent" : "0",
		"CDFG" : "aes_mixColumns",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "buf_r_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_R", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_AW", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_W", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_B", "Type" : "RtlPort"}]},
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_subBytes_fu_578", "Parent" : "0", "Child" : ["69"],
		"CDFG" : "aes_subBytes",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "buf_r_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_R", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_AW", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_W", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_B", "Type" : "RtlPort"}]},
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_subBytes_fu_578.sbox_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_shiftRows_fu_587", "Parent" : "0",
		"CDFG" : "aes_shiftRows",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "buf_r_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_R", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_AW", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_W", "Type" : "RtlPort"},
					{"Name" : "buf_r_blk_n_B", "Type" : "RtlPort"}]},
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	encrypt {
		ctx {Type IO LastRead 125 FirstWrite -1}
		buf_r {Type IO LastRead 242 FirstWrite 10}
		ctx_offset {Type I LastRead 32 FirstWrite -1}
		k {Type I LastRead 31 FirstWrite -1}
		buf_offset {Type I LastRead 38 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_expandEncKey_1 {
		k {Type IO LastRead 101 FirstWrite 14}
		k_offset {Type I LastRead 0 FirstWrite -1}
		rc_read {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_addRoundKey_cpy {
		buf_r {Type IO LastRead 140 FirstWrite 18}
		buf_offset {Type I LastRead 0 FirstWrite -1}
		ctx {Type IO LastRead 125 FirstWrite 33}
		ctx_offset {Type I LastRead 0 FirstWrite -1}}
	aes_addRoundKey {
		buf_r {Type IO LastRead 242 FirstWrite 16}
		buf_offset {Type I LastRead 6 FirstWrite -1}
		key {Type I LastRead 7 FirstWrite -1}
		key_offset {Type I LastRead 0 FirstWrite -1}
		key_offset_offset {Type I LastRead 7 FirstWrite -1}}
	aes_expandEncKey {
		k {Type IO LastRead 19 FirstWrite 18}
		k_offset {Type I LastRead 0 FirstWrite -1}
		rc_read {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_mixColumns {
		buf_r {Type IO LastRead 85 FirstWrite 12}
		buf_offset {Type I LastRead 0 FirstWrite -1}}
	aes_subBytes {
		buf_r {Type IO LastRead 236 FirstWrite 10}
		buf_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_shiftRows {
		buf_r {Type IO LastRead 116 FirstWrite 10}
		buf_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11812", "Max" : "12406"}
	, {"Name" : "Interval", "Min" : "11813", "Max" : "12407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx { m_axi {  { m_axi_ctx_AWVALID VALID 1 1 }  { m_axi_ctx_AWREADY READY 0 1 }  { m_axi_ctx_AWADDR ADDR 1 32 }  { m_axi_ctx_AWID ID 1 1 }  { m_axi_ctx_AWLEN LEN 1 8 }  { m_axi_ctx_AWSIZE SIZE 1 3 }  { m_axi_ctx_AWBURST BURST 1 2 }  { m_axi_ctx_AWLOCK LOCK 1 2 }  { m_axi_ctx_AWCACHE CACHE 1 4 }  { m_axi_ctx_AWPROT PROT 1 3 }  { m_axi_ctx_AWQOS QOS 1 4 }  { m_axi_ctx_AWREGION REGION 1 4 }  { m_axi_ctx_AWUSER USER 1 1 }  { m_axi_ctx_WVALID VALID 1 1 }  { m_axi_ctx_WREADY READY 0 1 }  { m_axi_ctx_WDATA DATA 1 1024 }  { m_axi_ctx_WSTRB STRB 1 128 }  { m_axi_ctx_WLAST LAST 1 1 }  { m_axi_ctx_WID ID 1 1 }  { m_axi_ctx_WUSER USER 1 1 }  { m_axi_ctx_ARVALID VALID 1 1 }  { m_axi_ctx_ARREADY READY 0 1 }  { m_axi_ctx_ARADDR ADDR 1 32 }  { m_axi_ctx_ARID ID 1 1 }  { m_axi_ctx_ARLEN LEN 1 8 }  { m_axi_ctx_ARSIZE SIZE 1 3 }  { m_axi_ctx_ARBURST BURST 1 2 }  { m_axi_ctx_ARLOCK LOCK 1 2 }  { m_axi_ctx_ARCACHE CACHE 1 4 }  { m_axi_ctx_ARPROT PROT 1 3 }  { m_axi_ctx_ARQOS QOS 1 4 }  { m_axi_ctx_ARREGION REGION 1 4 }  { m_axi_ctx_ARUSER USER 1 1 }  { m_axi_ctx_RVALID VALID 0 1 }  { m_axi_ctx_RREADY READY 1 1 }  { m_axi_ctx_RDATA DATA 0 1024 }  { m_axi_ctx_RLAST LAST 0 1 }  { m_axi_ctx_RID ID 0 1 }  { m_axi_ctx_RUSER USER 0 1 }  { m_axi_ctx_RRESP RESP 0 2 }  { m_axi_ctx_BVALID VALID 0 1 }  { m_axi_ctx_BREADY READY 1 1 }  { m_axi_ctx_BRESP RESP 0 2 }  { m_axi_ctx_BID ID 0 1 }  { m_axi_ctx_BUSER USER 0 1 } } }
	buf_r { m_axi {  { m_axi_buf_r_AWVALID VALID 1 1 }  { m_axi_buf_r_AWREADY READY 0 1 }  { m_axi_buf_r_AWADDR ADDR 1 32 }  { m_axi_buf_r_AWID ID 1 1 }  { m_axi_buf_r_AWLEN LEN 1 8 }  { m_axi_buf_r_AWSIZE SIZE 1 3 }  { m_axi_buf_r_AWBURST BURST 1 2 }  { m_axi_buf_r_AWLOCK LOCK 1 2 }  { m_axi_buf_r_AWCACHE CACHE 1 4 }  { m_axi_buf_r_AWPROT PROT 1 3 }  { m_axi_buf_r_AWQOS QOS 1 4 }  { m_axi_buf_r_AWREGION REGION 1 4 }  { m_axi_buf_r_AWUSER USER 1 1 }  { m_axi_buf_r_WVALID VALID 1 1 }  { m_axi_buf_r_WREADY READY 0 1 }  { m_axi_buf_r_WDATA DATA 1 32 }  { m_axi_buf_r_WSTRB STRB 1 4 }  { m_axi_buf_r_WLAST LAST 1 1 }  { m_axi_buf_r_WID ID 1 1 }  { m_axi_buf_r_WUSER USER 1 1 }  { m_axi_buf_r_ARVALID VALID 1 1 }  { m_axi_buf_r_ARREADY READY 0 1 }  { m_axi_buf_r_ARADDR ADDR 1 32 }  { m_axi_buf_r_ARID ID 1 1 }  { m_axi_buf_r_ARLEN LEN 1 8 }  { m_axi_buf_r_ARSIZE SIZE 1 3 }  { m_axi_buf_r_ARBURST BURST 1 2 }  { m_axi_buf_r_ARLOCK LOCK 1 2 }  { m_axi_buf_r_ARCACHE CACHE 1 4 }  { m_axi_buf_r_ARPROT PROT 1 3 }  { m_axi_buf_r_ARQOS QOS 1 4 }  { m_axi_buf_r_ARREGION REGION 1 4 }  { m_axi_buf_r_ARUSER USER 1 1 }  { m_axi_buf_r_RVALID VALID 0 1 }  { m_axi_buf_r_RREADY READY 1 1 }  { m_axi_buf_r_RDATA DATA 0 32 }  { m_axi_buf_r_RLAST LAST 0 1 }  { m_axi_buf_r_RID ID 0 1 }  { m_axi_buf_r_RUSER USER 0 1 }  { m_axi_buf_r_RRESP RESP 0 2 }  { m_axi_buf_r_BVALID VALID 0 1 }  { m_axi_buf_r_BREADY READY 1 1 }  { m_axi_buf_r_BRESP RESP 0 2 }  { m_axi_buf_r_BID ID 0 1 }  { m_axi_buf_r_BUSER USER 0 1 } } }
	ctx_offset { ap_none {  { ctx_offset in_data 0 32 } } }
	k { bram {  { k_Addr_A mem_address 1 32 }  { k_EN_A mem_ce 1 1 }  { k_WEN_A mem_we 1 1 }  { k_Din_A mem_din 1 8 }  { k_Dout_A mem_dout 0 8 }  { k_Clk_A mem_clk 1 1 }  { k_Rst_A mem_rst 1 1 } } }
	buf_offset { ap_none {  { buf_offset in_data 0 32 } } }
}

set busDeadlockParameterList { 
	{ ctx { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ buf_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ ctx 1 }
	{ buf_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ ctx 1 }
	{ buf_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
