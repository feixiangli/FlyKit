# FlyKit
<font color="#FF0000">
提高开发效率的框架
</font>

<font color="#FF0000">
#### 1.FlyRSA
</font>

</p>

 加密字符串
 </p>

+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;
</p>


 加密数据
 
 </p>

+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;
</p>


 使用私钥解密字符串
 </p>

+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;
+ </p>

 使用私钥解密数据
 
 </p>

+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;
</p>

<font color="#FF0000">
#### 2.NSObject+FlyModel
</font>
</p>


 json转model，json(NSData,NSString,NSDictionary)
 
 </p>

+ (instancetype)FlyModel:(id)json;
</p>


<font color="#FF0000">
#### 3.FlyMD5
</font>
</p>


 字符串生成MD5
 
 </p>

+(NSString *)FlyCreateMD5WithString: (NSString *) inPutText ;
</p>


<font color="#FF0000">
#### 4.FlyRegex
</font>
</p>


 使用正则表达式判断，
 h文件包含了常用的regex
 
 </p>

+ (BOOL)FlyRegex:(NSString *)regex;
</p>

<font color="#FF0000">
#### 5.FlyPhoto
</font>
</p>

 显示大图框架
 imageView：要弹大图的imageView
 imageurl：要打开的大图URL
 
 </p>

+(void)FlyShowPhoto:(UIImageView *)imageView url:(NSString *)imageUrl;
</p>


<font color="#FF0000">
#### 6.FlyKeyboard
</font>
</p>
 TextField 输入状态 自适应屏幕
 把控件创建在FlyKeyboard上即可
 
 </p>

- (id)initWithFrame:(CGRect)frame;
</p>


<font color="#FF0000">
#### 7.UIView+Frame
</font>
</p>

frame更加方便
@property(nonatomic,assign)CGFloat width;</p>
@property(nonatomic,assign)CGFloat height;</p>
@property(nonatomic,assign)CGFloat x;</p>
@property(nonatomic,assign)CGFloat y;</p>
@property(nonatomic,assign)CGFloat centerX;</p>
@property(nonatomic,assign)CGFloat centerY;</p>
</p>


<font color="#FF0000">
#### 8.NSArray+FlyOperation
</font>

</p>

 返回数组里的一个随机元素
 
 </p>
- (id)FlyRandomObject;
</p>
/**
返回数组该索引的元素（不会崩溃）
 
</p>
- (id)FlyObjectAtIndex:(NSUInteger)index;
</p>

 将数组倒序排列
 
</p>
- (void)FlyReverse;
</p>

将数组顺序打乱
 
</p>
- (void)FlyShuffle;
</p>

<font color="#FF0000">
#### 9.UITextField+FlyOperation
</font>

</p>

 设置为日期选择器
 
</p>
- (void)FLyDateInputView;
</p>

<font color="#FF0000">
#### 10.FlyViewController
</font>

</p>
//UIViewController 基类
</p>

<font color="#FF0000">
#### 11.FlyNavigationController
</font>

</p>
//UINavigationController基类
</p>


<font color="#FF0000">
#### 12.FlyGetIPAddress
</font>

</p>

 获取IP
 
 </p>
+ (NSString *)FlyIPAddress;
</p>


<font color="#FF0000">
#### 13.FlyWhetherHaveNet
</font>

</p>

 判断当前是否有网
 
 </p>
+ (BOOL)FlyJudgeNetWork;
</p>

<font color="#FF0000">
#### 14.FlyCarouselView
</font>

</p>
高效率的轮播图，使用runloop以及imageview复用
</p>

 初始化scrollview 传入图片数组，或者URL数组
 
</p>
- (instancetype)initWithImageArray:(NSArray *)imageArray;
</p>


#### 15.FlyTabBarController

</p>
方便的自定义 TabBarController
</p>
 创建一个TabBarController</p>
 titles                 ：tabbarTitle数组</p>
 SimageNames            ：点击时tabbar图片数组</p>
 UimageNames            ：非点击tabbar图片数组</p>
 SBackgroundimageNames  ：点击时tabbar背景图片数组</p>
 UBackgroundimageNames  ：非点击tabbar背景图片数组</p>
 classNames             ：类名数组</p>
</p>
+ (FlyTabBarController *)flyAddTabBarsTitles:(NSArray*)titles</p>
                                     Simages:(NSArray*)SimageNames</p>
                                     Uimages:(NSArray*)UimageNames</p>
                           SBackgroundimages:(NSArray*)SBackgroundimageNames</p>
                           UBackgroundimages:(NSArray*)UBackgroundimageNames</p>
                                      clases:(NSArray*)classNames;

</p>
#### 16.NSObject+FlySelector
</p>
 间接调用方法
- (id)FlyPerformSelector:(SEL)selector withObjects:(NSArray *)objects;
</p>

</p>










