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
        [entry setName:@"Tyler"];
        [entry setEmail:@"tchristiand@gmail.com"];
        [entry setMedia:@"Facebook"];
        [entry setNumber:2088182575];
        NSLog(@"\nName == %@\n", [entry name]);
        NSLog(@"\nEmail == %@\n", [entry email]);
        NSLog(@"\nSocialMedia == %@\n", [entry media]);
        NSLog(@"\nPhoneNumber == %lu\n", [entry number]);
        
        
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
            NSLog(@"\nName: %@, Email: %@, Media: %@, Number: %lu\n", [p name], [p email], [p media], [p number]);
        }
    }
    return 0;
}

