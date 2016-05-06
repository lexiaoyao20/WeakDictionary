//
//  NSMutableDictionary+FMWeakDictionary.h
//  WeakDictionary
//
//  Created by Subo on 16/5/6.
//  Copyright © 2016年 Followme. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary (FMWeakDictionary)

- (nullable id)objectForKey:(id<NSCopying>)aKey;
- (void)fm_setObject:(id)anObject forKey:(id <NSCopying>)aKey;

- (void)fm_setDictionary:(NSDictionary *)otherDictionary;
- (void)addEntriesFromDictionary:(NSDictionary *)otherDictionary;

@end

NS_ASSUME_NONNULL_END