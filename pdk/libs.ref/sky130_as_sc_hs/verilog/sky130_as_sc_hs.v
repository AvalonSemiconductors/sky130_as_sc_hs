module sky130_as_sc_hs__inv_2 (
	input A,
	output Y
);

assign Y = ~A;

endmodule

module sky130_as_sc_hs__inv_11 (
	input A,
	output Y
);

assign Y = ~A;

endmodule

module sky130_as_sc_hs__nand2_1 (
	input A,
	input B,
	output Y
);

assign Y = ~(A & B);

endmodule

module sky130_as_sc_hs__nor2_1 (
	input A,
	input B,
	output Y
);

assign Y = ~(A | B);

endmodule

module sky130_as_sc_hs__dfxtp_1 (
	input CLK,
	input D,
	output reg Q
);

initial begin
	Q = $random();
end

always @(posedge CLK) begin
	Q <= D;
end

endmodule
