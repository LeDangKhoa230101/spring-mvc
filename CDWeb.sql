create database CDWeb
use CDWeb

CREATE TABLE category( 
	cateid int not null,
	cate_name nvarchar(20) not null,
	primary key (cateid))

INSERT INTO category VALUES
(1, N'Đồng hồ nam'),
(2, N'Đồng hồ nữ'),
(3, N'Đồng hồ chống nước'),
(4, N'Đồng hồ thể thao'),
(5, N'Đồng hồ thông minh'),
(6, N'Phụ kiện đồng hồ')

select * from Category

drop table Category

/* ----------------------------- */
/* ----------------------------- */
CREATE TABLE roles (
	role_id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	role_name NVARCHAR(255) NOT NULL,
	code NVARCHAR(255) NOT NULL
)

drop table roles;

INSERT INTO roles(role_name, code) VALUES 
(N'ADMIN', N'ADMIN'),
(N'USER', N'USER')

ALTER TABLE roles
DROP COLUMN createdby;

select * from roles

CREATE TABLE users (
	userid int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	email nvarchar(30) UNIQUE NOT NULL,
	first_name nvarchar(20) NOT NULL,
	last_name nvarchar(20) NOT NULL,
	[password] nvarchar(30) NOT NULL,
	[address] nvarchar(30) NULL,
	phone nvarchar(20) NULL,
	avatar nvarchar(255) NULL,
	role_id int NOT NULL,
	CONSTRAINT FK_users_roleid FOREIGN KEY (role_id) REFERENCES roles(role_id)
)

INSERT INTO users VALUES 
(N'leminh23@gmail.com', N'Le', N'Minh' , N'12839488', N'237 Nguyễn Huệ', N'0293847222', N'https://i.pinimg.com/236x/17/1d/5e/171d5e22b3ea5f1a6659ba10a848bb4b.jpg', 1),
(N'phamhoa2@gmail.com', N'Pham', N'Hoa', N'1278293223', N'29 Hồ Chí Minh', N'0923846373', N'https://i.pinimg.com/236x/4a/15/cb/4a15cb06824d2a89e17086ee7d2eb494.jpg', 1),
(N'tranngan89@gmail.com', N'Tran',  N'Ngan', N'12111212', N'25 Phạm Tuân', N'0982737466', N'https://i.pinimg.com/236x/96/51/81/965181b77ccd3d9ed60d28b57e3de318.jpg', 2),
(N'nguyennam21@gmail.com', N'Nguyen', N'Nam', N'1909902D', N'887 Phạm Văn Đồng', N'0988732222', N'https://i.pinimg.com/236x/b3/ee/3c/b3ee3c993156c620f240ac15fd456d31.jpg', 2)

select * from users
drop table users
delete from users where userID = 7

/* ----------------------------- */
/* ----------------------------- */
CREATE TABLE orders (
	orderid int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	purchase_date date NOT NULL,
	delivery_address nvarchar(50) NOT NULL,
	order_status nvarchar(20) NOT NULL,
	tongtien money NOT NULL,
	userid int NOT NULL,
	CONSTRAINT FK_Orders_userid FOREIGN KEY (userid) REFERENCES users(userid))

INSERT INTO orders VALUES 
('2021/8/3', N'11 Nam Cung', N'Hoàn thành', $400.00, 3),
('2021/2/6', N'29 Nguyễn Huệ', N'Chờ thanh toán', $350.00, 2),
('2021/5/7', N'11 Nam Cung', N'Hoàn thành', $340.00, 2),
('2021/8/6', N'11 Nam Cung', N'Vận chuyển', $230.00, 3),
('2021/8/6', N'29 Nguyễn Huệ', N'Hoàn thành', $430.00, 1),
('2021/8/6', N'11 Nam Cung', N'Đang giao', $230.00, 1)

drop table orders

select * from orders where userid = 5

CREATE TABLE ordersDetail (
	orders_detail_id int IDENTITY(1, 1) NOT NULL primary key,
	orderid int NOT NULL,
	productid int NOT NULL,
	quantity int NOT NULL,
	payment_method nvarchar(50) NOT NULL,
	CONSTRAINT FK_orders_detail_orderid FOREIGN KEY (orderid) REFERENCES orders (orderid),
	CONSTRAINT FK_orders_detail_productid FOREIGN KEY (productid) REFERENCES products (productid))

select * from ordersDetail

drop table ordersDetail

