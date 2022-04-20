//
//  SparkGradientManager.m
//  Spark
//
//  Created by GRX on 2022/4/14.
//

#import "SparkGradientTools.h"
/*! 颜色 */
#define ColorWithRGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define ColorWithRGB(r,g,b) ColorWithRGBA(r,g,b,1)
#define ColorWithHexRGBA(rgbValue, alphaValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:alphaValue]
#define ColorWithHexRGB(rgbValue) ColorWithHexRGBA(rgbValue,1.0)
/*! 主页改版颜色 */
#define HomeNovelTheme ColorWithHexRGB(0x8DA5FF)
/*! 原创主页改版颜色 */
#define HomeOrgTheme ColorWithHexRGB(0xE096FF)

@implementation SparkGradientTools
+ (instancetype)shared {
    static SparkGradientTools *_sharedSingleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
          // 要使用self来调用
        _sharedSingleton = [[SparkGradientTools alloc] init];
    });
    return _sharedSingleton;
}
- (void)showNovelBgGradientColor:(UIView *)superView{
    UIColor *color1 = HomeNovelTheme;
    UIColor *color2 = ColorWithHexRGB(0x93AAFF);
    UIColor *color3 = ColorWithHexRGB(0xA3B7FF);
    UIColor *color4 = ColorWithHexRGB(0xB5C5FF);
    UIColor *color5 = ColorWithHexRGB(0xC9D4FF);
    UIColor *color6 = ColorWithHexRGB(0xD7DFFF);
    UIColor *color7 = ColorWithHexRGB(0xEDF1FF);
    UIColor *color8 = ColorWithHexRGB(0xF7F8FF);
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = @[(__bridge id)color1.CGColor, (__bridge id)color2.CGColor,(__bridge id)color3.CGColor,(__bridge id)color4.CGColor,(__bridge id)color5.CGColor,(__bridge id)color6.CGColor,(__bridge id)color7.CGColor,(__bridge id)color8.CGColor];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);
    gradientLayer.frame = superView.bounds;
    [superView.layer addSublayer:gradientLayer];
}
- (void)showOrgBgGradientColor:(UIView *)superView{
    UIColor *color1 = HomeOrgTheme;
    UIColor *color2 = ColorWithHexRGB(0xE19BFF);
    UIColor *color3 = ColorWithHexRGB(0xE4A2FF);
    UIColor *color4 = ColorWithHexRGB(0xE8B1FF);
    UIColor *color5 = ColorWithHexRGB(0xEEC3FF);
    UIColor *color6 = ColorWithHexRGB(0xF1CFFF);
    UIColor *color7 = ColorWithHexRGB(0xF4DBFF);
    UIColor *color8 = ColorWithHexRGB(0xF7E6FF);
    UIColor *color9 = ColorWithHexRGB(0xFBF3FF);
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = @[(__bridge id)color1.CGColor, (__bridge id)color2.CGColor,(__bridge id)color3.CGColor,(__bridge id)color4.CGColor,(__bridge id)color5.CGColor,(__bridge id)color6.CGColor,(__bridge id)color7.CGColor,(__bridge id)color8.CGColor,(__bridge id)color9.CGColor];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);
    gradientLayer.frame = superView.bounds;
    [superView.layer addSublayer:gradientLayer];
}

@end
