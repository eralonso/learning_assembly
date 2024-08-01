#include <unistd.h>

void	a(void)
{
	char	a;

	a = '5';
	write(1, &a, 1);
}
