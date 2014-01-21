//
//  ImparoData.m
//  Imparo
//
//  Created by LD Libra on 1/20/14.
//  Copyright (c) 2014 LD Libra. All rights reserved.
//

#import "ImparoData.h"

@implementation ImparoData

+(ImparoData *) getSingleton {
    static dispatch_once_t dispatcher;
    static ImparoData *singleton = nil;
    dispatch_once(&dispatcher, ^ {
        singleton = [[ImparoData alloc]init];
    });
    return singleton;
}

-(id)init {
    self = [super init];
    if (self) {
        armsListing = [[NSMutableDictionary alloc]init];
        [armsListing setObject:@"Longbow" forKey:@"Legolas"];
        [armsListing setObject:@"Shortsword" forKey:@"Frodo"];
        [armsListing setObject:@"Battleaxe" forKey:@"Gimli"];
    }
    return self;
}

-(NSMutableDictionary *) ArmsListing {
    ;return armsListing;
}

-(void) SetArmListing:(NSString *)name :(NSString *)weapoon {
    
}
@end
