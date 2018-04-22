//
//  Sequence.m
//  Sequence
//
//  Created by Victor Macintosh on 19/04/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "Sequence.h"

@implementation Sequence

- (id)initWithArray:(NSArray *)array {
    self = [super init];
    if (self) {
        [array retain];
        _array = array;
    }
    return self;
}

- (NSInteger)sum {
    return [[self valueForKeyPath:@"array.@sum.integerValue"] longValue];
}

- (void)dealloc {
    [_array release];
    [super dealloc];
}

@end
