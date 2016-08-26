//
//  ViewController.m
//  blockDemo
//
//  Created by Ashish Pisey on 15/04/15.
//  Copyright (c) 2015 Ashish Pisey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *(^appendStrings)(NSString *,NSString *);
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"block before:- %@",appendStrings);
    
    appendStrings = ^(NSString * str1, NSString *str2)
    {
        NSString *totalString = [str1 stringByAppendingString:str2];
        return totalString;
    };

    NSLog(@"block after:- %@",appendStrings(@"my name is ",@"ashish") );
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
