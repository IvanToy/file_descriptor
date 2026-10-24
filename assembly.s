
file_descriptor:	file format mach-o 64-bit x86-64

Disassembly of section __TEXT,__text:

0000000100003ba0 <_main>:
100003ba0: 55                          	pushq	%rbp # push base pointer
100003ba1: 48 89 e5                    	movq	%rsp, %rbp # move stack pointer to base pointer
100003ba4: 48 81 ec 70 02 00 00        	subq	$624, %rsp              ## imm = 0x270 #add 624 bytes on stack
100003bab: 48 8b 05 4e 04 00 00        	movq	1102(%rip), %rax        ## 0x100004000 <dyld_stub_binder+0x100004000> # move local var(which?) on a stack to rax(return value) 
100003bb2: 48 8b 00                    	movq	(%rax), %rax # move value from the address of rax to rax
100003bb5: 48 89 45 f8                 	movq	%rax, -8(%rbp) # move rax to local var on stack. Some value on stack
100003bb9: c7 85 ec fd ff ff 00 00 00 00       	movl	$0, -532(%rbp) # move 0 to local var on stack. Return value of main ?
100003bc3: 89 bd e8 fd ff ff           	movl	%edi, -536(%rbp)  # move 1st arg to local var on stack. argc
100003bc9: 48 89 b5 e0 fd ff ff        	movq	%rsi, -544(%rbp) # move 2nd arg to local var on stack. argv
100003bd0: 83 bd e8 fd ff ff 02        	cmpl	$2, -536(%rbp)  # compare 2 == argc
100003bd7: 0f 84 31 00 00 00           	je	0x100003c0e <_main+0x6e> # if  argc equals 2 jump here: 100003c0e
100003bdd: 48 8b 05 24 04 00 00        	movq	1060(%rip), %rax        ## 0x100004008 <dyld_stub_binder+0x100004008> # move local var to rax.
100003be4: 48 8b 38                    	movq	(%rax), %rdi # move value at the address of rax to rdi(1st arg). stderr 
100003be7: 48 8b 85 e0 fd ff ff        	movq	-544(%rbp), %rax # move argv to rax
100003bee: 48 8b 10                    	movq	(%rax), %rdx # move value at the address of rax to rdx(3rd arg)
100003bf1: 48 8d 35 00 03 00 00        	leaq	768(%rip), %rsi         ## 0x100003ef8 <dyld_stub_binder+0x100003ef8> # move local var on a stack to rsi(2nd arg)."Usage: %s <file>\n"
100003bf8: b0 00                       	movb	$0, %al # move zero to lower bits of rax. argv[0]
100003bfa: e8 81 02 00 00              	callq	0x100003e80 <dyld_stub_binder+0x100003e80> # call fprintf 
100003bff: c7 85 ec fd ff ff 01 00 00 00       	movl	$1, -532(%rbp) # move 1 to local var on stack 
100003c09: e9 20 02 00 00              	jmp	0x100003e2e <_main+0x28e> # jump to 100003e2e
100003c0e: 48 c7 85 d8 fd ff ff 00 00 00 00    	movq	$0, -552(%rbp) # move 0 to local var. FILE *file = NULL;
100003c19: 48 8b 85 e0 fd ff ff        	movq	-544(%rbp), %rax # move argv to rax
100003c20: 48 8b 78 08                 	movq	8(%rax), %rdi # move argv[1] to rdi(1st arg)
100003c24: 48 8d 35 df 02 00 00        	leaq	735(%rip), %rsi         ## 0x100003f0a <dyld_stub_binder+0x100003f0a> # calculate address of local var and move it to rsi(2nd arg). "rb" ?
100003c2b: e8 4a 02 00 00              	callq	0x100003e7a <dyld_stub_binder+0x100003e7a> # call  fopen
100003c30: 48 89 85 d8 fd ff ff        	movq	%rax, -552(%rbp) # move result of the call to local var on stack. Pointer to a file
100003c37: 48 83 bd d8 fd ff ff 00     	cmpq	$0, -552(%rbp) # compare result with 0. if (file == NULL
100003c3f: 0f 85 1b 00 00 00           	jne	0x100003c60 <_main+0xc0> # if not equal to jump here 100003c60. Signed comparison
100003c45: 48 8d 3d c1 02 00 00        	leaq	705(%rip), %rdi         ## 0x100003f0d <dyld_stub_binder+0x100003f0d> # calcualre the address of local var and put it in rdi(1st arg). errno ?
100003c4c: e8 3b 02 00 00              	callq	0x100003e8c <dyld_stub_binder+0x100003e8c> # call perror
100003c51: c7 85 ec fd ff ff 01 00 00 00       	movl	$1, -532(%rbp) # move 1 to local var on stack 
100003c5b: e9 ce 01 00 00              	jmp	0x100003e2e <_main+0x28e> # jump here x100003e2e
100003c60: 48 c7 85 d0 fd ff ff 00 02 00 00    	movq	$512, -560(%rbp) ## imm = 0x200 # move 512 to local var on stack. unsigned char bytes_buffer[BYTES_BUFFER_SIZE];
100003c6b: 48 c7 85 c0 fd ff ff 00 00 00 00    	movq	$0, -576(%rbp) # move 0 to local var on stack.  size_t total_bytes = 0;
100003c76: 48 c7 85 b0 fd ff ff 00 00 00 00    	movq	$0, -592(%rbp) # move 0 to local var on stack. size_t printable_bytes = 0; 
100003c81: 48 c7 85 a8 fd ff ff 00 00 00 00    	movq	$0, -600(%rbp) # move 0 to local var on stack. size_t zero_bytes = 0;
100003c8c: 48 c7 85 a0 fd ff ff 00 00 00 00    	movq	$0, -608(%rbp) # move 0 to local var on stack.  size_t other_bytes = 0;
100003c97: 48 8d bd f0 fd ff ff        	leaq	-528(%rbp), %rdi  # calculate address of local var and put it to rdi (1st arg). Address of bytes_buffer for fread
100003c9e: 48 8b 8d d8 fd ff ff        	movq	-552(%rbp), %rcx # move pointer to a file to rcx (4th arg).
100003ca5: be 01 00 00 00              	movl	$1, %esi # move 1 to esi (2nd arg).  sizeof(char)
100003caa: ba 00 02 00 00              	movl	$512, %edx              ## imm = 0x200 # move 512 in define to edx (3rd arg)
100003caf: e8 d2 01 00 00              	callq	0x100003e86 <dyld_stub_binder+0x100003e86> # call fread
100003cb4: 48 89 85 c8 fd ff ff        	movq	%rax, -568(%rbp) # move result of the call to local var.
100003cbb: 48 83 f8 00                 	cmpq	$0, %rax # compare if result and 0
100003cbf: 0f 86 e2 00 00 00           	jbe	0x100003da7 <_main+0x207> # if result below or equal to  0 jump here 100003da7. unsigned comparison 
100003cc5: 48 8b 85 c8 fd ff ff        	movq	-568(%rbp), %rax # move result to rax
100003ccc: 48 03 85 c0 fd ff ff        	addq	-576(%rbp), %rax # add total_bytes with result
100003cd3: 48 89 85 c0 fd ff ff        	movq	%rax, -576(%rbp) # move result to addition to total_bytes
100003cda: 48 c7 85 b8 fd ff ff 00 00 00 00    	movq	$0, -584(%rbp) # move 0 to local var. i = 0;
100003ce5: 48 8b 85 b8 fd ff ff        	movq	-584(%rbp), %rax # move i to rax
100003cec: 48 3b 85 c8 fd ff ff        	cmpq	-568(%rbp), %rax # compare result of the call of fread with i. i < bytes_read
100003cf3: 0f 83 a9 00 00 00           	jae	0x100003da2 <_main+0x202> # if i above or equal ro fread result jump here 100003da2
100003cf9: 48 8b 85 b8 fd ff ff        	movq	-584(%rbp), %rax # move i to rax
100003d00: 0f b6 84 05 f0 fd ff ff     	movzbl	-528(%rbp,%rax), %eax # move with zero extending i to eax ? displacement(-528) + base(rbp) + index(rax) 
100003d08: 83 f8 20                    	cmpl	$32, %eax # compare START_PRINT_CHARS with bytes_buffer[i]
100003d0b: 0f 8c 2f 00 00 00           	jl	0x100003d40 <_main+0x1a0> # if less jump here x100003d40
100003d11: 48 8b 85 b8 fd ff ff        	movq	-584(%rbp), %rax # move i to rax 
100003d18: 0f b6 84 05 f0 fd ff ff     	movzbl	-528(%rbp,%rax), %eax #  move with zero extending i to eax ? displacement(-528) + base(rbp) + index(rax) 
100003d20: 83 f8 7f                    	cmpl	$127, %eax  # compare END_PRINT_CHARS with bytes_buffer[i]
100003d23: 0f 8d 17 00 00 00           	jge	0x100003d40 <_main+0x1a0>  # if greater or equal to jump here 100003d40
100003d29: 48 8b 85 b0 fd ff ff        	movq	-592(%rbp), %rax # move printable_bytes
100003d30: 48 83 c0 01                 	addq	$1, %rax # add 1 to printable_bytes
100003d34: 48 89 85 b0 fd ff ff        	movq	%rax, -592(%rbp) # move printable_bytes to local var
100003d3b: e9 46 00 00 00              	jmp	0x100003d86 <_main+0x1e6> # jump here x100003d86
100003d40: 48 8b 85 b8 fd ff ff        	movq	-584(%rbp), %rax # move i to rax
100003d47: 0f b6 84 05 f0 fd ff ff     	movzbl	-528(%rbp,%rax), %eax # move with zero extending i to eax ? displacement(-528) + base(rbp) + index(rax) 
100003d4f: 83 f8 00                    	cmpl	$0, %eax # compare bytes_buffer[i] == 0x00 
100003d52: 0f 85 17 00 00 00           	jne	0x100003d6f <_main+0x1cf> # if not equal jump 100003d6f
100003d58: 48 8b 85 a8 fd ff ff        	movq	-600(%rbp), %rax # move zero_bytes to rax
100003d5f: 48 83 c0 01                 	addq	$1, %rax # add 1 to zero_bytes
100003d63: 48 89 85 a8 fd ff ff        	movq	%rax, -600(%rbp) # move zero_bytes to local var
100003d6a: e9 12 00 00 00              	jmp	0x100003d81 <_main+0x1e1> # jump 100003d81
100003d6f: 48 8b 85 a0 fd ff ff        	movq	-608(%rbp), %rax # move other_bytes  to rax
100003d76: 48 83 c0 01                 	addq	$1, %rax # add 1 to other_bytes 
100003d7a: 48 89 85 a0 fd ff ff        	movq	%rax, -608(%rbp) # move other_bytes to local var
100003d81: e9 00 00 00 00              	jmp	0x100003d86 <_main+0x1e6>  # jump here 100003d86
100003d86: e9 00 00 00 00              	jmp	0x100003d8b <_main+0x1eb> # jump here 100003d8b
100003d8b: 48 8b 85 b8 fd ff ff        	movq	-584(%rbp), %rax # move i to rax
100003d92: 48 83 c0 01                 	addq	$1, %rax # increment i by 1
100003d96: 48 89 85 b8 fd ff ff        	movq	%rax, -584(%rbp) # move it back to local var
100003d9d: e9 43 ff ff ff              	jmp	0x100003ce5 <_main+0x145> # jump here 100003ce5. Address of the inner loop
100003da2: e9 f0 fe ff ff              	jmp	0x100003c97 <_main+0xf7> # jump here 100003c97. Address of while loop with fread
100003da7: 48 8b bd d8 fd ff ff        	movq	-552(%rbp), %rdi # move file pointer to rdi (1st arg)
100003dae: e8 c1 00 00 00              	callq	0x100003e74 <dyld_stub_binder+0x100003e74> # call (ferror(file)
100003db3: 83 f8 00                    	cmpl	$0, %eax # compare result of the call with 0
100003db6: 0f 84 27 00 00 00           	je	0x100003de3 <_main+0x243> # if equal jump here 100003de3
100003dbc: 48 8b 05 45 02 00 00        	movq	581(%rip), %rax         ## 0x100004008 <dyld_stub_binder+0x100004008> # move stderr to rax
100003dc3: 48 8b 38                    	movq	(%rax), %rdi # move the value at the address of ta to rdi (1st arg)
100003dc6: 48 8d 35 54 01 00 00        	leaq	340(%rip), %rsi         ## 0x100003f21 <dyld_stub_binder+0x100003f21> # calculate the address of the local var and move to rsi(2nd arg). "A file error occurred while reading a file\n"
100003dcd: b0 00                       	movb	$0, %al # move  move to lower bits of rax
100003dcf: e8 ac 00 00 00              	callq	0x100003e80 <dyld_stub_binder+0x100003e80> # call  fprintf
100003dd4: c7 85 ec fd ff ff 01 00 00 00       	movl	$1, -532(%rbp) # move 1 to local var 
100003dde: e9 4b 00 00 00              	jmp	0x100003e2e <_main+0x28e> # jump here 100003e2e
100003de3: 48 8b 85 e0 fd ff ff        	movq	-544(%rbp), %rax # move argv to tax
100003dea: 48 8b 70 08                 	movq	8(%rax), %rsi # move argv[1] to rsi 2nd arg
100003dee: 48 8b 95 c0 fd ff ff        	movq	-576(%rbp), %rdx # move total_bytes to rdx 3rd arg
100003df5: 48 8b 8d b0 fd ff ff        	movq	-592(%rbp), %rcx # move printable_bytes to 4th arg
100003dfc: 4c 8b 85 a8 fd ff ff        	movq	-600(%rbp), %r8 # move zero_bytes  to r8 5th arg
100003e03: 4c 8b 8d a0 fd ff ff        	movq	-608(%rbp), %r9 # move  other_bytes to r9 6th arg
100003e0a: 48 8d 3d 3c 01 00 00        	leaq	316(%rip), %rdi         ## 0x100003f4d <dyld_stub_binder+0x100003f4d> # calculate address of the local var and move ti rdi 1st arg. String
100003e11: b0 00                       	movb	$0, %al # move 0 to lower bits ot rax
100003e13: e8 7a 00 00 00              	callq	0x100003e92 <dyld_stub_binder+0x100003e92> # printf
100003e18: 48 8b bd d8 fd ff ff        	movq	-552(%rbp), %rdi # move file pointer to rdi 1st arg
100003e1f: e8 4a 00 00 00              	callq	0x100003e6e <dyld_stub_binder+0x100003e6e> # call  fclose(file)
100003e24: c7 85 ec fd ff ff 00 00 00 00       	movl	$0, -532(%rbp) # move 0 to local var
100003e2e: 8b 85 ec fd ff ff           	movl	-532(%rbp), %eax # move to eax
100003e34: 89 85 9c fd ff ff           	movl	%eax, -612(%rbp) # move eax to local var. zero here
100003e3a: 48 8b 05 bf 01 00 00        	movq	447(%rip), %rax         ## 0x100004000 <dyld_stub_binder+0x100004000>  # move some local var to rac
100003e41: 48 8b 00                    	movq	(%rax), %rax # move value at the address of rac to rax
100003e44: 48 8b 4d f8                 	movq	-8(%rbp), %rcx # compare some value on stack with to rcx
100003e48: 48 39 c8                    	cmpq	%rcx, %rax # some value with some value 
100003e4b: 0f 85 0f 00 00 00           	jne	0x100003e60 <_main+0x2c0> # if not equal jump here 100003e60. Canary?
100003e51: 8b 85 9c fd ff ff           	movl	-612(%rbp), %eax # move ero to eax
100003e57: 48 81 c4 70 02 00 00        	addq	$624, %rsp              ## imm = 0x270 # unwind the stack
100003e5e: 5d                          	popq	%rbp # pop base pointer
100003e5f: c3                          	retq # return 
100003e60: e8 03 00 00 00              	callq	0x100003e68 <dyld_stub_binder+0x100003e68> # call some function
100003e65: 0f 0b                       	ud2 # ?

