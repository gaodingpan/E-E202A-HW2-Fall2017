;******************************************************************************
;* PRU C/C++ Codegen                                              Unix v2.1.0 *
;* Date/Time created: Sun Mar  1 21:29:15 2015                                *
;******************************************************************************
	.compiler_opts --abi=eabi --endian=little --hll_source=on --object_format=elf --silicon_version=3 --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("pru_main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI PRU C/C++ Codegen Unix v2.1.0 Copyright (c) 2012-2014 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/root/ucla-nesl-pru-lib/examples/timestamp")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("__halt")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__halt")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("__delay_cycles")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("__delay_cycles")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$2


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("memset")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("/usr/share/ti/cgt-pru/include/string.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x69)
	.dwattr $C$DW$4, DW_AT_decl_column(0x16)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$4

	.data
	.align	1
	.elfsym	||IEP_REG||,SYM_SIZE(4)
||IEP_REG||:
	.bits	188416,32			; IEP_REG @ 0

$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("IEP_REG")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("IEP_REG")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr ||IEP_REG||]
	.dwattr $C$DW$8, DW_AT_decl_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$8, DW_AT_decl_column(0x12)
	.data
	.align	1
	.elfsym	||IEP_TMR_CNT||,SYM_SIZE(4)
||IEP_TMR_CNT||:
	.bits	188428,32			; IEP_TMR_CNT @ 0

$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("IEP_TMR_CNT")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("IEP_TMR_CNT")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr ||IEP_TMR_CNT||]
	.dwattr $C$DW$9, DW_AT_decl_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$9, DW_AT_decl_column(0x12)
	.global	||num_samples||
	.data
	.align	1
	.elfsym	||num_samples||,SYM_SIZE(4)
||num_samples||:
	.bits	8000,32			; num_samples @ 0

$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("num_samples")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("num_samples")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr ||num_samples||]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("pru_main.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x25)
	.dwattr $C$DW$10, DW_AT_decl_column(0x05)
	.global	||input_high||
	.data
	.align	1
	.elfsym	||input_high||,SYM_SIZE(4)
||input_high||:
	.bits	0,32			; input_high @ 0

$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("input_high")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("input_high")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr ||input_high||]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("pru_main.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x26)
	.dwattr $C$DW$11, DW_AT_decl_column(0x05)
;	acpiapru -@/tmp/02057OpAAEf 
	.sect	".text:init_iep_time"
	.clink
	.global	||init_iep_time||

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("init_iep_time")
	.dwattr $C$DW$12, DW_AT_low_pc(||init_iep_time||)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("init_iep_time")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_TI_begin_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$12, DW_AT_decl_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$12, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../../include/nesl_pru_iep.h",line 28,column 1,is_stmt,address ||init_iep_time||,isa 0

	.dwfde $C$DW$CIE, ||init_iep_time||
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("time")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_regx 0x38]
;----------------------------------------------------------------------
;  27 | inline void init_iep_time(struct iep_time *time)                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: init_iep_time                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Auto,  0 SOE     *
;***************************************************************

||init_iep_time||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("time")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg8 0]
        SBBO      &r14, r2, 0, 4        ; [] |28| time
	.dwpsn	file "../../include/nesl_pru_iep.h",line 29,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  29 | DISABLE_IEP_TMR();                                                     
;----------------------------------------------------------------------
        LDI       r0, ||IEP_REG||       ; [] |29| IEP_REG
        LBBO      &r1, r0, 0, 4         ; [] |29| 
        LDI       r0, 0x0000            ; [] |29| 
        SBBO      &r0, r1, 0, 4         ; [] |29| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 30,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  30 | ENABLE_IEP_TMR();                                                      
;----------------------------------------------------------------------
        LDI       r0, ||IEP_REG||       ; [] |30| IEP_REG
        LBBO      &r0, r0, 0, 4         ; [] |30| 
        LBBO      &r1, r0, 0, 4         ; [] |30| 
        OR        r1, r1, 0x11          ; [] |30| 
        SBBO      &r1, r0, 0, 4         ; [] |30| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 31,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  31 | IEP_CNT = 0;                                                           
;----------------------------------------------------------------------
        LDI       r0, 0x0000            ; [] |31| 
        LDI       r1, ||IEP_TMR_CNT||   ; [] |31| IEP_TMR_CNT
        LBBO      &r1, r1, 0, 4         ; [] |31| 
        SBBO      &r0, r1, 0, 4         ; [] |31| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 33,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  33 | time->last_iep_cnt = 0;                                                
;----------------------------------------------------------------------
        LBBO      &r1, r2, 0, 4         ; [] |33| time
        SBBO      &r0, r1, 8, 4         ; [] |33| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 34,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  34 | time->ts_ns = 0;                                                       
;----------------------------------------------------------------------
        ZERO      &r0, 8                ; [] |34| 
        LBBO      &r14, r2, 0, 4        ; [] |34| time
        SBBO      &r0, r14, 0, 8        ; [] |34| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 35,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  35 | time->offset = 0;                                                      
;----------------------------------------------------------------------
        LBBO      &r14, r2, 0, 4        ; [] |35| time
        SBBO      &r0, r14, 12, 8       ; [] |35| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 36,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x24)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text:iep_get_time"
	.clink
	.global	||iep_get_time||

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("iep_get_time")
	.dwattr $C$DW$16, DW_AT_low_pc(||iep_get_time||)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("iep_get_time")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$16, DW_AT_decl_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x26)
	.dwattr $C$DW$16, DW_AT_decl_column(0x11)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "../../include/nesl_pru_iep.h",line 39,column 1,is_stmt,address ||iep_get_time||,isa 0

	.dwfde $C$DW$CIE, ||iep_get_time||
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("time")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_regx 0x38]
;----------------------------------------------------------------------
;  38 | inline uint64_t iep_get_time(struct iep_time *time)                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: iep_get_time                  FR SIZE:  20           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           20 Auto,  0 SOE     *
;***************************************************************

||iep_get_time||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x14          ; [] 
	.dwcfi	cfa_offset, 20
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("time")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg8 0]
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("iep_cnt")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("iep_cnt")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg8 4]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("last_iep_cnt")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("last_iep_cnt")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg8 8]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("ts_ns")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("ts_ns")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg8 12]
        SBBO      &r14, r2, 0, 4        ; [] |39| time
	.dwpsn	file "../../include/nesl_pru_iep.h",line 40,column 22,is_stmt,isa 0
;----------------------------------------------------------------------
;  40 | uint32_t iep_cnt = IEP_CNT;                                            
;----------------------------------------------------------------------
        LDI       r0, ||IEP_TMR_CNT||   ; [] |40| IEP_TMR_CNT
        LBBO      &r0, r0, 0, 4         ; [] |40| 
        LBBO      &r0, r0, 0, 4         ; [] |40| 
        SBBO      &r0, r2, 4, 4         ; [] |40| iep_cnt
	.dwpsn	file "../../include/nesl_pru_iep.h",line 41,column 27,is_stmt,isa 0
;----------------------------------------------------------------------
;  41 | uint32_t last_iep_cnt = time->last_iep_cnt;                            
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |41| time
        LBBO      &r0, r0, 8, 4         ; [] |41| 
        SBBO      &r0, r2, 8, 4         ; [] |41| last_iep_cnt
	.dwpsn	file "../../include/nesl_pru_iep.h",line 42,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
