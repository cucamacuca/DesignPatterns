//
//  SingletonTest.m
//  DesignPatterns
//
//  Created by cuca on 02/02/14.
//  Copyright (c) 2014 Rui Pereira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Singleton.h"

@interface SingletonTest : XCTestCase

@end

@implementation SingletonTest

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}


- (void) testSingletonIsEqual {
    
    Singleton * singleton = [Singleton sharedInstance];
    Singleton * singleton2 = [Singleton sharedInstance];
    
    XCTAssertTrue(singleton == singleton2, @"This should be true");
}

- (void) testSingletonIsNotNull {
    Singleton * singleton = [Singleton sharedInstance];
    XCTAssertNotNil(singleton, @"This should not be null");
}

- (void) testSingletonIsNull {
    Singleton * singleton;
    XCTAssertNil(singleton, @"This should be null");
}

- (void) testObjectIsKindOfClass {
    Singleton *singleton = [[Singleton alloc] init];
    XCTAssert([singleton isKindOfClass:[Singleton class]], @"Should be Singleton");
}

@end
