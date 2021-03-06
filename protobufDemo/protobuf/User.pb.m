// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "User.pb.h"

@implementation UserRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [UserRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    [BaseRoot registerAllExtensions:registry];
    extensionRegistry = [registry retain];
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface RegisterReq ()
@property (retain) NSString* uid;
@property (retain) UserBaseInfo* regInfo;
@end

@implementation RegisterReq

- (BOOL) hasUid {
  return !!hasUid_;
}
- (void) setHasUid:(BOOL) value {
  hasUid_ = !!value;
}
@synthesize uid;
- (BOOL) hasRegInfo {
  return !!hasRegInfo_;
}
- (void) setHasRegInfo:(BOOL) value {
  hasRegInfo_ = !!value;
}
@synthesize regInfo;
- (void) dealloc {
  self.uid = nil;
  self.regInfo = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.uid = @"";
    self.regInfo = [UserBaseInfo defaultInstance];
  }
  return self;
}
static RegisterReq* defaultRegisterReqInstance = nil;
+ (void) initialize {
  if (self == [RegisterReq class]) {
    defaultRegisterReqInstance = [[RegisterReq alloc] init];
  }
}
+ (RegisterReq*) defaultInstance {
  return defaultRegisterReqInstance;
}
- (RegisterReq*) defaultInstance {
  return defaultRegisterReqInstance;
}
- (BOOL) isInitialized {
  if (!self.hasUid) {
    return NO;
  }
  if (!self.hasRegInfo) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasUid) {
    [output writeString:1 value:self.uid];
  }
  if (self.hasRegInfo) {
    [output writeMessage:2 value:self.regInfo];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasUid) {
    size += computeStringSize(1, self.uid);
  }
  if (self.hasRegInfo) {
    size += computeMessageSize(2, self.regInfo);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (RegisterReq*) parseFromData:(NSData*) data {
  return (RegisterReq*)[[[RegisterReq builder] mergeFromData:data] build];
}
+ (RegisterReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (RegisterReq*)[[[RegisterReq builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (RegisterReq*) parseFromInputStream:(NSInputStream*) input {
  return (RegisterReq*)[[[RegisterReq builder] mergeFromInputStream:input] build];
}
+ (RegisterReq*) parseDelimitedFromInputStream:(NSInputStream*) input {
  return (RegisterReq*)[[[RegisterReq builder] mergeDelimitedFromInputStream:input] build];
}
+ (RegisterReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (RegisterReq*)[[[RegisterReq builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (RegisterReq*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (RegisterReq*)[[[RegisterReq builder] mergeFromCodedInputStream:input] build];
}
+ (RegisterReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (RegisterReq*)[[[RegisterReq builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (RegisterReq_Builder*) builder {
  return [[[RegisterReq_Builder alloc] init] autorelease];
}
+ (RegisterReq_Builder*) builderWithPrototype:(RegisterReq*) prototype {
  return [[RegisterReq builder] mergeFrom:prototype];
}
- (RegisterReq_Builder*) builder {
  return [RegisterReq builder];
}
@end

@interface RegisterReq_Builder()
@property (retain) RegisterReq* result;
@end

@implementation RegisterReq_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[RegisterReq alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (RegisterReq_Builder*) clear {
  self.result = [[[RegisterReq alloc] init] autorelease];
  return self;
}
- (RegisterReq_Builder*) clone {
  return [RegisterReq builderWithPrototype:result];
}
- (RegisterReq*) defaultInstance {
  return [RegisterReq defaultInstance];
}
- (RegisterReq*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (RegisterReq*) buildPartial {
  RegisterReq* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (RegisterReq_Builder*) mergeFrom:(RegisterReq*) other {
  if (other == [RegisterReq defaultInstance]) {
    return self;
  }
  if (other.hasUid) {
    [self setUid:other.uid];
  }
  if (other.hasRegInfo) {
    [self mergeRegInfo:other.regInfo];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (RegisterReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (RegisterReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setUid:[input readString]];
        break;
      }
      case 18: {
        UserBaseInfo_Builder* subBuilder = [UserBaseInfo builder];
        if (self.hasRegInfo) {
          [subBuilder mergeFrom:self.regInfo];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setRegInfo:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasUid {
  return result.hasUid;
}
- (NSString*) uid {
  return result.uid;
}
- (RegisterReq_Builder*) setUid:(NSString*) value {
  result.hasUid = YES;
  result.uid = value;
  return self;
}
- (RegisterReq_Builder*) clearUid {
  result.hasUid = NO;
  result.uid = @"";
  return self;
}
- (BOOL) hasRegInfo {
  return result.hasRegInfo;
}
- (UserBaseInfo*) regInfo {
  return result.regInfo;
}
- (RegisterReq_Builder*) setRegInfo:(UserBaseInfo*) value {
  result.hasRegInfo = YES;
  result.regInfo = value;
  return self;
}
- (RegisterReq_Builder*) setRegInfoBuilder:(UserBaseInfo_Builder*) builderForValue {
  return [self setRegInfo:[builderForValue build]];
}
- (RegisterReq_Builder*) mergeRegInfo:(UserBaseInfo*) value {
  if (result.hasRegInfo &&
      result.regInfo != [UserBaseInfo defaultInstance]) {
    result.regInfo =
      [[[UserBaseInfo builderWithPrototype:result.regInfo] mergeFrom:value] buildPartial];
  } else {
    result.regInfo = value;
  }
  result.hasRegInfo = YES;
  return self;
}
- (RegisterReq_Builder*) clearRegInfo {
  result.hasRegInfo = NO;
  result.regInfo = [UserBaseInfo defaultInstance];
  return self;
}
@end

@interface RegisterRsp ()
@property int32_t retcode;
@property (retain) NSString* uid;
@end

@implementation RegisterRsp

- (BOOL) hasRetcode {
  return !!hasRetcode_;
}
- (void) setHasRetcode:(BOOL) value {
  hasRetcode_ = !!value;
}
@synthesize retcode;
- (BOOL) hasUid {
  return !!hasUid_;
}
- (void) setHasUid:(BOOL) value {
  hasUid_ = !!value;
}
@synthesize uid;
- (void) dealloc {
  self.uid = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.retcode = 0;
    self.uid = @"";
  }
  return self;
}
static RegisterRsp* defaultRegisterRspInstance = nil;
+ (void) initialize {
  if (self == [RegisterRsp class]) {
    defaultRegisterRspInstance = [[RegisterRsp alloc] init];
  }
}
+ (RegisterRsp*) defaultInstance {
  return defaultRegisterRspInstance;
}
- (RegisterRsp*) defaultInstance {
  return defaultRegisterRspInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasRetcode) {
    [output writeSInt32:1 value:self.retcode];
  }
  if (self.hasUid) {
    [output writeString:2 value:self.uid];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasRetcode) {
    size += computeSInt32Size(1, self.retcode);
  }
  if (self.hasUid) {
    size += computeStringSize(2, self.uid);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (RegisterRsp*) parseFromData:(NSData*) data {
  return (RegisterRsp*)[[[RegisterRsp builder] mergeFromData:data] build];
}
+ (RegisterRsp*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (RegisterRsp*)[[[RegisterRsp builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (RegisterRsp*) parseFromInputStream:(NSInputStream*) input {
  return (RegisterRsp*)[[[RegisterRsp builder] mergeFromInputStream:input] build];
}
+ (RegisterRsp*) parseDelimitedFromInputStream:(NSInputStream*) input {
  return (RegisterRsp*)[[[RegisterRsp builder] mergeDelimitedFromInputStream:input] build];
}
+ (RegisterRsp*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (RegisterRsp*)[[[RegisterRsp builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (RegisterRsp*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (RegisterRsp*)[[[RegisterRsp builder] mergeFromCodedInputStream:input] build];
}
+ (RegisterRsp*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (RegisterRsp*)[[[RegisterRsp builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (RegisterRsp_Builder*) builder {
  return [[[RegisterRsp_Builder alloc] init] autorelease];
}
+ (RegisterRsp_Builder*) builderWithPrototype:(RegisterRsp*) prototype {
  return [[RegisterRsp builder] mergeFrom:prototype];
}
- (RegisterRsp_Builder*) builder {
  return [RegisterRsp builder];
}
@end

@interface RegisterRsp_Builder()
@property (retain) RegisterRsp* result;
@end

@implementation RegisterRsp_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[RegisterRsp alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (RegisterRsp_Builder*) clear {
  self.result = [[[RegisterRsp alloc] init] autorelease];
  return self;
}
- (RegisterRsp_Builder*) clone {
  return [RegisterRsp builderWithPrototype:result];
}
- (RegisterRsp*) defaultInstance {
  return [RegisterRsp defaultInstance];
}
- (RegisterRsp*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (RegisterRsp*) buildPartial {
  RegisterRsp* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (RegisterRsp_Builder*) mergeFrom:(RegisterRsp*) other {
  if (other == [RegisterRsp defaultInstance]) {
    return self;
  }
  if (other.hasRetcode) {
    [self setRetcode:other.retcode];
  }
  if (other.hasUid) {
    [self setUid:other.uid];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (RegisterRsp_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (RegisterRsp_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setRetcode:[input readSInt32]];
        break;
      }
      case 18: {
        [self setUid:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasRetcode {
  return result.hasRetcode;
}
- (int32_t) retcode {
  return result.retcode;
}
- (RegisterRsp_Builder*) setRetcode:(int32_t) value {
  result.hasRetcode = YES;
  result.retcode = value;
  return self;
}
- (RegisterRsp_Builder*) clearRetcode {
  result.hasRetcode = NO;
  result.retcode = 0;
  return self;
}
- (BOOL) hasUid {
  return result.hasUid;
}
- (NSString*) uid {
  return result.uid;
}
- (RegisterRsp_Builder*) setUid:(NSString*) value {
  result.hasUid = YES;
  result.uid = value;
  return self;
}
- (RegisterRsp_Builder*) clearUid {
  result.hasUid = NO;
  result.uid = @"";
  return self;
}
@end

@interface GetInfoReq ()
@property (retain) NSString* uid;
@end

@implementation GetInfoReq

- (BOOL) hasUid {
  return !!hasUid_;
}
- (void) setHasUid:(BOOL) value {
  hasUid_ = !!value;
}
@synthesize uid;
- (void) dealloc {
  self.uid = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.uid = @"";
  }
  return self;
}
static GetInfoReq* defaultGetInfoReqInstance = nil;
+ (void) initialize {
  if (self == [GetInfoReq class]) {
    defaultGetInfoReqInstance = [[GetInfoReq alloc] init];
  }
}
+ (GetInfoReq*) defaultInstance {
  return defaultGetInfoReqInstance;
}
- (GetInfoReq*) defaultInstance {
  return defaultGetInfoReqInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasUid) {
    [output writeString:1 value:self.uid];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasUid) {
    size += computeStringSize(1, self.uid);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (GetInfoReq*) parseFromData:(NSData*) data {
  return (GetInfoReq*)[[[GetInfoReq builder] mergeFromData:data] build];
}
+ (GetInfoReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetInfoReq*)[[[GetInfoReq builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (GetInfoReq*) parseFromInputStream:(NSInputStream*) input {
  return (GetInfoReq*)[[[GetInfoReq builder] mergeFromInputStream:input] build];
}
+ (GetInfoReq*) parseDelimitedFromInputStream:(NSInputStream*) input {
  return (GetInfoReq*)[[[GetInfoReq builder] mergeDelimitedFromInputStream:input] build];
}
+ (GetInfoReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetInfoReq*)[[[GetInfoReq builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetInfoReq*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (GetInfoReq*)[[[GetInfoReq builder] mergeFromCodedInputStream:input] build];
}
+ (GetInfoReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetInfoReq*)[[[GetInfoReq builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetInfoReq_Builder*) builder {
  return [[[GetInfoReq_Builder alloc] init] autorelease];
}
+ (GetInfoReq_Builder*) builderWithPrototype:(GetInfoReq*) prototype {
  return [[GetInfoReq builder] mergeFrom:prototype];
}
- (GetInfoReq_Builder*) builder {
  return [GetInfoReq builder];
}
@end

@interface GetInfoReq_Builder()
@property (retain) GetInfoReq* result;
@end

@implementation GetInfoReq_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[GetInfoReq alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (GetInfoReq_Builder*) clear {
  self.result = [[[GetInfoReq alloc] init] autorelease];
  return self;
}
- (GetInfoReq_Builder*) clone {
  return [GetInfoReq builderWithPrototype:result];
}
- (GetInfoReq*) defaultInstance {
  return [GetInfoReq defaultInstance];
}
- (GetInfoReq*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (GetInfoReq*) buildPartial {
  GetInfoReq* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (GetInfoReq_Builder*) mergeFrom:(GetInfoReq*) other {
  if (other == [GetInfoReq defaultInstance]) {
    return self;
  }
  if (other.hasUid) {
    [self setUid:other.uid];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (GetInfoReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (GetInfoReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setUid:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasUid {
  return result.hasUid;
}
- (NSString*) uid {
  return result.uid;
}
- (GetInfoReq_Builder*) setUid:(NSString*) value {
  result.hasUid = YES;
  result.uid = value;
  return self;
}
- (GetInfoReq_Builder*) clearUid {
  result.hasUid = NO;
  result.uid = @"";
  return self;
}
@end

@interface GetInfoRsp ()
@property int32_t retcode;
@property (retain) UserBaseInfo* regInfo;
@end

@implementation GetInfoRsp

- (BOOL) hasRetcode {
  return !!hasRetcode_;
}
- (void) setHasRetcode:(BOOL) value {
  hasRetcode_ = !!value;
}
@synthesize retcode;
- (BOOL) hasRegInfo {
  return !!hasRegInfo_;
}
- (void) setHasRegInfo:(BOOL) value {
  hasRegInfo_ = !!value;
}
@synthesize regInfo;
- (void) dealloc {
  self.regInfo = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.retcode = 0;
    self.regInfo = [UserBaseInfo defaultInstance];
  }
  return self;
}
static GetInfoRsp* defaultGetInfoRspInstance = nil;
+ (void) initialize {
  if (self == [GetInfoRsp class]) {
    defaultGetInfoRspInstance = [[GetInfoRsp alloc] init];
  }
}
+ (GetInfoRsp*) defaultInstance {
  return defaultGetInfoRspInstance;
}
- (GetInfoRsp*) defaultInstance {
  return defaultGetInfoRspInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasRetcode) {
    [output writeSInt32:1 value:self.retcode];
  }
  if (self.hasRegInfo) {
    [output writeMessage:2 value:self.regInfo];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasRetcode) {
    size += computeSInt32Size(1, self.retcode);
  }
  if (self.hasRegInfo) {
    size += computeMessageSize(2, self.regInfo);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (GetInfoRsp*) parseFromData:(NSData*) data {
  return (GetInfoRsp*)[[[GetInfoRsp builder] mergeFromData:data] build];
}
+ (GetInfoRsp*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetInfoRsp*)[[[GetInfoRsp builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (GetInfoRsp*) parseFromInputStream:(NSInputStream*) input {
  return (GetInfoRsp*)[[[GetInfoRsp builder] mergeFromInputStream:input] build];
}
+ (GetInfoRsp*) parseDelimitedFromInputStream:(NSInputStream*) input {
  return (GetInfoRsp*)[[[GetInfoRsp builder] mergeDelimitedFromInputStream:input] build];
}
+ (GetInfoRsp*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetInfoRsp*)[[[GetInfoRsp builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetInfoRsp*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (GetInfoRsp*)[[[GetInfoRsp builder] mergeFromCodedInputStream:input] build];
}
+ (GetInfoRsp*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetInfoRsp*)[[[GetInfoRsp builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetInfoRsp_Builder*) builder {
  return [[[GetInfoRsp_Builder alloc] init] autorelease];
}
+ (GetInfoRsp_Builder*) builderWithPrototype:(GetInfoRsp*) prototype {
  return [[GetInfoRsp builder] mergeFrom:prototype];
}
- (GetInfoRsp_Builder*) builder {
  return [GetInfoRsp builder];
}
@end

@interface GetInfoRsp_Builder()
@property (retain) GetInfoRsp* result;
@end

@implementation GetInfoRsp_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[GetInfoRsp alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (GetInfoRsp_Builder*) clear {
  self.result = [[[GetInfoRsp alloc] init] autorelease];
  return self;
}
- (GetInfoRsp_Builder*) clone {
  return [GetInfoRsp builderWithPrototype:result];
}
- (GetInfoRsp*) defaultInstance {
  return [GetInfoRsp defaultInstance];
}
- (GetInfoRsp*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (GetInfoRsp*) buildPartial {
  GetInfoRsp* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (GetInfoRsp_Builder*) mergeFrom:(GetInfoRsp*) other {
  if (other == [GetInfoRsp defaultInstance]) {
    return self;
  }
  if (other.hasRetcode) {
    [self setRetcode:other.retcode];
  }
  if (other.hasRegInfo) {
    [self mergeRegInfo:other.regInfo];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (GetInfoRsp_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (GetInfoRsp_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setRetcode:[input readSInt32]];
        break;
      }
      case 18: {
        UserBaseInfo_Builder* subBuilder = [UserBaseInfo builder];
        if (self.hasRegInfo) {
          [subBuilder mergeFrom:self.regInfo];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setRegInfo:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasRetcode {
  return result.hasRetcode;
}
- (int32_t) retcode {
  return result.retcode;
}
- (GetInfoRsp_Builder*) setRetcode:(int32_t) value {
  result.hasRetcode = YES;
  result.retcode = value;
  return self;
}
- (GetInfoRsp_Builder*) clearRetcode {
  result.hasRetcode = NO;
  result.retcode = 0;
  return self;
}
- (BOOL) hasRegInfo {
  return result.hasRegInfo;
}
- (UserBaseInfo*) regInfo {
  return result.regInfo;
}
- (GetInfoRsp_Builder*) setRegInfo:(UserBaseInfo*) value {
  result.hasRegInfo = YES;
  result.regInfo = value;
  return self;
}
- (GetInfoRsp_Builder*) setRegInfoBuilder:(UserBaseInfo_Builder*) builderForValue {
  return [self setRegInfo:[builderForValue build]];
}
- (GetInfoRsp_Builder*) mergeRegInfo:(UserBaseInfo*) value {
  if (result.hasRegInfo &&
      result.regInfo != [UserBaseInfo defaultInstance]) {
    result.regInfo =
      [[[UserBaseInfo builderWithPrototype:result.regInfo] mergeFrom:value] buildPartial];
  } else {
    result.regInfo = value;
  }
  result.hasRegInfo = YES;
  return self;
}
- (GetInfoRsp_Builder*) clearRegInfo {
  result.hasRegInfo = NO;
  result.regInfo = [UserBaseInfo defaultInstance];
  return self;
}
@end