Disassembly of section __TEXT,__stubs:

0000000100003e68 <__stubs>:
100003e68: ff 25 92 41 00 00           	jmpq	*16786(%rip)            ## 0x100008000 <dyld_stub_binder+0x100008000>
100003e6e: ff 25 94 41 00 00           	jmpq	*16788(%rip)            ## 0x100008008 <dyld_stub_binder+0x100008008>
100003e74: ff 25 96 41 00 00           	jmpq	*16790(%rip)            ## 0x100008010 <dyld_stub_binder+0x100008010>
100003e7a: ff 25 98 41 00 00           	jmpq	*16792(%rip)            ## 0x100008018 <dyld_stub_binder+0x100008018>
100003e80: ff 25 9a 41 00 00           	jmpq	*16794(%rip)            ## 0x100008020 <dyld_stub_binder+0x100008020>
100003e86: ff 25 9c 41 00 00           	jmpq	*16796(%rip)            ## 0x100008028 <dyld_stub_binder+0x100008028>
100003e8c: ff 25 9e 41 00 00           	jmpq	*16798(%rip)            ## 0x100008030 <dyld_stub_binder+0x100008030>
100003e92: ff 25 a0 41 00 00           	jmpq	*16800(%rip)            ## 0x100008038 <dyld_stub_binder+0x100008038>

