section .data
    msg db 'Hello, World!' ,0

    section .text
        global _start

    _start:
        mov rax, 1              ; sys_write system call
        mov rdi, 1              ; file description 1 (stdout)
        mov rsi, msg            ; pointer to the message
        mov rdx, 13             ; message lenght
        syscall

        mov rax, 60             ; sys_exit system call
        xor rdi, rdi            ; exit code 0
        syscall