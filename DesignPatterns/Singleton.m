//
//  Singleton.m
//  DesignPatterns
//
//  Created by cuca on 02/02/14.
//  Copyright (c) 2014 Rui Pereira. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (Singleton *) sharedInstance
{
    static dispatch_once_t predicate = 0;
    static Singleton * _sharedInstance = nil;
    dispatch_once(&predicate, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}
@end