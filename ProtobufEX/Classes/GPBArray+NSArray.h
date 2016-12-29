//
//  GPBArray+NSArray.h
//  Pods
//
//  Created by ryan on 23/12/2016.
//
//

#import <Protobuf/GPBArray.h>

@protocol PBArraySubscriptable <NSObject>

- (NSNumber *)objectAtIndexedSubscript:(NSUInteger)idx;
- (void)setObject:(NSNumber *)obj atIndexedSubscript:(NSUInteger)idx;

@end

@protocol PBArrayConvertable <NSObject>

- (void)addValuesFromNSArray:(NSArray<NSNumber *>*)numbers;

@optional
- (void)addNSArrayValues:(NSArray <NSNumber *>*)values __deprecated;

@end


@interface GPBInt32Array (NSArray) <PBArraySubscriptable, PBArrayConvertable>


@end

@interface GPBUInt32Array (NSArray) <PBArraySubscriptable, PBArrayConvertable>


@end
