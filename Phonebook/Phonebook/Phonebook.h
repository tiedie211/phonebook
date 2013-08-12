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
/*{
    User *user;
    Email *email;
    SocialMedia *media;
    PhoneNumber *number;
}

- (void)addEntry:(NSString*)n
           Email:(NSString*)e
     SocialMedia:(NSString*)m
     PhoneNumber:(NSUInteger)p;
*/

@property (nonatomic, retain) User * newuser;
@property (nonatomic, retain) Email * newemail;
@property (nonatomic, retain) SocialMedia * newmedia;
@property (nonatomic, retain) PhoneNumber * newnumber;

/*
- (NSString*)name;
- (NSString*)email;
- (NSString*)media;
- (NSUInteger)number;
*/

- (void)setName:(NSString*)s;
- (void)setEmail:(NSString*)s;
- (void)setMedia:(NSString*)s;
- (void)setNumber:(NSUInteger)s;

- (void)removeEntry;
- (void)removeName;
- (void)removeEmail;
- (void)removeMedia;
- (void)removeNumber;

//Shantu Edits

-(void)addNewEntry :(User*)newuser :(Email*)newemail :(SocialMedia *)sm :(PhoneNumber *)ph;


@end

