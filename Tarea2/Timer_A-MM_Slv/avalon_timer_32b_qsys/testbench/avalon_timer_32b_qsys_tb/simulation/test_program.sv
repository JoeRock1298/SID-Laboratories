`timescale 1 ns / 1 ps


// console messaging level
`define VERBOSITY VERBOSITY_INFO


//BFM jerarqu�a
`define CLK tb.avalon_timer_32b_qsys_inst_clk_bfm_clk_clk
`define RST tb.avalon_timer_32b_qsys_inst_reset_bfm_reset_reset
`define BFM tb.avalon_timer_32b_qsys_inst.mm_master_bfm_0
`define BFMirq tb.avalon_timer_32b_qsys_inst.interrupt_sink_0

`define AV_ADDRESS_W      3
`define AV_DATA_W         32

module test_program();

import avalon_mm_pkg::*;
import verbosity_pkg::*;

reg [`AV_DATA_W-1:0] datos_out;
reg IRQ_status;
int j = 0;

initial
  begin
    set_verbosity(`VERBOSITY);
    `BFM.init();
    
    // Espera hasta que el reset est� inactivo
    wait(`RST == 1);
    #100
    /*** Configurar el reloj antes de iniciar el timer ***/
    // Configurando el módulo (Cuenta de 0 a 99)
    avalon_write (3'h0, 32'd100);
    repeat (5) @(posedge `CLK);
    // Configurando el Threshold del reloj
    avalon_write (3'h1, 32'd50);
    repeat (5) @(posedge `CLK);
    // Iniciando el reloj y activando las interrupciones (a nivel bajo) -> cambiar posteriormente
    //bit 0 = 1, bit 1 = 0
    avalon_write (3'h2, 32'h00000001);
    $display("Timer configurado y iniciado");
    repeat (60) @(posedge `CLK);
    //Comprobando el start stop del reloj y el estado de la interrupción
    //bit 0 = 0, bit 1 = 0
    avalon_write (3'h2, 32'h00000000);
    $display("Timer stop");
    //Leyendo el stado de la irq
    IRQ_status = `BFMirq.get_irq();
    $display("Estado del IRQ: %d",IRQ_status);
    repeat (5) @(posedge `CLK);
    avalon_write (3'h2, 32'h00000001);
    $display("Timer start");
    repeat (50) @(posedge `CLK);
    //Comprobando si el IRQ ha sido enviado y limpiando el IRQ y activandolo de nuevo
    IRQ_status = `BFMirq.get_irq();
    $display("Estado del IRQ: %d",IRQ_status);
    //bit 0 = 1, bit 1 = 1
    avalon_write (3'h2, 32'h00000003);
    avalon_write (3'h2, 32'h00000001);
    //Leyendo el contador actual.
    avalon_read (3'h3, datos_out);
    $display("Datos leidos del IP: %d",datos_out);
    repeat (5) @(posedge `CLK);
    // Parando el reloj y leyendo el último dato guardado
    avalon_write (3'h2, 32'h00000000);
    avalon_read (3'h3,datos_out);
    $display("Datos leidos del IP: %d",datos_out);
    
    j++;
    
    $display("//////// ITERACION %d ////////", j);
    
    repeat (2) @(posedge `CLK);
    $stop();
    
  end
    
    // ============================================================
    // Tasks
    // ============================================================
    //
    // Avalon-MM single-transaction read and write procedures.
    //
    // ------------------------------------------------------------
    task avalon_write (
    // ------------------------------------------------------------

    input [`AV_ADDRESS_W-1:0] addr,
        input [`AV_DATA_W-1:0] data
    );
    begin
        // Construct the BFM request
        `BFM.set_command_request(REQ_WRITE);
        `BFM.set_command_idle(0, 0);
        `BFM.set_command_init_latency(0);
        `BFM.set_command_address(addr);    
        `BFM.set_command_byte_enable('1,0);
        `BFM.set_command_data(data, 0);      
        `BFM.set_command_burst_count(1);
        `BFM.set_command_burst_size(1);
        // Queue the command
        `BFM.push_command();
        
        // Wait until the transaction has completed
        while (`BFM.get_response_queue_size() != 1)
            @(posedge `CLK);

        // Dequeue the response and discard
        `BFM.pop_response();
    end
    endtask
            
            
            
    // ------------------------------------------------------------
    task avalon_read (
    // ------------------------------------------------------------
        input [`AV_ADDRESS_W-1:0] addr,
        output [`AV_DATA_W-1:0] data
    );
    begin
       // Construct the BFM request
      `BFM.set_command_request(REQ_READ);
      `BFM.set_command_idle(0, 0);
      `BFM.set_command_init_latency(0);
      `BFM.set_command_address(addr);    
      `BFM.set_command_byte_enable('1,0);
      `BFM.set_command_data(0, 0);      
      `BFM.set_command_burst_count(1);
      `BFM.set_command_burst_size(1);
        
      // Queue the command
      `BFM.push_command();
        
        // Wait until the transaction has completed
        while (`BFM.get_response_queue_size() != 1)
            @(posedge `CLK);

        // Dequeue the response and return the data
        `BFM.pop_response();
        data = `BFM.get_response_data(0);        
    end
    endtask
    
    
    
endmodule
