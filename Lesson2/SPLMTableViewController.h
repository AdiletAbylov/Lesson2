//
//  SPLMTableViewController.h
//  Lesson2
//
//  Created by Adilet Abylov on 8/5/14.
//  Copyright (c) 2014 Adilet Abylov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SPLMTableViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property(weak) IBOutlet UITableView* tableView;

@end
