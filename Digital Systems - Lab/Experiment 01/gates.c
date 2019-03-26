void AND (unsigned short int *out, unsigned short int inp1, unsigned short int inp2) {
	*out = inp1 & inp2;
}

void OR (unsigned short int *out, unsigned short int inp1, unsigned short int inp2) {
	*out = inp1 | inp2;
}

void XOR (unsigned short int *out, unsigned short int inp1, unsigned short int inp2) {
	*out = inp1 ^ inp2;
}

void NOT (unsigned short int *out, unsigned short int inp) {
	if(inp==0)
		*out = 1;
	else
		*out = 0;
}

void NAND (unsigned short int *out, unsigned short int inp1, unsigned short int inp2) {
	if((inp1 & inp2)==1)
		*out = 0;
	else
		*out = 1;
}

void NOR (unsigned short int *out, unsigned short int inp1, unsigned short int inp2) {
	if((inp1 | inp2)==1)
		*out = 0;
	else
		*out = 1;
}

void XNOR (unsigned short int *out, unsigned short int inp1, unsigned short int inp2) {
	if((inp1 ^ inp2)==1)
		*out = 0;
	else
		*out = 1;
}
