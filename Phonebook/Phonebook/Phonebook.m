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

-(void)addNewEntry :(User*)u :(Email*)e :(SocialMedia *)sm :(PhoneNumber *)ph
{
    self.newuser = u;
    self.newemail = e;
    self.newmedia = sm;
    self.newnumber = ph;
    
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



//This part updates the individual parts
- (void)setName:(NSString*)s
{
    if ([s length] > 0)
    {
        [user setFirstName:s];
    }
}
- (void)setEmail:(NSString*)s
{
    [email setEmail:s];
}
- (void)setMedia:(NSString*)s
{
    [media setMedia:s];
}
- (void)setNumber:(NSUInteger)s
{
    [number setCell:s];
}


//Deletion of individual parts
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
}*/


@end
