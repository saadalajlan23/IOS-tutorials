//
//  ViewController.m
//  DisableBackspaceDemo
//
//  Created by Ashish Pisey on 09/04/15.
//  Copyright (c) 2015 Ashish Pisey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *defaultText;
}
@property (weak, nonatomic) IBOutlet UITextView *tv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    defaultText = @"Default Text";
    
    _tv.text = defaultText; // \u200B
}

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    
//    NSLog(@"%@",text);
    const char * _char = [text cStringUsingEncoding:NSUTF8StringEncoding];
    int isBackSpace = strcmp(_char, "\b");
    
    
    // hide the cursor
    UITextRange *selectedTxtRange = [textView textRangeFromPosition:textView.endOfDocument toPosition:textView.endOfDocument];
    textView.selectedTextRange = selectedTxtRange;
    
    if ((isBackSpace == -8 && [textView.text caseInsensitiveCompare: defaultText] == NSOrderedSame)||range.location < defaultText.length) {
        // is backspace or is selection to the left than default text
        textView.canCancelContentTouches = YES;
        textView.selectable = NO;
        textView.selectedTextRange = nil;
        [textView resignFirstResponder];
        return NO;
    }
    else
        textView.canCancelContentTouches = NO;
        textView.selectable = YES;
        textView.selectedTextRange = selectedTxtRange;
        [textView becomeFirstResponder];
        return YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