Disassembly of section __TEXT,__stub_helper:

0000000100003e98 <__stub_helper>:
100003e98: 4c 8d 1d a1 41 00 00        	leaq	16801(%rip), %r11       ## 0x100008040 <__dyld_private>
100003e9f: 41 53                       	pushq	%r11
100003ea1: ff 25 69 01 00 00           	jmpq	*361(%rip)              ## 0x100004010 <dyld_stub_binder+0x100004010>
100003ea7: 90                          	nop
100003ea8: 68 00 00 00 00              	pushq	$0
100003ead: e9 e6 ff ff ff              	jmp	0x100003e98 <__stub_helper>
100003eb2: 68 18 00 00 00              	pushq	$24
100003eb7: e9 dc ff ff ff              	jmp	0x100003e98 <__stub_helper>
100003ebc: 68 26 00 00 00              	pushq	$38
100003ec1: e9 d2 ff ff ff              	jmp	0x100003e98 <__stub_helper>
100003ec6: 68 34 00 00 00              	pushq	$52
100003ecb: e9 c8 ff ff ff              	jmp	0x100003e98 <__stub_helper>
100003ed0: 68 41 00 00 00              	pushq	$65
100003ed5: e9 be ff ff ff              	jmp	0x100003e98 <__stub_helper>
100003eda: 68 50 00 00 00              	pushq	$80
100003edf: e9 b4 ff ff ff              	jmp	0x100003e98 <__stub_helper>
100003ee4: 68 5d 00 00 00              	pushq	$93
100003ee9: e9 aa ff ff ff              	jmp	0x100003e98 <__stub_helper>
100003eee: 68 6b 00 00 00              	pushq	$107
100003ef3: e9 a0 ff ff ff              	jmp	0x100003e98 <__stub_helper>