;  42 | uint64_t ts_ns = time->ts_ns;                                          
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |42| time
        LBBO      &r0, r0, 0, 8         ; [] |42| 
        SBBO      &r0, r2, 12, 8        ; [] |42| ts_ns
	.dwpsn	file "../../include/nesl_pru_iep.h",line 44,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  44 | if (iep_cnt < last_iep_cnt) {                                          
;  45 |     // roll over happened                                              
;----------------------------------------------------------------------
        LBBO      &r0, r2, 8, 4         ; [] |44| last_iep_cnt
        LBBO      &r1, r2, 4, 4         ; [] |44| iep_cnt
        QBGE      ||$C$L1||, r0, r1     ; [] |44| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../../include/nesl_pru_iep.h",line 46,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  46 | ts_ns +=                                                               
;  47 |     IEP_CNT_TO_NS((UINT32_MAX - last_iep_cnt)                          
;  48 |             + iep_cnt);                                                
;----------------------------------------------------------------------
        RSB       r0, r0, r1            ; [] |46| 
        LSL       r1, r0, 0x02          ; [] |46| 
        ADD       r1, r1, r0            ; [] |46| 
        LDI32     r0, 0xfffffffb        ; [] |46| 
        ADD       r0, r1, r0            ; [] |46| 
        ZERO      &r1, 4                ; [] |46| 
        LBBO      &r14, r2, 12, 8       ; [] |46| ts_ns
        ADD       r0, r0, r14           ; [] |46| 
        ADC       r1, r1, r15           ; [] |46| 
        SBBO      &r0, r2, 12, 8        ; [] |46| ts_ns
	.dwpsn	file "../../include/nesl_pru_iep.h",line 49,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  49 | } else {                                                               
;----------------------------------------------------------------------
        JMP       ||$C$L2||             ; [] |49| 
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../../include/nesl_pru_iep.h",line 50,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  50 | ts_ns += IEP_CNT_TO_NS(iep_cnt - last_iep_cnt);                        
;----------------------------------------------------------------------
        RSB       r0, r0, r1            ; [] |50| 
        LSL       r1, r0, 0x02          ; [] |50| 
        ADD       r0, r1, r0            ; [] |50| 
        ZERO      &r1, 4                ; [] |50| 
        LBBO      &r14, r2, 12, 8       ; [] |50| ts_ns
        ADD       r0, r0, r14           ; [] |50| 
        ADC       r1, r1, r15           ; [] |50| 
        SBBO      &r0, r2, 12, 8        ; [] |50| ts_ns
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../../include/nesl_pru_iep.h",line 53,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  53 | time->last_iep_cnt = iep_cnt;                                          
;----------------------------------------------------------------------
        LBBO      &r0, r2, 4, 4         ; [] |53| iep_cnt
        LBBO      &r1, r2, 0, 4         ; [] |53| time
        SBBO      &r0, r1, 8, 4         ; [] |53| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 54,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | time->ts_ns = ts_ns;                                                   
;----------------------------------------------------------------------
        LBBO      &r0, r2, 12, 8        ; [] |54| ts_ns
        LBBO      &r14, r2, 0, 4        ; [] |54| time
        SBBO      &r0, r14, 0, 8        ; [] |54| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 56,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  56 | return ts_ns + time->offset;                                           
;----------------------------------------------------------------------
        LBBO      &r0, r2, 12, 8        ; [] |56| ts_ns
        LBBO      &r14, r2, 0, 4        ; [] |56| time
        LBBO      &r14, r14, 12, 8      ; [] |56| 
        ADD       r14, r14, r0          ; [] |56| 
        ADC       r15, r15, r1          ; [] |56| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 57,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x14          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x39)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text:iep_adj_time"
	.clink
	.global	||iep_adj_time||

$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("iep_adj_time")
	.dwattr $C$DW$23, DW_AT_low_pc(||iep_adj_time||)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("iep_adj_time")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x3b)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$23, DW_AT_decl_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$23, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "../../include/nesl_pru_iep.h",line 61,column 1,is_stmt,address ||iep_adj_time||,isa 0

	.dwfde $C$DW$CIE, ||iep_adj_time||
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("time")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_regx 0x38]
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ts_ns")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("ts_ns")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("external_ts_ns")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("external_ts_ns")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_regx 0x44]
;----------------------------------------------------------------------
;  59 | inline void iep_adj_time(struct iep_time *time,                        
;  60 | uint64_t ts_ns, uint64_t external_ts_ns)                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: iep_adj_time                  FR SIZE:  20           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           20 Auto,  0 SOE     *
;***************************************************************

||iep_adj_time||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x14          ; [] 
	.dwcfi	cfa_offset, 20
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("time")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg8 0]
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("ts_ns")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("ts_ns")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg8 4]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("external_ts_ns")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("external_ts_ns")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg8 12]
        SBBO      &r17, r2, 12, 8       ; [] |61| external_ts_ns
        SBBO      &r15, r2, 4, 8        ; [] |61| ts_ns
        SBBO      &r14, r2, 0, 4        ; [] |61| time
	.dwpsn	file "../../include/nesl_pru_iep.h",line 62,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  62 | time->offset += external_ts_ns - ts_ns;                                
;----------------------------------------------------------------------
        LBBO      &r16, r2, 0, 4        ; [] |62| time
        LBBO      &r0, r16, 12, 8       ; [] |62| 
        LBBO      &r14, r2, 12, 8       ; [] |62| external_ts_ns
        ADD       r14, r14, r0          ; [] |62| 
        ADC       r15, r15, r1          ; [] |62| 
        LBBO      &r0, r2, 4, 8         ; [] |62| ts_ns
        RSB       r0, r0, r14           ; [] |62| 
        RSC       r1, r1, r15           ; [] |62| 
        SBBO      &r0, r16, 12, 8       ; [] |62| 
	.dwpsn	file "../../include/nesl_pru_iep.h",line 63,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x14          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x3f)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text:read_pin"
	.clink
	.global	||read_pin||

$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("read_pin")
	.dwattr $C$DW$31, DW_AT_low_pc(||read_pin||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("read_pin")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$31, DW_AT_TI_begin_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x15)
	.dwattr $C$DW$31, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$31, DW_AT_decl_column(0x15)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 48,column 1,is_stmt,address ||read_pin||,isa 0

	.dwfde $C$DW$CIE, ||read_pin||
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pin")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_regx 0x38]
;----------------------------------------------------------------------
;  47 | inline unsigned int read_pin(enum pru_pin pin)                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: read_pin                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Auto,  0 SOE     *
;***************************************************************

||read_pin||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg8 0]
        SBBO      &r14, r2, 0, 4        ; [] |48| pin
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 49,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  49 | return __R31 & pin;                                                    
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |49| pin
        AND       r14, r31, r0          ; [] |49| 
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 50,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x32)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:toggle_pin"
	.clink
	.global	||toggle_pin||

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("toggle_pin")
	.dwattr $C$DW$35, DW_AT_low_pc(||toggle_pin||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("toggle_pin")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x34)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$35, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x34)
	.dwattr $C$DW$35, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 53,column 1,is_stmt,address ||toggle_pin||,isa 0

	.dwfde $C$DW$CIE, ||toggle_pin||
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pin")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_regx 0x38]
;----------------------------------------------------------------------
;  52 | inline void toggle_pin(enum pru_pin pin)                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: toggle_pin                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Auto,  0 SOE     *
;***************************************************************

||toggle_pin||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg8 0]
        SBBO      &r14, r2, 0, 4        ; [] |53| pin
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 54,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | __R30 ^= pin;                                                          
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |54| pin
        XOR       r30, r30, r0          ; [] |54| 
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 55,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x37)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:assert_pin"
	.clink
	.global	||assert_pin||

$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("assert_pin")
	.dwattr $C$DW$39, DW_AT_low_pc(||assert_pin||)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("assert_pin")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_TI_begin_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x39)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$39, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x39)
	.dwattr $C$DW$39, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 58,column 1,is_stmt,address ||assert_pin||,isa 0

	.dwfde $C$DW$CIE, ||assert_pin||
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pin")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_regx 0x38]
;----------------------------------------------------------------------
;  57 | inline void assert_pin(enum pru_pin pin)                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: assert_pin                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Auto,  0 SOE     *
;***************************************************************

||assert_pin||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg8 0]
        SBBO      &r14, r2, 0, 4        ; [] |58| pin
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 59,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | __R30 |= pin;                                                          
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |59| pin
        OR        r30, r30, r0          ; [] |59| 
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 60,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x3c)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:deassert_pin"
	.clink
	.global	||deassert_pin||

$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("deassert_pin")
	.dwattr $C$DW$43, DW_AT_low_pc(||deassert_pin||)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("deassert_pin")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_TI_begin_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x3e)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$43, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 63,column 1,is_stmt,address ||deassert_pin||,isa 0

	.dwfde $C$DW$CIE, ||deassert_pin||
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pin")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_regx 0x38]
;----------------------------------------------------------------------
;  62 | inline void deassert_pin(enum pru_pin pin)                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: deassert_pin                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Auto,  0 SOE     *
;***************************************************************

||deassert_pin||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("pin")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg8 0]
        SBBO      &r14, r2, 0, 4        ; [] |63| pin
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 64,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  64 | __R30 &= ~pin;                                                         
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |64| pin
        NOT       r0, r0                ; [] |64| 
        AND       r30, r30, r0          ; [] |64| 
	.dwpsn	file "../../include/nesl_pru_gpio.h",line 65,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x04          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x41)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text:init_ocp"
	.clink
	.global	||init_ocp||

