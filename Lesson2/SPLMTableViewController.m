//
//  SPLMTableViewController.m
//  Lesson2
//
//  Created by Adilet Abylov on 8/5/14.
//  Copyright (c) 2014 Adilet Abylov. All rights reserved.
//

#import "SPLMTableViewController.h"
#import "SPLMCell.h"

@interface SPLMTableViewController ()

@end

@implementation SPLMTableViewController
{
    NSArray *itemsSectionOne;
    NSArray *itemsSectionTwo;
}

@synthesize tableView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    itemsSectionOne = @[@"One", @"Two", @"Three", @"Four"];
    itemsSectionTwo = @[@"Nooo", @"Mood", @"Food", @"Good"];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
    {
        return itemsSectionOne.count;
    } else
    {
        return itemsSectionTwo.count;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section==0)
    {
        return @"Section one";
    } else
    {
        return @"Section two";
    }

}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SPLMCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell"];
    if(indexPath.section == 0)
    {
        cell.titleLabel.text = itemsSectionOne[indexPath.row];
    } else
    {
        cell.titleLabel.text = itemsSectionTwo[indexPath.row];
    }
    cell.imageView.image = [UIImage imageNamed:@"dominion_propaganda_3rd.jpg"];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hey"
                                                    message:[NSString stringWithFormat:@"I clicked %@", [itemsSectionOne objectAtIndex:indexPath.row]]
                                                   delegate:nil cancelButtonTitle:@"OK"
                                          otherButtonTitles: nil];
    [alert show];
}


@end