Disassembly of section __TEXT,__cstring:

0000000100003ef8 <__cstring>:
100003ef8: 55                          	pushq	%rbp
100003ef9: 73 61                       	jae	0x100003f5c <__cstring+0x64>
100003efb: 67 65 3a 20                 	cmpb	%gs:(%eax), %ah
100003eff: 25 73 20 3c 66              	andl	$1715216499, %eax       ## imm = 0x663C2073
100003f04: 69 6c 65 3e 0a 00 72 62     	imull	$1651638282, 62(%rbp,%riz,2), %ebp ## imm = 0x6272000A
100003f0c: 00 46 61                    	addb	%al, 97(%rsi)
100003f0f: 69 6c 65 64 20 74 6f 20     	imull	$544175136, 100(%rbp,%riz,2), %ebp ## imm = 0x206F7420
100003f17: 6f                          	outsl	(%rsi), %dx
100003f18: 70 65                       	jo	0x100003f7f <__cstring+0x87>
100003f1a: 6e                          	outsb	(%rsi), %dx
100003f1b: 20 66 69                    	andb	%ah, 105(%rsi)
100003f1e: 6c                          	insb	%dx, %es:(%rdi)
100003f1f: 65 00 41 20                 	addb	%al, %gs:32(%rcx)
100003f23: 66 69 6c 65 20 65 72        	imulw	$29285, 32(%rbp,%riz,2), %bp ## imm = 0x7265
100003f2a: 72 6f                       	jb	0x100003f9b <__cstring+0xa3>
100003f2c: 72 20                       	jb	0x100003f4e <__cstring+0x56>
100003f2e: 6f                          	outsl	(%rsi), %dx
100003f2f: 63 63 75                    	movslq	117(%rbx), %esp
100003f32: 72 72                       	jb	0x100003fa6 <__cstring+0xae>
100003f34: 65 64 20 77 68              	andb	%dh, %fs:104(%rdi)
100003f39: 69 6c 65 20 72 65 61 64     	imull	$1684104562, 32(%rbp,%riz,2), %ebp ## imm = 0x64616572
100003f41: 69 6e 67 20 61 20 66        	imull	$1713398048, 103(%rsi), %ebp ## imm = 0x66206120
100003f48: 69 6c 65 0a 00 46 69 6c     	imull	$1818838528, 10(%rbp,%riz,2), %ebp ## imm = 0x6C694600
100003f50: 65 20 6e 61                 	andb	%ch, %gs:97(%rsi)
100003f54: 6d                          	insl	%dx, %es:(%rdi)
100003f55: 65 3a 20                    	cmpb	%gs:(%rax), %ah
100003f58: 25 73 0a 54 6f              	andl	$1867778675, %eax       ## imm = 0x6F540A73
100003f5d: 74 61                       	je	0x100003fc0 <dyld_stub_binder+0x100003fc0>
100003f5f: 6c                          	insb	%dx, %es:(%rdi)
100003f60: 20 73 69                    	andb	%dh, 105(%rbx)
100003f63: 7a 65                       	jp	0x100003fca <dyld_stub_binder+0x100003fca>
100003f65: 20 69 6e                    	andb	%ch, 110(%rcx)
100003f68: 20 62 79                    	andb	%ah, 121(%rdx)
100003f6b: 74 65                       	je	0x100003fd2 <dyld_stub_binder+0x100003fd2>
100003f6d: 73 3a                       	jae	0x100003fa9 <__cstring+0xb1>
100003f6f: 20 25 7a 75 0a 50           	andb	%ah, 1342862714(%rip)   ## 0x1500ab4ef <__dyld_private+0x500a34af>
100003f75: 72 69                       	jb	0x100003fe0 <dyld_stub_binder+0x100003fe0>
100003f77: 6e                          	outsb	(%rsi), %dx
100003f78: 74 61                       	je	0x100003fdb <dyld_stub_binder+0x100003fdb>
100003f7a: 62                          	<unknown>
100003f7b: 6c                          	insb	%dx, %es:(%rdi)
100003f7c: 65 20 62 79                 	andb	%ah, %gs:121(%rdx)
100003f80: 74 65                       	je	0x100003fe7 <dyld_stub_binder+0x100003fe7>
100003f82: 73 3a                       	jae	0x100003fbe <dyld_stub_binder+0x100003fbe>
100003f84: 20 25 7a 75 0a 5a           	andb	%ah, 1510634874(%rip)   ## 0x15a0ab504 <__dyld_private+0x5a0a34c4>
100003f8a: 65 72 6f                    	jb	0x100003ffc <dyld_stub_binder+0x100003ffc>
100003f8d: 20 62 79                    	andb	%ah, 121(%rdx)
100003f90: 74 65                       	je	0x100003ff7 <dyld_stub_binder+0x100003ff7>
100003f92: 73 3a                       	jae	0x100003fce <dyld_stub_binder+0x100003fce>
100003f94: 20 25 7a 75 0a 4f           	andb	%ah, 1326085498(%rip)   ## 0x14f0ab514 <__dyld_private+0x4f0a34d4>
100003f9a: 74 68                       	je	0x100004004 <dyld_stub_binder+0x100004004>
100003f9c: 65 72 20                    	jb	0x100003fbf <dyld_stub_binder+0x100003fbf>
100003f9f: 62                          	<unknown>
100003fa0: 79 74                       	jns	0x100004016 <dyld_stub_binder+0x100004016>
100003fa2: 65 73 3a                    	jae	0x100003fdf <dyld_stub_binder+0x100003fdf>
100003fa5: 20 25 7a 75 0a 00           	andb	%ah, 685434(%rip)       ## 0x1000ab525 <__dyld_private+0xa34e5>

