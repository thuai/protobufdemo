//
//  ViewController.m
//  protobufDemo
//
//  Created by thuai on 15/4/12.
//  Copyright (c) 2015年 thuai Technology Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "GetUserInfoAPI.h"
#import "protobuf/User.pb.h"
#import "Base64.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *dataStr = @"Eo4BCCwQBBoETW9tbyIvaHR0cDovL3BpYzIub29vcGljLmNvbS8wMS8yNi82MS84M2JPT09QSUM3Mi5qcGc6EDEyMzQ1Njc4MkBxcS5jb21CCzE4ODg4ODg4ODg4ShJFRUFTQUtLTDEyMTIyMTIxMjFQAloG5bm/5LicYgbmt7HlnLNyDOaIkeimgeWIhuS6qw==";
    
    NSData *decodeDate = [NSData dataWithBase64EncodedString:dataStr];
    NSLog(@"111- %@", decodeDate);
    
//    GetInfoRsp *info = [GetInfoRsp parseFromData:decodeDate];
//    NSLog(@"rep %@", info);
//
//    NSString *str = [[NSString alloc] initWithData:decodeDate encoding:NSUTF8StringEncoding];
//    NSLog(@"111- %@", str);
//    NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:dataStr options:0];
//    NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
//    NSLog(@"%@", decodedString);
//    
//    NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:base64String options:0];
//    NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
//    NSLog(@"%@", decodedString);
    
    GetUserInfoAPI *getUserInfoAPI = [[GetUserInfoAPI alloc] init];
    [getUserInfoAPI startWithCompletionBlockWithSuccess:^(YTKBaseRequest *request) {
        NSLog(@"request");
        
    } failure:^(YTKBaseRequest *request) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
