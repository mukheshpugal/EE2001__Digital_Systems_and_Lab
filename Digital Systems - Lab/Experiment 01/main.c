#include<stdio.h>

void c1_s (unsigned short int*, unsigned short int, unsigned short int, unsigned short int);
void c2_s (unsigned short int*, unsigned short int, unsigned short int, unsigned short int);
void c3_s (unsigned short int*, unsigned short int, unsigned short int, unsigned short int, unsigned short int);
void c1_b (unsigned short int*, unsigned short int, unsigned short int, unsigned short int);
void c2_b (unsigned short int*, unsigned short int, unsigned short int, unsigned short int);
void c3_b (unsigned short int*, unsigned short int, unsigned short int, unsigned short int, unsigned short int);

int main()
{	
	unsigned short int a, b, c, d, exp, temp_s, temp_b;
	FILE *fp;

	printf("c1 outputs :\n\na\tb\tc\texp\tbeh\tstr\n");
	fp = fopen("c1.txt","r");
	while(fscanf(fp, "%hu, %hu, %hu, %hu", &a, &b, &c, &exp)!=EOF) {
		c1_s(&temp_s, a, b, c);
		c1_b(&temp_b, a, b, c);
		printf("%hu\t%hu\t%hu\t%hu\t%hu\t%hu\n", a, b, c, exp, temp_b, temp_s);
	}
	fclose(fp);

	printf("\nc2 outputs :\n\nb\tc\td\texp\tbeh\tstr\n");
	fp = fopen("c2.txt","r");
	while(fscanf(fp, "%hu, %hu, %hu, %hu", &b, &c, &d, &exp)!=EOF) {
		c2_s(&temp_s, b, c, d);
		c2_b(&temp_b, b, c, d);
		printf("%hu\t%hu\t%hu\t%hu\t%hu\t%hu\n", b, c, d, exp, temp_b, temp_s);
	}
	fclose(fp);

	printf("\nc3 outputs :\n\na\tb\tc\td\texp\tbeh\tstr\n");
	fp = fopen("c3.txt","r");
	while(fscanf(fp, "%hu, %hu, %hu, %hu, %hu", &a, &b, &c, &d, &exp)!=EOF) {
		c3_s(&temp_s, a, b, c, d);
		c3_b(&temp_b, a, b, c, d);
		printf("%hu\t%hu\t%hu\t%hu\t%hu\t%hu\t%hu\n", a, b, c, d, exp, temp_b, temp_s);
	}
	fclose(fp);
	
	return 0;
}
