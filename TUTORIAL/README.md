# Từ GCC đến Make files ...

note : hướng dẫn biên dịch giải thích quá trình biên dịch Source code 

![alt text](https://github.com/mana147/Unix-Linux/blob/master/DOCUMENTS/Complie.png)

---------------------------------------------------------------------

## Compilation process multi files and parameter in program
### GCC compilation process 
#### Source code (.c .cpp .h ) 
-> step 1: Perprocessing (C/C++
#### Include Header , Expand Macro (.i .ii)
-> step 2: Compilation (gcc , g++)
#### Assemble Code (.s)
-> step 3: Assemble (as)
#### Machine Code (.o .obj) 
#### Static Libray (.lib .a) 
-> step 4: Linker (ld)
-> Executable Machine Code (.exe)

-----------------------------------------------------------------

## Các bước tuần tự biên dịch source code bằng gcc

 - biên dich file.c ra file.i 
 - tiền xử lý các thành phần header bao gồm các macro
 - quy ước c.i và c++.ii 
```bash  
cpp file.c > file.i 
or
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
 - quá trình linker tương đối phức tạp , do đó GCC thực hiện toàn bộ quá trình thay chúng ta dưới 1 câu lệnh
 - sử dụng gcc liên kết các files đối tượng và biến dịch ra file thực thi 
 ```bash
ld hello.o ...libraries... -o hello.exe 
or
gcc flie.o -o file.out
 ```

---------------------------------------------------------------
## Lệnh và option 

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
