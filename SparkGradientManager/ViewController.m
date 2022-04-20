//
//  ViewController.m
//  SparkGradientManager
//
//  Created by GRX on 2022/4/20.
//

#import "ViewController.h"
#import "SparkGradientTools.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SparkGradientTools.shared showNovelBgGradientColor:self.view];
    
}


@end
