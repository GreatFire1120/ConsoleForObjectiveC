//
//  main.m
//  My First App
//
//  Created by Admin on 1/23/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        int answer = 0;
        int guess = 0;
        int turn = 0;
        
        
//        int sum = 17, count = 5;
//        CGFloat mean;
//        mean = (CGFloat)sum / count;
//        
//        NSLog(@"mean : %f", mean);

        
        
        answer = arc4random() % 100 + 1;
        while (guess != answer) {
            turn++;
            NSLog(@"Guess #%i: Enter a number between 1 and 100", turn);
            scanf("%i", &guess);
            
            if (guess < 1 || guess > 100) {
                continue;
            }
            
            NSLog(@"guess -> %i, answer -> %i",  guess, answer);
            
            if (guess > answer) {
                NSLog(@"Lower!");
            }
            else if (guess < answer) {
                NSLog(@"Higher!");
            }
            else {
                NSLog(@"Correct! The answer was %i", answer);
            }
        }
        
        NSLog(@"It took you %i tries", turn);
    }
    
    return 0;
}

