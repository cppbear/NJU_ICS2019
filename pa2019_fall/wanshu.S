
./testcase/bin/wanshu:     file format elf32-i386


Disassembly of section .text:

08049000 <start>:
 8049000:	e9 00 00 00 00       	jmp    8049005 <main>

08049005 <main>:
 8049005:	55                   	push   %ebp
 8049006:	89 e5                	mov    %esp,%ebp
 8049008:	83 ec 10             	sub    $0x10,%esp
 804900b:	e8 89 00 00 00       	call   8049099 <__x86.get_pc_thunk.cx>
 8049010:	81 c1 f0 2f 00 00    	add    $0x2ff0,%ecx
 8049016:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804901d:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 8049024:	eb 51                	jmp    8049077 <main+0x72>
 8049026:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804902d:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8049034:	eb 16                	jmp    804904c <main+0x47>
 8049036:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049039:	99                   	cltd   
 804903a:	f7 7d f4             	idivl  -0xc(%ebp)
 804903d:	89 d0                	mov    %edx,%eax
 804903f:	85 c0                	test   %eax,%eax
 8049041:	75 06                	jne    8049049 <main+0x44>
 8049043:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049046:	01 45 f8             	add    %eax,-0x8(%ebp)
 8049049:	ff 45 f4             	incl   -0xc(%ebp)
 804904c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804904f:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 8049052:	7c e2                	jl     8049036 <main+0x31>
 8049054:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049057:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 804905a:	75 18                	jne    8049074 <main+0x6f>
 804905c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804905f:	8b 84 81 0c 00 00 00 	mov    0xc(%ecx,%eax,4),%eax
 8049066:	39 45 fc             	cmp    %eax,-0x4(%ebp)
 8049069:	74 06                	je     8049071 <main+0x6c>
 804906b:	b8 01 00 00 00       	mov    $0x1,%eax
 8049070:	82 ff 45             	cmp    $0x45,%bh
 8049073:	f0 ff 45 fc          	lock incl -0x4(%ebp)
 8049077:	81 7d fc f3 01 00 00 	cmpl   $0x1f3,-0x4(%ebp)
 804907e:	7e a6                	jle    8049026 <main+0x21>
 8049080:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
 8049084:	74 06                	je     804908c <main+0x87>
 8049086:	b8 01 00 00 00       	mov    $0x1,%eax
 804908b:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
 8049092:	b8 00 00 00 00       	mov    $0x0,%eax
 8049097:	c9                   	leave  
 8049098:	c3                   	ret    

08049099 <__x86.get_pc_thunk.cx>:
 8049099:	8b 0c 24             	mov    (%esp),%ecx
 804909c:	c3                   	ret    
