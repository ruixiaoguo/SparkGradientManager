//
//  SparkGradientManager.h
//  Spark
//
//  Created by GRX on 2022/4/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SparkGradientTools : NSObject
+ (instancetype)shared;
- (void)showNovelBgGradientColor:(UIView *)superView;
- (void)showOrgBgGradientColor:(UIView *)superView;

@end

NS_ASSUME_NONNULL_END
