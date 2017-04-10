//
//  ViewController.m
//  UIButton_ImageTitleSpacing
//
//  Created by runlin on 17/4/10.
//  Copyright © 2017年 gavin. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ImageTitleSpacing.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *topOutlet;
@property (weak, nonatomic) IBOutlet UIButton *bottomOutlet;

@property (weak, nonatomic) IBOutlet UIButton *leftOutlet;
@property (weak, nonatomic) IBOutlet UIButton *rightOutlet;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.topOutlet setButtonEdgeInsetsStyle:ButtonEdgeInsetsStyleTop withImageTitleSpace:10.];
    [self.bottomOutlet setButtonEdgeInsetsStyle:ButtonEdgeInsetsStyleBottom withImageTitleSpace:10.];
    
    [self.leftOutlet setButtonEdgeInsetsStyle:ButtonEdgeInsetsStyleLeft withImageTitleSpace:10.];
    [self.rightOutlet setButtonEdgeInsetsStyle:ButtonEdgeInsetsStyleRight withImageTitleSpace:10.];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
