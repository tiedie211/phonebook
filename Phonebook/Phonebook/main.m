//
//  main.m
//  Phonebook
//
//  Created by Tyler Dahl on 7/17/13.
//  Copyright (c) 2013 TylerD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phonebook.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create one entry and test methods
        Phonebook *entry = [[Phonebook alloc] init];
        User *myuser = [User new];
        myuser.firstName = @"Shantu";
        myuser.lastName = @"Roy";
        Email *myemail = [Email new];
        myemail.email = @"tchristiand@gmail.com";
        SocialMedia *mymedia = [SocialMedia new];
        mymedia.media = @"Facebook";
        PhoneNumber *mynumber = [PhoneNumber new];
        mynumber.cell = 2088182575;
        
        entry.newuser = myuser;
        entry.newemail = myemail;
        entry.newmedia = mymedia;
        entry.newnumber = mynumber;
        //[entry setName:@"Tyler"];
        //entry.name = @"Tyler";
        //[entry setEmail:@"tchristiand@gmail.com"];
        //[entry setMedia:@"Facebook"];
        //[entry setNumber:2088182575];
        NSLog(@"\nName == %@\n", entry.newuser.firstName);
        NSLog(@"\nEmail == %@\n", entry.newemail.email);
        NSLog(@"\nSocialMedia == %@\n", entry.newmedia.media);
        NSLog(@"\nPhoneNumber == %lu\n", entry.newnumber.cell);
        
        
        //Create New Entries
        Phonebook *newEntry1 = [[Phonebook alloc] init];
        User *user1 = [User new];
        myuser.firstName = @"Shantu";
        myuser.lastName = @"Roy";
        Email *email1 = [Email new];
        myemail.email = @"shantu@gmail.com";
        SocialMedia *media1 = [SocialMedia new];
        mymedia.media = @"Facebook";
        PhoneNumber *number1 = [PhoneNumber new];
        mynumber.cell = 5097167426;
        [newEntry1 addNewEntry:user1 :email1 :media1 :number1];
        
        Phonebook *newEntry2 = [[Phonebook alloc] init];
        User *user2 = [User new];
        myuser.firstName = @"Tyler";
        myuser.lastName = @"Dahl";
        Email *email2 = [Email new];
        myemail.email = @"tchristiand@gmail.com";
        SocialMedia *media2 = [SocialMedia new];
        mymedia.media = @"Facebook";
        PhoneNumber *number2 = [PhoneNumber new];
        mynumber.cell = 2088182575;
        [newEntry2 addNewEntry:user2 :email2 :media2 :number2];
        
        //Add entries to Array
        NSArray *entries2 = [NSArray arrayWithObjects:newEntry1, newEntry2, nil];
        
        //Iterate through entries2
        for (Phonebook *p in entries2)
        {
            NSLog(@"\nName: %@ %@, Email: %@, Media: %@, Number: %lu\n",
                  p.newuser.firstName, p.newuser.lastName, p.newemail.email, p.newmedia.media, p.newnumber.cell);
        }
        
        
        /*
        //Create Array of Phonebook entries and print out the info of each entry
        Phonebook *entry1 = [[Phonebook alloc] init];
        [entry1 addEntry:@"Tyler"
                   Email:@"tchristiand@gmail.com"
             SocialMedia:@"Facebook"
             PhoneNumber:2088182575];
        Phonebook *entry2 = [[Phonebook alloc] init];
        [entry2 addEntry:@"Cole"
                   Email:@"cdLewis@gmail.com"
             SocialMedia:@"Facebook"
             PhoneNumber:5098172121];
        
        NSArray *entries = [NSArray arrayWithObjects:entry1, entry2, nil];
        
        for (Phonebook *p in entries)
        {
            NSLog(@"\nName: %@, Email: %@, Media: %@, Number: %lu\n",
                  p.newuser.firstName, p.newemail.email, p.newmedia.media, p.newnumber.cell);
        }*/
    }
    return 0;
}

