//
//  AppDelegate.m
//  PickerView
//
//  Created by Fraerman Arkady on 24.11.11.
//  Modified by Charles Powell on 3/19/12.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "TableViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize tableViewController = _tableViewController;
@synthesize normalViewController = _normalViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.tableViewController = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];
    self.normalViewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    
    self.tableViewController.title = @"Table Usage";
    self.normalViewController.title = @"View Usage";
    
    self.viewController = [[UITabBarController alloc] init];
    NSMutableArray *controllers = [[NSMutableArray alloc] initWithCapacity:2];
    [controllers addObject:self.tableViewController];
    [controllers addObject:self.normalViewController];
    
    self.viewController.viewControllers = controllers;
    
    [self.window addSubview:self.viewController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
