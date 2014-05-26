//
//  Photo.h
//  Thousand Words
//
//  Created by Stefan Claussen on 26/05/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Album;

@interface Photo : NSManagedObject

@property (nonatomic, retain) id image;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) Album *albumBook;

@end
