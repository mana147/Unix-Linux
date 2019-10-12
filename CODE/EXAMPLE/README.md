# Unix-Linux
Unix/Linux (Tutorial / example / code / demo / ... )

GCC -v // kiểm tra phiên bản 
----------------------------
GCC compilation process (quá trình biên dịch 1 file C)

Source code (.c .cpp .h ) // tiền xử lý
    -> step 1: Perprocessing (C/C++)
Include Header , Expand Macro (.i .ii)
    -> step 2: Compilation (gcc , g++)
Assemble Code (.s)
    -> step 3: Assemble (as)
Machine Code (.o .obj)
    Static Libray -> step 4: Linker (ld)
    -> Executable Machine Code (.exe)
----------------------------
GCC name_file.c // biên dịch bằng GCC  
                // nếu sử dụng linux -> a.out
                // nễu sử dụng MINGW32 -> a.exe

GCC -o name_file_out name_file.c
                //  biên dịch ra tên name_file mong muốn

GCC -c name_file.c 
                // tạo ra file nhị phân obj 

GCC -E -o name_file_out.i name_file.c
                // tạo ra file.i từ file.c

GCC -S name_file.i -o name_file_out.s
------------------------------