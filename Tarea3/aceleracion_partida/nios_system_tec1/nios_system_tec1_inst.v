	nios_system_tec1 u0 (
		.clk_50                      (<connected-to-clk_50>),                      //           clk_50_clk_in.clk
		.reset_n                     (<connected-to-reset_n>),                     //     clk_50_clk_in_reset.reset_n
		.in_port_to_the_key          (<connected-to-in_port_to_the_key>),          // key_external_connection.export
		.out_port_from_the_led       (<connected-to-out_port_from_the_led>),       // led_external_connection.export
		.pll_sdram_clk               (<connected-to-pll_sdram_clk>),               //               pll_sdram.clk
		.zs_addr_from_the_sdram      (<connected-to-zs_addr_from_the_sdram>),      //              sdram_wire.addr
		.zs_ba_from_the_sdram        (<connected-to-zs_ba_from_the_sdram>),        //                        .ba
		.zs_cas_n_from_the_sdram     (<connected-to-zs_cas_n_from_the_sdram>),     //                        .cas_n
		.zs_cke_from_the_sdram       (<connected-to-zs_cke_from_the_sdram>),       //                        .cke
		.zs_cs_n_from_the_sdram      (<connected-to-zs_cs_n_from_the_sdram>),      //                        .cs_n
		.zs_dq_to_and_from_the_sdram (<connected-to-zs_dq_to_and_from_the_sdram>), //                        .dq
		.zs_dqm_from_the_sdram       (<connected-to-zs_dqm_from_the_sdram>),       //                        .dqm
		.zs_ras_n_from_the_sdram     (<connected-to-zs_ras_n_from_the_sdram>),     //                        .ras_n
		.zs_we_n_from_the_sdram      (<connected-to-zs_we_n_from_the_sdram>),      //                        .we_n
		.in_port_to_the_sw           (<connected-to-in_port_to_the_sw>)            //  sw_external_connection.export
	);