$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("init_ocp")
	.dwattr $C$DW$47, DW_AT_low_pc(||init_ocp||)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("init_ocp")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_TI_begin_file("../../include/nesl_pru_regs.h")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0x22)
	.dwattr $C$DW$47, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$47, DW_AT_decl_file("../../include/nesl_pru_regs.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x22)
	.dwattr $C$DW$47, DW_AT_decl_column(0x06)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../../include/nesl_pru_regs.h",line 35,column 1,is_stmt,address ||init_ocp||,isa 0

	.dwfde $C$DW$CIE, ||init_ocp||
;----------------------------------------------------------------------
;  34 | void init_ocp()                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: init_ocp                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||init_ocp||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../../include/nesl_pru_regs.h",line 36,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  36 | HWREG(PRU_ICSS_CFG + PRU_ICSS_CFG_SYSCFG) &= ~(1 << 4);                
;----------------------------------------------------------------------
        LDI32     r0, 0x00026004        ; [] |36| 
        LBBO      &r1, r0, 0, 4         ; [] |36| 
        CLR       r1, r1, 0x00000004    ; [] |36| 
        SBBO      &r1, r0, 0, 4         ; [] |36| 
	.dwpsn	file "../../include/nesl_pru_regs.h",line 37,column 1,is_stmt,isa 0
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$47, DW_AT_TI_end_file("../../include/nesl_pru_regs.h")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x25)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text:init_rbuffer"
	.clink
	.global	||init_rbuffer||

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("init_rbuffer")
	.dwattr $C$DW$49, DW_AT_low_pc(||init_rbuffer||)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("init_rbuffer")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_TI_begin_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x1a)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$49, DW_AT_decl_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$49, DW_AT_decl_column(0x01)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 27,column 1,is_stmt,address ||init_rbuffer||,isa 0

	.dwfde $C$DW$CIE, ||init_rbuffer||
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rbuf")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_regx 0x38]
;----------------------------------------------------------------------
;  26 | init_rbuffer(struct rbuffer *rbuf)                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: init_rbuffer                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Auto,  2 SOE     *
;***************************************************************

||init_rbuffer||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x06          ; [] 
	.dwcfi	cfa_offset, 6
        SBBO      &r3.b2, r2, 4, 2      ; [] 
	.dwcfi	save_reg_to_mem, 14, -2
	.dwcfi	save_reg_to_mem, 15, -1
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("rbuf")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg8 0]
        SBBO      &r14, r2, 0, 4        ; [] |27| rbuf
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 28,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  28 | memset(rbuf, 0, sizeof(struct rbuffer));                               
;----------------------------------------------------------------------
        ZERO      &r15, 4               ; [] |28| 
        LDI       r16, 0x0404           ; [] |28| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("memset")
	.dwattr $C$DW$52, DW_AT_TI_call
        JAL       r3.w2, ||memset||     ; [] |28| memset
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 29,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  29 | rbuf->c = 0;                                                           
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |29| rbuf
        LDI       r1.w0, 0x00           ; [] |29| 
        SBBO      &r1.w0, r0, 0, 2      ; [] |29| 
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 30,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  30 | rbuf->p = 1;                                                           
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |30| rbuf
        LDI       r1.w0, 0x01           ; [] |30| 
        SBBO      &r1.w0, r0, 2, 2      ; [] |30| 
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 31,column 1,is_stmt,isa 0
        LBBO      &r3.b2, r2, 4, 2      ; [] 
	.dwcfi	restore_reg, 14
	.dwcfi	restore_reg, 15
        ADD       r2, r2, 0x06          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x1f)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:rbuf_write_uint32"
	.clink
	.global	||rbuf_write_uint32||

$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("rbuf_write_uint32")
	.dwattr $C$DW$54, DW_AT_low_pc(||rbuf_write_uint32||)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("rbuf_write_uint32")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$54, DW_AT_TI_begin_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x22)
	.dwattr $C$DW$54, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$54, DW_AT_decl_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x22)
	.dwattr $C$DW$54, DW_AT_decl_column(0x01)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 35,column 1,is_stmt,address ||rbuf_write_uint32||,isa 0

	.dwfde $C$DW$CIE, ||rbuf_write_uint32||
$C$DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rbuf")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x38]
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x3c]
;----------------------------------------------------------------------
;  34 | rbuf_write_uint32(struct rbuffer *rbuf, uint32_t data)                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: rbuf_write_uint32             FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           10 Auto,  0 SOE     *
;***************************************************************

||rbuf_write_uint32||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x0a          ; [] 
	.dwcfi	cfa_offset, 10
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("rbuf")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_breg8 0]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg8 4]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg8 8]
        SBBO      &r15, r2, 4, 4        ; [] |35| data
        SBBO      &r14, r2, 0, 4        ; [] |35| rbuf
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 36,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
;  36 | uint16_t p = rbuf->p;                                                  
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |36| rbuf
        LBBO      &r0.w0, r0, 2, 2      ; [] |36| 
        SBBO      &r0.w0, r2, 8, 2      ; [] |36| p
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 37,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  37 | if (p != rbuf->c) {                                                    
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |37| rbuf
        LBBO      &r0.w0, r0, 0, 2      ; [] |37| 
        LBBO      &r0.w2, r2, 8, 2      ; [] |37| p
        QBEQ      ||$C$L4||, r0.w0, r0.w2 ; [] |37| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 38,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  38 | rbuf->buffer[p] = data;                                                
;----------------------------------------------------------------------
        LBBO      &r0.w0, r2, 8, 2      ; [] |38| p
        LSL       r0, r0.w0, 0x02       ; [] |38| 
        LBBO      &r1, r2, 0, 4         ; [] |38| rbuf
        ADD       r1, r1, r0            ; [] |38| 
        LBBO      &r0, r2, 4, 4         ; [] |38| data
        SBBO      &r0, r1, 4, 4         ; [] |38| 
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 39,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  39 | rbuf->p = RBUF_IDX(p+1);                                               
;----------------------------------------------------------------------
        LBBO      &r0.w0, r2, 8, 2      ; [] |39| p
        ADD       r14, r0.w0, 0x01      ; [] |39| 
        LSR       r0, r14, 0x07         ; [] |39| 
        QBBC      ||$C$L3||, r0, 0x18   ; [] |39| 
;* --------------------------------------------------------------------------*
        FILL      &r1, 4                ; [] |39| 
        LSL       r1, r1, 0x19          ; [] |39| 
        OR        r0, r0, r1            ; [] |39| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
        LSR       r0, r0, 0x18          ; [] |39| 
        ADD       r1, r14, r0           ; [] |39| 
        LDI       r0, 0x00ff            ; [] |39| 
        NOT       r0, r0                ; [] |39| 
        AND       r0, r1, r0            ; [] |39| 
        SUB       r0, r14, r0           ; [] |39| 
        LBBO      &r1, r2, 0, 4         ; [] |39| rbuf
        SBBO      &r0.w0, r1, 2, 2      ; [] |39| 
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 40,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  40 | return 0;                                                              
;  42 | // else buffer is full                                                 
;----------------------------------------------------------------------
        LDI       r14.w0, 0x0000        ; [] |40| 
        JMP       ||$C$L5||             ; [] |40| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 43,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  43 | return -1;                                                             
;----------------------------------------------------------------------
        LDI       r14.w0, 0xffff        ; [] |43| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 44,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x0a          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$54, DW_AT_TI_end_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x2c)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text:rbuf_write_uint64"
	.clink
	.global	||rbuf_write_uint64||

$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("rbuf_write_uint64")
	.dwattr $C$DW$61, DW_AT_low_pc(||rbuf_write_uint64||)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("rbuf_write_uint64")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$61, DW_AT_TI_begin_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$61, DW_AT_decl_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$61, DW_AT_decl_column(0x01)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 48,column 1,is_stmt,address ||rbuf_write_uint64||,isa 0

	.dwfde $C$DW$CIE, ||rbuf_write_uint64||
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rbuf")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x38]
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x3c]
;----------------------------------------------------------------------
;  47 | rbuf_write_uint64(struct rbuffer *rbuf, uint64_t data)                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: rbuf_write_uint64             FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           22 Auto,  0 SOE     *
;***************************************************************

