//
//  Sequence.h
//  Sequence
//
//  Created by Victor Macintosh on 19/04/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sequence : NSObject

@property (strong, nonatomic) NSArray *array;

- (id)initWithArray:(NSArray *)array;
- (NSInteger)sequenceLength;
- (NSInteger)sum;

@end
