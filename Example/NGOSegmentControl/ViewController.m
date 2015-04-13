//
//  ViewController.m
//  NGOSegmentControl
//
//  Created by Stas Zhukovskiy on 13.04.15.
//  Copyright (c) 2015 andGo Travel. All rights reserved.
//

#import "ViewController.h"
#import <NGOSegmentControl/NGOSegmentControl.h>

@interface ViewController () <NGOSegmentControlDelegate>

@property (weak, nonatomic) IBOutlet NGOSegmentControl *segmentControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [self setupBackGradient];
    [self setupSegmentControl];
}

- (void)setupBackGradient {
    
    UIImageView *gradient   = [[UIImageView alloc] initWithFrame:self.view.frame];
    gradient.image          = [UIImage imageNamed:@"MainGradient"];
    [self.view addSubview:gradient];
    [self.view sendSubviewToBack:gradient];
}

- (void)setupSegmentControl {
    
    self.segmentControl.firstSegmentText    = @"First";
    self.segmentControl.secondSegmentText   = @"Second";
    self.segmentControl.delegate            = self;
    [self.segmentControl setup];
}

#pragma mark - NGOSegmentControl Delegate

- (void)segmentControl:(NGOSegmentControl *)segControl didChangeSelection:(NGOSegmentControlSelected)selection {
    
    switch (selection) {
        case NGOSegmentControlSelectedLeft:     NSLog(@"NGOSegmentControlSelectedLeft");    break;
        case NGOSegmentControlSelectedRight:    NSLog(@"NGOSegmentControlSelectedRight");   break;
        default: break;
    }
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
