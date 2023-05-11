.global _start
.intel_syntax noprefix

_start:
    // sys_exit
    mov rax, 60                 # system call number for sys_exit
    mov rdi, 0                  # exit code
    syscall                     # invoke system call in rax
