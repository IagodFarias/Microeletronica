`timescale 1ns/1ps

module alu (
    input  logic [31:0] a,
    input  logic [31:0] b,
    input  logic [3:0]  alu_control, // Sinal de controle (decodificado da instrução)
    output logic [31:0] result,
    output logic        zero
);

    // Codificação de Operações (Baseado no padrão RISC-V RV32I)
    // 0000: ADD   // 0001: SUB
    // 0010: AND   // 0011: OR
    // 0100: XOR   // 0101: SLL (Shift Left Logical)
    // 0110: SRL (Shift Right Logical) // 0111: SRA (Shift Right Arithmetic)
    // 1000: SLT (Set Less Than - signed) // 1001: SLTU (Set Less Than - unsigned)

    always_comb begin
        case (alu_control)
            4'b0000: result = a + b;
            4'b0001: result = a - b;
            4'b0010: result = a & b;
            4'b0011: result = a | b;
            4'b0100: result = a ^ b;
            4'b0101: result = a << b[4:0];  // No RISC-V RV32, o shift usa apenas os 5 bits LSB
            4'b0110: result = a >> b[4:0];
            4'b0111: result = $signed(a) >>> b[4:0];
            4'b1000: result = ($signed(a) < $signed(b)) ? 32'd1 : 32'd0;
            4'b1001: result = (a < b) ? 32'd1 : 32'd0;
            default: result = 32'd0;
        endcase
    end

    // Flag de Zero (Muito usado para instruções de branch como BEQ)
    assign zero = (result == 32'd0);

endmodule
