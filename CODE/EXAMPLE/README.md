# Unix-Linux
TODO : Unix/Linux (Tutorial / example / code / demo / ... )

### compilation process multi files and parameter in program

```
GCC compilation process 

Source code (.c .cpp .h ) 
    -> step 1: Perprocessing (C/C++)
Include Header , Expand Macro (.i .ii)
    -> step 2: Compilation (gcc , g++)
Assemble Code (.s)
    -> step 3: Assemble (as)
Machine Code (.o .obj)
    Static Libray -> step 4: Linker (ld)
    -> Executable Machine Code (.exe)
```

 - kiểm tra phiên bản 
```bash
gcc -v 
``` 
```bash 
gcc name_file.c  biên dịch bằng GCC  
                // nếu sử dụng linux -> a.out
                // nễu sử dụng MINGW32 -> a.exe

gcc -o name_file_out name_file.c
                //  biên dịch ra tên name_file mong muốn

gcc -c name_file.c 
                // tạo ra file nhị phân obj 

gcc -E -o name_file_out.i name_file.c
                // tạo ra file.i từ file.c

gcc -S name_file.i -o name_file_out.s