||rbuf_write_uint64||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x16          ; [] 
	.dwcfi	cfa_offset, 22
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("rbuf")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_breg8 0]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg8 4]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("lower")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("lower")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg8 12]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("upper")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("upper")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg8 16]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg8 20]
        SBBO      &r15, r2, 4, 8        ; [] |48| data
        SBBO      &r14, r2, 0, 4        ; [] |48| rbuf
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 49,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
;  49 | uint32_t lower = (uint32_t) data;                                      
;----------------------------------------------------------------------
        LBBO      &r0, r2, 4, 4         ; [] |49| data
        SBBO      &r0, r2, 12, 4        ; [] |49| lower
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 50,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
;  50 | uint32_t upper = data >> 32;                                           
;----------------------------------------------------------------------
        LBBO      &r14, r2, 4, 8        ; [] |50| data
        MOV       r0, r15               ; [] |50| 
        SBBO      &r0, r2, 16, 4        ; [] |50| upper
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 51,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
;  51 | uint16_t p = rbuf->p;                                                  
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |51| rbuf
        LBBO      &r0.w0, r0, 2, 2      ; [] |51| 
        SBBO      &r0.w0, r2, 20, 2     ; [] |51| p
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 52,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  52 | if (p != rbuf->c && RBUF_IDX(p+1) != rbuf->c) {                        
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |52| rbuf
        LBBO      &r0.w0, r0, 0, 2      ; [] |52| 
        LBBO      &r0.w2, r2, 20, 2     ; [] |52| p
        QBEQ      ||$C$L9||, r0.w0, r0.w2 ; [] |52| 
;* --------------------------------------------------------------------------*
        LBBO      &r0.w0, r2, 20, 2     ; [] |52| p
        ADD       r14, r0.w0, 0x01      ; [] |52| 
        LSR       r0, r14, 0x07         ; [] |52| 
        QBBC      ||$C$L6||, r0, 0x18   ; [] |52| 
;* --------------------------------------------------------------------------*
        FILL      &r1, 4                ; [] |52| 
        LSL       r1, r1, 0x19          ; [] |52| 
        OR        r0, r0, r1            ; [] |52| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
        LSR       r0, r0, 0x18          ; [] |52| 
        ADD       r1, r14, r0           ; [] |52| 
        LDI       r0, 0x00ff            ; [] |52| 
        NOT       r0, r0                ; [] |52| 
        AND       r0, r1, r0            ; [] |52| 
        SUB       r1, r14, r0           ; [] |52| 
        LBBO      &r0, r2, 0, 4         ; [] |52| rbuf
        LBBO      &r0.w0, r0, 0, 2      ; [] |52| 
        MOV       r0, r0.w0             ; [] |52| 
        QBEQ      ||$C$L9||, r0, r1     ; [] |52| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 53,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  53 | rbuf->buffer[p] = lower;                                               
;----------------------------------------------------------------------
        LBBO      &r0.w0, r2, 20, 2     ; [] |53| p
        LSL       r0, r0.w0, 0x02       ; [] |53| 
        LBBO      &r1, r2, 0, 4         ; [] |53| rbuf
        ADD       r1, r1, r0            ; [] |53| 
        LBBO      &r0, r2, 12, 4        ; [] |53| lower
        SBBO      &r0, r1, 4, 4         ; [] |53| 
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 54,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | rbuf->buffer[RBUF_IDX(p+1)] = upper;                                   
;----------------------------------------------------------------------
        LBBO      &r0.w0, r2, 20, 2     ; [] |54| p
        ADD       r14, r0.w0, 0x01      ; [] |54| 
        LSR       r0, r14, 0x07         ; [] |54| 
        QBBC      ||$C$L7||, r0, 0x18   ; [] |54| 
;* --------------------------------------------------------------------------*
        FILL      &r1, 4                ; [] |54| 
        LSL       r1, r1, 0x19          ; [] |54| 
        OR        r0, r0, r1            ; [] |54| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
        LSR       r0, r0, 0x18          ; [] |54| 
        ADD       r1, r14, r0           ; [] |54| 
        LDI       r0, 0x00ff            ; [] |54| 
        NOT       r0, r0                ; [] |54| 
        AND       r0, r1, r0            ; [] |54| 
        SUB       r0, r14, r0           ; [] |54| 
        LSL       r0, r0, 0x02          ; [] |54| 
        LBBO      &r1, r2, 0, 4         ; [] |54| rbuf
        ADD       r1, r1, r0            ; [] |54| 
        LBBO      &r0, r2, 16, 4        ; [] |54| upper
        SBBO      &r0, r1, 4, 4         ; [] |54| 
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 55,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  55 | rbuf->p = RBUF_IDX(p+2);                                               
;----------------------------------------------------------------------
        LBBO      &r0.w0, r2, 20, 2     ; [] |55| p
        ADD       r14, r0.w0, 0x02      ; [] |55| 
        LSR       r0, r14, 0x07         ; [] |55| 
        QBBC      ||$C$L8||, r0, 0x18   ; [] |55| 
;* --------------------------------------------------------------------------*
        FILL      &r1, 4                ; [] |55| 
        LSL       r1, r1, 0x19          ; [] |55| 
        OR        r0, r0, r1            ; [] |55| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
        LSR       r0, r0, 0x18          ; [] |55| 
        ADD       r1, r14, r0           ; [] |55| 
        LDI       r0, 0x00ff            ; [] |55| 
        NOT       r0, r0                ; [] |55| 
        AND       r0, r1, r0            ; [] |55| 
        SUB       r0, r14, r0           ; [] |55| 
        LBBO      &r1, r2, 0, 4         ; [] |55| rbuf
        SBBO      &r0.w0, r1, 2, 2      ; [] |55| 
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 56,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  56 | return 0;                                                              
;  58 | // else buffer is full                                                 
;----------------------------------------------------------------------
        LDI       r14.w0, 0x0000        ; [] |56| 
        JMP       ||$C$L10||            ; [] |56| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 59,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | return -1;                                                             
;----------------------------------------------------------------------
        LDI       r14.w0, 0xffff        ; [] |59| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 60,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x16          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x3c)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text:rbuf_read_uint32"
	.clink
	.global	||rbuf_read_uint32||

$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("rbuf_read_uint32")
	.dwattr $C$DW$70, DW_AT_low_pc(||rbuf_read_uint32||)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("rbuf_read_uint32")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$70, DW_AT_TI_begin_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x3f)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$70, DW_AT_decl_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$70, DW_AT_decl_column(0x01)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 64,column 1,is_stmt,address ||rbuf_read_uint32||,isa 0

	.dwfde $C$DW$CIE, ||rbuf_read_uint32||
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rbuf")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x38]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x3c]
;----------------------------------------------------------------------
;  63 | rbuf_read_uint32(struct rbuffer *rbuf, short *status)                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: rbuf_read_uint32              FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           14 Auto,  0 SOE     *
;***************************************************************

||rbuf_read_uint32||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x0e          ; [] 
	.dwcfi	cfa_offset, 14
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("rbuf")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg8 0]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg8 4]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg8 8]
        SBBO      &r15, r2, 4, 4        ; [] |64| status
        SBBO      &r14, r2, 0, 4        ; [] |64| rbuf
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 65,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
;  65 | uint16_t c = RBUF_IDX(rbuf->c+1);                                      
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |65| rbuf
        LBBO      &r0.w0, r0, 0, 2      ; [] |65| 
        ADD       r14, r0.w0, 0x01      ; [] |65| 
        LSR       r0, r14, 0x07         ; [] |65| 
        QBBC      ||$C$L11||, r0, 0x18  ; [] |65| 
;* --------------------------------------------------------------------------*
        FILL      &r1, 4                ; [] |65| 
        LSL       r1, r1, 0x19          ; [] |65| 
        OR        r0, r0, r1            ; [] |65| 
;* --------------------------------------------------------------------------*
||$C$L11||:    
        LSR       r0, r0, 0x18          ; [] |65| 
        ADD       r1, r14, r0           ; [] |65| 
        LDI       r0, 0x00ff            ; [] |65| 
        NOT       r0, r0                ; [] |65| 
        AND       r0, r1, r0            ; [] |65| 
        SUB       r0, r14, r0           ; [] |65| 
        SBBO      &r0.w0, r2, 8, 2      ; [] |65| c
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 66,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  66 | if (c != rbuf->p) {                                                    
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |66| rbuf
        LBBO      &r0.w0, r0, 2, 2      ; [] |66| 
        LBBO      &r0.w2, r2, 8, 2      ; [] |66| c
        QBEQ      ||$C$L13||, r0.w0, r0.w2 ; [] |66| 
;* --------------------------------------------------------------------------*

$C$DW$76	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg8 10]
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 67,column 23,is_stmt,isa 0
;----------------------------------------------------------------------
;  67 | uint32_t data = rbuf->buffer[c];                                       
;----------------------------------------------------------------------
        LBBO      &r0.w0, r2, 8, 2      ; [] |67| c
        LSL       r0, r0.w0, 0x02       ; [] |67| 
        LBBO      &r1, r2, 0, 4         ; [] |67| rbuf
        ADD       r0, r1, r0            ; [] |67| 
        LBBO      &r0, r0, 4, 4         ; [] |67| 
        SBBO      &r0, r2, 10, 4        ; [] |67| data
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 68,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  68 | rbuf->c = c;                                                           
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |68| rbuf
        LBBO      &r1.w0, r2, 8, 2      ; [] |68| c
        SBBO      &r1.w0, r0, 0, 2      ; [] |68| 
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 69,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  69 | if (status != NULL) *status = 0;                                       
;----------------------------------------------------------------------
        LBBO      &r0, r2, 4, 4         ; [] |69| status
        QBEQ      ||$C$L12||, r0, 0x00  ; [] |69| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 69,column 29,is_stmt,isa 0
        LDI       r1.w0, 0x00           ; [] |69| 
        SBBO      &r1.w0, r0, 0, 2      ; [] |69| 
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 70,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  70 | return data;                                                           
;  72 | // no new data                                                         
;----------------------------------------------------------------------
        LBBO      &r14, r2, 10, 4       ; [] |70| data
        JMP       ||$C$L15||            ; [] |70| 
;* --------------------------------------------------------------------------*
	.dwendtag $C$DW$76