Disassembly of section __TEXT,__unwind_info:

0000000100003fac <__unwind_info>:
100003fac: 01 00                       	addl	%eax, (%rax)
100003fae: 00 00                       	addb	%al, (%rax)
100003fb0: 1c 00                       	sbbb	$0, %al
100003fb2: 00 00                       	addb	%al, (%rax)
100003fb4: 00 00                       	addb	%al, (%rax)
100003fb6: 00 00                       	addb	%al, (%rax)
100003fb8: 1c 00                       	sbbb	$0, %al
100003fba: 00 00                       	addb	%al, (%rax)
100003fbc: 00 00                       	addb	%al, (%rax)
100003fbe: 00 00                       	addb	%al, (%rax)
100003fc0: 1c 00                       	sbbb	$0, %al
100003fc2: 00 00                       	addb	%al, (%rax)
100003fc4: 02 00                       	addb	(%rax), %al
100003fc6: 00 00                       	addb	%al, (%rax)
100003fc8: a0 3b 00 00 34 00 00 00 34  	movabsb	3746994890844667963, %al
100003fd1: 00 00                       	addb	%al, (%rax)
100003fd3: 00 68 3e                    	addb	%ch, 62(%rax)
100003fd6: 00 00                       	addb	%al, (%rax)
100003fd8: 00 00                       	addb	%al, (%rax)
100003fda: 00 00                       	addb	%al, (%rax)
100003fdc: 34 00                       	xorb	$0, %al
100003fde: 00 00                       	addb	%al, (%rax)
100003fe0: 03 00                       	addl	(%rax), %eax
100003fe2: 00 00                       	addb	%al, (%rax)
100003fe4: 0c 00                       	orb	$0, %al
100003fe6: 01 00                       	addl	%eax, (%rax)
100003fe8: 10 00                       	adcb	%al, (%rax)
100003fea: 01 00                       	addl	%eax, (%rax)
100003fec: 00 00                       	addb	%al, (%rax)
100003fee: 00 00                       	addb	%al, (%rax)
100003ff0: 00 00                       	addb	%al, (%rax)
100003ff2: 00 01                       	addb	%al, (%rcx)

