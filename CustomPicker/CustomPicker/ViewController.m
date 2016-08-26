//
//  ViewController.m
//  CustomPicker
//
//  Created by Ashish Pisey on 14/05/15.
//  Copyright (c) 2015 Ashish Pisey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   self.selector = [[[NSBundle mainBundle]loadNibNamed:@"TimeSelector" owner:self options:nil]firstObject];
    
    [self.view addSubview:self.selector];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
