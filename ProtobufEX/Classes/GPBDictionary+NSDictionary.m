//
//  GPBDictionary+NSDictionary.m
//  Pods
//
//  Created by ryan on 23/12/2016.
//
//

#import "GPBDictionary+NSDictionary.h"

static EntryNSDictionary(id<PBDictionarySubscriptable> target, NSDictionary *otherDictionary) {
    for (NSNumber *key in otherDictionary) {
        target[key] = otherDictionary[key];
    }
}

static id<PBDictionaryConvertable> DictionaryWithNSDictionary(Class class, NSDictionary *otherDictionary) {
    id<PBDictionaryConvertable> dictionary = [[class alloc] initWithCapacity:[otherDictionary count]];
    EntryNSDictionary(dictionary, otherDictionary);
    
    return dictionary;
}


#pragma mark - UInt32 -> UInt32

/**
 * Class used for map fields of <uint32_t, uint32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBUInt32UInt32Dictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    uint32_t result;
    BOOL exists = [self getUInt32:&result forKey:[key unsignedIntValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setUInt32:[obj unsignedIntValue] forKey:[key unsignedIntValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end


#pragma mark - UInt32 -> Int32

/**
 * Class used for map fields of <uint32_t, int32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBUInt32Int32Dictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    int32_t result;
    BOOL exists = [self getInt32:&result forKey:[key unsignedIntValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setInt32:[obj intValue] forKey:[key unsignedIntValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end

#pragma mark - UInt32 -> UInt64

/**
 * Class used for map fields of <uint32_t, uint64_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBUInt32UInt64Dictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    int64_t result;
    BOOL exists = [self getUInt64:&result forKey:[key unsignedIntValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setUInt64:[obj unsignedIntegerValue] forKey:[key unsignedIntValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}


@end


#pragma mark - UInt32 -> Int64

/**
 * Class used for map fields of <uint32_t, int64_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBUInt32Int64Dictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    int64_t result;
    BOOL exists = [self getInt64:&result forKey:[key unsignedIntValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setInt64:[obj integerValue] forKey:[key unsignedIntValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end


#pragma mark - UInt32 -> Bool

/**
 * Class used for map fields of <uint32_t, BOOL>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBUInt32BoolDictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    BOOL result;
    BOOL exists = [self getBool:&result forKey:[key unsignedIntValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setBool:[obj boolValue] forKey:[key unsignedIntValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end

#pragma mark - UInt32 -> Float

/**
 * Class used for map fields of <uint32_t, float>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBUInt32FloatDictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    float result;
    BOOL exists = [self getFloat:&result forKey:[key unsignedIntValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setFloat:[obj floatValue] forKey:[key unsignedIntValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}


@end


#pragma mark - UInt32 -> Double

/**
 * Class used for map fields of <uint32_t, double>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBUInt32DoubleDictionary  (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    double result;
    BOOL exists = [self getDouble:&result forKey:[key unsignedIntValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setDouble:[obj doubleValue] forKey:[key unsignedIntValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}


@end


#pragma mark - UInt32 -> Enum

/**
 * Class used for map fields of <uint32_t, int32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBUInt32EnumDictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    int32_t result;
    BOOL exists = [self getEnum:&result forKey:[key unsignedIntValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setEnum:[obj intValue] forKey:[key unsignedIntValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end


#pragma mark - UInt32 -> Object

/**
 * Class used for map fields of <uint32_t, ObjectType>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBUInt32ObjectDictionary (EX)

- (id)objectForKeyedSubscript:(NSNumber *)key {
    return [self objectForKey:[key unsignedIntValue]];
}

- (void)setObject:(id)obj forKeyedSubscript:(NSNumber *)key {
    [self setObject:obj forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end

#pragma mark - Int32 -> UInt32

/**
 * Class used for map fields of <int32_t, uint32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBInt32UInt32Dictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    uint32_t result;
    BOOL exists = [self getUInt32:&result forKey:[key intValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setUInt32:[obj unsignedIntValue] forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}


@end

#pragma mark - Int32 -> Int32

/**
 * Class used for map fields of <int32_t, int32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBInt32Int32Dictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    int32_t result;
    BOOL exists = [self getInt32:&result forKey:[key intValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setInt32:[obj intValue] forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}


@end

#pragma mark - Int32 -> UInt64

/**
 * Class used for map fields of <int32_t, uint64_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBInt32UInt64Dictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    int64_t result;
    BOOL exists = [self getUInt64:&result forKey:[key intValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setUInt64:[obj unsignedIntegerValue] forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end


#pragma mark - Int32 -> Int64

/**
 * Class used for map fields of <int32_t, int64_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBInt32Int64Dictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    int64_t result;
    BOOL exists = [self getInt64:&result forKey:[key intValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setInt64:[obj integerValue] forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}


@end

#pragma mark - Int32 -> Bool

/**
 * Class used for map fields of <int32_t, BOOL>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBInt32BoolDictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    BOOL result;
    BOOL exists = [self getBool:&result forKey:[key intValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setBool:[obj boolValue] forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}


@end


#pragma mark - Int32 -> Float

/**
 * Class used for map fields of <int32_t, float>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBInt32FloatDictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    float result;
    BOOL exists = [self getFloat:&result forKey:[key intValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setFloat:[obj floatValue] forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end

#pragma mark - Int32 -> Double

/**
 * Class used for map fields of <int32_t, double>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBInt32DoubleDictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    double result;
    BOOL exists = [self getDouble:&result forKey:[key intValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setDouble:[obj doubleValue] forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end

#pragma mark - Int32 -> Enum

/**
 * Class used for map fields of <int32_t, int32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBInt32EnumDictionary (EX) 

- (NSNumber *)objectForKeyedSubscript:(NSNumber *)key {
    int32_t result;
    BOOL exists = [self getEnum:&result forKey:[key intValue]];
    if (exists) {
        return @(result);
    }
    return nil;
}

- (void)setObject:(NSNumber *)obj forKeyedSubscript:(NSNumber *)key {
    [self setEnum:[obj intValue] forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end

#pragma mark - Int32 -> Object

/**
 * Class used for map fields of <int32_t, ObjectType>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@implementation GPBInt32ObjectDictionary (EX) 

- (id)objectForKeyedSubscript:(NSNumber *)key {
    return [self objectForKey:[key intValue]];
}

- (void)setObject:(id)obj forKeyedSubscript:(NSNumber *)key {
    [self setObject:obj forKey:[key intValue]];
}

- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary {
    EntryNSDictionary(self, otherDictionary);
}

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)otherDictionary {
    return DictionaryWithNSDictionary(self, otherDictionary);
}

@end
