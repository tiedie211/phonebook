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
        
        Phonebook *phonebook = [[Phonebook alloc] init];
        [Phonebook addEntry:@"Tyler"
                      Email:@"tchristiand@gmail.com"
                SocialMedia:@"Facebook"
                PhoneNumber:2088182575];
        
    }
    return 0;
}

