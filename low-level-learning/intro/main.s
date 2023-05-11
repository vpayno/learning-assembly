.global _start
.intel_syntax noprefix

_start:
    // sys_write hello world
    mov rax, 1                  # system call number for sys_write
    mov rdi, 1                  # file descriptor, stdout
    lea rsi, [hello_world]      # load effective address into rsi for buffer hello_world
    mov rdx, 13                 # length of buffer
    syscall                     # invoke system call in rax

    // sys_exit
    mov rax, 60                 # system call number for sys_exit
    mov rdi, 0                  # exit code
    syscall                     # invoke system call in rax

hello_world:
    .asciz  "Hello World!\n"    # string buffer followed by zero byte
