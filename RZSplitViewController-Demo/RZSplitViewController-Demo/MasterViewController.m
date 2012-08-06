//
//  MasterViewController.m
//  RZSplitViewController-Demo
//
//  Created by Joe Goullaud on 8/6/12.
//  Copyright (c) 2012 Raizlabs. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "RZSplitViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (nil == cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSString *cellTitle = nil;
    
    switch (indexPath.row) {
        case 0:
            cellTitle = @"Red";
            break;
        case 1:
            cellTitle = @"Orange";
            break;
        case 2:
            cellTitle = @"Yellow";
            break;
        case 3:
            cellTitle = @"Green";
            break;
        case 4:
            cellTitle = @"Blue";
            break;
            
        default:
            cellTitle = @"Error";
            break;
    }
    
    cell.textLabel.text = cellTitle;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailVC = [[DetailViewController alloc] initWithNibName:NSStringFromClass([DetailViewController class]) bundle:nil];
    
    switch (indexPath.row) {
        case 0:
            detailVC.title = @"Red";
            detailVC.backgroundColor = [UIColor redColor];
            break;
        case 1:
            detailVC.title = @"Orange";
            detailVC.backgroundColor = [UIColor orangeColor];
            break;
        case 2:
            detailVC.title = @"Yellow";
            detailVC.backgroundColor = [UIColor yellowColor];
            break;
        case 3:
            detailVC.title = @"Green";
            detailVC.backgroundColor = [UIColor greenColor];
            break;
        case 4:
            detailVC.title = @"Blue";
            detailVC.backgroundColor = [UIColor blueColor];
            break;
            
        default:
            detailVC.title = @"Error";
            detailVC.backgroundColor = [UIColor whiteColor];
            break;
    }
    
    UINavigationController *detailNav = [[self.rzSplitViewController viewControllers] objectAtIndex:1];
    [detailNav setViewControllers:[NSArray arrayWithObject:detailVC] animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
