//
//  GetUserInfoAPI.m
//  protobufDemo
//
//  Created by thuai on 15/4/19.
//  Copyright (c) 2015年 thuai Technology Co., Ltd. All rights reserved.
//

#import "GetUserInfoAPI.h"

@interface GetUserInfoAPI ()
@property (copy, nonatomic) NSString *command;
@end

@implementation GetUserInfoAPI

- (id)requestArgument
{
    return @{
             @"p": @"{\"uid\":\"testuid\",\"command\":\"getUser\"}"
             };
}

- (NSString *)requestUrl
{
    return [NSString stringWithFormat:@"http://119.29.81.103/getUser.cgi"];
}

- (YTKRequestMethod)requestMethod
{
    return YTKRequestMethodGet;
}

@end
