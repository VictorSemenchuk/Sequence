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

- (NSInteger)sequenceLength {
    NSSet *sequence = [NSSet setWithArray:[self array]];
    NSUInteger longestSequenceLength = 0;
    
    for (NSNumber *num in sequence) {
        if (![sequence containsObject:[NSNumber numberWithLong:[num longValue] - 1]]) {
            NSNumber *currentNum = num;
            NSInteger currentSequenceLength = 1;
            
            while ([sequence containsObject:[NSNumber numberWithLong:[currentNum longValue] + 1]]) {
                currentNum = [NSNumber numberWithLong:[currentNum longValue] + 1];
                currentSequenceLength += 1;
            }
            
            longestSequenceLength = currentSequenceLength > longestSequenceLength ? currentSequenceLength : longestSequenceLength;
        }
    }
    return longestSequenceLength;
}

- (NSInteger)sum {
    return [[self valueForKeyPath:@"array.@sum.integerValue"] longValue];
}

- (void)dealloc {
    [_array release];
    [super dealloc];
}

@end
