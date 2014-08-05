//
//  SPLMMainViewController.h
//  Lesson2
//
//  Created by Adilet Abylov on 8/2/14.
//  Copyright (c) 2014 Adilet Abylov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SPLMMainViewController : UIViewController
@property UIButton* button;
@property(weak) IBOutlet UILabel* label;
-(IBAction)didTouchButton:(id)sender;
@end
