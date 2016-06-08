# FlyKit
提高开发效率的框架

1.FlyRSA

/**
 加密字符串
 */
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;

/**
 加密数据
 */
+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;

/**
 使用私钥解密字符串
 */
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;
/**
 使用私钥解密数据
 */
+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;

2.NSObject+FlyModel

/**
 json转model，json(NSData,NSString,NSDictionary)
 */
+ (instancetype)FlyModel:(id)json;

3.FlyMD5

/**
 字符串生成MD5
 */
+(NSString *)FlyCreateMD5WithString: (NSString *) inPutText ;

4.FlyRegex

/**
 使用正则表达式判断，
 h文件包含了常用的regex
 */
+ (BOOL)FlyRegex:(NSString *)regex;

5.FlyPhoto

/**
 显示大图框架
 imageView：要弹大图的imageView
 imageurl：要打开的大图URL
 */
+(void)FlyShowPhoto:(UIImageView *)imageView url:(NSString *)imageUrl;

6.FlyScrollview
/**
 TextField 输入状态 自适应屏幕
 把控件创建在FlyScrollview上即可
 */
- (id)initWithFrame:(CGRect)frame;

7.UIView+Frame
frame更加方便
@property(nonatomic,assign)CGFloat width;
@property(nonatomic,assign)CGFloat height;
@property(nonatomic,assign)CGFloat x;
@property(nonatomic,assign)CGFloat y;
@property(nonatomic,assign)CGFloat centerX;
@property(nonatomic,assign)CGFloat centerY;


8.NSArray+FlyOperation
/**
 返回数组里的一个随机元素
 */
- (id)FlyRandomObject;

/**
返回数组该索引的元素（不会崩溃）
 */
- (id)FlyObjectAtIndex:(NSUInteger)index;

/**
 将数组倒序排列
 */
- (void)FlyReverse;

/**
将数组顺序打乱
 */
- (void)FlyShuffle;

9.UITextField+FlyOperation
/**
 设置为日期选择器
 */
- (void)FLyDateInputView;

10.FlyViewController
//UIViewController 基类

11.FlyNavigationController
//UINavigationController基类


12.FlyGetIPAddress

/**
 获取IP
 */
 
+ (NSString *)FlyIPAddress;


13.FlyWhetherHaveNet

/**
 判断当前是否有网
 */
+ (BOOL)FlyJudgeNetWork;













