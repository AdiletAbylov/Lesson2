//
//  SPLMMainViewController.m
//  Lesson2
//
//  Created by Adilet Abylov on 8/2/14.
//  Copyright (c) 2014 Adilet Abylov. All rights reserved.
//

#import "SPLMMainViewController.h"

@interface SPLMMainViewController ()

@end



@implementation SPLMMainViewController
{
    NSUInteger _counter;
}
@synthesize button;
@synthesize label;


- (void)viewDidLoad
{
    [super viewDidLoad];
    _counter = 0;

    self.button = [[UIButton alloc] initWithFrame:(CGRect){100,100, 150, 44}];
    [self.button setTitle:@"Press me, bitch" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(didTouchButton:) forControlEvents:UIControlEventTouchUpInside];
}


-(void)didTouchButton:(id)sender
{
    [self incrementCounterAndPrint];
}


-(void)incrementCounterAndPrint
{
    _counter++;
    self.label.text = [NSString stringWithFormat:@"Clicks count %d", _counter];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
