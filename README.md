# Hikvision Warranty Checker

Phần mềm kiểm tra thông tin bảo hành thiết bị Hikvision hàng loạt, hỗ trợ xuất báo cáo Excel.

## Tính năng

### 🔍 Kiểm tra bảo hành
- Kiểm tra trạng thái bảo hành thiết bị Hikvision qua serial number
- Hỗ trợ kiểm tra hàng loạt từ file danh sách
- Hiển thị thông tin: Serial, Model, Trạng thái bảo hành
- Tự động dịch trạng thái sang tiếng Việt

### 📁 Quản lý file
- **Load File**: Nhập danh sách serial từ file .txt
- Tự động trích xuất 9 ký tự cuối của mỗi serial
- Hỗ trợ encoding UTF-8

### 📊 Xuất báo cáo
- Xuất kết quả ra file Excel (.xlsx)
- Định dạng đẹp mắt với header màu xanh
- Tự động căn chỉnh độ rộng cột
- Hiển thị đầy đủ: STT, Serial, Model, Trạng thái

## Cách sử dụng

### 1. Chuẩn bị file danh sách
Tạo file `.txt` chứa danh sách serial number, mỗi serial 1 dòng:

```
ABC12345678901234
DEF56789012345678
GHI90123456789012
```

### 2. Kiểm tra bảo hành
1. Click **"Load File"** để chọn file danh sách serial
2. Click **"Check Warranty"** để bắt đầu kiểm tra
3. Theo dõi tiến trình kiểm tra trên màn hình
4. Click **"Export Excel"** để xuất kết quả

### 3. Kết quả
Phần mềm hiển thị các trạng thái:
- ✅ **Còn bảo hành**: Thiết bị đang trong thời gian bảo hành
- ❌ **Hết bảo hành**: Thiết bị đã hết bảo hành
- ⚠️ **Không tìm thấy**: Không có thông tin trong hệ thống
- 🔴 **Error**: Lỗi kết nối hoặc API

## Yêu cầu hệ thống

### Python Environment
```
Python 3.x
tkinter
requests
openpyxl
```

### Cài đặt thư viện
```bash
pip install requests openpyxl
```

## Build file .exe

Sử dụng PyInstaller để tạo file thực thi:

```bash
pyinstaller --onefile --windowed --icon=icon.ico --add-data "icon.ico;." hikvision_warranty_checker.py
```

Hoặc chạy file `build.bat` có sẵn:
```bash
build.bat
```

## Cấu trúc thư mục

```
HikvisionWarrantyChecker/
│
├── hikvision_warranty_checker.py   # Mã nguồn chính
├── icon.ico                        # Icon ứng dụng
├── build.bat                       # Script build file .exe
├── README.md                       # Tài liệu hướng dẫn
└── dist/                           # Thư mục chứa file .exe sau khi build
```

## Nguồn dữ liệu

Dữ liệu bảo hành được truy xuất từ API: `http://sn.lehoangcctv.com:100`

## Lưu ý

- Phần mềm cần kết nối Internet để kiểm tra bảo hành
- Serial number được tự động lấy 9 ký tự cuối
- Kiểm tra hàng loạt sẽ chạy tuần tự để tránh quá tải API
- Kết quả kiểm tra chỉ mang tính chất tham khảo

## Tác giả

Dữ liệu bảo hành cung cấp bởi: **lehoangcctv**

---

*Phần mềm được phát triển để hỗ trợ công tác kiểm tra bảo hành thiết bị Hikvision nhanh chóng và tiện lợi.*
