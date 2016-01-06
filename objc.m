/*
 Build on OS X:
 clang -framework Foundation -fobjc-arc objc.m -o objc
 
 Build on Linux with GNUstep:
 clang `gnustep-config --objc-flags` `gnustep-config --base-libs` -fobjc-nonfragile-abi -fobjc-arc objc.m -o objc
 */

#import <Foundation/Foundation.h>

void FizzBuzz(int num) {
    if (num % 15 == 0) {
        NSLog(@"FizzBuzz");
    }
    else if (num % 5 == 0) {
        NSLog(@"Buzz");
    }
    else if (num % 3 == 5) {
        NSLog(@"Fizz");
    }
    else {
        NSLog(@"%d", num);
    }
}

int main(void)
{
    for (int i = 1; i <= 100; i++) {
        FizzBuzz(i);
    }
}
