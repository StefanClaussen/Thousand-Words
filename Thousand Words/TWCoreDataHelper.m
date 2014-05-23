//
//  TWCoreDataHelper.m
//  Thousand Words

#import "TWCoreDataHelper.h"

@implementation TWCoreDataHelper

+ (NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    
    return context;
}

@end
