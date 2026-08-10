module calculator(
    input [7:0] A,
    input [7:0] B,
    input [2:0] opcode,
    output reg [15:0] result
);

always @(*) begin
    case(opcode)
        3'b000: result = A + B;
        3'b001: result = A - B;
        3'b010: result = A * B;
        3'b011: begin
            if(B != 0)
                result = A / B;
            else
                result = 16'hFFFF;
        end
        3'b100: result = A & B;
        3'b101: result = A | B;
        3'b110: result = A ^ B;
        3'b111: result = ~A;
        default: result = 0;
    endcase
end

endmodule
