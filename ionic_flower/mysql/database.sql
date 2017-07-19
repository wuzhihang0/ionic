SET NAMES 'utf8';
DROP DATABASE IF EXISTS kaifanla_new;
CREATE DATABASE kaifanla_new CHARSET=UTF8;
USE kaifanla_new;
CREATE TABLE kf_dish(
    did INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64),
    price FLOAT(6,2),
    img_sm VARCHAR(64),
    img_lg VARCHAR(64),
    detail VARCHAR(2048),
    material VARCHAR(2048)
);
INSERT INTO kf_dish(did,img_sm,img_lg,name,price,material,detail) VALUES
(   null,
    'flower1.jpg',
    'flower1.jpg',
    '【鲜花·爱是唯一】',
    286,
    '规格：雪山白玫瑰11枝、白百合3枝、银叶菊0.5扎、栀子叶2枝',
    '设计师寄语：雪山玫瑰是一种可爱型玫瑰，未全开放的雪上玫瑰，花蕊紧凑在一起，层层包容很有内涵。绿白色的花瓣，纯洁、高贵、天真的象征，淡绿色调在花语中又有钟情于你级青春常驻之意。11枝雪山白玫瑰+白百何，代表我与你圣洁清新的爱。雪山是白玫瑰中高档品种，雪山华丽的外观和感觉意味着它确实代表着高贵的品质。………… '
),
(   null,
    'flower2.jpg',
    'flower2.jpg',
    '【鲜花·一心一意】',
    126,
    '规格：红玫瑰11枝，粉色(或者紫色）勿忘我0.3扎，栀子叶适量搭配',
    '设计师寄语：玫瑰代表着"美丽和爱情",是爱情的化身；勿忘我则是花中情种，代表着"永不变的心，请不要忘记我真诚的爱"。11枝红玫瑰寓意爱情专一，一心一意，搭配牛皮纸包装，特别有情调，想象那位送花的男士一定是有风度的！'
),
(   null,
    'flower3.jpg',
    'flower3.jpg',
    '【鲜花·感激】',
    198,
    '规格：2枝粉百合，29枝红康乃馨，适量黄英搭配',
    '设计师寄语：学会感激-感激我的父母，因为他们给了我宝贵的生命；感激我的老师，因为他们给了我无穷的知识；感激我的朋友，因为他们给了我克服困难的力量；感激我周围的一切，因为他们给了我和谐的成长空间。'
),
(   null,
    'flower4.jpg',
    'flower4.jpg',
    '【鲜花·健康长久】',
    412,
    '规格：2枝粉百合，29枝红康乃馨，适量黄英搭配',
    '设计师寄语：时光时光慢一些吧，不想让你再变老了；我愿用我的一切，换你岁月长留'
),
(   null,
    'flower5.jpg',
    'flower5.jpg',
    '【鲜花·醉思念】',
    189,
    '规格：高档礼盒装鲜花:红色康乃馨19枝，勿忘我适量',
    '设计师寄语：热烈的红色康乃馨最能表达游子对母亲的思念和祝福，"醉思念"象征着一辈子永久拥有的、包容的、值得信赖的爱，祝福妈妈永远年轻漂亮。'
),
(   null,
    'flower6.jpg',
    'flower6.jpg',
    '【鲜花·一往情深】',
    235,
    '规格：高档礼盒装鲜花:19枝红玫瑰，勿忘我适量',
    '设计师寄语：那一年的风都是香的，如同你发梢的味道。你无声无息，温柔如水，潜入我的新房，心中千言万语化为这束"一往情深"。'
),
(   null,
    'flower7.jpg',
    'flower7.jpg',
    '【鲜花·夏日花园】',
    228,
    '规格：向日葵5枝，红色康乃馨11枝，蓝色绣球1枝，水竹叶半扎，填充适量石竹梅红豆绿叶',
    '设计师寄语：你的微笑就是我的向日葵，像夏日碧空一尘不染，有你陪伴的日子是最幸福的时光，那一刻你就是我心中最爱！'
),
(   null,
    'flower8.jpg',
    'flower8.jpg',
    '【鲜花·母爱】',
    148,
    '规格：紫红色康乃馨9枝，粉色多头康乃馨7枝',
    '设计师寄语：没你疼我我怎么生活，没你抚养我怎么长大，你给了我青春的年华，自己却满头白发，不负青春年华，是对你最好的报答！'
);
##SELECT * FROM kf_dish;
/*用户表*/
CREATE TABLE kf_users(
    userid INT PRIMARY KEY AUTO_INCREMENT, /*用户id*/
    uname VARCHAR(20),                     /*用户名*/
    pwd VARCHAR(20),                       /*密码*/
    phone VARCHAR(20)                      /*电话*/
);
INSERT INTO kf_users VALUES
(NULL,'mary','11111','13111112345'),
(NULL,'jerry','22222','13819196547'),
(NULL,'john','33333','13819196547');
/*订单表*/
CREATE TABLE kf_order(
    oid INT PRIMARY KEY AUTO_INCREMENT,     /*订单ID*/
    userid INT,                             /*用户*/
    phone VARCHAR(16),                      /*联系电话*/
    user_name VARCHAR(16),                  /*收货方用户名*/
    order_time LONG,                        /*下单时间*/
    addr VARCHAR(256),                      /*订单地址*/
    totalprice FLOAT(6,2)                   /*订单总价*/
);
INSERT INTO kf_order VALUES
(NULL,1,'13501234567','大旭',1445154859209,'大钟寺中鼎B座',20.5),
(NULL,1,'13501257543','琳妹妹',1445154997543,'大钟寺中鼎B座',12.5),
(NULL,2,'13207654321','东东',1445254997612,'大钟寺中鼎B座',55),
(NULL,2,'13899999999','文兄',1445354959209,'大钟寺中鼎B座',35),
(NULL,3,'13683675299','梅姐',1445355889209,'大钟寺中鼎B座',45);
/**购物车表**/
CREATE TABLE kf_cart(
    ctid INT PRIMARY KEY AUTO_INCREMENT, /*购物车编号*/
    userid INT,                          /*用户编号：假定有用户id为 1 和 3 的两个用户有数据*/
    did INT,                             /*产品编号*/
    dishCount INT                      /*数量*/
);
INSERT INTO kf_cart VALUES (1,1,1,1),
(2,1,2,4),
(3,1,5,2),
(4,3,2,10),
(5,3,6,1);
##SELECT * FROM kf_order;
/**订单详情表**/
CREATE TABLE kf_orderdetails(
    oid INT ,                            /*订单编号*/
    did INT,                             /*产品id*/
    dishCount INT,                     /*购买数量*/
    price FLOAT(8,2)                     /*产品单价：需要记载，因为产品价格可能波动*/
);
INSERT INTO kf_orderdetails VALUES (1,1,2,5),
(1,2,1,10.5),
(2,3,1,12.5),
(3,1,3,5),
(3,2,4,10),
(4,4,7,5),
(5,5,5,4),
(5,6,2,12.5);
