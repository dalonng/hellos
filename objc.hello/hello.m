#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool{
    int val = 10;

    void (^block)(void) = ^{
      NSLog(@"%d", val);
    };

    block();
    
  }
  return 0;
}
