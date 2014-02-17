//
//  tableviewAppDelegate.h
//  tipcalculator
//
//  Created by Anupam Pathak on 2/17/14.
//  Copyright (c) 2014 Anupam Pathak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableviewAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
