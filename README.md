# FlyKit
提高开发效率的框架

1.FlyRSA
</p>
/**
 加密字符串
 */
 </p>

+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;
</p>

/**
 加密数据
 */
 </p>

+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;
</p>

/**
 使用私钥解密字符串
 */
 </p>

+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;
+ </p>

/**
 使用私钥解密数据
 */
 </p>

+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;
</p>

2.NSObject+FlyModel
</p>

/**
 json转model，json(NSData,NSString,NSDictionary)
 */
 </p>

+ (instancetype)FlyModel:(id)json;
</p>

3.FlyMD5
</p>

/**
 字符串生成MD5
 */
 </p>

+(NSString *)FlyCreateMD5WithString: (NSString *) inPutText ;
</p>

4.FlyRegex
</p>

/**
 使用正则表达式判断，
 h文件包含了常用的regex
 */
 </p>

+ (BOOL)FlyRegex:(NSString *)regex;
</p>

5.FlyPhoto
</p>

/**
 显示大图框架
 imageView：要弹大图的imageView
 imageurl：要打开的大图URL
 */
 </p>

+(void)FlyShowPhoto:(UIImageView *)imageView url:(NSString *)imageUrl;
</p>

6.FlyScrollview
</p>

/**
 TextField 输入状态 自适应屏幕
 把控件创建在FlyScrollview上即可
 */
 </p>

- (id)initWithFrame:(CGRect)frame;
</p>

7.UIView+Frame
</p>

frame更加方便
@property(nonatomic,assign)CGFloat width;</p>
@property(nonatomic,assign)CGFloat height;</p>
@property(nonatomic,assign)CGFloat x;</p>
@property(nonatomic,assign)CGFloat y;</p>
@property(nonatomic,assign)CGFloat centerX;</p>
@property(nonatomic,assign)CGFloat centerY;</p>
</p>

8.NSArray+FlyOperation</p>
/**
 返回数组里的一个随机元素
 */
 </p>
- (id)FlyRandomObject;
</p>
/**
返回数组该索引的元素（不会崩溃）
 */
</p>
- (id)FlyObjectAtIndex:(NSUInteger)index;
</p>
/**
 将数组倒序排列
 */
</p>
- (void)FlyReverse;
</p>
/**
将数组顺序打乱
 */
</p>
- (void)FlyShuffle;
</p>
9.UITextField+FlyOperation
</p>
/**
 设置为日期选择器
 */
</p>
- (void)FLyDateInputView;
</p>
10.FlyViewController
</p>
//UIViewController 基类
</p>
11.FlyNavigationController
</p>
//UINavigationController基类
</p>

12.FlyGetIPAddress
</p>
/**
 获取IP
 */
 </p>
+ (NSString *)FlyIPAddress;
</p>

13.FlyWhetherHaveNet
</p>
/**
 判断当前是否有网
 */
 </p>
+ (BOOL)FlyJudgeNetWork;
</p>
14.FlyCarouselView
</p>
高效率的轮播图，使用runloop以及imageview复用
</p>
/**
 初始化scrollview 传入图片数组，或者URL数组
 */
</p>
- (instancetype)initWithImageArray:(NSArray *)imageArray;
</p>












