//
//  Phonebook.h
//  Phonebook
//
//  Created by Tyler Dahl on 7/17/13.
//  Copyright (c) 2013 TylerD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Email.h"
#import "SocialMedia.h"
#import "PhoneNumber.h"

@interface Phonebook : NSObject
{
    User *user;
    Email *email;
    SocialMedia *media;
    PhoneNumber *number;
}

- (void)addEntry:(NSString*)n
           Email:(NSString*)e
     SocialMedia:(NSString*)m
     PhoneNumber:(NSUInteger)p;

//@property id user;
//@property id email;
//@property id media;
//@property id number;
- (NSString*)name;
- (NSString*)email;
- (NSString*)media;
- (NSUInteger)number;

- (void)changeName:(NSString*)s;
- (void)changeEmail:(NSString*)s;
- (void)changeMedia:(NSString*)s;
- (void)changeNumber:(NSUInteger)s;

//- (void)removeEntry:(id)s;
- (void)removeName:(NSString*)s;
- (void)removeEmail:(NSString*)s;
- (void)removeMedia:(NSString*)s;
- (void)removeNumber:(NSUInteger)s;

@end
