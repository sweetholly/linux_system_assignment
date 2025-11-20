#include <linux/kernel.h>
#include <linux/syscalls.h>

SYSCALL_DEFINE0(mycall)
{
    printk(KERN_INFO "Hello, I'm SangWoo Park! (My custom syscall works for CAU CSE Linux system class)\n");
    printk("20212724 SangWoo Park\n");
    return 0;
}

