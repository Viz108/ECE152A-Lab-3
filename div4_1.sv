module div4 #(
parameter WIDTH = 4
) (
input logic [WIDTH-1:0] data_i,
input logic en_i,
output logic [WIDTH-1:0] data_o,
output logic valid_o
);
always_comb begin
data_o = WIDTH'(data_i[WIDTH-1:2]);
if (en_i) begin
data_o = WIDTH'(data_i[WIDTH-1:2]);
valid_o = 1'b1;
end else begin
valid_o = 1'b0;
end
end
endmodule
