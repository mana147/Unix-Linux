# các lệnh linux thường dùng

- apt-get dist-upgrade
- apt-get clean
- apt-get autoclean
- apt-get install package-name(s) - Cài đặt gói phần mền quy định, cùng với bất kỳ phụ thuộc
- apt-get remove package-name(s)- Loại bỏ gói phần mềm quy định, nhưng không loại bỏ sự phụ thuộc
- apt-get autoremove - Loại bỏ bất kỳ phụ thuộc.
- apt-get clean - Loại bỏ các tập tin gói đã tải về (.deb) cho các phần mềm đã được cài đặt
- apt-get purge package-name(s) - Kết hợp các chức năng của loại bỏ và làm sạch cho một gói cụ thể, cũng như các file cấu hình
- apt-get update - Đọc tập tin /etc/apt/sources.list và cập nhật dữ liệu của hệ thống về gói sẵn để cài đặt. Chạy lệnh này sau khi thay đổi tập sources.list.
- apt-get upgrade - nâng cấp tất cả các gói có bản cập nhật có sẵn. Chạy lệnh này sau khi chạy - apt-get update.

- apt-cache search package-name(s) - Nếu bạn biết tên của một phần mềm nhưng apt-get install không thành công hoặc điểm trỏ đến phần mềm sai, điều này có vẻ tên đã bị thay đổi.
- apt-cache show package-name(s) - Hiển thị thông tin phụ thuộc, số phiên bản và mô tả cơ bản của gói.
- apt-cache depends package-name(s) - Liệt kê những gói cụ thể mà phụ thuộc vào gói chính. Đây là những gói sẽ được cài đặt với apt-get install.
- apt-cache rdepends package-name(s) - kết quả đầu ra là một danh sách các gói mà phụ thuộc vào một gói cụ thể. Danh sách này thường xuyên có thể khá dài, vì vậy tốt nhất nên kết hợp thêm lệnh less.
- apt-cache pkgnames - Tạo ra một danh sách các gói cài trên hệ thống của bạn. Danh sách này thường là khá dài, vì vậy tốt nhất nên kết hợp thêm lệnh less, hoặc đưa output vào một tập tin văn bản.
- sudo dpkg –-list : kiểm tra những ứng dụng nào đã cài đặt
- sudo dpkg –-list | less : 
- sudo chown 777 name.file // phân quyền trên linux
- sudo chmod -R 777 /var/www
- sudo chmod -R 644 /var/www
- tar -vxf file_name // giải nén
- rm -rf mydir // remove a full directory
- tree // hiển thị cây thư mục tại vị chí hiện tại
- command > output.txt 
- SomeCommand >> SomeFile.txt  // nối thêm dữ liệu 


1. List out all connections 
$ netstat -a : 

2. List only TCP or UDP connections
$ netstat -at : To list out only tcp connections use the t options.
$ netstat -au : Similarly to list out only udp connections use the u option.

3. Disable reverse dns lookup for faster output
$ netstat -ant : 

4. List out only listening connections
$ netstat -tnl

5. Get process name/pid and user id
$ sudo netstat -nlpt
$ sudo netstat -ltpe

6. Print statistics
$ netstat -s

7. Display kernel routing information
$ netstat -rn

8. Print network interfaces
$ netstat -i
$ netstat -ie

9. Get netstat output continuously
$ netstat -ct

10. Display multicast group information
$ netstat -g
$ netstat -atnp | grep ESTA : Print active connections

$ watch -d -n0 "netstat -atnp | grep ESTA"

$ sudo netstat -aple | grep ntp : Check if a service is running

Rsync : rsync -a ~/dir1 username@remote_host:destination_directory

