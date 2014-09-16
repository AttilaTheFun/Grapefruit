//
//  AppDelegate.m
//  Grapefruit
//
//  Created by Logan Shire on 9/15/14.
//  Copyright (c) 2014 Logan Shire. All rights reserved.
//

#import "AppDelegate.h"
#import "SideMenuTableViewController.h"
#import "SignUpTableViewController.h"
#import "LogInTableViewController.h"
#import "HomeTableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    // Get the storyboard.
    // TODO: Check if iPad or iPhone
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:[NSBundle mainBundle]];
    
    // Instantiate the view controllers.
    SideMenuTableViewController *sideMenuTableViewController =
    [storyboard instantiateViewControllerWithIdentifier:@"SideMenuTableViewController"];
    
    // Create the navigaiton controller.
    UINavigationController *navigationController =
    [storyboard instantiateViewControllerWithIdentifier:@"MainNavigationController"];
    
    // Create side menu controller
    self.sideMenuViewController =
    [[RESideMenu alloc] initWithContentViewController:navigationController
                               leftMenuViewController:sideMenuTableViewController
                              rightMenuViewController:nil];
//    self.sideMenuViewController.view.backgroundColor = [UIColor colorWithRed:205.0/255.0 green:69.0/255.0 blue:68.0/255.0 alpha:1.0];
    self.sideMenuViewController.view.backgroundColor = [UIColor colorWithRed:9.0/255.0 green:124.0/255.0 blue:124.0/255.0 alpha:1.0];
    
    // Make it a root controller
    self.window.rootViewController = self.sideMenuViewController;
    
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

@end
