//
//  Logger.h
//  Callbacks
//
//  Created by 심연진 on 2016. 2. 22..
//  Copyright © 2016년 BigNerdRanch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}

- (void)sayOuch:(NSTimer *)t;
//- (void)zoneChange:(NSNotification *)note;
@end
