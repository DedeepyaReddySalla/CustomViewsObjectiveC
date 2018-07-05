//
//  TFVC.h
//  objectiveCTF
//
//  Created by apple on 04/07/18.
//  Copyright © 2018 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TFVC : UIViewController  <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *singleBorderTF;
@property (strong, nonatomic) NSString *test;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@end
