void AND (unsigned short int *, unsigned short int, unsigned short int);
void NOT (unsigned short int *, unsigned short int);
void OR (unsigned short int *, unsigned short int, unsigned short int);

void c1_s (unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c) {

	unsigned short int s1, s2, s3, s4, s5;
	unsigned short int a_, b_, c_;
	
	NOT(&a_, a);
	NOT(&b_, b);
	NOT(&c_, c);
	
	OR(&s1, a, c);
	OR(&s2, a, b_);
	OR(&s3, b, c_);
	OR(&s4, a_, s3);
	
	AND(&s5, s4, s2);

	AND(out, s5, s1);
}

void c2_s (unsigned short int *out, unsigned short int b, unsigned short int c, unsigned short int d) {
	unsigned short int s1, s2, s3, s4, s5, s6;
	unsigned short int b_, c_, d_;
	
	NOT(&d_, d);
	NOT(&b_, b);
	NOT(&c_, c);
	
	AND(&s1, c, d);
	AND(&s2, b_, c);
	AND(&s3, b, d_);
	
	OR(&s4, s1, s2);
	OR(&s5, s3, s4);
	OR(&s6, b, d);
	
	AND(out, s5, s6);
}

void c3_s (unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c, unsigned short int d) {
	unsigned short int s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11;
	unsigned short int a_, b_, c_, d_;
	
	NOT(&a_, a);
	NOT(&b_, b);
	NOT(&c_, c);
	NOT(&d_, d);

	AND(&s1, b_, c);
	AND(&s2, s1, d_);
	AND(&s3, a, c);
	AND(&s4, s3, d_);
	AND(&s5, a_, b);
	AND(&s6, s5, c);
	AND(&s7, s6, d);
	AND(&s8, b, c_);
	AND(&s9, s8, d_);

	OR(&s10, s2, s4);
	OR(&s11, s10, s7);
	OR(out, s11, s9);
	
}

void c1_b (unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c) {
	*out = ((a|c)&(a|(!b)))&(((!a)|b)|(!c));
}

void c2_b (unsigned short int *out, unsigned short int b, unsigned short int c, unsigned short int d) {
	*out = (((c & d) | ((!b) & c)) | (b & (!d)) ) & ( b | d);
}

void c3_b (unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c, unsigned short int d) {
	*out = ((((!b) & c) & (!d)) | ((a & c) & (!d))) | ((((!a) & b) & (c & d)) | ((b & (!c)) & (!d)));
}
