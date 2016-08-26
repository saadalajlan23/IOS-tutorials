//
//  TimeSelector.h
//  CustomPicker
//
//  Created by Ashish Pisey on 14/05/15.
//  Copyright (c) 2015 Ashish Pisey. All rights reserved.
//

#import <UIKit/UIKit.h>
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@interface TimeSelector : UIView<UIPickerViewDelegate,UIPickerViewDataSource>
{
    UILabel *rowLabel;
    NSArray *pickerData;

}
@property (weak, nonatomic) IBOutlet UIPickerView *customPicker;
- (IBAction)selectAction:(UIButton *)sender;
@end
