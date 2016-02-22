//
//  main.m
//  Stringz
//
//  Created by 심연진 on 2016. 2. 19..
//  Copyright © 2016년 BigNerdRanch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        // NSError 객체의 포인터를 선언만 하고 인스턴스화는 하지 않는다.
        // NSError 인스턴스는 실제로 오류가 있을 때에만 만들어진다.
        NSError *error = nil;
        
        // NSEror 포인터를 참조에 의해 NSString 메소드에 전달한다.
        BOOL success = [str writeToFile:@"/Users/coriel/Desk2top/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        
        // 리턴받은 BOOL을 확인하고, 쓰기가 실패했을 경우 NSError 인스턴스에서 원인을 가져온다.
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
    }
    return 0;
}
