# BÀI LÀM – HACKATHON 02

- **Mã đề:** 01
- **Họ tên:** Nguyễn Minh Quân	
- **Lớp:** CNTT4
- **Link repository:** https://github.com/nguyenminhquan110/HN-KS26-CNTT4_Nhap-mon-CNTT_Hackathon02.git
- **Hệ điều hành (Windows/macOS):** macOS

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
- pwd
- ls -f
- mv ghi_chu_ban_giao.txt docs
- mkdir backup
- cp data/ban_ve_thang_1.xlsx backup
- rm temp_101.tmp
- cd logs
+ ls
+ cd ..
- ls -aR 
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
./backup:
.			..			ban_ve_thang_1.xlsx

./data:
.			..			ban_ve_thang_1.xlsx

./docs:
.			..			ghi_chu_ban_giao.txt

./evidence:
.	..

./logs:
.		..		visit.log

./web:
.		..		app.js		images		index.html	style.css

./web/images:
.			..			logo-aquazone.png


```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
grep "status=500" logs/visit.log >> logs/loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-01-28 08:24:34 POST /api/thanh-toan status=500
2026-01-28 08:28:45 POST /api/thanh-toan status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
grep -c "status=404" logs/visit.log

```

```text
4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
- touch tong_hop.sh
-  touch logs/tong_hop.txt
- echo "===BAO CAO SU CO WEBSITE===" >> logs/tong_hop.txt
- grep "status=404" logs/visit.log >> logs/tong_hop.txt
- grep -c "status=500" logs/visit.log >> logs/tong_hop.txt
- sh tong_hop.sh

```

### Nội dung file logs/tong_hop.txt

```text
===BAO CAO SU CO WEBSITE===
2026-01-28 08:07:39 GET /tin-tuc status=404
2026-01-28 08:13:01 GET /ve-cu status=404
2026-01-28 08:34:07 GET /images/be-boi-2.jpg status=404
2026-01-28 08:57:24 GET /khuyen-mai-he status=404
6

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [X] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [X] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [X] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | console | app.js:18 Uncaught ReferenceError: hienThiBangGia is not defined | sửa và khai báo đúng tên hàm |
| 2 | network | logo.png | chỉnh sửa lại tên file |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** không hiển thị được dữ liệu bảng giá khi mở trên trình duyệt Chrome
- **Expected:** Bảng giá hiển thị đầy đủ thông tin danh sách dịch vụ và giá đặt sân.
- **Actual:** Bảng giá bị trống, không xuất hiện dữ liệu.
- **Log:** Uncaught ReferenceError: hienThiBangGia is not defined

### Câu tìm kiếm Google

```text
site.stackoverflow.com "Uncaught ReferenceError: hienThiBangGia is not defined"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/ban_ve_thang_1.xlsx`, không cần ghi vào đây.
