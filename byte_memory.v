module byte_memory(
    input [7:0] data,
    input store,
    output [7:0] memory
);

    eightbit_d_latch eightbit_inst(
        .D(data),
        .Q(memory),
        .E(store)
    );

endmodule