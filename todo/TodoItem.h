//
//  TodoItem.h
//  todo
//
//  Created by Developer on 7/6/15.
//  Copyright (c) 2015 Developer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
