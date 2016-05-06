//
//  NSMutableArray+FMWeakArray.m
//  WeakDictionary
//
//  Created by Subo on 16/5/6.
//  Copyright © 2016年 Followme. All rights reserved.
//

#import "NSMutableArray+FMWeakArray.h"

@implementation NSMutableArray (FMWeakArray)

- (void)fm_addObject:(id)anObject {
    NSValue *value = [NSValue valueWithNonretainedObject:anObject];
    [self addObject:value];
}

- (void)fm_insertObject:(id)anObject atIndex:(NSUInteger)index {
    NSValue *value = [NSValue valueWithNonretainedObject:anObject];
    [self insertObject:value atIndex:index];
}

- (id)fm_objectAtIndex:(NSUInteger)index {
    NSValue *value = [self objectAtIndex:index];
    return value.nonretainedObjectValue;
}

- (void)fm_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
    NSValue *value = [NSValue valueWithNonretainedObject:anObject];
    [self replaceObjectAtIndex:index withObject:value];
}

- (void)fm_addObjectsFromArray:(NSArray *)otherArray {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id anObject in otherArray) {
        NSValue *value = [NSValue valueWithNonretainedObject:anObject];
        [array addObject:value];
    }
    [self addObjectsFromArray:array];
}

@end