;* --------------------------------------------------------------------------*
||$C$L13||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 73,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | if (status != NULL) *status = -1;                                      
;----------------------------------------------------------------------
        LBBO      &r0, r2, 4, 4         ; [] |73| status
        QBEQ      ||$C$L14||, r0, 0x00  ; [] |73| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 73,column 25,is_stmt,isa 0
        LDI       r1.w0, 0xffff         ; [] |73| 
        SBBO      &r1.w0, r0, 0, 2      ; [] |73| 
;* --------------------------------------------------------------------------*
||$C$L14||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 74,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | return 0;                                                              
;----------------------------------------------------------------------
        ZERO      &r14, 4               ; [] |74| 
;* --------------------------------------------------------------------------*
||$C$L15||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 75,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x0e          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$70, DW_AT_TI_end_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text:rbuf_read_uint64"
	.clink
	.global	||rbuf_read_uint64||

$C$DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("rbuf_read_uint64")
	.dwattr $C$DW$79, DW_AT_low_pc(||rbuf_read_uint64||)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("rbuf_read_uint64")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_TI_begin_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x4e)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$79, DW_AT_decl_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$79, DW_AT_decl_column(0x01)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(0x1a)
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 79,column 1,is_stmt,address ||rbuf_read_uint64||,isa 0

	.dwfde $C$DW$CIE, ||rbuf_read_uint64||
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rbuf")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x38]
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x3c]
;----------------------------------------------------------------------
;  78 | rbuf_read_uint64(struct rbuffer *rbuf, short *status)                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: rbuf_read_uint64              FR SIZE:  26           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           26 Auto,  0 SOE     *
;***************************************************************

||rbuf_read_uint64||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x1a          ; [] 
	.dwcfi	cfa_offset, 26
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("rbuf")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("rbuf")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg8 0]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg8 4]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg8 8]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg8 16]
        SBBO      &r15, r2, 4, 4        ; [] |79| status
        SBBO      &r14, r2, 0, 4        ; [] |79| rbuf
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 80,column 19,is_stmt,isa 0
;----------------------------------------------------------------------
;  80 | uint64_t data = 0;                                                     
;----------------------------------------------------------------------
        ZERO      &r0, 8                ; [] |80| 
        SBBO      &r0, r2, 8, 8         ; [] |80| data
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 81,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
;  81 | uint16_t c = RBUF_IDX(rbuf->c+1);                                      
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |81| rbuf
        LBBO      &r0.w0, r0, 0, 2      ; [] |81| 
        ADD       r14, r0.w0, 0x01      ; [] |81| 
        LSR       r0, r14, 0x07         ; [] |81| 
        QBBC      ||$C$L16||, r0, 0x18  ; [] |81| 
;* --------------------------------------------------------------------------*
        FILL      &r1, 4                ; [] |81| 
        LSL       r1, r1, 0x19          ; [] |81| 
        OR        r0, r0, r1            ; [] |81| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
        LSR       r0, r0, 0x18          ; [] |81| 
        ADD       r1, r14, r0           ; [] |81| 
        LDI       r0, 0x00ff            ; [] |81| 
        NOT       r0, r0                ; [] |81| 
        AND       r0, r1, r0            ; [] |81| 
        SUB       r0, r14, r0           ; [] |81| 
        SBBO      &r0.w0, r2, 16, 2     ; [] |81| c
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 82,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | if (c != rbuf->p && RBUF_IDX(c+1) != rbuf->p) {                        
;----------------------------------------------------------------------
        LBBO      &r0, r2, 0, 4         ; [] |82| rbuf
        LBBO      &r0.w0, r0, 2, 2      ; [] |82| 
        LBBO      &r0.w2, r2, 16, 2     ; [] |82| c
        QBEQ      ||$C$L21||, r0.w0, r0.w2 ; [] |82| 
;* --------------------------------------------------------------------------*
        LBBO      &r0.w0, r2, 16, 2     ; [] |82| c
        ADD       r14, r0.w0, 0x01      ; [] |82| 
        LSR       r0, r14, 0x07         ; [] |82| 
        QBBC      ||$C$L17||, r0, 0x18  ; [] |82| 
;* --------------------------------------------------------------------------*
        FILL      &r1, 4                ; [] |82| 
        LSL       r1, r1, 0x19          ; [] |82| 
        OR        r0, r0, r1            ; [] |82| 
;* --------------------------------------------------------------------------*
||$C$L17||:    
        LSR       r0, r0, 0x18          ; [] |82| 
        ADD       r1, r14, r0           ; [] |82| 
        LDI       r0, 0x00ff            ; [] |82| 
        NOT       r0, r0                ; [] |82| 
        AND       r0, r1, r0            ; [] |82| 
        SUB       r1, r14, r0           ; [] |82| 
        LBBO      &r0, r2, 0, 4         ; [] |82| rbuf
        LBBO      &r0.w0, r0, 2, 2      ; [] |82| 
        MOV       r0, r0.w0             ; [] |82| 
        QBEQ      ||$C$L21||, r0, r1    ; [] |82| 
;* --------------------------------------------------------------------------*

$C$DW$86	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("lower")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("lower")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg8 18]
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("upper")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("upper")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg8 22]
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 83,column 24,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | uint32_t lower = rbuf->buffer[c];                                      
;----------------------------------------------------------------------
        LBBO      &r0.w0, r2, 16, 2     ; [] |83| c
        LSL       r0, r0.w0, 0x02       ; [] |83| 
        LBBO      &r1, r2, 0, 4         ; [] |83| rbuf
        ADD       r0, r1, r0            ; [] |83| 
        LBBO      &r0, r0, 4, 4         ; [] |83| 
        SBBO      &r0, r2, 18, 4        ; [] |83| lower
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 84,column 24,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | uint32_t upper = rbuf->buffer[RBUF_IDX(c+1)];                          
;----------------------------------------------------------------------
        LBBO      &r0.w0, r2, 16, 2     ; [] |84| c
        ADD       r14, r0.w0, 0x01      ; [] |84| 
        LSR       r0, r14, 0x07         ; [] |84| 
        QBBC      ||$C$L18||, r0, 0x18  ; [] |84| 
;* --------------------------------------------------------------------------*
        FILL      &r1, 4                ; [] |84| 
        LSL       r1, r1, 0x19          ; [] |84| 
        OR        r0, r0, r1            ; [] |84| 
;* --------------------------------------------------------------------------*
||$C$L18||:    
        LSR       r0, r0, 0x18          ; [] |84| 
        ADD       r1, r14, r0           ; [] |84| 
        LDI       r0, 0x00ff            ; [] |84| 
        NOT       r0, r0                ; [] |84| 
        AND       r0, r1, r0            ; [] |84| 
        SUB       r0, r14, r0           ; [] |84| 
        LSL       r0, r0, 0x02          ; [] |84| 
        LBBO      &r1, r2, 0, 4         ; [] |84| rbuf
        ADD       r0, r1, r0            ; [] |84| 
        LBBO      &r0, r0, 4, 4         ; [] |84| 
        SBBO      &r0, r2, 22, 4        ; [] |84| upper
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 85,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | data = upper;                                                          
;----------------------------------------------------------------------
        ZERO      &r1, 4                ; [] |85| 
        SBBO      &r0, r2, 8, 8         ; [] |85| data
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 86,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | data = data << 32;                                                     
;----------------------------------------------------------------------
        MOV       r15, r0               ; [] |86| 
        ZERO      &r14, 4               ; [] |86| 
        SBBO      &r14, r2, 8, 8        ; [] |86| data
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 87,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  87 | data |= lower;                                                         
;----------------------------------------------------------------------
        LBBO      &r0, r2, 18, 4        ; [] |87| lower
        MOV       r1, r15               ; [] |87| 
        OR        r0, r0, r14           ; [] |87| 
        SBBO      &r0, r2, 8, 8         ; [] |87| data
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 88,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  88 | rbuf->c = RBUF_IDX(c+1);                                               
;----------------------------------------------------------------------
        LBBO      &r0.w0, r2, 16, 2     ; [] |88| c
        ADD       r14, r0.w0, 0x01      ; [] |88| 
        LSR       r0, r14, 0x07         ; [] |88| 
        QBBC      ||$C$L19||, r0, 0x18  ; [] |88| 
;* --------------------------------------------------------------------------*
        FILL      &r1, 4                ; [] |88| 
        LSL       r1, r1, 0x19          ; [] |88| 
        OR        r0, r0, r1            ; [] |88| 
