// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: com/buytheway/protocol/common.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "com/buytheway/protocol/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - CommonRoot

@implementation CommonRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - CommonRoot_FileDescriptor

static GPBFileDescriptor *CommonRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"com.buytheway.protocol"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum MesCode

GPBEnumDescriptor *MesCode_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "UnknownMesCode\000MesSpaceFull\000MesCancelSel"
        "ltriptask\000MesPriceLow\000";
    static const int32_t values[] = {
        MesCode_UnknownMesCode,
        MesCode_MesSpaceFull,
        MesCode_MesCancelSelltriptask,
        MesCode_MesPriceLow,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(MesCode)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:MesCode_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL MesCode_IsValidValue(int32_t value__) {
  switch (value__) {
    case MesCode_UnknownMesCode:
    case MesCode_MesSpaceFull:
    case MesCode_MesCancelSelltriptask:
    case MesCode_MesPriceLow:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum YesOrNo

GPBEnumDescriptor *YesOrNo_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "No\000Yes\000";
    static const int32_t values[] = {
        YesOrNo_No,
        YesOrNo_Yes,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(YesOrNo)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:YesOrNo_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL YesOrNo_IsValidValue(int32_t value__) {
  switch (value__) {
    case YesOrNo_No:
    case YesOrNo_Yes:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - RetCode

@implementation RetCode

@dynamic code;
@dynamic msg;

typedef struct RetCode__storage_ {
  uint32_t _has_storage_[1];
  int32_t code;
  NSString *msg;
} RetCode__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "code",
        .dataTypeSpecific.className = NULL,
        .number = RetCode_FieldNumber_Code,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RetCode__storage_, code),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "msg",
        .dataTypeSpecific.className = NULL,
        .number = RetCode_FieldNumber_Msg,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RetCode__storage_, msg),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RetCode class]
                                     rootClass:[CommonRoot class]
                                          file:CommonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RetCode__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BaseResponse

@implementation BaseResponse

@dynamic hasRetCode, retCode;

typedef struct BaseResponse__storage_ {
  uint32_t _has_storage_[1];
  RetCode *retCode;
} BaseResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "retCode",
        .dataTypeSpecific.className = GPBStringifySymbol(RetCode),
        .number = BaseResponse_FieldNumber_RetCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BaseResponse__storage_, retCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BaseResponse class]
                                     rootClass:[CommonRoot class]
                                          file:CommonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BaseResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\007\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PageDataRequest

@implementation PageDataRequest

@dynamic currentPage;
@dynamic pageSize;

typedef struct PageDataRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t currentPage;
  int32_t pageSize;
} PageDataRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "currentPage",
        .dataTypeSpecific.className = NULL,
        .number = PageDataRequest_FieldNumber_CurrentPage,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PageDataRequest__storage_, currentPage),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pageSize",
        .dataTypeSpecific.className = NULL,
        .number = PageDataRequest_FieldNumber_PageSize,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PageDataRequest__storage_, pageSize),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PageDataRequest class]
                                     rootClass:[CommonRoot class]
                                          file:CommonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PageDataRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\013\000\002\010\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - EncryptedPack

@implementation EncryptedPack

@dynamic len;
@dynamic packContent;

typedef struct EncryptedPack__storage_ {
  uint32_t _has_storage_[1];
  NSData *packContent;
  int64_t len;
} EncryptedPack__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "len",
        .dataTypeSpecific.className = NULL,
        .number = EncryptedPack_FieldNumber_Len,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(EncryptedPack__storage_, len),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "packContent",
        .dataTypeSpecific.className = NULL,
        .number = EncryptedPack_FieldNumber_PackContent,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(EncryptedPack__storage_, packContent),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[EncryptedPack class]
                                     rootClass:[CommonRoot class]
                                          file:CommonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(EncryptedPack__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\002\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)