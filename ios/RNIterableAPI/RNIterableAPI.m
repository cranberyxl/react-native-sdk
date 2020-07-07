//
//  Created by Tapash Majumder on 3/19/20.
//  Copyright © 2020 Iterable. All rights reserved.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_REMAP_MODULE(RNIterableAPI, ReactIterableAPI, NSObject)

RCT_EXTERN_METHOD(initializeWithApiKey: (nonnull NSString *) apiKey
                                config: (nonnull NSDictionary *) config
                                version: (nonnull NSString *) version)

RCT_EXTERN_METHOD(setEmail: (NSString *) email)

RCT_EXTERN_METHOD(getEmail: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

RCT_EXTERN_METHOD(setUserId: (NSString *) userId)

RCT_EXTERN_METHOD(getUserId: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

RCT_EXTERN_METHOD(disableDeviceForAllUsers)

RCT_EXTERN_METHOD(setInAppShowResponse: (nonnull NSNumber *) inAppShowResponse)

RCT_EXTERN_METHOD(getLastPushPayload: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

RCT_EXTERN_METHOD(getAttributionInfo: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

RCT_EXTERN_METHOD(setAttributionInfo: (NSDictionary *) attributionInfo)

RCT_EXTERN_METHOD(trackPushOpenWithCampaignId: (nonnull NSNumber *) campaignId
                  templateId: (nonnull NSNumber *) templateId
                  messageId: (NSString *) messageId
                  appAlreadyRunning: (BOOL) appAlreadyRunning
                  dataFields: (NSDictionary *) dataFields)

RCT_EXTERN_METHOD(trackPurchase: (nonnull NSNumber *) total
                  items: (NSArray *) items
                  dataFields: (NSDictionary *) dataFields)

RCT_EXTERN_METHOD(trackInAppOpen: (NSString *) messageId
                  location: (nonnull NSNumber *) location)

RCT_EXTERN_METHOD(trackInAppClick: (nonnull NSString *) messageId
                  location: (nonnull NSNumber *) location
                  clickedUrl: (nonnull NSString *) clickedUrl)

RCT_EXTERN_METHOD(trackInAppClose: (nonnull NSString *) messageId
                  location: (nonnull NSNumber *) location
                  source: (nonnull NSNumber *) source
                  clickedUrl: (nonnull NSString *) clickedUrl)

RCT_EXTERN_METHOD(inAppConsume: (nonnull NSString *) messageId
                  location: (nonnull NSNumber *) location
                  source: (nonnull NSNumber *) source)

RCT_EXTERN_METHOD(trackEvent: (nonnull NSString *) name
                  dataFields: (NSDictionary *) dataFields)

RCT_EXTERN_METHOD(updateUser: (nonnull NSDictionary *) dataFields
                  mergeNestedObjects: (BOOL) mergeNestedObjects)

RCT_EXTERN_METHOD(updateEmail: (nonnull NSString *) email)

RCT_EXTERN_METHOD(handleAppLink: (nonnull NSString *) appLink
                  resolver: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

RCT_EXTERN_METHOD(getInAppMessages: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

RCT_EXTERN_METHOD(getInboxMessages: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

RCT_EXTERN_METHOD(getUnreadInboxMessagesCount: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

RCT_EXTERN_METHOD(showMessage: (nonnull NSString *) messageId
                  consume: (nonnull BOOL) consume
                  resolver: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject)

RCT_EXTERN_METHOD(removeMessage: (nonnull NSString *) messageId
                  location: (nonnull NSNumber *) location
                  source: (nonnull NSNumber *) source)

RCT_EXTERN_METHOD(setReadForMessage: (nonnull NSString *) messageId
                  read: (BOOL) read)

RCT_EXTERN_METHOD(updateSubscriptions: (NSArray *) emailListIds
                  unsubscribedChannelIds: (NSArray *) unsubscribedChannelIds
                  unsubscribedMessageTypeIds: (NSArray *) unsubscribedMessageTypeIds
                  subscribedMessageTypeIds: (NSArray *) subscribedMessageTypeIds
                  campaignId: (NSNumber *) campaignId
                  templateId: (NSNumber *) templateId)

@end
