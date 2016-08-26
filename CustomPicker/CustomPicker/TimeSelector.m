//
//  TimeSelector.m
//  CustomPicker
//
//  Created by Ashish Pisey on 14/05/15.
//  Copyright (c) 2015 Ashish Pisey. All rights reserved.
//

#import "TimeSelector.h"

@implementation TimeSelector

-(instancetype)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        pickerData = @[ @[@"01", @"02", @"03", @"04",@"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12"],
                        @[@"00",@"01",@"02",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23",@"24",@"25",@"26",@"27",@"28",@"29",@"30",@"31",@"32",@"33",@"34",@"35",@"36",@"37",@"38",@"39",@"40",@"41",@"42",@"43",@"44",@"45",@"46",@"47",@"48",@"49",@"50",@"51",@"52",@"53",@"54",@"55",@"56",@"57",@"58",@"59"],
                        @[@"AM", @"PM"],
                        @[@"Exact", @"Approx"] ];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 4;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return 12;
    }
    else if (component == 1)
    {
        return 60;
    }
    else if (component == 2)
    {
        return 2;
    }
    else if (component == 3)
    {
        return 2;
    }
    return 0;
}
//
//-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//    
//    
//    return nil;
//}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{

    if (!view)
    {
        view = [[UIView alloc] initWithFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, view.frame.size.height)];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(35, 3, 245, 24)];
        label.textColor = UIColorFromRGB(0x6d9a36);
        label.backgroundColor = [UIColor clearColor];
        label.tag = 1;
        
        [view addSubview:label];
        
    }
    
        ((UILabel *)[view viewWithTag:1]).text = pickerData[component][row];

   
    return view;
}

- (IBAction)selectAction:(UIButton *)sender {
    NSInteger hourIndex = [self.customPicker selectedRowInComponent:0];
    NSString *hour = pickerData[0][hourIndex];
    NSInteger minIndex = [self.customPicker selectedRowInComponent:1];
    NSString *min = pickerData[1][minIndex];
    NSInteger periodIndex = [self.customPicker selectedRowInComponent:2];
    NSString *period = pickerData[2][periodIndex];
    NSInteger accuracyIndex = [self.customPicker selectedRowInComponent:3];
    NSString *accuracy = pickerData[3][accuracyIndex];
   
}
@end
