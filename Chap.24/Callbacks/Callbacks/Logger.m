//
//  Logger.m
//  Callbacks
//
//  Created by 심연진 on 2016. 2. 22..
//  Copyright © 2016년 BigNerdRanch. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch!");
}

// 데이터가 도착할 때마다 호출된다.
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    //변경할 수 있는 데이터를 만든다(존재하지 않을 때).
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    [incomingData appendData:data];
}

//마지막 데이터가 처리될 때 호출된다.
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all");
    
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    //가져온 파일 전체를 확인하려면 다음 행에서 주석을 제거한다.
    //NSLog(@"The whole string is %@", string);
}

// 가져오기가 실패하면 호출된다.
- (void)connection:(NSURLConnection *)connection
didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}


@end
