//
//  RNZendeskBridge.m
//  RNZendesk
//
//  Created by David Chavez on 24.04.18.
//  Copyright © 2018 David Chavez. All rights reserved.
//

#import "RNZendeskBridge.h"
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_REMAP_MODULE(RNZendesk, RNZendesk, NSObject)

RCT_EXTERN_METHOD(initialize:(NSDictionary *)config);

RCT_EXTERN_METHOD(identifyJWT:(NSString *)token);

RCT_EXTERN_METHOD(showHelpCenter:(NSDictionary *)options);

RCT_EXTERN_METHOD(showNewTicket:(NSDictionary *)options);

@end
