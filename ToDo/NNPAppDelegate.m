//
//  NNPAppDelegate.m
//  ToDo
//
//  Created by damian on 14/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NNPAppDelegate.h"

@interface NNPAppDelegate()
-(void) loadInitialData;
@end

@implementation NNPAppDelegate
@synthesize window = _window;
//ddo
@synthesize toDos = _toDos;
@synthesize toDosCompleted = _toDosCompleted;

-(void) loadInitialData {
    ToDo *task;
    self.toDos = [[NSMutableArray alloc] init];
    self.toDosCompleted = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 10; i++) {
        task = [[ToDo alloc] init];
        task.todoID = i;
        task.toDo = [NSString stringWithFormat:@"Zadanie %d", i];
        task.toDoDescription = [NSString stringWithFormat:@"Zadanie %d - opis", i];        
        task.toDoPriority = arc4random() % 3;       //random number between 0-2
        task.toDoCompletedInd = arc4random() % 2;   //random number between 0-1
        if (task.toDoCompletedInd == 1) {
            [self.toDosCompleted addObject:task];
        } else {
            [self.toDos addObject:task];
        }
    }    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self loadInitialData];     
    return YES;
}

/* usuwamy pozostale metody */
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
