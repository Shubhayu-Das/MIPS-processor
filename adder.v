module adder(A, B, Cin, out, Cout);
    input [31:0]A, B;
    input Cin;
    output [31:0]out;
    output Cout;
    assign {Cout, out} = A+B+Cin;
endmodule