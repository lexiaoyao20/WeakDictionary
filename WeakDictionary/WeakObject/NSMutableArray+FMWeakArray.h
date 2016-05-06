//
//  NSMutableArray+FMWeakArray.h
//  WeakDictionary
//
//  Created by Subo on 16/5/6.
//  Copyright © 2016年 Followme. All rights reserved.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (FMWeakArray)

- (void)fm_addObject:(id)anObject;
- (void)fm_insertObject:(id)anObject atIndex:(NSUInteger)index;
- (nullable id)fm_objectAtIndex:(NSUInteger)index;
- (void)fm_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

- (void)fm_addObjectsFromArray:(NSArray *)otherArray;

@end

NS_ASSUME_NONNULL_END