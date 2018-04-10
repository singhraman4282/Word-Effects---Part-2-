//
//  main.m
//  Word Effects - Part 2
//
//  Created by Raman Singh on 2018-04-09.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        NSLog(@"Please enter a string\n");
        char inputString[255];
        fgets(inputString, 255, stdin);
        
        NSString *string = [NSString stringWithUTF8String:inputString];
        NSLog(@"Your entered string is %@", string);
        
        int choice;
        NSLog(@"Enter a number between 1 to 6");
        scanf("%d", &choice);
        NSLog(@"%d", choice);
        while (YES) {
        switch (choice) {
            case 1:
            {
                NSLog(@"%@", [string uppercaseString]);
                NSLog(@"Enter a number between 1 to 6");
                scanf("%d", &choice);
                break;
            }
            case 2:
            {
                NSLog(@"%@", [string lowercaseString]);
                NSLog(@"Enter a number between 1 to 6");
                scanf("%d", &choice);
                break;
            }
            case 3:
            {
                int numValue;
                numValue = [string intValue];
                if (numValue) {
                    NSLog(@"It can be converted to int.");
                    NSLog(@"The num value is %d", numValue);
                }
                NSLog(@"Enter a number between 1 to 6");
                scanf("%d", &choice);
                break;
            }
            case 4:
            {
                NSLog(@"%@", [string stringByAppendingString:@", eh?"]);
                NSLog(@"Enter a number between 1 to 6");
                scanf("%d", &choice);
                break;
            }
            case 5:
            {
                NSString *last = [string substringFromIndex:string.length - 1];
                if ([last isEqual:@"?"]) {
                    NSLog(@"Whoa, calm down!");
                }
                NSLog(@"Enter a number between 1 to 6");
                scanf("%d", &choice);
                break;
            }
            case 6:
            {
                NSLog(@"%@", [string stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                NSLog(@"Enter a number between 1 to 6");
                scanf("%d", &choice);
                break;
            }
                
            default:
                NSLog(@"Enter a number between 1 to 6");
                scanf("%d", &choice);
                break;
        }
        }
        
        
    }
    return 0;
}
