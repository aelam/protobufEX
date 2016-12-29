//
//  ProtobufEXTests.m
//  ProtobufEXTests
//
//  Created by Ryan Wang on 12/23/2016.
//  Copyright (c) 2016 Ryan Wang. All rights reserved.
//

@import XCTest;
@import ProtobufEX;

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    const UInt32 keys[10] = {0,2};
    const BOOL values[2] = {YES, NO};

    GPBUInt32BoolDictionary *dictionary2 = [[GPBUInt32BoolDictionary alloc] initWithBools:values forKeys:keys count:2];
    
    GPBUInt32BoolDictionary *dictionary = [GPBUInt32BoolDictionary dictionaryWithNSDictionary:@{@1:@YES}];
    
}

@end

