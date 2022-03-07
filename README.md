# INT3120-Mobile-App
**Week1**: 
- Bài 1: Giới thiệu
- Bài 2: Cài đặt
  - Cài đặt được Flutter kết hợp với Visual Studio Code.
  ![image](https://user-images.githubusercontent.com/62579790/154659509-6be5fd79-f628-4c64-9092-670966f52df6.png)
  
  - Thêm Extensions cho VSCode để sử dụng Flutter
  ![image](https://user-images.githubusercontent.com/62579790/154659262-6b842657-973d-4ff7-8b34-322a38c6036d.png)

  - Cài đặt Android SDK từ Android Studio
  
- Bài 3: Tạo ứng dụng
  - Tạo một project Flutter mới với VSCode:
  ![image](https://user-images.githubusercontent.com/62579790/154660755-899c8b54-fc96-4c13-824c-d859cc6346d5.png)
  - Chạy thử ứng dụng đầu tiên:
  ![image](https://user-images.githubusercontent.com/62579790/156629979-6592a0fb-553b-4a6e-907c-6f0bfab7d071.png)

- Bài 4: Kiến trúc ứng dụng Flutter
  - Widgets là thành phần chính của một ứng dụng sử dụng Flutter. Một ứng dụng Flutter là tổ hợp của một hoặc nhiều widget
  - Gestures là thành phần nắm bắt các cử chỉ, tương tác của người dùng với ứng dụng.
  - State là những trạng thái được lưu trữ, thay đổi trong quá trình sử dụng.
  - Layers: Những widget chạy ở layer trên, dựa vào những layer dưới để tương tác với hệ điều hành.

- Bài 5: Ngôn ngữ Dart
  - Biến và kiểu dữ liệu: 
    - Có các kiểu dữ liệu: int, double, String, bool, List, Set, Map, Symbol, null.
  - Điều khiển vòng lặp: Tương tự các ngôn ngữ khác.
  - Hàm: Như trên
  - Lập trình hướng đối tượng trong dart: gần tương tự với trong java tuy nhiên có những điểm khác nhau cần lưu ý: cách sử dụng phương thức getter và setter -  phương thức khởi tạo cũng có thể ngắn gọn hơn lại:
  ![image](https://user-images.githubusercontent.com/62579790/155514024-d0045622-903c-48e5-8fc0-4b0f293eb971.png)
  ![image](https://user-images.githubusercontent.com/62579790/155514061-51becd90-e392-443c-a7c3-1dbaf3865bae.png)

**Week 2**:
- Bài 6: Widget trong Flutter:
  - Widget được phân loại theo chức năng thành 4 nhóm: Platform Widget - Layout Widget - State maintenance Widget - Basic Widget.
  - Một số loại widget được sử dụng nhiều: Material - Platform independent - Layout widgets
  ![image](https://user-images.githubusercontent.com/62579790/156697040-177b7451-ef30-4a13-bbe6-3a056253dcf8.png)
  
- Bài 7: Layout trong Flutter:
  - Hai loại chính: Single child (có một con) - Multiple child (có nhiều widget con) widgets.
  ![image](https://user-images.githubusercontent.com/62579790/156699578-992bceef-7dda-40bb-bde0-8e56cf37ba1d.png)

- Bài 8: Gesture trong Flutter:
  - Các cử chỉ được sử dụng rộng rãi: tap, double tap, drag, flick, ...
  - Trong Flutter, ta có một widget GestureDetector để phát hiện và xử lý các cử chỉ.
  - Ngoài ra, ta có widget Listener để phát hiện những tương tác của người dùng và trả về các sự kiện cấp thấp.
  ![image](https://user-images.githubusercontent.com/62579790/156700841-94bcdf99-ff8c-4141-9df3-549ad2dde8d6.png)

- Bài 9: State trong Flutter:
  - Tương tự như với State trong reacjs, chứa những thông tin hiện thời của ứng dụng và sẽ thay đổi khi cần thiết.
- Bài 10: Statefulwidget trong Flutter:
  - Trong Flutter, việc quản lý các trạng thái được thực hiện bởi widget.
  - Sự thay đổi trạng thái thông qua cử chỉ, cử chỉ đó được widget xử lý.
  ![image](https://user-images.githubusercontent.com/62579790/156706351-76e412ef-a7b3-4e5e-8932-081fedb6ec5d.png)


- Bài 11: ScopeModel trong Flutter:
  - Một model chứa các trạng thái của ứng dụng. Mỗi một model là một kiểu thực thể cần tương tác.
  - Có hai kiểu model: Single - Multiple model.
  - ScopedModel được flutter cung cấp để truyền Data Model từ widget cha xuống widget con.
  - ScopedModelDescendant là một widget được cung cấp để render lại UI mỗi khi Data Model thay đổi

**Week 3**:
- Bài 12: Navigation và Routing:
  - Navigator là một widget quản lý các trang của ứng dụng flutter theo định dạng ngăn xếp.
  - MaterialPageRoute là một widget được sử dụng để render giao diện người dùng để có thể thay thế toàn bộ màn hình với một hiệu ứng chuyển cảnh nào đó.
  - Phương thức sử dụng để chuyển màn hình khác là Navigation.push() và quay về trang trước bằng Navigation.pop();

- Bài 13: Animation:
  - Tạo giá trị thêm vvaof giữa hai số (bắt đầu - kết thúc).
  - CurvedAnimation hỗ trợ animation phi tuyến tính.
  - Tween<T>, AnimationController

- Bài 14: Code với native android:
  - Flutter cung cấp framework chung để truy cập vào các nền tảng có tính năng riêng biệt.
  - Ta sẽ viết ứng dụng đơn giản để mở trình duyệt web sử dụng Android SDK.
  
- Bài 15: Code với native IOS:
  - Tương tự như với android, nhưng thay vì dùng Java ta sẽ dùng object C hoặc Swift và IOS sdk.

- Bài 17: REST API:
  - Class http cung cấp chức năng để làm việc với các kiểu dữ liệu HTTP được request.
  - Các phương thức chính được sử dụng read(trả về Future<String>) - get(trả về Future<Response>) - post(trả về Future<Response>) - put(trả về Future<Response> - head(trả về Future<Response> - delete(trả về Future<Response>

- Bài 18: Khái niệm về Database:
  - Có 2 gói dùng để làm việc với cơ sở dữ liệu: sqflite - SQLite (cho SQL local) và firebase_database - Firebase (cho NOSQL lưu trữ trên đám mây).

- Bài 19: Chuyển đổi ngôn ngữ:
  - Ngôn ngữ ở đây là ngôn ngữ hiển thị ra ngoài màn hình (ví dụ khi bạn cài hệ điều hành, bạn phải chọn ngôn ngữ nào để sao cho khi ta cần tương tác với máy tính, ta sẽ hiểu được ngôn ngữ mà nó muốn thể hiện - Tiếng Anh, Tiếng Việt,...). Việc đó được gọi là localized.
  - Flutter cung cấp gói intl để đơn giản hóa việc localized.

- Bài 20: Testing:
  -3 loại testing thông dụng trong Flutter testing: Unit Testing - Widget Testing - Intergration Testing.

- Bài 21: Xuất ứng dụng trong Flutter:
  - Đối với Android chạy các dòng lệnh như hướng dẫn và thực hiện cài đặt file APK
  - Đối với IOS có lẽ mình sẽ bỏ qua phần này.
- Bài 22: Công cụ phát triển:
  - Một số công cụ hay được sử dụng như: Dart devtools, Flutter SDK, Flutter Inspector.
- Bài 23: Viết ứng dụng hoàn chỉnh:
  





