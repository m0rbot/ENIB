
unsigned int strlen(const char *s);
int asciihexa2uint(const char *s);

char s1[]="0x10A3";
char s2[]="l'hiver, c'est ≠ de l'été"; // 25 caractères + octet nul = 30 octets

int main() {
	unsigned int res = strlen(s2);
	
	res = asciihexa2uint(s1);
	
	return 0;
}
