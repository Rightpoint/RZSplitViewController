//
//  AppDelegate.h
//  RZSplitViewController-Demo
//
//  Created by Joe Goullaud on 8/6/12.
//  Copyright (c) 2012 Raizlabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RZSplitViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UISplitViewControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) RZSplitViewController *splitVC;

@end
