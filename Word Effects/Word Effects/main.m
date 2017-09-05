//
//  main.m
//  Word Effects
//
//  Created by Paul on 2017-09-04.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

void displayMenu(){
    printf("Enter a number below: \n");
    printf("1.Uppercase\n");
    printf("2.Lowercase\n");
    printf("3.integer\n");
    printf("4.Eh?\n");
    printf("5.? or !\n");
    printf("6.remove spaces\n");

}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //255 unit long array of characters
        char inputChars[255];
        
        printf("input a string: ");
        
        //limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        //print as a c string
        printf("Your string is %s\n", inputChars);
        
        //convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];

int choice;
do{

    
    displayMenu();
    scanf("%i",&choice);
switch (choice) {
    case 1:{
     NSString* UpperCase = [inputString uppercaseString];
                    NSLog(@"%@", UpperCase);
                    break;
                }
    case 2:{
     NSString* lowerCase = [inputString lowercaseString];
        NSLog(@"%@",lowerCase);
        break;
                }
    case 3:{
     int value = [inputString intValue];
        NSLog(@"%i", value);
        break;
                }
    case 4:{
     NSString* appendEh = [inputString stringByAppendingString:@" -eh?"];
        NSLog(@"%@",appendEh);
        break;
            }
    case 5:{
     NSString* respond = inputString;
        if([respond containsString:@"?"]){
        NSLog(@"I don't know");
        } else if ([respond containsString:@"!"]){
        NSLog(@"Whoa calm down");
        }
    NSLog(@"%@", respond);
    break;
                }
    case 6:{
    NSString *removeSpaces = [inputString stringByReplacingOccurrencesOfString:@"" withString:@"-"];
    NSLog(@"%@",removeSpaces);
    break;
                }
    default: NSLog(@"Please pick a valid number");
                    break;
            }
    
}
        while(choice !=0);
    }
    return 0;
}
