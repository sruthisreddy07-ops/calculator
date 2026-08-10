`timescale 1ns/1ps

module calculator_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] opcode;

wire [15:0] result;

calculator uut(
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result)
);

initial begin

    $dumpfile("calculator.vcd");
    $dumpvars(0, calculator_tb);

    $display("Time\tA\tB\tOpcode\tResult");

    A = 20; B = 10;

    opcode = 3'b000; #10;
    $display("%0t\t%d\t%d\tADD\t%d",$time,A,B,result);

    opcode = 3'b001; #10;
    $display("%0t\t%d\t%d\tSUB\t%d",$time,A,B,result);

    opcode = 3'b010; #10;
    $display("%0t\t%d\t%d\tMUL\t%d",$time,A,B,result);

    opcode = 3'b011; #10;
    $display("%0t\t%d\t%d\tDIV\t%d",$time,A,B,result);

    opcode = 3'b100; #10;
    $display("%0t\t%d\t%d\tAND\t%d",$time,A,B,result);

    opcode = 3'b101; #10;
    $display("%0t\t%d\t%d\tOR\t%d",$time,A,B,result);

    opcode = 3'b110; #10;
    $display("%0t\t%d\t%d\tXOR\t%d",$time,A,B,result);

    opcode = 3'b111; #10;
    $display("%0t\t%d\t%d\tNOT\t%d",$time,A,B,result);

    B = 0;
    opcode = 3'b011; #10;
    $display("%0t\t%d\t%d\tDIV0\t%h",$time,A,B,result);

    $finish;

end

endmodule
