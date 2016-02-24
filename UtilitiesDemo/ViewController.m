//
//  ViewController.m
//  UtilitiesDemo
//
//  Created by lihongfeng on 15/12/24.
//  Copyright © 2015年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "Utilities.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, strong) UIView *v;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //-----------------------------------二维码、条形码测试--------------------------------------------------
    
    //条形码
//    UIImage *image = [Utilities barcodeImageWithContent:@"23558@#$%" codeImageSize:CGSizeMake(300, 90) red:0.2 green:0.3 blue:0.8];
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-300/2, 100, 300, 90)];
//    imageView.image = image;
//    imageView.backgroundColor = [UIColor clearColor];
//    //阴影
//    imageView.layer.shadowOffset = CGSizeMake(-0.5, 0.5);
//    imageView.layer.shadowRadius = 0.5;
//    imageView.layer.shadowColor = [UIColor blackColor].CGColor;
//    imageView.layer.shadowOpacity = 0.2;
//    
//    [self.view addSubview:imageView];
//    
//    //二维码
//    UIImage *barImage = [Utilities qrCodeImageWithContent:@"Hello world!" logo:[UIImage imageNamed:@"logo"] codeImageSize:200 red:0.2 green:0.3 blue:0.8];
//    UIImageView *barImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-200/2, CGRectGetMaxY(imageView.frame)+20, 200, 200)];
//    barImageView.image = barImage;
//    barImageView.backgroundColor = [Utilities colorWithHexString:@"#0ff0ff"];
//    //阴影
//    barImageView.layer.shadowOffset = CGSizeMake(-0.5, 0.5);
//    barImageView.layer.shadowRadius = 1;
//    barImageView.layer.shadowColor = [UIColor blackColor].CGColor;
//    barImageView.layer.shadowOpacity = 0.4;
//    
//    [self.view addSubview:barImageView];
//    
//    self.imageView = barImageView;
//    
//    UIImage *shotImage = [Utilities shotWithView:self.view scope:CGRectMake(0, 0, 300, 300)];
//    [[NSFileManager defaultManager] createFileAtPath:@"/Users/lihongfeng/Desktop/compressedImage.jpeg" contents:UIImagePNGRepresentation(shotImage) attributes:nil];

    
    //-----------------------------------获取磁盘可用空间测试--------------------------------------------------
    
//    CGFloat allSize = [Utilities diskOfAllSizeMBytes]/1024;
//    CGFloat freeSize = [Utilities diskOfFreeSizeMBytes]/1024;
//    NSLog(@"allSize: %g, freeSize: %g", allSize, freeSize);
    
    //-----------------------------------实时模糊处理测试--------------------------------------------------
    
//    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 200, 160)];
//    imageView1.image = [UIImage imageNamed:@"original.jpg"];
//    [self.view addSubview:imageView1];
//    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120, 50)];
//    label.text = @"contentView 1";
//    label.textColor = [UIColor redColor];
//    label.backgroundColor = [UIColor clearColor];
//    
//    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, 120, 50)];
//    label1.text = @"contentView 2";
//    label1.textColor = [UIColor redColor];
//    label1.backgroundColor = [UIColor clearColor];
//    
//    UIView *effectView = [Utilities effectViewWithFrame:CGRectMake(20, 100, 200, 160) contentView:@[label, label1]];
//    [self.view addSubview:effectView];
    
    //-----------------------------------时间处理测试--------------------------------------------------
    
//    NSLog(@"str: %@", [Utilities currentDateWithFormat:@"yyyy-M-d H:m"]);//@"2015年12月25" @"yyyy年MM月dd日"
//    
//    NSLog(@"str: %@", [Utilities timeIntervalFromLastTime:@"2015年12月29日" lastTimeFormat:@"yyyy年MM月dd日" ToCurrentTime:[NSDate date]]);
//    NSLog(@"str: %@", [Utilities timeIntervalFromLastTime:@"2015年12月8日 15:50"
//                                           lastTimeFormat:@"yyyy年MM月dd日 HH:mm"
//                                            ToCurrentTime:@"2015年12月08日 16:12"
//                                        currentTimeFormat:@"yyyy年MM月dd日 HH:mm"]);
    
    //-----------------------------------模糊处理测试--------------------------------------------------
    
    //原始图
//    UIImageView *imageView0 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 50, 200, 160)];
//    imageView0.image = [UIImage imageNamed:@"original.jpg"];
//    [self.view addSubview:imageView0];

    // 滤镜处理
//    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 250, 200, 160)];
//    imageView1.image = [Utilities zoomBlurWithOriginalImage:[UIImage imageNamed:@"original.jpg"] inputCenter:CGPointMake(300, 300) inputAmount:30];
//    CGRect rect1 = CGRectMake(0, 0, 0, 0);
//    CGRect rect2 = CGRectMake(1, 0, 0, 1);
//    imageView1.image = [Utilities colorClampWithOriginalImage:[UIImage imageNamed:@"original.jpg"] inputMinComponets:rect1 inputMaxComponets:rect2];
//    imageView1.image = [Utilities colorControlsWithOriginalImage:[UIImage imageNamed:@"original.jpg"] saturation:1 brightness:0 contrast:1.5];
//    
//    CGRect r    = CGRectMake(0.393, 0.349, 0.272, 0);
//    CGRect g    = CGRectMake(0.769, 0.686, 0.534, 0);
//    CGRect b    = CGRectMake(0.189, 0.168, 0.131, 0);
//    CGRect a    = CGRectMake(0, 0, 0, 1);
//    CGRect bias = CGRectMake(0, 0, 0, 0);
//    imageView1.image = [Utilities colorMatrixWithOriginalImage:[UIImage imageNamed:@"original.jpg"] RVector:r GVector:g BVector:b AVector:a BiasVector:bias];
//    
//    [self.view addSubview:imageView1];
    
    //-----------------------------------按字母分组测试--------------------------------------------------
//    NSArray *arr = @[@"章丘", @"胶南", @"胶州", @"平度", @"莱西", @"即墨", @"滕州", @"龙口", @"莱阳", @"莱州", @"招远", @"蓬莱", @"栖霞", @"海阳", @"青州", @"诸城", @"安丘", @"高密", @"昌邑", @"兖州", @"曲阜", @"邹城", @"乳山", @"文登", @"荣成", @"乐陵", @"临清", @"禹城"];
//    NSDictionary *dic = [Utilities dictionaryOrderByCharacterWithOriginalArray:arr];
//    NSLog(@"dic: %@", dic);
    
    //***************************************************************************************************
    
//    NSLog(@"path: %@", NSHomeDirectory());
    
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    NSLog(@"----%@", path);
    
    long long fileSize = [Utilities fileSizeAtPath:[path stringByAppendingPathComponent:@"cat.jpg"]];
    NSLog(@"fileSize = %lldKB", fileSize/1000);
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 300, 280, 180)];
//    imageView2.image = [Utilities shotScreen];
//    [self.view addSubview:imageView2];
//    [[NSFileManager defaultManager] createFileAtPath:@"/Users/lihongfeng/Desktop/compressedImage.jpeg" contents:[Utilities compressOriginalImage:[UIImage imageNamed:@"original.jpg"] toMaxDataSizeKBytes:200] attributes:nil];
    
}

@end













