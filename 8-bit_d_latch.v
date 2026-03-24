module eightbit_d_latch(
    input [7:0] D,
    input E,
    output reg [7:0] Q,
    output [7:0] notQ
);

    always @(D, E) begin 
        if (E)
            Q <= D; 
    end
   

    assign notQ = ~Q;

endmodule