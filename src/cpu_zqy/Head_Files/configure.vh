//***************** ALL ****************
`define RstEnable  1'b0
`define RstDisable 1'b1


//***************** CPU ****************
//----- mem2_ready_go, define mem2 bypass immediately when data return -----
`define MEM2_bypass
//----- Speed up Simulation, define it to make inst cache is always used -----
//`define Simulation
//----- Analyze Predictor -----
`define BranchAnalyze
//----- Use GKD TLB -----
//`define GKD
//----- Inst Cache Have rdata2 -----
`define Cache_Have_rdata2
//----- Use prediction -----
`define UsePredictor
//----- Use Cache Inst -----
`define Cacheinst
//----- Use Cache Inst PreFetch ----- //TODO:add exception handle
//`define CachePreFetch
//----- Use LOOGSON232 prid -----
//`define LOONGSON


//***************** Predictor ****************
//----- BHR -----
`define BHR_BITS        5    //this define the bits of BHR(branch history register)
`define HASH_BITS       8    //this define the num of BHR in the BHT(branch history table)
`define BHT_pht_BITS    10   //{BHR,0~~~}^PC[BHT_pht_BITS+1,2] is the index of PHT in BHR
//----- PHT -----
`define PHT_BITS 10
//----- BTB -----
`define BTB_BITSi 10   //BTB take addr[1+BTB_BITSi:2] as index
`define BTB_BITSt 20   //BTB take addr[BTB_BITSi+BTB_BITSt+1:2+BTB_BITSi] as tag
`define RAS_NUM 8
`define TLB_NUM 32      //WARNING:need to change cp0.config1
`define InstBuffer_length 8

`define Reset_PC    32'hBFC00000
//`define PHT_BITS `BHR_BITS+`PC_BITS     //PHT take addr[1+PHT_BITS:2] as index

//***************** CACHE ****************
`define DATA_CACHE_WAY      2
`define DATA_TAG_BITS       20
`define DATA_INDEX_BITS     7
`define DATA_OFFSET_BITS    5
`define DATA_READ_ID        1
`define DATA_WRITE_ID       2

`define INST_CACHE_WAY      4
`define INST_TAG_BITS       20
`define INST_INDEX_BITS     7
`define INST_OFFSET_BITS    5
`define INST_READ_ID        3
`define INST_WRITE_ID       4