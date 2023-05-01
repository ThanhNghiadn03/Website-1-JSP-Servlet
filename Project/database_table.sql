create database trangwebbanhang;

create table roles(
	id int auto_increment primary key,
    nameRole varchar(50)
);

create table users(
	id int auto_increment primary key,
    fullName varchar(200),
    email varchar(200),
    phoneNumber varchar(20),
    address varchar(500),
    passwordUser varchar(200),
    created_at datetime,
    updated_at datetime,
    roleID int not null,
    foreign key(roleID) references roles(id)
);

create table categories(
	id int auto_increment primary key,
    nameCategory varchar(200)
);

create table product(
	id int auto_increment primary key,
    nameProduct varchar(200),
    price int,
    discount int,
    thumbnail varchar(500),
    descriptions longtext,
    created_at datetime,
    updated_at datetime,
    categoryID int not null,
    foreign key(categoryID) references categories(id)
);

create table gallery(
	id int auto_increment primary key,
    thumbnail varchar(500),
    productID int not null,
    foreign key(productID) references product(id)
);

create table orders(
	id int auto_increment primary key,
    fullName varchar(200),
    email varchar(200),
    phoneNumber varchar(20),
    address varchar(500),
    orderDate datetime,
    statusOrder int,
    totalMoney int
);

create table detail_order(
	id int auto_increment primary key,
    price int,
    num int,
    totalMoney int,
    orderID int,
    productID int,
    foreign key(orderID) references orders(id),
    foreign key(productID) references product(id)
);

alter table orders add orderID int not null;
alter table orders drop orderID;
alter table orders add userID int not null;
alter table orders add foreign key(userID) references users(id);
alter table product add nxb varchar(50);
alter table product add tacgia varchar(200);
alter table product add loaibia varchar(20);
alter table product add sotrang int;

insert into roles values
(1, "admin"),
(2, "user");

insert into users values
(1,"Huỳnh Ngọc Đăng Khoa","khoahuynh@gmail.com","0893452112","Liên Chiểu, Đà Nẵng","123456","2023-04-23",null,2),
(2,"Hồ Mai Hương","huongngu@gmail.com","0362245189","Huế","23456","2023-04-23",null,2);

insert into categories values
(1,"Sách văn học"),
(2,"Sách kinh tế"),
(3,"Sách thiếu nhi"),
(4,"Sách tôn giáo-tâm linh");

SET SQL_SAFE_UPDATES = 0;
delete from product;
drop table product;
insert into product values
(1,"Nhà giả kim",53.700,32,"./views/thumbnails/nha_gia_kim__paulo_coelho.jpg","Sơ lược về tác phẩm

Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.

Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.

“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”

- Trích Nhà giả kim

Nhận định

“Sau Garcia Márquez, đây là nhà văn Mỹ Latinh được đọc nhiều nhất thế giới.”

- The Economist, London, Anh

“Santiago có khả năng cảm nhận bằng trái tim như Hoàng tử bé của Saint-Exupéry.”

- Frankfurter Allgemeine Zeitung, Đức

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....","2023-04-23",null,1, "Nhà xuất bản Hà Nội", "Paulo Coelho", "Bìa mềm", 228),
(2,"Tâm lý học về tiền", 110.000,42,"./views/thumbnails/tam_ly_hoc_ve_tien.jpg", "Tiền bạc có ở khắp mọi nơi, nó ảnh hưởng đến tất cả chúng ta, và khiến phần lớn chúng ta bối rối. Mọi người nghĩ về nó theo những cách hơi khác nhau một chút. Nó mang lại những bài học có thể được áp dụng tới rất nhiều lĩnh vực trong cuộc sống, như rủi ro, sự tự tin, và hạnh phúc. Rất ít chủ đề cung cấp một lăng kính phóng to đầy quyền lực giúp giải thích vì sao mọi người lại hành xử theo cách họ làm hơn là về tiền bạc. Đó mới là một trong những chương trình hoành tráng nhất trên thế giới.

Chúng ta hiếm khi lâm vào hoàn cảnh nợ ngập đầu ư? Biết tiết kiệm để dành cho lúc khốn khó hơn ư? Chuẩn bị sẵn sàng cho việc nghỉ hưu? Có những cái nhìn thiết thực về mối quan hệ giữa tiền và hạnh phúc của chúng ta hơn phải không?

Chúng ta đều làm những điều điên rồ với tiền bạc, bởi vì chúng ta đều còn khá mới mẻ với trò chơi này và điều có vẻ điên rồ với bạn lại có khi hợp lý với tôi. Nhưng không ai là điên rồ cả – chúng ta đều đưa ra các quyết định dựa trên những trải nghiệm độc đáo riêng có mang vẻ hợp lý với mình ở bất cứ thời điểm nào.

Mục đích của cuốn sách này là sử dụng những câu chuyện ngắn để thuyết phục bạn rằng những kỹ năng mềm còn quan trọng hơn khía cạnh lý thuyết của đồng tiền. Thông qua một tập hợp những thử nghiệm và sai lầm của nhiều năm chúng ta đã học được cách trở thành những nông dân giỏi giang hơn, những thợ sửa ống nước nhiều kỹ năng hơn, và những nhà hóa học tiên tiến hơn. Nhưng liệu việc thử nghiệm và sai lầm có dạy chúng ta trở nên giỏi hơn trong cách quản lý tài chính cá nhân của chính mình không?

Nhiều tiền không liên quan nhiều đến việc bạn thông minh như thế nào mà lại liên quan lớn đến cách bạn hành xử. Và cách hành xử thì rất khó để uốn nắn, ngay cả đối với những người thực sự thông minh.

Một thiên tài không kiểm soát được cảm xúc của anh ta có thể dẫn tới một thảm họa tài chính. Điều ngược lại cũng đúng. Những người bình thường không có kiến thức về tài chính có thể trở nên giàu có nếu họ nắm trong tay những kỹ năng hành xử không liên quan đến những thước đo chính thống về trí thông minh.

Sự thành công trong tài chính không phải là một lĩnh vực khoa học khó nhằn. Nó là một kỹ năng mềm, nơi mà cách bạn hành xử quan trọng hơn điều mà bạn biết. Trong “Tâm lý học về tiền”, tác giả từng đoạt giải thưởng Morgan Housel chia sẻ 19 câu chuyện ngắn khám phá những cách kỳ lạ mà mọi người nghĩ về tiền bạc và dạy bạn cách hiểu rõ hơn về một trong những chủ đề quan trọng nhất của cuộc sống.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....","2023-04-23",null,2,"Nhà Xuất Bản Dân Trí","Morgan Housel","Bìa mềm",384);


select * from roles;
select * from users;
select * from categories;
select * from product;