Disassembly of section __DATA_CONST,__got:

0000000100004000 <__got>:
		...

Disassembly of section __DATA,__la_symbol_ptr:

0000000100008000 <__la_symbol_ptr>:
100008000: a8 3e                       	testb	$62, %al
100008002: 00 00                       	addb	%al, (%rax)
100008004: 01 00                       	addl	%eax, (%rax)
100008006: 00 00                       	addb	%al, (%rax)
100008008: b2 3e                       	movb	$62, %dl
10000800a: 00 00                       	addb	%al, (%rax)
10000800c: 01 00                       	addl	%eax, (%rax)
10000800e: 00 00                       	addb	%al, (%rax)
100008010: bc 3e 00 00 01              	movl	$16777278, %esp         ## imm = 0x100003E
100008015: 00 00                       	addb	%al, (%rax)
100008017: 00 c6                       	addb	%al, %dh
100008019: 3e 00 00                    	addb	%al, %ds:(%rax)
10000801c: 01 00                       	addl	%eax, (%rax)
10000801e: 00 00                       	addb	%al, (%rax)
100008020: d0 3e                       	sarb	(%rsi)
100008022: 00 00                       	addb	%al, (%rax)
100008024: 01 00                       	addl	%eax, (%rax)
100008026: 00 00                       	addb	%al, (%rax)
100008028: da 3e                       	fidivrl	(%rsi)
10000802a: 00 00                       	addb	%al, (%rax)
10000802c: 01 00                       	addl	%eax, (%rax)
10000802e: 00 00                       	addb	%al, (%rax)
100008030: e4 3e                       	inb	$62, %al
100008032: 00 00                       	addb	%al, (%rax)
100008034: 01 00                       	addl	%eax, (%rax)
100008036: 00 00                       	addb	%al, (%rax)
100008038: ee                          	outb	%al, %dx
100008039: 3e 00 00                    	addb	%al, %ds:(%rax)
10000803c: 01 00                       	addl	%eax, (%rax)
10000803e: 00 00                       	addb	%al, (%rax)

Disassembly of section __DATA,__data:

0000000100008040 <__dyld_private>:
		...
