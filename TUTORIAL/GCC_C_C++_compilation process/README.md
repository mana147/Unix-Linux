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
-------------------------------------
 - kiểm tra phiên bản 
```bash
gcc --version
```

 - biên dịch bằng GCC 
 - if use linux -> a.out
 - if use MINGW32 -> a.exe
```bash 
gcc name_file.c
```

 - biên dịch ra tên name_file mong muốn
```bash
gcc name_file.c -o name_file
```

 - tạo ra file nhị phân obj 
```bash
gcc -c name_file.c 
```


gcc -E -o name_file_out.i name_file.c
                // tạo ra file.i từ file.c

gcc -S name_file.i -o name_file_out.s


