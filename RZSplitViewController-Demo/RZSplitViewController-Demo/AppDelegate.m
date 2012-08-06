//
//  AppDelegate.m
//  RZSplitViewController-Demo
//
//  Created by Joe Goullaud on 8/6/12.
//  Copyright (c) 2012 Raizlabs. All rights reserved.
//

#import "AppDelegate.h"
#import "RZSplitViewController.h"
#import "MasterViewController.h"
#import "DetailViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    MasterViewController *masterVC = [[MasterViewController alloc] init];
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    
    masterVC.title = @"Master";
    detailVC.title = @"Detail";
    
    UINavigationController *masterNav = [[UINavigationController alloc] initWithRootViewController:masterVC];
    UINavigationController *detailNav = [[UINavigationController alloc] initWithRootViewController:detailVC];
    
    self.splitVC = [[RZSplitViewController alloc] init];
    self.splitVC.viewControllers = [NSArray arrayWithObjects:masterNav, detailNav, nil];
    self.window.rootViewController = self.splitVC;
    
//    UISplitViewController *uiSplitVC = [[UISplitViewController alloc] init];
//    uiSplitVC.viewControllers = [NSArray arrayWithObjects:masterNav, detailNav, nil];
//    uiSplitVC.presentsWithGesture = YES;
//    uiSplitVC.delegate = self;
//    self.window.rootViewController = uiSplitVC;
    
    self.window.backgroundColor = [UIColor blackColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - UISplitViewControllerDelegate

//- (BOOL)splitViewController:(UISplitViewController *)svc shouldHideViewController:(UIViewController *)vc inOrientation:(UIInterfaceOrientation)orientation
//{
//    return UIInterfaceOrientationIsPortrait(orientation);
//}
//
//- (void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
//{
//    UINavigationController *detailNav = [svc.viewControllers objectAtIndex:1];
//    detailNav.topViewController.navigationItem.leftItemsSupplementBackButton = YES;
//    detailNav.topViewController.navigationItem.leftBarButtonItem = barButtonItem;
//}
//
//- (void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
//{
//    
//}
//
//- (void)splitViewController:(UISplitViewController *)svc popoverController:(UIPopoverController *)pc willPresentViewController:(UIViewController *)aViewController
//{
//    
//}

@end
