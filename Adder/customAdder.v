module four_bit_adder (
              input [3:0] A, B,
              output [3:0] Sum,
              output Cout
                );
              wire c1, c2, c3;
             // Half Adder for LSB
              half_adder HA0 (.a(A[0]), .b(B[0]), .sum(Sum[0]), .carry(c1));
            // Full Adders for next bits
             full_adder FA1 (.a(A[1]), .b(B[1]), .cin(c1), .sum(Sum[1]), .carry(c2));
             full_adder FA2 (.a(A[2]), .b(B[2]), .cin(c2), .sum(Sum[2]), .carry(c3));
             full_adder FA3 (.a(A[3]), .b(B[3]), .cin(c3), .sum(Sum[3]), .carry(Cout));
             endmodule

            // Half Adder Module
              module half_adder(input a, b, output sum, carry);
              assign sum = a ^ b;
             assign carry = a & b;
             endmodule

            // Full Adder Module
            module full_adder(input a, b, cin, output sum, carry);
            assign sum = a ^ b ^ cin;
           assign carry = (a & b) | (b & cin) | (a & cin);
          endmodule
