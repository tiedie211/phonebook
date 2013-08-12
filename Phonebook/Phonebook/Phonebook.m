//
//  Phonebook.m
//  Phonebook
//
//  Created by Tyler Dahl on 7/17/13.
//  Copyright (c) 2013 TylerD. All rights reserved.
//

#import "Phonebook.h"

@implementation Phonebook

@synthesize newuser;
@synthesize newemail;
@synthesize newmedia;
@synthesize newnumber;


//This adds an entire entry in one method
-(void)addNewEntry :(User*)u :(Email*)e :(SocialMedia *)sm :(PhoneNumber *)ph
{
    self.newuser = u;
    self.newemail = e;
    self.newmedia = sm;
    self.newnumber = ph;
    
}


//This part updates the individual parts
- (void)setName:(NSString*)s
{
    if ([s length] > 0)
    {
        NSArray *name = [s componentsSeparatedByString:@" "];
        if ([name count] == 2)
        {
            self.newuser.firstName = [name objectAtIndex:0];
            self.newuser.lastName = [name objectAtIndex:1];
        }
        else
        {
            self.newuser.firstName = s;
        }
    }
}
- (void)setEmail:(NSString*)s
{
    self.newemail.email = s;
}
- (void)setMedia:(NSString*)s
{
    self.newmedia.media = s;
}
- (void)setNumber:(NSUInteger)s
{
    self.newnumber.cell = s;
}


//Deletion of individual parts
- (void)removeEntry
{
    [self removeName];
    [self removeEmail];
    [self removeMedia];
    [self removeNumber];
}
- (void)removeName
{
    self.newuser.firstName = nil;
    self.newuser.lastName = nil;
}
- (void)removeEmail
{
    self.newemail.email = nil;
}
- (void)removeMedia
{
    self.newmedia.media = nil;
}
- (void)removeNumber
{
    self.newnumber.cell = 0;
}




/*
 //Get the individual parts
 - (NSString*)name
 {
    NSString *n = [NSString stringWithFormat:@"%@ %@",[user firstName], [user lastName]];
    return n;
 }
 - (NSString*)email
 {
    return [email email];
 }
 - (NSString*)media
 {
    return [media media];
 }
 - (NSUInteger)number
 {
    return [number cell];
 }
 
- (void)removeName:(NSString*)s
{
    NSString *n = [NSString stringWithFormat:@"%@ %@",[user firstName], [user lastName]];
    if ([s isEqual:n])
    {
        [user setFirstName:@""];
        [user setLastName:@""];
    }
}
- (void)removeEmail:(NSString*)s
{
    NSString *e = [email email];
    if ([s isEqual:e])
    {
        [email setEmail:@""];
    }
}
- (void)removeMedia:(NSString*)s
{
    NSString *m = [media media];
    if ([s isEqual:m])
    {
        [media setMedia:@""];
    }
}
- (void)removeNumber:(NSUInteger)s
{
    NSUInteger c = [number cell];
    if (s == c)
    {
        [number setCell:0];
    }
}
 
 //This adds an entire entry in one method
 - (void)addEntry:(NSString*)n
 Email:(NSString*)e
 SocialMedia:(NSString*)m
 PhoneNumber:(NSUInteger)p
 {
 self.newuser.firstName = n;
 self.newemail.email = e;
 self.newmedia.media = m;
 self.newnumber.cell = p;
 }
 */


@end
