//
//  DetailViewController.m
//  RZSplitViewController-Demo
//
//  Created by Joe Goullaud on 8/6/12.
//  Copyright (c) 2012 Raizlabs. All rights reserved.
//

#import "DetailViewController.h"
#import "RZSplitViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = self.backgroundColor;
    
    self.navigationItem.leftItemsSupplementBackButton = YES;
    [self.navigationItem setLeftBarButtonItem:self.rzSplitViewController.collapseBarButton animated:NO];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationItem.leftItemsSupplementBackButton = YES;
    
    [self.navigationItem setLeftBarButtonItem:self.rzSplitViewController.collapseBarButton animated:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (IBAction)pushButtonTapped:(id)sender
{
    DetailViewController *detailVC = [[DetailViewController alloc] initWithNibName:NSStringFromClass([DetailViewController class]) bundle:nil];
    detailVC.title = self.title;
    detailVC.backgroundColor = self.backgroundColor;
    
    [self.navigationController pushViewController:detailVC animated:YES];
}
@end
