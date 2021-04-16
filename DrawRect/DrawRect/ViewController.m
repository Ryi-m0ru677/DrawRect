//
//  ViewController.m
//  DrawRect
//
//  Created by cocoazxj@163.com on 15/4/16.
//  Copyright (c) 2015年 handcool. All rights reserved.
//

#import "ViewController.h"
#import "TipViewController.h"
#import "CustomView.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet CustomView *customView;
@property (nonatomic, strong) IBOutlet UISlider *slider;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.customView.radius = self.slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)modalButtonClicked:(id)sender
{
//    [self presentViewController: animated:<#(BOOL)#> completion:<#^(void)completion#>]
}

- (IBAction)sliderCircle:(UISlider *)sender
{
    self.customView.radius = sender.value;
    [self.customView setNeedsDisplay];
}
@end
