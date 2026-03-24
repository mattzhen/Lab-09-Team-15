module memory_system
#(
    parameter BYTE_COUNT = 4
)
(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] dataarr[3:0];
    wire storearr[3:0];
    wire [7:0] bytemem[3:0];

    data_demux data_demux_inst(
        .data(data),
        .sel(addr),
        .A(dataarr[0]),
        .B(dataarr[1]),
        .C(dataarr[2]),
        .D(dataarr[3])
    );

    store_demux store_demux_inst(
        .store(store),
        .sel(addr),
        .A(storearr[0]),
        .B(storearr[1]),
        .C(storearr[2]),
        .D(storearr[3])
    );

    genvar i; 
    generate 
        for (i = 0; i < BYTE_COUNT; i = i + 1) begin 
            byte_memory inst(
                .data(dataarr[i]),
                .store(storearr[i]),
                .memory(bytemem[i])
            );
        end
    endgenerate

    multiplexer multiplexer_inst(
        .A(bytemem[0]),
        .B(bytemem[1]),
        .C(bytemem[2]),
        .D(bytemem[3]),
        .Sel(addr),
        .Y(memory)
    );

endmodule
