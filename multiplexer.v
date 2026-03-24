module multiplexer(
    input [7:0] A, [7:0] B, [7:0] C, [7:0] D,
    input [1:0] Sel,
    output [7:0] Y
);

    assign Y = Sel == 2'b00 ? A :
               Sel == 2'b01 ? B :
               Sel == 2'b10 ? C : D;

endmodule