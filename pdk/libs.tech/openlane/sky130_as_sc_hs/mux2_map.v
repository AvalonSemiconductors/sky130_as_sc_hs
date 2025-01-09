module \$_MUX_ (
    output Y,
    input A,
    input B,
    input S
    );
  sky130_as_sc_hs__mux2_2 _TECHMAP_MUX (
      .Y(Y),
      .A(A),
      .B(B),
      .S(S)
  );
endmodule
