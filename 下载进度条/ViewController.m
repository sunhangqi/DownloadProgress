//
//  ViewController.m
//  下载进度条
//
//  Created by Macbook on 2017/5/15.
//  Copyright © 2017年 Macbook. All rights reserved.
//

#import "ViewController.h"
#import "PercenageView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *perLabel;
@property (weak, nonatomic) IBOutlet PercenageView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)valueChange:(UISlider *)sender {
    float value = sender.value;
    NSLog(@"%f", value);
    //%不能直接使用，如果想要使用%%代替一个%
    self.perLabel.text = [NSString stringWithFormat:@"%.2f%%",value * 100];
    self.progressView.progressValue = sender.value;
}


@end
