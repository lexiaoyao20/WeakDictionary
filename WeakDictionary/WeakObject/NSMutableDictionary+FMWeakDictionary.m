//
//  NSMutableDictionary+FMWeakDictionary.m
//  WeakDictionary
//
//  Created by Subo on 16/5/6.
//  Copyright © 2016年 Followme. All rights reserved.
//

#import "NSMutableDictionary+FMWeakDictionary.h"

@implementation NSMutableDictionary (FMWeakDictionary)

- (nullable id)objectForKey:(id<NSCopying>)aKey {
    NSValue *value = [self objectForKey:aKey];
    
    return value.nonretainedObjectValue;
}

- (void)fm_setObject:(id)anObject forKey:(id <NSCopying>)aKey {
    NSValue *value = [NSValue valueWithNonretainedObject:anObject];
    [self setObject:value forKey:aKey];
}

- (void)fm_setDictionary:(NSDictionary *)otherDictionary {
    [otherDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [self fm_setObject:obj forKey:key];
    }];
}

- (void)addEntriesFromDictionary:(NSDictionary *)otherDictionary {
    [otherDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [self fm_setObject:obj forKey:key];
    }];
}

@end