INSERT INTO ordersDetail VALUES 
(1, 1, 3, N'Thanh toán bằng thẻ tín dụng/thẻ ghi nợ'),
(3, 3, 2, N'Thanh toán khi nhận hàng'),
(4, 2, 5, N'Thanh toán bằng thẻ tín dụng/thẻ ghi nợ'),
(6, 4, 2, N'Thanh toán khi nhận hàng'),
(2, 5, 1, N'Thanh toán bằng thẻ tín dụng/thẻ ghi nợ'),
(5, 6, 2, N'Thanh toán khi nhận hàng')


/* ----------------------------- */
/* ----------------------------- */
CREATE TABLE products (
	productid int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	product_name nvarchar(50) NOT NULL,
	[image] nvarchar(512) NOT NULL,
	price money NOT NULL,
	[description] nvarchar(255) NOT NULL,
	discount int null,
	cateID int NOT NULL,
	CONSTRAINT FK_products_cateid FOREIGN KEY (cateid) REFERENCES category(cateid))
	
drop table Products

delete  from Products

SELECT * FROM Products where cateID = 1 ORDER BY price ASC
SELECT cate_name FROM Category WHERE cateID = 1
/* ----------------------------- */

INSERT INTO products VALUES 
(N'PETITE AMBER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/2613209dafe400b3b09de24b5b0c14ac910d1d9f.png?v=1679582887&width=540', $200.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'PETITE MELROSE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/e52b88ce20896801a51f5602a7740ee0493c0f31.png?v=1679583045&width=540', $214.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'PETITE UNITONE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/wwmeoq0ad6sqi5nglchf.png?v=1679585296&width=540', $211.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'CLASSIC CORNWALL', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/wwmeoq0ad6sqi5nglchf.png?v=1679585296&width=540', $222.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'CLASSIC ST MAWES', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/c8bd0bbe58c25c0caf52806dd0362df62569d70d.png?v=1679582697&width=540', $212.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'CLASSIC SHEFFIELD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/b01b75a018dd7a1482aa280d59e25a54f45383e8.png?v=1679582647&width=540', $221.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'CLASSIC BAYSWATER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/09edd7981c04914794c6f5fa10e0c0e742dcafa0.png?v=1680184532&width=540', $240.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'PETITE EMERALD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/7c802b8f72da67d6ab60b200ab13196ab21f7b6b.png?v=1679582985&width=540', $230.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'PETITE STERLING', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/c2ce56204717c774c9a7e2a36ce75d721607e2fb.png?v=1679583181&width=540', $220.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'CLASSIC DURHAM', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/84e24e3ebabec66ab44e3ec9d0db2db38cda1047.png?v=1679582552&width=540', $250.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'CLASSIC DOVER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/f6fbc018e028c9ade8b4be30a88101ac762d2f3e.png?v=1679582541&width=540', $210.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
(N'QUADRO PRESSED ASHFIELD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/7932193649b16236be8233ce684891697bc526ef.png?v=1679583296&width=540', $290.00, N'Đồng Hồ Nam Cao Cấp', 10, 1),
/* ----------------------------- */
(N'PETITE CHERRY BLOSSOM', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/s656ji5pyugmeeoof7b0.png?v=1678542319&width=540', $210.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE YORK', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/47552d5de82f0329dfc858f26b540dcc5632cb56.png?v=1679583240&width=540', $211.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE UNITONE SILVER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/9e187e3bbb1172136429556a41f60ab9fabe8540.png?v=1679583220&width=540', $253.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE ROUGE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/57f3f03572da4d18730502e35cfd3862043ed2b7.png?v=1679583130&width=540', $222.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE ROSEWATER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/03e531b18a86a7ebcf55ae4767b3788cc1c6ad99.png?v=1679583115&width=540', $212.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE READING', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/cf8357d4a3bfbadbcd709a7057534045d5875051.png?v=1679583100&width=540', $221.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE PRESSED MELROSE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/9e9a4179ef5eefc9b16bffc32284a88d0c5e4813.png?v=1679583067&width=540', $240.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE PRESSED MELBLACK', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/e43bbc145d4169e32bbbab64cd228d9978a0805f.png?v=1679583064&width=540', $230.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE PRESSED ASHFIELD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/c3dcc82e002d5bdff60bb683136207d4f88f9f71.png?v=1679583060&width=540', $220.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE MELROSE PEARL', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/30b6936818149aceea582b86155af55ea2eb7a19.png?v=1679583056&width=540', $250.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE LUMINE PRESSED PIANO', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/36f1b9d1e2eb36df06ae89e84d5a2d067100e978.png?v=1679583033&width=540', $210.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
(N'PETITE LUMINE ROSE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/86a8e97c519e17774015a49183a8827901cb4ee3.png?v=1679583027&width=540', $315.00, N'Đồng Hồ Nữ Cao Cấp', 10, 2),
/* ----------------------------- */
(N'CLASSIC MESH GRAPHITE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/f7e2669bb89aa71aa879b28cd4b68928f3048876.png?v=1679582573&width=540', $279.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'CLASSIC MESH ARCTIC', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/d05eb1c0924a4f2c884d2a324ca062a0b6da2d24.png?v=1679582569&width=540', $279.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'CLASSIC ST MAWES ARCTIC', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/885ca7b40452fc76481eccea5adb98d1f20a5d68.png?v=1679582681&width=540', $315.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'ICONIC LINK ARCTIC', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/7aaa9fbee827b33d6c0aa26d178d8ab83f22bcad.png?v=1679582740&width=540', $218.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'ICONIC LINK EMERALD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/69c6dd78cc5164a12b75cb0def978f418fe2150f.png?v=1679582817&width=540', $216.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'ICONIC LINK BLUSH', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/cc74704cb190d1d6a6998d9f7a2f404f881e37f7.png?v=1679582778&width=540', $255.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'ICONIC LINK CAPRI', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/6a505c8dbaecdfb02bf417d12730d765124bb70f.png?v=1679582783&width=540', $222.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'ICONIC LINK UNITONE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/f6347f06b50800c86fbf059ad88e75cdae1426e3.png?v=1679582839&width=540', $212.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'ICONIC LINK MINT', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/d408a7eacab486f6c8259e018e150160f52375d1.png?v=1679582833&width=540', $221.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'ICONIC LINK', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/3ce7b26fd8c172a66317680272210329d53fba2f.png?v=1679582825&width=540', $240.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'ICONIC LINK EMERALD SILVER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/5fcc02a47702cba547d9113ae4a562520c219c12.png?v=1679582822&width=540', $230.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
(N'ICONIC LINK UNITONE SILVER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/6d39a8d2121941a47b3125ec06e95972e6d8df00.png?v=1677851900&width=540', $229.00, N'Đồng Hồ Chống Nước Cao Cấp', 10, 3),
/* ----------------------------- */
(N'CLASSIC ROSELYN', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/53a800900a24e5eda49bc6ddff3466ac45fb63f9.png?v=1679582620&width=540', $379.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC CANTERBURY', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/dfcf631a171349ccb6722fb461fa13a7dc860f04.png?v=1679582516&width=540', $270.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC CAMBRIDGE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/057e8b89ec10136c0f9618cd585111c3d0d20c29.png?v=1679582508&width=540', $211.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC GLASGOW', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/47fdb4892ae4048e165a0efda75ec03862390b41.png?v=1679582564&width=540', $279.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC WARWICK', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/4a705acb71099f8ed677c1d20b6eca605ea89648.png?v=1677849874&width=540', $299.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC SOUTHAMPTON', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/765a675b4d0657cf85b3cb30476ed3cd47cd75f1.png?v=1679582674&width=540', $267.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC ROSELYN', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/489494fe52b8b4c5ee799dc5b9ab925e199a4266.png?v=1679582611&width=540', $222.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC WATERBLACK', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/15ccbcdf7e1e960ceb7ab4f44ab53ee07e6a7a40.png?v=1679582472&width=540', $243.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC WATERWHITE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/ef22b8e630c66bcb7bbc6380687c996da6db32b8.png?v=1679582481&width=540', $229.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC BONDI', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/304017f47b238e6fcaf5f03a8fd9c684fb3b5ee6.png?v=1677852117&width=540', $249.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC STUDIO BLACK', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/18a9693846a59cca2f3c00115e3f350afa73810c.png?v=1679583390&width=540', $239.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
(N'CLASSIC STUDIO WHITE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/6e6c2964e89a23ce60586e0174e648cd560e9e7f.png?v=1679583397&width=540', $229.00, N'Đồng Hồ Thể Thao Cao Cấp', 10, 4),
/* ----------------------------- */
(N'ICONIC MOTION', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/dfc020c8b1b8540393d304dd1e75408bf1433432.png?v=1679582852&width=540', $379.00, N'Đồng Hồ Thông Minh Cao Cấp', 10, 5),
(N'ICONIC LINK AUTOMATIC', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/bcc28b89dad3048a5b66b7f97808a0666437cfb7.png?v=1679582746&width=540', $270.00, N'Đồng Hồ Thông Minh Cao Cấp', 10, 5),
(N'ICONIC MOTION ROSE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/4a61a13cfbbdb1041e21301ce8b93300621d9654.png?v=1679582847&width=540', $211.00, N'Đồng Hồ Thông Minh Cao Cấp', 10, 5),
(N'PETITE LUMINE 5-LINK TWO-TONE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/b009c814ca71b3d822398da749651e5b1cf26c96.png?v=1679583007&width=540', $279.00, N'Đồng Hồ Thông Minh Cao Cấp', 10, 5),
(N'PETITE LUMINE 5-LINK ROSE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/bf6bab29077a4e521daedca3f0f7cb9804f5873c.png?v=1679583260&width=540', $299.00, N'Đồng Hồ Thông Minh Cao Cấp', 10, 5),
(N'PETITE LUMINE 5-LINK TWO-TONE SILVER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/4b48a0a79ea6e524a3aa51eabe18052c0964a4a5.png?v=1679583263&width=540', $267.00, N'Đồng Hồ Thông Minh Cao Cấp', 10, 5),
(N'PETITE 5-LINK EVERGOLD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/61275dcab30c085cef8ba525e5a76c7bde6fb565.png?v=1679582883&width=540', $222.00, N'Đồng Hồ Thông Minh Cao Cấp', 10, 5),
(N'QUADRO 5-LINK EVERGOLD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/20514e448e6f4818f5de7c25026c1d81853cc25d.png?v=1679583251&width=540', $243.00, N'Đồng Hồ Thông Minh Cao Cấp', 10, 5),
/* ----------------------------- */
(N'PETITE MELROSE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/q0v1kthaxmrmrgdchqg9.png?v=1679585258&width=540', $79.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'PETITE ST MAVES', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/wwmeoq0ad6sqi5nglchf.png?v=1679585296&width=540', $70.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'PETITE ASHFIELD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/a19f84e0efc5713210baf7c92ea1bea7a1ec5c66.png?v=1679585214&width=540', $21.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'PETITE CONRWALL', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/uidzeksf1omrlqey10do.png?v=1679585242&width=540', $79.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'PETITE BONDI', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/qfe2iuwjbm3gle2ngwic.png?v=1679585217&width=540', $99.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'PETITE SHEFFIELD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/246582cb0380b137e5ea42df624b2eb48242a0d7.png?v=1679585282&width=540', $67.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'PETITE DOVER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/euieak2rkequlwigyebj.png?v=1679585251&width=540', $22.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'PETITE STERLING', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/jlqeingz9mhf2w57vysr.png?v=1679585304&width=540', $43.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'PETITE ROSEWATER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/jta0fs4wxjqizav0x0tv.png?v=1679585270&width=540', $99.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'PETITE ROUGE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/34442d1826c6b4ef138a2d1a588a412bde9e3027.png?v=1679585275&width=540', $67.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'CLASSIC ROSELYN', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/nazpjwcpowdjdgpidbyc.png?v=1679584753&width=540', $22.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'CLASSIC BAYSWATER', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/sfiypmr2cpva9rrrf22s.png?v=1679584526&width=540', $43.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'CLASSIC OXFORD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/lltyv3stfibdk5gk7bzq.png?v=1679584682&width=540', $22.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'CLASSIC GLASGOW', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/mplsmlv2m97oykijbl0o.png?v=1679584592&width=540', $43.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'CLASSIC SOUTHAMPTON', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/r2odpa87bsy4j6sekcqd.png?v=1679584768&width=540', $99.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'CLASSIC WARWICK', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/eiwig7pqoola2iz5jz9t.png?v=1679584789&width=540', $67.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'QUADRO / PETITE PRESSED MELROSE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/wrlhep7i9juumn2eaagf.png?v=1679585317&width=540', $22.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'QUADRO CORAL', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/237f9803bd3b0c24a608f2e9c5ff6f0c1665524b.png?v=1679585310&width=540', $43.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'QUADRO / PETITE PRESSED ASHFIELD', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/pezuaai4pkk1433lyoyi.png?v=1679585312&width=540', $79.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6),
(N'QUADRO PRESSED ROUGE', N'https://cdn.shopify.com/s/files/1/0719/3244/4977/products/48364b2150d23fb68e8c725af0e947bed3086510.png?v=1677854394&width=540', $59.00, N'Phụ Kiện Đồng Hồ Cao Cấp', 10, 6)


select * from Products


