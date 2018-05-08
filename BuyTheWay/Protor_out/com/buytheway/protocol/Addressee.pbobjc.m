// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: com/buytheway/protocol/addressee.proto

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

 #import "com/buytheway/protocol/Addressee.pbobjc.h"
 #import "com/buytheway/protocol/Common.pbobjc.h"
 #import "com/buytheway/protocol/Business.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - AddresseeRoot

@implementation AddresseeRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - AddresseeRoot_FileDescriptor

static GPBFileDescriptor *AddresseeRoot_FileDescriptor(void) {
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

#pragma mark - UserCommonAddresseeSaveRequest

@implementation UserCommonAddresseeSaveRequest

@dynamic hasAddressee, addressee;

typedef struct UserCommonAddresseeSaveRequest__storage_ {
  uint32_t _has_storage_[1];
  AddresseeInfo *addressee;
} UserCommonAddresseeSaveRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "addressee",
        .dataTypeSpecific.className = GPBStringifySymbol(AddresseeInfo),
        .number = UserCommonAddresseeSaveRequest_FieldNumber_Addressee,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(UserCommonAddresseeSaveRequest__storage_, addressee),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[UserCommonAddresseeSaveRequest class]
                                     rootClass:[AddresseeRoot class]
                                          file:AddresseeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(UserCommonAddresseeSaveRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetUserAddresseeListRequest

@implementation GetUserAddresseeListRequest

@dynamic hasReq, req;

typedef struct GetUserAddresseeListRequest__storage_ {
  uint32_t _has_storage_[1];
  PageDataRequest *req;
} GetUserAddresseeListRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "req",
        .dataTypeSpecific.className = GPBStringifySymbol(PageDataRequest),
        .number = GetUserAddresseeListRequest_FieldNumber_Req,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetUserAddresseeListRequest__storage_, req),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetUserAddresseeListRequest class]
                                     rootClass:[AddresseeRoot class]
                                          file:AddresseeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetUserAddresseeListRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetUserAddresseeListResponse

@implementation GetUserAddresseeListResponse

@dynamic addresseeArray, addresseeArray_Count;

typedef struct GetUserAddresseeListResponse__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *addresseeArray;
} GetUserAddresseeListResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "addresseeArray",
        .dataTypeSpecific.className = GPBStringifySymbol(AddresseeInfo),
        .number = GetUserAddresseeListResponse_FieldNumber_AddresseeArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GetUserAddresseeListResponse__storage_, addresseeArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetUserAddresseeListResponse class]
                                     rootClass:[AddresseeRoot class]
                                          file:AddresseeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetUserAddresseeListResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - DeleteUserAddresseeRequest

@implementation DeleteUserAddresseeRequest

@dynamic addresseeId;

typedef struct DeleteUserAddresseeRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *addresseeId;
} DeleteUserAddresseeRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "addresseeId",
        .dataTypeSpecific.className = NULL,
        .number = DeleteUserAddresseeRequest_FieldNumber_AddresseeId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(DeleteUserAddresseeRequest__storage_, addresseeId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[DeleteUserAddresseeRequest class]
                                     rootClass:[AddresseeRoot class]
                                          file:AddresseeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(DeleteUserAddresseeRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\013\000";
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