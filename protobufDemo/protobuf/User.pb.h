// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "ProtocolBuffers.h"

#import "Base.pb.h"

@class GetInfoReq;
@class GetInfoReq_Builder;
@class GetInfoRsp;
@class GetInfoRsp_Builder;
@class RegisterReq;
@class RegisterReq_Builder;
@class RegisterRsp;
@class RegisterRsp_Builder;
@class ReqHead;
@class ReqHead_Builder;
@class RspHead;
@class RspHead_Builder;
@class UserBaseInfo;
@class UserBaseInfo_Builder;

@interface UserRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

@interface RegisterReq : PBGeneratedMessage {
@private
  BOOL hasUid_:1;
  BOOL hasRegInfo_:1;
  NSString* uid;
  UserBaseInfo* regInfo;
}
- (BOOL) hasUid;
- (BOOL) hasRegInfo;
@property (readonly, retain) NSString* uid;
@property (readonly, retain) UserBaseInfo* regInfo;

+ (RegisterReq*) defaultInstance;
- (RegisterReq*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (RegisterReq_Builder*) builder;
+ (RegisterReq_Builder*) builder;
+ (RegisterReq_Builder*) builderWithPrototype:(RegisterReq*) prototype;

+ (RegisterReq*) parseFromData:(NSData*) data;
+ (RegisterReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (RegisterReq*) parseFromInputStream:(NSInputStream*) input;
+ (RegisterReq*) parseDelimitedFromInputStream:(NSInputStream*) input;
+ (RegisterReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (RegisterReq*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (RegisterReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface RegisterReq_Builder : PBGeneratedMessage_Builder {
@private
  RegisterReq* result;
}

- (RegisterReq*) defaultInstance;

- (RegisterReq_Builder*) clear;
- (RegisterReq_Builder*) clone;

- (RegisterReq*) build;
- (RegisterReq*) buildPartial;

- (RegisterReq_Builder*) mergeFrom:(RegisterReq*) other;
- (RegisterReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (RegisterReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasUid;
- (NSString*) uid;
- (RegisterReq_Builder*) setUid:(NSString*) value;
- (RegisterReq_Builder*) clearUid;

- (BOOL) hasRegInfo;
- (UserBaseInfo*) regInfo;
- (RegisterReq_Builder*) setRegInfo:(UserBaseInfo*) value;
- (RegisterReq_Builder*) setRegInfoBuilder:(UserBaseInfo_Builder*) builderForValue;
- (RegisterReq_Builder*) mergeRegInfo:(UserBaseInfo*) value;
- (RegisterReq_Builder*) clearRegInfo;
@end

@interface RegisterRsp : PBGeneratedMessage {
@private
  BOOL hasUid_:1;
  BOOL hasRetcode_:1;
  NSString* uid;
  int32_t retcode;
}
- (BOOL) hasRetcode;
- (BOOL) hasUid;
@property (readonly) int32_t retcode;
@property (readonly, retain) NSString* uid;

+ (RegisterRsp*) defaultInstance;
- (RegisterRsp*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (RegisterRsp_Builder*) builder;
+ (RegisterRsp_Builder*) builder;
+ (RegisterRsp_Builder*) builderWithPrototype:(RegisterRsp*) prototype;

+ (RegisterRsp*) parseFromData:(NSData*) data;
+ (RegisterRsp*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (RegisterRsp*) parseFromInputStream:(NSInputStream*) input;
+ (RegisterRsp*) parseDelimitedFromInputStream:(NSInputStream*) input;
+ (RegisterRsp*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (RegisterRsp*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (RegisterRsp*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface RegisterRsp_Builder : PBGeneratedMessage_Builder {
@private
  RegisterRsp* result;
}

- (RegisterRsp*) defaultInstance;

- (RegisterRsp_Builder*) clear;
- (RegisterRsp_Builder*) clone;

- (RegisterRsp*) build;
- (RegisterRsp*) buildPartial;

- (RegisterRsp_Builder*) mergeFrom:(RegisterRsp*) other;
- (RegisterRsp_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (RegisterRsp_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasRetcode;
- (int32_t) retcode;
- (RegisterRsp_Builder*) setRetcode:(int32_t) value;
- (RegisterRsp_Builder*) clearRetcode;

- (BOOL) hasUid;
- (NSString*) uid;
- (RegisterRsp_Builder*) setUid:(NSString*) value;
- (RegisterRsp_Builder*) clearUid;
@end

@interface GetInfoReq : PBGeneratedMessage {
@private
  BOOL hasUid_:1;
  NSString* uid;
}
- (BOOL) hasUid;
@property (readonly, retain) NSString* uid;

+ (GetInfoReq*) defaultInstance;
- (GetInfoReq*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (GetInfoReq_Builder*) builder;
+ (GetInfoReq_Builder*) builder;
+ (GetInfoReq_Builder*) builderWithPrototype:(GetInfoReq*) prototype;

+ (GetInfoReq*) parseFromData:(NSData*) data;
+ (GetInfoReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetInfoReq*) parseFromInputStream:(NSInputStream*) input;
+ (GetInfoReq*) parseDelimitedFromInputStream:(NSInputStream*) input;
+ (GetInfoReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetInfoReq*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (GetInfoReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface GetInfoReq_Builder : PBGeneratedMessage_Builder {
@private
  GetInfoReq* result;
}

- (GetInfoReq*) defaultInstance;

- (GetInfoReq_Builder*) clear;
- (GetInfoReq_Builder*) clone;

- (GetInfoReq*) build;
- (GetInfoReq*) buildPartial;

- (GetInfoReq_Builder*) mergeFrom:(GetInfoReq*) other;
- (GetInfoReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (GetInfoReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasUid;
- (NSString*) uid;
- (GetInfoReq_Builder*) setUid:(NSString*) value;
- (GetInfoReq_Builder*) clearUid;
@end

@interface GetInfoRsp : PBGeneratedMessage {
@private
  BOOL hasRegInfo_:1;
  BOOL hasRetcode_:1;
  UserBaseInfo* regInfo;
  int32_t retcode;
}
- (BOOL) hasRetcode;
- (BOOL) hasRegInfo;
@property (readonly) int32_t retcode;
@property (readonly, retain) UserBaseInfo* regInfo;

+ (GetInfoRsp*) defaultInstance;
- (GetInfoRsp*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (GetInfoRsp_Builder*) builder;
+ (GetInfoRsp_Builder*) builder;
+ (GetInfoRsp_Builder*) builderWithPrototype:(GetInfoRsp*) prototype;

+ (GetInfoRsp*) parseFromData:(NSData*) data;
+ (GetInfoRsp*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetInfoRsp*) parseFromInputStream:(NSInputStream*) input;
+ (GetInfoRsp*) parseDelimitedFromInputStream:(NSInputStream*) input;
+ (GetInfoRsp*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetInfoRsp*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (GetInfoRsp*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface GetInfoRsp_Builder : PBGeneratedMessage_Builder {
@private
  GetInfoRsp* result;
}

- (GetInfoRsp*) defaultInstance;

- (GetInfoRsp_Builder*) clear;
- (GetInfoRsp_Builder*) clone;

- (GetInfoRsp*) build;
- (GetInfoRsp*) buildPartial;

- (GetInfoRsp_Builder*) mergeFrom:(GetInfoRsp*) other;
- (GetInfoRsp_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (GetInfoRsp_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasRetcode;
- (int32_t) retcode;
- (GetInfoRsp_Builder*) setRetcode:(int32_t) value;
- (GetInfoRsp_Builder*) clearRetcode;

- (BOOL) hasRegInfo;
- (UserBaseInfo*) regInfo;
- (GetInfoRsp_Builder*) setRegInfo:(UserBaseInfo*) value;
- (GetInfoRsp_Builder*) setRegInfoBuilder:(UserBaseInfo_Builder*) builderForValue;
- (GetInfoRsp_Builder*) mergeRegInfo:(UserBaseInfo*) value;
- (GetInfoRsp_Builder*) clearRegInfo;
@end

