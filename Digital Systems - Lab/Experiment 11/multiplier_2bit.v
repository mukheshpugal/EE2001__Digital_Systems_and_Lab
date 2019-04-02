`timescale 1ns/1ps

module multiplier_2bit(a, b, o);

        input [1:0] a;
        input [1:0] b;
        output [3:0] o;

        wire t1a, t1b, t2a, t2b;

        and a0(o[0], a[0], b[0]);

        and a1a(t1a, a[1], b[0]);
        and a1b(t1b, a[0], b[1]);
        xor x1(o[1], t1a, t1b);

        and a2a(t2a, a[0], a[1], b[0], b[1]);
        and a2b(t2b, a[1], b[1]);
        xor x2(o[2], t2a, t2b);

        assign o[3] = t2a;


endmodule
