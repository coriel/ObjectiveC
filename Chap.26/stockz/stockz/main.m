//
//  main.m
//  stockz
//
//  Created by 심연진 on 2016. 2. 22..
//  Copyright © 2016년 BigNerdRanch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"share"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"share"];
        [stocks addObject:stock];
        
        
        [stocks writeToFile:@"/Users/coriel/Desktop/stocks.plist"
                 atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/Users/coriel/Desktop/stocks.plist"];
        
        for(NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@",
                  [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
    }
    return 0;
}