;* --------------------------------------------------------------------------*
||$C$L19||:    
        LSR       r0, r0, 0x18          ; [] |88| 
        ADD       r1, r14, r0           ; [] |88| 
        LDI       r0, 0x00ff            ; [] |88| 
        NOT       r0, r0                ; [] |88| 
        AND       r0, r1, r0            ; [] |88| 
        SUB       r0, r14, r0           ; [] |88| 
        LBBO      &r1, r2, 0, 4         ; [] |88| rbuf
        SBBO      &r0.w0, r1, 0, 2      ; [] |88| 
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 89,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  89 | if (status != NULL) *status = 0;                                       
;----------------------------------------------------------------------
        LBBO      &r0, r2, 4, 4         ; [] |89| status
        QBEQ      ||$C$L20||, r0, 0x00  ; [] |89| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 89,column 29,is_stmt,isa 0
        LDI       r1.w0, 0x00           ; [] |89| 
        SBBO      &r1.w0, r0, 0, 2      ; [] |89| 
;* --------------------------------------------------------------------------*
||$C$L20||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 90,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  90 | return data;                                                           
;  92 | // no new data                                                         
;----------------------------------------------------------------------
        LBBO      &r14, r2, 8, 8        ; [] |90| data
        JMP       ||$C$L23||            ; [] |90| 
;* --------------------------------------------------------------------------*
	.dwendtag $C$DW$86

;* --------------------------------------------------------------------------*
||$C$L21||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 93,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | if (status != NULL) *status = -1;                                      
;----------------------------------------------------------------------
        LBBO      &r0, r2, 4, 4         ; [] |93| status
        QBEQ      ||$C$L22||, r0, 0x00  ; [] |93| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 93,column 25,is_stmt,isa 0
        LDI       r1.w0, 0xffff         ; [] |93| 
        SBBO      &r1.w0, r0, 0, 2      ; [] |93| 
;* --------------------------------------------------------------------------*
||$C$L22||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 94,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | return 0;                                                              
;----------------------------------------------------------------------
        ZERO      &r14, 8               ; [] |94| 
;* --------------------------------------------------------------------------*
||$C$L23||:    
	.dwpsn	file "../../include/nesl_pru_rbuffer.h",line 95,column 1,is_stmt,isa 0
        ADD       r2, r2, 0x1a          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x5f)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:terminate"
	.clink
	.global	||terminate||

$C$DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("terminate")
	.dwattr $C$DW$90, DW_AT_low_pc(||terminate||)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("terminate")
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_TI_begin_file("pru_main.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0x1f)
	.dwattr $C$DW$90, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$90, DW_AT_decl_file("pru_main.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$90, DW_AT_decl_column(0x01)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "pru_main.c",line 32,column 1,is_stmt,address ||terminate||,isa 0

	.dwfde $C$DW$CIE, ||terminate||
;----------------------------------------------------------------------
;  31 | terminate()                                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: terminate                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||terminate||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "pru_main.c",line 33,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  33 | TRIG_INTC(4); // Trigger interrupt PRUEVENT_1                          
;----------------------------------------------------------------------
        LDI       r31, 0x0024           ; [] |33| 
	.dwpsn	file "pru_main.c",line 34,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  34 | __halt(); // halt the PRU                                              
;----------------------------------------------------------------------
        HALT      ; [] |34| 
	.dwpsn	file "pru_main.c",line 35,column 1,is_stmt,isa 0
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$90, DW_AT_TI_end_file("pru_main.c")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x23)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$90

	.sect	".text:check_input_pin"
	.clink
	.global	||check_input_pin||

$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("check_input_pin")
	.dwattr $C$DW$92, DW_AT_low_pc(||check_input_pin||)
	.dwattr $C$DW$92, DW_AT_high_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("check_input_pin")
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_TI_begin_file("pru_main.c")
	.dwattr $C$DW$92, DW_AT_TI_begin_line(0x28)
	.dwattr $C$DW$92, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$92, DW_AT_decl_file("pru_main.c")
	.dwattr $C$DW$92, DW_AT_decl_line(0x28)
	.dwattr $C$DW$92, DW_AT_decl_column(0x06)
	.dwattr $C$DW$92, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "pru_main.c",line 41,column 1,is_stmt,address ||check_input_pin||,isa 0

	.dwfde $C$DW$CIE, ||check_input_pin||
$C$DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("time")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x38]
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("send_buf")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("send_buf")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x3c]
;----------------------------------------------------------------------
;  40 | void check_input_pin(struct iep_time *time, struct rbuffer *send_buf)  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: check_input_pin               FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Auto,  2 SOE     *
;***************************************************************

||check_input_pin||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x0a          ; [] 
	.dwcfi	cfa_offset, 10
        SBBO      &r3.b2, r2, 8, 2      ; [] 
	.dwcfi	save_reg_to_mem, 14, -2
	.dwcfi	save_reg_to_mem, 15, -1
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("time")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg8 0]
$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("send_buf")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("send_buf")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg8 4]
        SBBO      &r15, r2, 4, 4        ; [] |41| send_buf
        SBBO      &r14, r2, 0, 4        ; [] |41| time
	.dwpsn	file "pru_main.c",line 42,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  42 | if (!input_high) {                                                     
;----------------------------------------------------------------------
        LDI       r0, ||input_high||    ; [] |42| input_high
        LBBO      &r0, r0, 0, 4         ; [] |42| 
        QBNE      ||$C$L24||, r0, 0x00  ; [] |42| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "pru_main.c",line 43,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  43 | if (read_pin(P8_45)) {                                                 
;----------------------------------------------------------------------
        LDI       r14, 0x0001           ; [] |43| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("read_pin")
	.dwattr $C$DW$97, DW_AT_TI_call
        JAL       r3.w2, ||read_pin||   ; [] |43| read_pin
        QBEQ      ||$C$L25||, r14, 0x00 ; [] |43| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "pru_main.c",line 44,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  44 | input_high = 1;                                                        
;  45 | // Send current pru time back to host for printing                     
;----------------------------------------------------------------------
        LDI       r0, 0x0001            ; [] |44| 
        LDI       r1, ||input_high||    ; [] |44| input_high
        SBBO      &r0, r1, 0, 4         ; [] |44| 
	.dwpsn	file "pru_main.c",line 46,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  46 | rbuf_write_uint64(send_buf, iep_get_time(time));                       
;  47 | // Interrupt the host: there is a message in the rbuffer               
;----------------------------------------------------------------------
        LBBO      &r14, r2, 0, 4        ; [] |46| time
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("iep_get_time")
	.dwattr $C$DW$98, DW_AT_TI_call
        JAL       r3.w2, ||iep_get_time|| ; [] |46| iep_get_time
        MOV       r16, r15              ; [] |46| 
        MOV       r15, r14              ; [] |46| 
        LBBO      &r14, r2, 4, 4        ; [] |46| send_buf
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("rbuf_write_uint64")
	.dwattr $C$DW$99, DW_AT_TI_call
        JAL       r3.w2, ||rbuf_write_uint64|| ; [] |46| rbuf_write_uint64
	.dwpsn	file "pru_main.c",line 48,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  48 | TRIG_INTC(3); // Trigger interrupt PRUEVENT_0                          
;----------------------------------------------------------------------
        LDI       r31, 0x0023           ; [] |48| 
	.dwpsn	file "pru_main.c",line 50,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  50 | } else {                                                               
;----------------------------------------------------------------------
        JMP       ||$C$L25||            ; [] |50| 
;* --------------------------------------------------------------------------*
||$C$L24||:    
	.dwpsn	file "pru_main.c",line 51,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  51 | if (!read_pin(P8_45)) {                                                
;----------------------------------------------------------------------
        LDI       r14, 0x0001           ; [] |51| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("read_pin")
	.dwattr $C$DW$100, DW_AT_TI_call
        JAL       r3.w2, ||read_pin||   ; [] |51| read_pin
        QBNE      ||$C$L25||, r14, 0x00 ; [] |51| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "pru_main.c",line 52,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  52 | input_high = 0;                                                        
;----------------------------------------------------------------------
        LDI       r0, 0x0000            ; [] |52| 
        LDI       r1, ||input_high||    ; [] |52| input_high
        SBBO      &r0, r1, 0, 4         ; [] |52| 
	.dwpsn	file "pru_main.c",line 55,column 1,is_stmt,isa 0
;* --------------------------------------------------------------------------*
||$C$L25||:    
        LBBO      &r3.b2, r2, 8, 2      ; [] 
	.dwcfi	restore_reg, 14
	.dwcfi	restore_reg, 15
        ADD       r2, r2, 0x0a          ; [] 
	.dwcfi	cfa_offset, 0
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return
        JMP       r3.w2                 ; [] 
	.dwattr $C$DW$92, DW_AT_TI_end_file("pru_main.c")
	.dwattr $C$DW$92, DW_AT_TI_end_line(0x37)
	.dwattr $C$DW$92, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$92

	.sect	".text:main"
	.clink
	.global	||main||

$C$DW$102	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$102, DW_AT_low_pc(||main||)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$102, DW_AT_TI_begin_file("pru_main.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x39)
	.dwattr $C$DW$102, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$102, DW_AT_decl_file("pru_main.c")
	.dwattr $C$DW$102, DW_AT_decl_line(0x39)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(0x24)
	.dwpsn	file "pru_main.c",line 58,column 1,is_stmt,address ||main||,isa 0

	.dwfde $C$DW$CIE, ||main||
;----------------------------------------------------------------------
;  57 | int main()                                                             
;  59 | // Wait enough time for host to startup                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: main                          FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           34 Auto,  2 SOE     *
;***************************************************************

||main||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x24          ; [] 
	.dwcfi	cfa_offset, 36
        SBBO      &r3.b2, r2, 34, 2     ; [] 
	.dwcfi	save_reg_to_mem, 14, -2
	.dwcfi	save_reg_to_mem, 15, -1
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("send_buf")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("send_buf")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg8 0]
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("rec_buf")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("rec_buf")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_breg8 4]
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("time")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_breg8 8]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_breg8 28]
	.dwpsn	file "pru_main.c",line 60,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | WAIT_MS(1000);                                                         
