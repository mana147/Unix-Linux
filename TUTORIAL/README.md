# Từ GCC đến Make files ...

note : hướng dẫn biên dịch và giải thích quá trình biên dịch Source code 

![alt text](https://github.com/mana147/Unix-Linux/blob/master/DOCUMENTS/Complie.png)

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
 - sử dụng gcc liên kết các files đối tượng và thư viện chuẩn biến dịch ra file thực thi 
```bash
ld hello.o ...libraries... -o hello.exe 
or
gcc flie.o -o file.out
```

---------------------------------------------------------------
## Các bước biên dịch bằng gcc rút gọn quá trình cho multi file.c

 - biên dịch thằng từ file.c ra file.o 
 - tại đây gcc sẽ tự động sử dụng cpp + as để đưa ra file.o
```bash
gcc -c main.c
gcc -c lib.c
```
 - tạo file thực thi từ nhiều files.o
 - tại bước này gcc sẽ tự động link các files.o lại với nhau và các thư viện chuẩn C or C++ đưa ra files thực thi 
```bash
gcc main.o lib.o -o main.out 
```

### Setup a directory for multiple C file in the GCC 
```
root/ 
--- main.c 
--- lib/ 
    --- lib.h
    --- lib.c 
```
 -  You need to tell the compiler where to search for headers:
```bash
cc -I./lib main.c lib/aa.c lib/bb.c 
```
![alt text](https://github.com/mana147/Unix-Linux/blob/master/DOCUMENTS/GCC%20C_C%2B%2B%20.png)

## Hướng dẫn sử dụng , viết Makefile biên dịch dự án cơ bản 

note : GNU Make  
```bash
make --version  // kiểm tra phiên bản 
```
note : 
- GNU Make đọc Makefile và chạy các câu lệnh được viết trong đó 
- cách thức hoạt động trong môi trường bash shell linux , khi gõ câu lệnh [make ] lập tức GNU Make đã đọc toàn bộ file makefile bạn vừa viết , khi bạn gõ 2 lần phím tab terminal sẽ hiện thị những TARGET , như vậy chỉ cần gõ chứ cái đầu và gõ tab , bash shell sẽ tự hoàng hiện câu lệnh . ví dụ trong TUTORIAL/GCC_C_C++_Makefile/Makefile .
```bash
gõ lệnh make + double tab 
terminal show > clear hello hello.o run 
```
- giải thích cơ bản cú pháp lệnh trong makefile :
```bash
// cú pháp chung cho các quy tác 
> target1 [ target2 ...]: [ pre-req-1  pre-req-2 ...]
	[ lệnh1 
	 lệnh2 
	 ......]
```
- như vậy ở đây áp dụng vào Makefile demo , trong thư mục GCC_C_C++_Makefile gõ bash [nano Makefile] để mở file và edit .
```bash
hello.o: hello.c                 // hello.o là TARGET mình đặt tên , hello.c là files phụ thuộc 
	gcc -c hello.c               // [gcc -c hello.c ] là câu lệnh sẽ đc GNU make chạy 
                                 // trước khi viết lệnh thực thi gõ [ tab ] để thụt lề đầu dòng 
                                 // nếu gõ [ space ] make file sẽ báo lỗi .

hello: hello.o
	gcc hello.o -o hello.out

run:
	./*.out

clear:
	rm *.o
```

- giải thích quá trình chạy : ví dụ nếu ta gõ [make hello] makefile sẽ nhảy vào target [hello ] nó sẽ kiểm tra nếu target này có file phụ thuộc đằng sau ở đây ví dụ là  [hello.o ] nó sẽ nhảy tiếp đến target [hello.o ] kiểm tra tiếp thấy có file phụ thuộc [hello.c ] nhưng nó tìm không thấy target này đâu nó sẽ thực hiên lệnh của target [hello.o ] là [ gcc -c hello.c ]  , sau đó nó qua về target [hello ] ban đầu và thực hiện lệnh của target này [gcc hello.o -o hello.out ] 
- như vậy Makefile đã giúp quá trình thực hiện gõ lệnh biên dịch rút gọn lại chỉ bằng 1 lệnh 2 từ khóa  [make hello ]

- không thể phụ nhận các trình IDE tích hợp trình soạn thảo và biên dịch trong một , chỉ cần 1 kich chúng ta đã tự động biên dịch và nạp code xuống hệ thông , quá đơn giản . nhưng như vậy chúng ta bị phụ thuộc khá nhiều vào các tool đấy .
- khi thay đổi dự án hay môi trường pháp triển từ Win -> linux -> UNix ->Mac  , makefile cho tính cơ động và khả năng kiểm soát tốt toàn bộ quá trình . 