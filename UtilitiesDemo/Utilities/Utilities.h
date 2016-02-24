//
//  Utilities.h
//
//  Created by wanglei on 15/12/25.
//  Copyright © 2015年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Utilities : NSObject

#pragma mark - 获取字符串(包括汉字)首字母
+ (NSString *)firstCharacterWithString:(NSString *)str;

#pragma mark - 将字符串数组按照字母顺序进行分组
//key:字母索引数组 value:索引对应的分组
+ (NSDictionary *)dictionaryOrderByCharacterWithOriginalArray:(NSArray *)array;

#pragma mark - 时间处理
+ (NSString *)currentDateWithFormat:(NSString *)format;
+ (NSString *)timeIntervalFromLastTime:(NSDate *)lastTime ToCurrentTime:(NSDate *)currentTime;
+ (NSString *)timeIntervalFromLastTime:(NSString *)lastTime lastTimeFormat:(NSString *)format ToCurrentTime:(NSDate *)currentTime;
+ (NSString *)timeIntervalFromLastTime:(NSString *)lastTime lastTimeFormat:(NSString *)format1 ToCurrentTime:(NSString *)currentTime currentTimeFormat:(NSString *)format2;

#pragma mark - 获取磁盘空间大小
+ (CGFloat)diskOfAllSizeMBytes;//磁盘总空间(单位:MB)
+ (CGFloat)diskOfFreeSizeMBytes;//磁盘可用空间(单位:MB)

#pragma mark - 获取文件大小
+ (long long)fileSizeAtPath:(NSString *)filePath;//单位:Byte

#pragma mark - 获取文件夹大小
+ (long long)folderSizeAtPath:(NSString *)folderPath;//单位:Byte.文件夹里面只能是文件,不能有子文件夹,否则不准确

#pragma mark - 十六进制颜色转换为 UIColor
+ (UIColor *)colorWithHexString:(NSString *)color;

#pragma mark - 对图片进行滤镜处理
//系统内置滤镜name:
// 怀旧 --> CIPhotoEffectInstant                         单色 --> CIPhotoEffectMono
// 黑白 --> CIPhotoEffectNoir                            褪色 --> CIPhotoEffectFade
// 色调 --> CIPhotoEffectTonal                           冲印 --> CIPhotoEffectProcess
// 岁月 --> CIPhotoEffectTransfer                        铬黄 --> CIPhotoEffectChrome
// CILinearToSRGBToneCurve, CISRGBToneCurveToLinear, CIGaussianBlur, CIBoxBlur, CIDiscBlur, CISepiaTone, CIDepthOfField
+ (UIImage *)filterWithOriginalImage:(UIImage *)image blurName:(NSString *)name;

// CIGaussianBlur ---> 高斯模糊
// CIBoxBlur      ---> 均值模糊(Available in iOS 9.0 and later)
// CIDiscBlur     ---> 环形卷积模糊(Available in iOS 9.0 and later)
// CIMedianFilter ---> 中值模糊, 用于消除图像噪点, 无需设置radius(Available in iOS 9.0 and later)
// CIMotionBlur   ---> 运动模糊, 用于模拟相机移动拍摄时的扫尾效果(Available in iOS 9.0 and later)
+ (UIImage *)blurWithOriginalImage:(UIImage *)image blurName:(NSString *)name radius:(NSInteger)radius;

//变焦模糊, 用于模拟相机变焦缩放的效果(Available in iOS 9.0 and later)
+ (UIImage *)zoomBlurWithOriginalImage:(UIImage *)image inputCenter:(CGPoint)inputCenter inputAmount:(NSInteger)inputAmount;

//调整图片色域范围,将色域限定在某一范围内实现一些特殊效果(Available in iOS 7.0 and later)
+ (UIImage *)colorClampWithOriginalImage:(UIImage *)image inputMinComponets:(CGRect)min inputMaxComponets:(CGRect)max;

//调整图片饱和度, 亮度, 对比度
+ (UIImage *)colorControlsWithOriginalImage:(UIImage *)image saturation:(CGFloat)saturation brightness:(CGFloat)brightness contrast:(CGFloat)contrast;

//控制图片的颜色矩阵
+ (UIImage *)colorMatrixWithOriginalImage:(UIImage *)image RVector:(CGRect)RVector  GVector:(CGRect)GVector  BVector:(CGRect)BVector  AVector:(CGRect)AVector  BiasVector:(CGRect)BiasVector;

#pragma mark - 创建实时模糊效果view
+ (UIVisualEffectView *)effectViewWithFrame:(CGRect)frame contentView:(NSArray *)contentViews;//Avilable in iOS 8.0 and later

#pragma mark - 图片压缩
+ (UIImage *)compressOriginalImage:(UIImage *)image toSize:(CGSize)size;//压缩图片尺寸
+ (UIImage *)compressOriginalImage:(UIImage *)image toMaxFileSizeKBytes:(CGFloat)size;//压缩图片文件大小(size单位:KB)
+ (NSData *)compressOriginalImage:(UIImage *)image toMaxDataSizeKBytes:(CGFloat)size;//压缩图片文件大小(size单位:KB)

#pragma mark - 截图
+ (UIImage *)shotScreen;//全屏截图
+ (UIImage *)shotWithView:(UIView *)view;//截取view生成一张图片
+ (UIImage *)shotWithView:(UIView *)view scope:(CGRect)scope;//截取view中某个区域生成一张图片

#pragma mark - 生成二维码
//Avilable in iOS 7.0 and later
+ (UIImage *)qrCodeImageWithContent:(NSString *)content logo:(UIImage *)logo codeImageSize:(CGFloat)size red:(CGFloat)red green:(CGFloat)green blue:(NSInteger)blue;

#pragma mark - 生成条形码
//Avilable in iOS 8.0 and later
+ (UIImage *)barcodeImageWithContent:(NSString *)content codeImageSize:(CGSize)size red:(CGFloat)red green:(CGFloat)green blue:(NSInteger)blue;

@end