;  62 | // Send PRU time back to host for printing                             
;----------------------------------------------------------------------

$C$DW$107	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("_ms")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_ms")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_breg8 30]
        LDI       r0, 0x03e7            ; [] |60| 
        SBBO      &r0, r2, 30, 4        ; [] |60| _ms
        SUB       r1, r0, 0x01          ; [] |60| 
        SBBO      &r1, r2, 30, 4        ; [] |60| _ms
        QBEQ      ||$C$L27||, r0, 0x00  ; [] |60| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L26||
;*
;*   Loop source line                : 60
;*   Loop closing brace source line  : 60
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L26||:    
        NOP       ; [] |60| 
        .newblock
        LDI32    r0, 99995
$1:     SUB      r0, r0, 1
        QBNE     $1, r0, 0             ; [] |60| 
        LBBO      &r0, r2, 30, 4        ; [] |60| _ms
        SUB       r1, r0, 0x01          ; [] |60| 
        SBBO      &r1, r2, 30, 4        ; [] |60| _ms
        QBNE      ||$C$L26||, r0, 0x00  ; [] |60| 
;* --------------------------------------------------------------------------*
||$C$L27||:    
        NOP       ; [] |60| 
        .newblock
        LDI32    r0, 99995
$1:     SUB      r0, r0, 1
        QBNE     $1, r0, 0             ; [] |60| 
	.dwendtag $C$DW$107

	.dwpsn	file "pru_main.c",line 63,column 30,is_stmt,isa 0
;----------------------------------------------------------------------
;  63 | struct rbuffer *send_buf =                                             
;  64 |     (struct rbuffer *) (uint32_t) (SHARED_MEM_BASE);                   
;----------------------------------------------------------------------
        LDI32     r0, 0x00010000        ; [] |63| 
        SBBO      &r0, r2, 0, 4         ; [] |63| send_buf
	.dwpsn	file "pru_main.c",line 65,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  65 | init_rbuffer(send_buf);                                                
;  67 | // Required for getting host timestamp                                 
;----------------------------------------------------------------------
        LBBO      &r14, r2, 0, 4        ; [] |65| send_buf
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("init_rbuffer")
	.dwattr $C$DW$109, DW_AT_TI_call
        JAL       r3.w2, ||init_rbuffer|| ; [] |65| init_rbuffer
	.dwpsn	file "pru_main.c",line 68,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
;  68 | struct rbuffer *rec_buf =                                              
;  69 |     (struct rbuffer *) (uint32_t) (SHARED_MEM_BASE                     
;  70 |             + sizeof(struct rbuffer));                                 
;  72 | // IEP is our clock source                                             
;  73 | struct iep_time time;                                                  
;----------------------------------------------------------------------
        LDI32     r0, 0x00010404        ; [] |68| 
        SBBO      &r0, r2, 4, 4         ; [] |68| rec_buf
	.dwpsn	file "pru_main.c",line 74,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | init_iep_time(&time);                                                  
;----------------------------------------------------------------------
        ADD       r14, r2, 8            ; [] |74| time,time
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("init_iep_time")
	.dwattr $C$DW$110, DW_AT_TI_call
        JAL       r3.w2, ||init_iep_time|| ; [] |74| init_iep_time
	.dwpsn	file "pru_main.c",line 76,column 18,is_stmt,isa 0
;----------------------------------------------------------------------
;  76 | short status = -1;                                                     
;----------------------------------------------------------------------
        LDI       r0.w0, 0xffff         ; [] |76| 
        SBBO      &r0.w0, r2, 28, 2     ; [] |76| status
	.dwpsn	file "pru_main.c",line 78,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
;  78 | while(1) {                                                             
;  79 |             //if received sigint from host terminate                   
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L28||
;*
;*   Loop source line                : 78
;*   Loop closing brace source line  : 87
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L28||:    
	.dwpsn	file "pru_main.c",line 80,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  80 | if (rbuf_read_uint64(rec_buf, &status)) {                              
;----------------------------------------------------------------------
        LBBO      &r14, r2, 4, 4        ; [] |80| rec_buf
        ADD       r15, r2, 28           ; [] |80| status,status
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("rbuf_read_uint64")
	.dwattr $C$DW$111, DW_AT_TI_call
        JAL       r3.w2, ||rbuf_read_uint64|| ; [] |80| rbuf_read_uint64
        QBNE      ||$C$L29||, r14, 0x00 ; [] |80| 
;* --------------------------------------------------------------------------*
        QBEQ      ||$C$L30||, r15, 0x00 ; [] |80| 
;* --------------------------------------------------------------------------*
||$C$L29||:    
	.dwpsn	file "pru_main.c",line 81,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  81 | DISABLE_IEP_TMR();                                                     
;----------------------------------------------------------------------
        LDI       r0, ||IEP_REG||       ; [] |81| IEP_REG
        LBBO      &r1, r0, 0, 4         ; [] |81| 
        LDI       r0, 0x0000            ; [] |81| 
        SBBO      &r0, r1, 0, 4         ; [] |81| 
	.dwpsn	file "pru_main.c",line 82,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | terminate();                                                           
;----------------------------------------------------------------------
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("terminate")
	.dwattr $C$DW$112, DW_AT_TI_call
        JAL       r3.w2, ||terminate||  ; [] |82| terminate
;* --------------------------------------------------------------------------*
||$C$L30||:    
	.dwpsn	file "pru_main.c",line 85,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | check_input_pin(&time, send_buf);                                      
;----------------------------------------------------------------------
        ADD       r14, r2, 8            ; [] |85| time,time
        LBBO      &r15, r2, 0, 4        ; [] |85| send_buf
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("check_input_pin")
	.dwattr $C$DW$113, DW_AT_TI_call
        JAL       r3.w2, ||check_input_pin|| ; [] |85| check_input_pin
	.dwpsn	file "pru_main.c",line 78,column 11,is_stmt,isa 0
        JMP       ||$C$L28||            ; [] |78| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$102, DW_AT_TI_end_file("pru_main.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x58)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$102

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	||memset||
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "assert_pin", 1
	.gmember  ".text:assert_pin"
	.endgroup
	.group    "deassert_pin", 1
	.gmember  ".text:deassert_pin"
	.endgroup
	.group    "iep_adj_time", 1
	.gmember  ".text:iep_adj_time"
	.endgroup
	.group    "iep_get_time", 1
	.gmember  ".text:iep_get_time"
	.endgroup
	.group    "init_iep_time", 1
	.gmember  ".text:init_iep_time"
	.endgroup
	.group    "read_pin", 1
	.gmember  ".text:read_pin"
	.endgroup
	.group    "toggle_pin", 1
	.gmember  ".text:toggle_pin"
	.endgroup


;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x04)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x20)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("/usr/share/ti/cgt-pru/include/stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x1c)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/usr/share/ti/cgt-pru/include/string.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x19)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_decl_file("/usr/share/ti/cgt-pru/include/stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x1c)

$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x400)
$C$DW$114	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$114, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$24

$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x20)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_decl_file("/usr/share/ti/cgt-pru/include/stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x21)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_decl_file("/usr/share/ti/cgt-pru/include/stdint.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x20)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("iep_time")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x14)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("ts_ns")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("ts_ns")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$115, DW_AT_decl_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x16)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0e)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_name("last_iep_cnt")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("last_iep_cnt")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$116, DW_AT_decl_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x17)
	.dwattr $C$DW$116, DW_AT_decl_column(0x0e)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$117, DW_AT_name("offset")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$117, DW_AT_decl_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x18)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$T$22

	.dwattr $C$DW$T$22, DW_AT_decl_file("../../include/nesl_pru_iep.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x15)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x08)
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)

$C$DW$T$40	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$40, DW_AT_name("pru_pin")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x04)
$C$DW$118	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_20"), DW_AT_const_value(0x2000)
	.dwattr $C$DW$118, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)
$C$DW$119	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_21"), DW_AT_const_value(0x1000)
	.dwattr $C$DW$119, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)
