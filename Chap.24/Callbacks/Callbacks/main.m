//
//  main.m
//  Callbacks
//
//  Created by 심연진 on 2016. 2. 22..
//  Copyright © 2016년 BigNerdRanch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Logger *logger = [[Logger alloc] init];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                           target:logger
                                                         selector:@selector(sayOuch:)
                                                         userInfo:nil
                                                          repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
    
    }
    return 0;
}
