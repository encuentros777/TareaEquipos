//
//  AppDelegate.h
//  Tarea5
//
//  Created by Cesar Roberto Rodriguez Silva on 01/11/17.
//  Copyright © 2017 2drink. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

