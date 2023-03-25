Last login: Mon Jun 27 17:32:36 on ttys000
(base) prince@PRINCEs-MBP ~ % ssh -p 61550 student@ml-lab-452e25bb-ed6f-4f3c-9833-506493669e99.westeurope.cloudapp.azure.com
student@ml-lab-452e25bb-ed6f-4f3c-9833-506493669e99.westeurope.cloudapp.azure.com's password: 
Welcome to Ubuntu 20.04.3 LTS (GNU/Linux 5.11.0-1022-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Mon Jun 27 16:34:12 UTC 2022

  System load:  0.31               Processes:             185
  Usage of /:   23.1% of 28.90GB   Users logged in:       0
  Memory usage: 4%                 IPv4 address for eth0: 172.27.192.185
  Swap usage:   0%

 * Super-optimized for small spaces - read how we shrank the memory
   footprint of MicroK8s to make it the smallest full K8s around.

   https://ubuntu.com/blog/microk8s-memory-optimisation

69 updates can be applied immediately.
To see these additional updates run: apt list --upgradable


The list of available updates is more than a week old.
To check for new updates run: sudo apt update

Last login: Thu Jun 16 11:31:57 2022 from 109.146.118.75
student@ML-RefVm-625421:~$ nano Acoursework.asm

  GNU nano 4.8                    Acoursework.asm                               

div8:
mov rdi, div8
call print

mov rax, 40
mov rbx, 15
div rbx
mov rdi, rax
cmp rdi, 0
jge div15
mov rdi, not15
call print

div15:
mov rdi, div15
call print

; calculate the total number of students enrolled on the course


^G Get Help  ^O Write Out ^W Where Is  ^K Cut Text  ^J Justify   ^C Cur Pos
^X Exit      ^R Read File ^\ Replace   ^U Paste Text^T To Spell  ^_ Go To Line
  [Restored 27 Jun 2022 at 18:03:58]
Last login: Mon Jun 27 18:03:53 on console
Restored session: Mon 27 Jun 2022 17:36:04 BST
(base) prince@PRINCEs-MacBook-Pro ~ % 
  [Restored 27 Jun 2022 at 19:30:00]
Last login: Mon Jun 27 19:29:56 on console
Restored session: Mon 27 Jun 2022 18:12:06 BST
(base) prince@PRINCEs-MacBook-Pro ~ % ml-lab-452e25bb-ed6f-4f3c-9833-506493669e99.westeurope.cloudapp.azure.com:54426               
  [Restored 28 Jun 2022 at 19:57:06]
Last login: Tue Jun 28 20:57:01 on console
Restored session: Mon 27 Jun 2022 19:35:32 BST
(base) prince@PRINCEs-MBP ~ % ssh -p 61550 student@ml-lab-452e25bb-ed6f-4f3c-9833-506493669e99.westeurope.cloudapp.azure.com
student@ml-lab-452e25bb-ed6f-4f3c-9833-506493669e99.westeurope.cloudapp.azure.com's password: 
Welcome to Ubuntu 20.04.3 LTS (GNU/Linux 5.11.0-1022-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Tue Jun 28 19:07:05 UTC 2022

  System load:  0.0                Processes:             174
  Usage of /:   23.1% of 28.90GB   Users logged in:       0
  Memory usage: 4%                 IPv4 address for eth0: 172.27.192.185
  Swap usage:   0%

 * Super-optimized for small spaces - read how we shrank the memory
   footprint of MicroK8s to make it the smallest full K8s around.

   https://ubuntu.com/blog/microk8s-memory-optimisation

69 updates can be applied immediately.
To see these additional updates run: apt list --upgradable


The list of available updates is more than a week old.
To check for new updates run: sudo apt update

Last login: Tue Jun 28 17:18:20 2022 from 109.148.152.43
student@ML-RefVm-625421:~$ nasm -f elf32 course.asm
course.asm:16: error: instruction not supported in 32-bit mode
course.asm:17: error: instruction not supported in 32-bit mode
course.asm:18: error: instruction not supported in 32-bit mode
course.asm:19: error: instruction not supported in 32-bit mode
course.asm:20: error: instruction not supported in 32-bit mode
course.asm:22: error: symbol `bus' undefined
course.asm:23: error: symbol `print' undefined
course.asm:24: error: symbol `smart' undefined
course.asm:25: error: symbol `print' undefined
course.asm:26: error: symbol `fuzz' undefined
course.asm:27: error: symbol `print' undefined
course.asm:29: error: label `end' changed during code generation [-w+error=label-redef-late]
course.asm:30: error: symbol `enrolled' undefined
course.asm:31: error: symbol `print' undefined
course.asm:32: error: symbol `age' undefined
course.asm:33: error: symbol `print' undefined
course.asm:34: error: instruction not supported in 32-bit mode
course.asm:35: error: symbol `print' undefined
course.asm:36: error: instruction not supported in 32-bit mode
course.asm:37: error: symbol `print' undefined
course.asm:42: error: instruction not supported in 32-bit mode
course.asm:43: error: instruction not supported in 32-bit mode
course.asm:44: error: instruction not supported in 32-bit mode
course.asm:45: error: instruction not supported in 32-bit mode
course.asm:46: error: instruction not supported in 32-bit mode
course.asm:48: error: symbol `odd' undefined
course.asm:49: error: symbol `print' undefined
course.asm:51: error: label `even' changed during code generation [-w+error=label-redef-late]
course.asm:52: error: instruction not supported in 32-bit mode
course.asm:53: error: symbol `print' undefined
course.asm:57: error: instruction not supported in 32-bit mode
course.asm:58: error: instruction not supported in 32-bit mode
course.asm:59: error: instruction not supported in 32-bit mode
course.asm:60: error: instruction not supported in 32-bit mode
course.asm:61: error: instruction not supported in 32-bit mode
course.asm:63: error: symbol `not8' undefined
course.asm:64: error: symbol `print' undefined
course.asm:66: error: label `div8' changed during code generation [-w+error=label-redef-late]
course.asm:67: error: instruction not supported in 32-bit mode
course.asm:68: error: symbol `print' undefined
course.asm:70: error: instruction not supported in 32-bit mode
course.asm:71: error: instruction not supported in 32-bit mode
course.asm:72: error: instruction not supported in 32-bit mode
course.asm:73: error: instruction not supported in 32-bit mode
course.asm:74: error: instruction not supported in 32-bit mode
course.asm:76: error: symbol `not15' undefined
course.asm:77: error: symbol `print' undefined
course.asm:79: error: label `div15' changed during code generation [-w+error=label-redef-late]
course.asm:80: error: instruction not supported in 32-bit mode
course.asm:81: error: symbol `print' undefined
course.asm:85: error: instruction not supported in 32-bit mode
course.asm:86: error: instruction not supported in 32-bit mode
course.asm:87: error: instruction not supported in 32-bit mode
course.asm:88: error: instruction not supported in 32-bit mode
course.asm:89: error: instruction not supported in 32-bit mode
course.asm:91: error: symbol `enrolled' undefined
course.asm:92: error: symbol `print' undefined
student@ML-RefVm-625421:~$ nano course.asm
student@ML-RefVm-625421:~$ nasm -f elf32 course.asm
course.asm:80: error: label `end' inconsistently redefined
course.asm:15: note: label `end' originally defined here
student@ML-RefVm-625421:~$ nano course.asm
student@ML-RefVm-625421:~$ nasm -f elf32 course.asm
course.asm:2: error: instruction not supported in 32-bit mode
course.asm:3: error: instruction not supported in 32-bit mode
course.asm:4: error: instruction not supported in 32-bit mode
course.asm:5: error: instruction not supported in 32-bit mode
course.asm:6: error: instruction not supported in 32-bit mode
course.asm:8: error: symbol `bus' undefined
course.asm:9: error: symbol `print' undefined
course.asm:10: error: symbol `smart' undefined
course.asm:11: error: symbol `print' undefined
course.asm:12: error: symbol `fuzz' undefined
course.asm:13: error: symbol `print' undefined
course.asm:15: error: label `main' changed during code generation [-w+error=label-redef-late]
course.asm:16: error: symbol `enrolled' undefined
course.asm:17: error: symbol `print' undefined
course.asm:18: error: symbol `age' undefined
course.asm:19: error: symbol `print' undefined
course.asm:20: error: instruction not supported in 32-bit mode
course.asm:21: error: symbol `print' undefined
course.asm:22: error: instruction not supported in 32-bit mode
course.asm:23: error: symbol `print' undefined
course.asm:28: error: instruction not supported in 32-bit mode
course.asm:29: error: instruction not supported in 32-bit mode
course.asm:30: error: instruction not supported in 32-bit mode
course.asm:31: error: instruction not supported in 32-bit mode
course.asm:32: error: instruction not supported in 32-bit mode
course.asm:34: error: symbol `odd' undefined
course.asm:35: error: symbol `print' undefined
course.asm:37: error: label `even' changed during code generation [-w+error=label-redef-late]
course.asm:38: error: instruction not supported in 32-bit mode
course.asm:39: error: symbol `print' undefined
course.asm:43: error: instruction not supported in 32-bit mode
course.asm:44: error: instruction not supported in 32-bit mode
course.asm:45: error: instruction not supported in 32-bit mode
course.asm:46: error: instruction not supported in 32-bit mode
course.asm:47: error: instruction not supported in 32-bit mode
course.asm:49: error: symbol `not8' undefined
course.asm:50: error: symbol `print' undefined
course.asm:52: error: label `div8' changed during code generation [-w+error=label-redef-late]
course.asm:53: error: instruction not supported in 32-bit mode
course.asm:54: error: symbol `print' undefined
course.asm:56: error: instruction not supported in 32-bit mode
course.asm:57: error: instruction not supported in 32-bit mode
course.asm:58: error: instruction not supported in 32-bit mode
course.asm:59: error: instruction not supported in 32-bit mode
course.asm:60: error: instruction not supported in 32-bit mode
course.asm:62: error: symbol `not15' undefined
course.asm:63: error: symbol `print' undefined
course.asm:65: error: label `div15' changed during code generation [-w+error=label-redef-late]
course.asm:66: error: instruction not supported in 32-bit mode
course.asm:67: error: symbol `print' undefined
course.asm:71: error: instruction not supported in 32-bit mode
course.asm:72: error: instruction not supported in 32-bit mode
course.asm:73: error: instruction not supported in 32-bit mode
course.asm:74: error: instruction not supported in 32-bit mode
course.asm:75: error: instruction not supported in 32-bit mode
course.asm:77: error: symbol `enrolled' undefined
course.asm:78: error: symbol `print' undefined
course.asm:80: error: label `end' changed during code generation [-w+error=label-redef-late]
student@ML-RefVm-625421:~$ nano course.asm
student@ML-RefVm-625421:~$ nasm -f elf32 course.asm
course.asm:80: error: label `end' inconsistently redefined
course.asm:15: note: label `end' originally defined here
student@ML-RefVm-625421:~$ nano course.asm
student@ML-RefVm-625421:~$ nasm -f elf32 course.asm
course.asm:2: error: instruction not supported in 32-bit mode
course.asm:3: error: instruction not supported in 32-bit mode
course.asm:4: error: instruction not supported in 32-bit mode
course.asm:5: error: instruction not supported in 32-bit mode
course.asm:6: error: instruction not supported in 32-bit mode
course.asm:8: error: symbol `bus' undefined
course.asm:9: error: symbol `print' undefined
course.asm:10: error: symbol `smart' undefined
course.asm:11: error: symbol `print' undefined
course.asm:12: error: symbol `fuzz' undefined
course.asm:13: error: symbol `print' undefined
course.asm:15: error: label `enrolled' changed during code generation [-w+error=label-redef-late]
course.asm:16: error: instruction not supported in 32-bit mode
course.asm:17: error: symbol `print' undefined
course.asm:18: error: symbol `age' undefined
course.asm:19: error: symbol `print' undefined
course.asm:20: error: instruction not supported in 32-bit mode
course.asm:21: error: symbol `print' undefined
course.asm:22: error: instruction not supported in 32-bit mode
course.asm:23: error: symbol `print' undefined
course.asm:28: error: instruction not supported in 32-bit mode
course.asm:29: error: instruction not supported in 32-bit mode
course.asm:30: error: instruction not supported in 32-bit mode
course.asm:31: error: instruction not supported in 32-bit mode
course.asm:32: error: instruction not supported in 32-bit mode
course.asm:34: error: symbol `odd' undefined
course.asm:35: error: symbol `print' undefined
course.asm:37: error: label `even' changed during code generation [-w+error=label-redef-late]
course.asm:38: error: instruction not supported in 32-bit mode
course.asm:39: error: symbol `print' undefined
course.asm:43: error: instruction not supported in 32-bit mode
course.asm:44: error: instruction not supported in 32-bit mode
course.asm:45: error: instruction not supported in 32-bit mode
course.asm:46: error: instruction not supported in 32-bit mode
course.asm:47: error: instruction not supported in 32-bit mode
course.asm:49: error: symbol `not8' undefined
course.asm:50: error: symbol `print' undefined
course.asm:52: error: label `div8' changed during code generation [-w+error=label-redef-late]
course.asm:53: error: instruction not supported in 32-bit mode
course.asm:54: error: symbol `print' undefined
course.asm:56: error: instruction not supported in 32-bit mode
course.asm:57: error: instruction not supported in 32-bit mode
course.asm:58: error: instruction not supported in 32-bit mode
course.asm:59: error: instruction not supported in 32-bit mode
course.asm:60: error: instruction not supported in 32-bit mode
course.asm:62: error: symbol `not15' undefined
course.asm:63: error: symbol `print' undefined
course.asm:65: error: label `div15' changed during code generation [-w+error=label-redef-late]
course.asm:66: error: instruction not supported in 32-bit mode
course.asm:67: error: symbol `print' undefined
course.asm:71: error: instruction not supported in 32-bit mode
course.asm:72: error: instruction not supported in 32-bit mode
course.asm:73: error: instruction not supported in 32-bit mode
course.asm:74: error: instruction not supported in 32-bit mode
course.asm:75: error: instruction not supported in 32-bit mode
course.asm:77: error: instruction not supported in 32-bit mode
course.asm:78: error: symbol `print' undefined
course.asm:80: error: label `end' changed during code generation [-w+error=label-redef-late]
student@ML-RefVm-625421:~$ nano course.asm
student@ML-RefVm-625421:~$ nasm -f elf32 course.asm
course.asm:9: error: label `printsmart' inconsistently redefined
course.asm:8: note: label `printsmart' originally defined here
course.asm:58: error: label `even' inconsistently redefined
course.asm:6: note: label `even' originally defined here
student@ML-RefVm-625421:~$ nasm -f elf32 course.asm
course.asm:9: error: label `printsmart' inconsistently redefined
course.asm:8: note: label `printsmart' originally defined here
course.asm:58: error: label `even' inconsistently redefined
course.asm:6: note: label `even' originally defined here
student@ML-RefVm-625421:~$ nano course.asm

  GNU nano 4.8                       course.asm                                 
global main
extern printf

SECTION .data
    odd db "%d is odd",0xa,0x0
    even db "%d is even",0xa,0x0
    printbusybee db "bus",0x0
    printsmart db "smart",0x0
    printsmart db "fuzz",0x0
    endprint db 0xa,0x0
    num dd 60

SECTION .text

main:
    call bus
    call smart
    call fuzz
    call print
    call end

^G Get Help  ^O Write Out ^W Where Is  ^K Cut Text  ^J Justify   ^C Cur Pos
^X Exit      ^R Read File ^\ Replace   ^U Paste Text^T To Spell  ^_ Go To Line
