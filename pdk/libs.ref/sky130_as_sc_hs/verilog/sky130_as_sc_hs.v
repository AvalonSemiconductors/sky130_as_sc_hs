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

module sky130_as_sc_hs__inv_4 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~A;

endmodule

module sky130_as_sc_hs__inv_6 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~A;

endmodule

module sky130_as_sc_hs__xnor2_2 (
	input A,
	input B,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A&B) | ((!A)&(!B));

endmodule

module sky130_as_sc_hs__xnor2_4 (
	input A,
	input B,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A&B) | ((!A)&(!B));

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

module sky130_as_sc_hs__nand2_4 (
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

module sky130_as_sc_hs__nand3_2 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~(A & B & C);

endmodule

module sky130_as_sc_hs__nand4_2 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~(A & B & C & D);

endmodule

module sky130_as_sc_hs__nor3_2 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~(A | B | C);

endmodule

module sky130_as_sc_hs__maj3_2 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A & B) | (B & C) | (A & C);

endmodule

module sky130_as_sc_hs__maj3_4 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A & B) | (B & C) | (A & C);

endmodule

module sky130_as_sc_hs__ao22_2 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A & B) | (C & D);

endmodule

module sky130_as_sc_hs__ao22_4 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A & B) | (C & D);

endmodule

module sky130_as_sc_hs__aoi31_2 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~((A & B & C) | D);

endmodule

module sky130_as_sc_hs__ao31_2 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A & B & C) | D;

endmodule

module sky130_as_sc_hs__ao31_4 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A & B & C) | D;

endmodule

module sky130_as_sc_hs__oai21_2 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~((A | B) & C);

endmodule

module sky130_as_sc_hs__oa21_2 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A | B) & C;

endmodule

module sky130_as_sc_hs__oa21_4 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A | B) & C;

endmodule

module sky130_as_sc_hs__oai22_2 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~((A | B) & (C | D));

endmodule

module sky130_as_sc_hs__oa22_2 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A | B) & (C | D);

endmodule

module sky130_as_sc_hs__oa22_4 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A | B) & (C | D);

endmodule

module sky130_as_sc_hs__aoi21_2 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~((A & B) | C);

endmodule

module sky130_as_sc_hs__ao21_2 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A & B) | C;

endmodule

module sky130_as_sc_hs__ao21_4 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = (A & B) | C;

endmodule

module sky130_as_sc_hs__ao21b_2 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ((~A) & B) | C;

endmodule

module sky130_as_sc_hs__ao21b_4 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ((~A) & B) | C;

endmodule

module sky130_as_sc_hs__aoi22_2 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~((A & B) | (C & D));

endmodule

module sky130_as_sc_hs__aoi21b_2 (
	input A,
	input B,
	input C,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~((A & B) | (~C));

endmodule

module sky130_as_sc_hs__aoi211_2 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~((A & B) | C | D);

endmodule

module sky130_as_sc_hs__iao211_2 (
	input A,
	input B,
	input C,
	input D,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = ~((A | B) & C & D);

endmodule

module sky130_as_sc_hs__mux2_2(
	input VPWR,
	input VGND,
	input VPB,
	input VNB,
	input A,
	input B,
	input S,
	output Y
);

assign Y = (S&B) | ((!S)&A);

endmodule

module sky130_as_sc_hs__mux2_4(
	input VPWR,
	input VGND,
	input VPB,
	input VNB,
	input A,
	input B,
	input S,
	output Y
);

assign Y = (S&B) | ((!S)&A);

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

assign Y = A | (!B);

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

module sky130_as_sc_hs__and2_4(
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

module sky130_as_sc_hs__nor2_4 (
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

assign Y = (!A) & B;

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

module sky130_as_sc_hs__or2_4 (
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

module sky130_as_sc_hs__buff_4 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = A;

endmodule

module sky130_as_sc_hs__buff_6 (
	input A,
	output Y,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

assign Y = A;

endmodule

module sky130_as_sc_hs__buff_8 (
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

module sky130_as_sc_hs__clkbuff_4 (
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

module sky130_as_sc_hs__hcf_10 (
	input HCF,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

endmodule

module sky130_as_sc_hs__dfxtp_2 (
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

module sky130_as_sc_hs__dfxtp_4 (
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

module sky130_as_sc_hs__dfxtn_2 (
	input CLK,
	input D,
	output reg Q,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

always @(negedge CLK) begin
	Q <= D;
end

endmodule

module sky130_as_sc_hs__dfxtn_4 (
	input CLK,
	input D,
	output reg Q,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

always @(negedge CLK) begin
	Q <= D;
end

endmodule

module sky130_as_sc_hs__dfxfp_2 (
	input CLK,
	input D,
	output reg Q,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

always @(posedge CLK) begin
	Q <= !D;
end

endmodule

module sky130_as_sc_hs__dfxfp_4 (
	input CLK,
	input D,
	output reg Q,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

always @(posedge CLK) begin
	Q <= !D;
end

endmodule

module sky130_as_sc_hs__dfxbp_2 (
	input CLK,
	input D,
	output Q,
	output NQ,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

reg state;
assign Q = state;
assign NQ = !state;

always @(posedge CLK) begin
	state <= D;
end

endmodule

module sky130_as_sc_hs__dyn_dfxtp_2 (
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

module sky130_as_sc_hs__dyn_dfxtp_4 (
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

module sky130_as_sc_hs__dyn_dfxtn_2 (
	input CLK,
	input D,
	output reg Q,
	
	input VPWR,
	input VGND,
	input VPB,
	input VNB
);

always @(negedge CLK) begin
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
