//
//  Album.h
//  Thousand Words
//
//  Created by Stefan Claussen on 22/05/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Album : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * date;

@end
