#include <sys/syscall.h>
#include <unistd.h>

void	syscall_test(void)
{
	syscall(SYS_write, 1, "hola\n", 5);
	return ;
}
