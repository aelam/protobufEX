//
//  GPBDictionary+NSDictionary.h
//  Pods
//
//  Created by ryan on 23/12/2016.
//
//

#import <protobuf/GPBDictionary.h>

@protocol PBDictionarySubscriptable <NSObject>

- (id)objectForKeyedSubscript:(NSNumber *)key;
- (void)setObject:(id)obj forKeyedSubscript:(NSNumber *)key;

@end


@protocol PBDictionaryConvertable <NSObject>

+ (instancetype)dictionaryWithNSDictionary:(NSDictionary *)dictionary;
- (void)addEntriesFromNSDictionary:(NSDictionary *)otherDictionary;

@end




#pragma mark - UInt32 -> UInt32

/**
 * Class used for map fields of <uint32_t, uint32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBUInt32UInt32Dictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>


@end


#pragma mark - UInt32 -> Int32

/**
 * Class used for map fields of <uint32_t, int32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBUInt32Int32Dictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>


@end

#pragma mark - UInt32 -> UInt64

/**
 * Class used for map fields of <uint32_t, uint64_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBUInt32UInt64Dictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>


@end


#pragma mark - UInt32 -> Int64

/**
 * Class used for map fields of <uint32_t, int64_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBUInt32Int64Dictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>


@end


#pragma mark - UInt32 -> Bool

/**
 * Class used for map fields of <uint32_t, BOOL>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBUInt32BoolDictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>


@end

#pragma mark - UInt32 -> Float

/**
 * Class used for map fields of <uint32_t, float>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBUInt32FloatDictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>

@end


#pragma mark - UInt32 -> Double

/**
 * Class used for map fields of <uint32_t, double>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBUInt32DoubleDictionary  (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>

@end


#pragma mark - UInt32 -> Enum

/**
 * Class used for map fields of <uint32_t, int32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBUInt32EnumDictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>


@end


#pragma mark - UInt32 -> Object

/**
 * Class used for map fields of <uint32_t, ObjectType>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBUInt32ObjectDictionary<__covariant ObjectType> (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>


@end

#pragma mark - Int32 -> UInt32

/**
 * Class used for map fields of <int32_t, uint32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBInt32UInt32Dictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>

@end

#pragma mark - Int32 -> Int32

/**
 * Class used for map fields of <int32_t, int32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBInt32Int32Dictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>


@end

#pragma mark - Int32 -> UInt64

/**
 * Class used for map fields of <int32_t, uint64_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBInt32UInt64Dictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>

@end


#pragma mark - Int32 -> Int64

/**
 * Class used for map fields of <int32_t, int64_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBInt32Int64Dictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>

@end

#pragma mark - Int32 -> Bool

/**
 * Class used for map fields of <int32_t, BOOL>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBInt32BoolDictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>

@end


#pragma mark - Int32 -> Float

/**
 * Class used for map fields of <int32_t, float>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBInt32FloatDictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>

@end

#pragma mark - Int32 -> Double

/**
 * Class used for map fields of <int32_t, double>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBInt32DoubleDictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>


@end

#pragma mark - Int32 -> Enum

/**
 * Class used for map fields of <int32_t, int32_t>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBInt32EnumDictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>

@end

#pragma mark - Int32 -> Object

/**
 * Class used for map fields of <int32_t, ObjectType>
 * values. This performs better than boxing into NSNumbers in NSDictionaries.
 *
 * @note This class is not meant to be subclassed.
 **/
@interface GPBInt32ObjectDictionary (EX) <PBDictionarySubscriptable, PBDictionaryConvertable>

@end
