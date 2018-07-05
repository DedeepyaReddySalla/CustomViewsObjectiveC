//
//  TFVC.m
//  objectiveCTF
//
//  Created by apple on 04/07/18.
//  Copyright © 2018 apple. All rights reserved.
//

#import "TFVC.h"

@interface TFVC ()
//we can't initialize any variables inside inside interface(in.m or .h)..
//Therefore, we try to initialize all variables when view did load methods runs
@property CALayer *border;
@property float thickness;
@property NSArray *pickerData;
@end

@implementation TFVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.thickness = 3.0;
   _singleBorderTF.text = @"number";
    _border = [[CALayer alloc] init];
    _border.borderWidth = _thickness;
    _border.frame = CGRectMake(0, _singleBorderTF.frame.size.height -_thickness, _singleBorderTF.frame.size.width, _thickness);
    _border.borderColor = [[UIColor greenColor] CGColor];
    [[_singleBorderTF layer] addSublayer:_border];
    
    // Do any additional setup after loading the view.
    
    //picker view code
    _pickerData = @[@"number1", @"number2", @"number3", @"number4", @"number5", @"number6"];
//    self.picker.delegate = self;
//    self.picker.dataSource = self;
    _picker.delegate = self;
    _picker.dataSource = self;
     _singleBorderTF.text = _pickerData[0];
//     [_picker reloadAllComponents];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
//    NSLog(@"hello number of rows");
//     NSLog(@"rows method");
    return _pickerData.count;
}

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    NSLog(@"count = %lu",_pickerData.count);
    return 1;
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
//    printf("%s", _pickerData[row]);
    return _pickerData[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
//    NSLog(@"did select");
        _singleBorderTF.text = _pickerData[row];
}



@end