$C$DW$120	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_27"), DW_AT_const_value(0x100)
	.dwattr $C$DW$120, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x20)
	.dwattr $C$DW$120, DW_AT_decl_column(0x05)
$C$DW$121	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_28"), DW_AT_const_value(0x400)
	.dwattr $C$DW$121, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0x21)
	.dwattr $C$DW$121, DW_AT_decl_column(0x05)
$C$DW$122	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_29"), DW_AT_const_value(0x200)
	.dwattr $C$DW$122, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0x22)
	.dwattr $C$DW$122, DW_AT_decl_column(0x05)
$C$DW$123	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_39"), DW_AT_const_value(0x40)
	.dwattr $C$DW$123, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x23)
	.dwattr $C$DW$123, DW_AT_decl_column(0x05)
$C$DW$124	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_40"), DW_AT_const_value(0x80)
	.dwattr $C$DW$124, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x24)
	.dwattr $C$DW$124, DW_AT_decl_column(0x05)
$C$DW$125	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_41"), DW_AT_const_value(0x10)
	.dwattr $C$DW$125, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x25)
	.dwattr $C$DW$125, DW_AT_decl_column(0x05)
$C$DW$126	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_42"), DW_AT_const_value(0x20)
	.dwattr $C$DW$126, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x26)
	.dwattr $C$DW$126, DW_AT_decl_column(0x05)
$C$DW$127	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_43"), DW_AT_const_value(0x04)
	.dwattr $C$DW$127, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x27)
	.dwattr $C$DW$127, DW_AT_decl_column(0x05)
$C$DW$128	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_44"), DW_AT_const_value(0x08)
	.dwattr $C$DW$128, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x28)
	.dwattr $C$DW$128, DW_AT_decl_column(0x05)
$C$DW$129	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_45"), DW_AT_const_value(0x01)
	.dwattr $C$DW$129, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x29)
	.dwattr $C$DW$129, DW_AT_decl_column(0x05)
$C$DW$130	.dwtag  DW_TAG_enumerator, DW_AT_name("P8_46"), DW_AT_const_value(0x02)
	.dwattr $C$DW$130, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$130, DW_AT_decl_column(0x05)
$C$DW$131	.dwtag  DW_TAG_enumerator, DW_AT_name("P9_26"), DW_AT_const_value(0x10000)
	.dwattr $C$DW$131, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$131, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$40

	.dwattr $C$DW$T$40, DW_AT_decl_file("../../include/nesl_pru_gpio.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x06)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("rbuffer")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x404)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$132, DW_AT_name("c")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x14)
	.dwattr $C$DW$132, DW_AT_decl_column(0x0e)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$133, DW_AT_name("p")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x15)
	.dwattr $C$DW$133, DW_AT_decl_column(0x0e)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$134, DW_AT_name("buffer")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("buffer")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x16)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$25

	.dwattr $C$DW$T$25, DW_AT_decl_file("../../include/nesl_pru_rbuffer.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x08)
$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 8
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 15
	.dwcfi	same_value, 16
	.dwcfi	same_value, 17
	.dwcfi	same_value, 18
	.dwcfi	same_value, 19
	.dwcfi	same_value, 20
	.dwcfi	same_value, 21
	.dwcfi	same_value, 22
	.dwcfi	same_value, 23
	.dwcfi	same_value, 24
	.dwcfi	same_value, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	same_value, 32
	.dwcfi	same_value, 33
	.dwcfi	same_value, 34
	.dwcfi	same_value, 35
	.dwcfi	same_value, 36
	.dwcfi	same_value, 37
	.dwcfi	same_value, 38
	.dwcfi	same_value, 39
	.dwcfi	same_value, 40
	.dwcfi	same_value, 41
	.dwcfi	same_value, 42
	.dwcfi	same_value, 43
	.dwcfi	same_value, 44
	.dwcfi	same_value, 45
	.dwcfi	same_value, 46
	.dwcfi	same_value, 47
	.dwcfi	same_value, 48
	.dwcfi	same_value, 49
	.dwcfi	same_value, 50
	.dwcfi	same_value, 51
	.dwcfi	same_value, 52
	.dwcfi	same_value, 53
	.dwcfi	same_value, 54
	.dwcfi	same_value, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwcfi	undefined, 92
	.dwcfi	undefined, 93
	.dwcfi	undefined, 94
	.dwcfi	undefined, 95
	.dwcfi	undefined, 96
	.dwcfi	undefined, 97
	.dwcfi	undefined, 98
	.dwcfi	undefined, 99
	.dwcfi	undefined, 100
	.dwcfi	undefined, 101
	.dwcfi	undefined, 102
	.dwcfi	undefined, 103
	.dwcfi	undefined, 104
	.dwcfi	undefined, 105
	.dwcfi	undefined, 106
	.dwcfi	undefined, 107
	.dwcfi	undefined, 108
	.dwcfi	undefined, 109
	.dwcfi	undefined, 110
	.dwcfi	undefined, 111
	.dwcfi	undefined, 112
	.dwcfi	undefined, 113
	.dwcfi	undefined, 114
	.dwcfi	undefined, 115
	.dwcfi	undefined, 116
	.dwcfi	undefined, 117
	.dwcfi	undefined, 118
	.dwcfi	undefined, 119
	.dwcfi	undefined, 120
	.dwcfi	undefined, 121
	.dwcfi	undefined, 122
	.dwcfi	undefined, 123
	.dwcfi	undefined, 124
	.dwcfi	undefined, 125
	.dwcfi	undefined, 126
	.dwcfi	undefined, 127
	.dwcfi	undefined, 128
	.dwcfi	undefined, 129
	.dwcfi	undefined, 130
	.dwcfi	undefined, 131
	.dwcfi	undefined, 132
	.dwcfi	undefined, 133
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R0_b0")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg0]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R0_b1")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg1]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R0_b2")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg2]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R0_b3")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg3]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R1_b0")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg4]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R1_b1")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg5]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R1_b2")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg6]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R1_b3")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg7]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R2_b0")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg8]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R2_b1")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg9]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R2_b2")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg10]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R2_b3")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg11]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R3_b0")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg12]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R3_b1")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg13]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R3_b2")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg14]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R3_b3")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg15]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R4_b0")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg16]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R4_b1")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg17]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R4_b2")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg18]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R4_b3")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg19]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R5_b0")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg20]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R5_b1")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg21]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R5_b2")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg22]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R5_b3")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg23]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R6_b0")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg24]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R6_b1")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg25]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R6_b2")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg26]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R6_b3")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg27]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R7_b0")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg28]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R7_b1")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg29]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R7_b2")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg30]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R7_b3")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg31]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R8_b0")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x20]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R8_b1")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x21]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R8_b2")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x22]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R8_b3")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x23]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R9_b0")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x24]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R9_b1")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x25]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R9_b2")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x26]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R9_b3")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x27]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R10_b0")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x28]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R10_b1")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x29]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R10_b2")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R10_b3")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R11_b0")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R11_b1")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R11_b2")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R11_b3")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R12_b0")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x30]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R12_b1")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x31]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R12_b2")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x32]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R12_b3")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x33]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R13_b0")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x34]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R13_b1")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x35]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R13_b2")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x36]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R13_b3")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x37]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R14_b0")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x38]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R14_b1")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x39]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R14_b2")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R14_b3")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R15_b0")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R15_b1")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R15_b2")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R15_b3")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R16_b0")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x40]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R16_b1")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x41]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R16_b2")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x42]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R16_b3")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x43]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R17_b0")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x44]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R17_b1")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x45]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R17_b2")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x46]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R17_b3")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x47]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R18_b0")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x48]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R18_b1")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x49]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R18_b2")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R18_b3")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R19_b0")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R19_b1")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R19_b2")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R19_b3")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R20_b0")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x50]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R20_b1")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x51]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R20_b2")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x52]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R20_b3")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x53]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R21_b0")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x54]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R21_b1")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x55]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R21_b2")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x56]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R21_b3")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x57]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R22_b0")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x58]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R22_b1")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x59]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R22_b2")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R22_b3")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R23_b0")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R23_b1")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R23_b2")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R23_b3")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R24_b0")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x60]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R24_b1")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x61]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R24_b2")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x62]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R24_b3")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x63]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R25_b0")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x64]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R25_b1")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x65]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R25_b2")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x66]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R25_b3")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x67]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R26_b0")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x68]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R26_b1")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x69]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R26_b2")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R26_b3")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R27_b0")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R27_b1")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R27_b2")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R27_b3")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R28_b0")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x70]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R28_b1")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x71]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R28_b2")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x72]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R28_b3")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x73]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R29_b0")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x74]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R29_b1")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x75]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R29_b2")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x76]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R29_b3")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x77]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R30_b0")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x78]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R30_b1")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x79]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R30_b2")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R30_b3")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R31_b0")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R31_b1")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R31_b2")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("R31_b3")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x7f]
	.dwendtag $C$DW$CU

