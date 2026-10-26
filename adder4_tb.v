

    



`timescale 1ns/1ps

module adder4_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    adder4 uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("adder4.vcd");
        $dumpvars(0, adder4_tb);

        A = 4'b0101; B = 4'b0011; Cin = 0;
        #10;
        $display("A=%b B=%b Sum=%b Cout=%b", A, B, Sum, Cout);

        A = 4'b1111; B = 4'b0001; Cin = 0;
        #10;
        $display("A=%b B=%b Sum=%b Cout=%b", A, B, Sum, Cout);

        A = 4'b1010; B = 4'b0101; Cin = 1;
        #10;
        $display("A=%b B=%b Sum=%b Cout=%b", A, B, Sum, Cout);

        $finish;
    end

endmodule
