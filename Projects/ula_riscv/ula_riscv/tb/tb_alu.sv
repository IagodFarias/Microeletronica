`timescale 1ns/1ps

module tb_alu;

    logic [31:0] a;
    logic [31:0] b;
    logic [3:0]  alu_control;
    logic [31:0] result;
    logic        zero;

    // Instanciando a ULA
    alu dut (
        .a(a),
        .b(b),
        .alu_control(alu_control),
        .result(result),
        .zero(zero)
    );

    initial begin
        // Configuração para gerar as formas de onda para o Cadence SimVision
        $shm_open("waves.shm");
        $shm_probe("AS"); // Grava todos os sinais da simulação

        $display("Iniciando Testes da ULA RISC-V...");

        // Teste 1: ADD
        a = 32'd15; b = 32'd10; alu_control = 4'b0000; #10;
        if(result !== 32'd25) $display("Erro no ADD");

        // Teste 2: SUB e Flag Zero
        a = 32'd20; b = 32'd20; alu_control = 4'b0001; #10;
        if(result !== 32'd0 || zero !== 1'b1) $display("Erro no SUB/Zero");

        // Teste 3: AND
        a = 32'h00FF00FF; b = 32'hFFFF0000; alu_control = 4'b0010; #10;
        if(result !== 32'h00FF0000) $display("Erro no AND");

        // Teste 4: SLT (Signed)
        a = -32'd5; b = 32'd10; alu_control = 4'b1000; #10;
        if(result !== 32'd1) $display("Erro no SLT");

        $display("Simulação concluída!");
        $finish;
    end

endmodule
