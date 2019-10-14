# Unix-Linux

TODO : Unix/Linux (Tutorial / example / code / demo / ... )

### compilation process multi files and parameter in program

### GCC compilation process 

Source code (.c .cpp .h ) 
-> step 1: Perprocessing (C/C++)
Include Header , Expand Macro (.i .ii)
-> step 2: Compilation (gcc , g++)
Assemble Code (.s)
-> step 3: Assemble (as)
Machine Code (.o .obj)
Static Libray -> step 4: Linker (ld)
-> Executable Machine Code (.exe)

---------------------------------------------------------------
 - kiểm tra phiên bản 
```bash
gcc --version
```

 - biên dịch bằng GCC 
 - if use linux -> a.out
 - if use MINGW32 -> a.exe
```bash 
gcc file.c
```

 - biên dịch ra tên name_file mong muốn
```bash
gcc file.c -o file
```

 - tạo ra file nhị phân obj 
```bash
gcc -c file.c 
```

 - biên dich file.c ra file.i , tiền xử lý các thành phần header
```bash  
gcc -E file.c -o file.i
```

 - biên dịch file.i ra file.s , biên dịch ra Assemble Code 
 ```bash
 gcc -S file.i -o file.s
 ```

 - biên dich file.s ra file.o , trình biên dịch Assembler ra mã máy nhị phân 
```bash
as file.s -o file.o
```

 - sử dụng ld.exe liên kết các files đối tượng và thư viện tạo ra file có thể chạy đc 
 ```bash
 ld -o hello.exe hello.o ...libraries...
 ```

 - sử dụng gcc liên kết các files đối tượng và biến dịch ra file thực thi 
 ```bash
 gcc file.o -o file.out 
 ```
