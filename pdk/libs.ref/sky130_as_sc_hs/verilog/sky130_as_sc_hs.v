`default_nettype none

module sky130_as_sc_hs__inv_2 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~A;

endmodule

module sky130_as_sc_hs__inv_11 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~A;

endmodule

module sky130_as_sc_hs__nand2_2 (
	input A,
	input B,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~(A & B);

endmodule

module sky130_as_sc_hs__nand2b_2 (
	input A,
	input B,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~(!A & B);

endmodule

module sky130_as_sc_hs__and2_2(
	input A,
	input B,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = A & B;

endmodule

module sky130_as_sc_hs__nor2_2 (
	input A,
	input B,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~(A | B);

endmodule

module sky130_as_sc_hs__nor2b_2 (
	input A,
	input B,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~(!A | B);

endmodule

module sky130_as_sc_hs__or2_2 (
	input A,
	input B,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = A | B;

endmodule

module sky130_as_sc_hs__buff_2 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = A;

endmodule

module sky130_as_sc_hs__buff_11 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = A;

endmodule

module sky130_as_sc_hs__clkbuff_8 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = A;

endmodule

module sky130_as_sc_hs__clkbuff_11 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = A;

endmodule

module sky130_as_sc_hs__diode_2 (
	input DIODE,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

endmodule

module sky130_as_sc_hs__dfxtp_1 (
	input CLK,
	input D,
	output reg Q,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

always @(posedge CLK) begin
	Q <= D;
end

endmodule

module sky130_as_sc_hs__decap_3(
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);
endmodule

module sky130_as_sc_hs__decap_4(
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);
endmodule

module sky130_as_sc_hs__decap_16(
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);
endmodule

module sky130_as_sc_hs__tap_1(
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);
endmodule

module sky130_as_sc_hs__fill_1(
	input VPWR,
	input VGND,
	input VPB
);
endmodule

module sky130_as_sc_hs__fill_2(
	input VPWR,
	input VGND,
	input VPB
);
endmodule

module sky130_as_sc_hs__fill_4(
	input VPWR,
	input VGND,
	input VPB
);
endmodule

module sky130_as_sc_hs__fill_8(
	input VPWR,
	input VGND,
	input VPB
);
endmodule

module sky130_as_sc_hs__fill_16(
	input VPWR,
	input VGND,
	input VPB
);
endmodule

module sky130_ef_sc_hd__fill_4(
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);
endmodule

module sky130_as_sc_hs__tieh(
	output ONE,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign ONE = 1'b1;

endmodule

module sky130_as_sc_hs__tiel(
	output ZERO,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign ZERO = 1'b0;

endmodule
