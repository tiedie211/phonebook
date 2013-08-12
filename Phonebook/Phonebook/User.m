//
//  User.m
//  Phonebook
//
//  Created by Tyler Dahl on 7/17/13.
//  Copyright (c) 2013 TylerD. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize firstName;
@synthesize lastName;

- (NSString *)fullName
{
    NSString *name = [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
    return name;
}
@end
