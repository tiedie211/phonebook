//
//  User.h
//  Phonebook
//
//  Created by Tyler Dahl on 7/17/13.
//  Copyright (c) 2013 TylerD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
    NSString *firstName;
    NSString *lastName;
}

@property NSString* firstName;
@property NSString* lastName;

- (NSString *)fullName;

@end
