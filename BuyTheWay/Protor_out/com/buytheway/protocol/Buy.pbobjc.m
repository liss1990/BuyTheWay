// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: com/buytheway/protocol/buy.proto

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

 #import "com/buytheway/protocol/Buy.pbobjc.h"
 #import "com/buytheway/protocol/Common.pbobjc.h"
 #import "com/buytheway/protocol/Business.pbobjc.h"
 #import "com/buytheway/protocol/Amount.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - BuyRoot

@implementation BuyRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - BuyRoot_FileDescriptor

static GPBFileDescriptor *BuyRoot_FileDescriptor(void) {
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

#pragma mark - BuyTripTaskRequest

@implementation BuyTripTaskRequest

@dynamic hasTaskInfo, taskInfo;

typedef struct BuyTripTaskRequest__storage_ {
  uint32_t _has_storage_[1];
  BuyTaskInfo *taskInfo;
} BuyTripTaskRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "taskInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(BuyTaskInfo),
        .number = BuyTripTaskRequest_FieldNumber_TaskInfo,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BuyTripTaskRequest__storage_, taskInfo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BuyTripTaskRequest class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BuyTripTaskRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\010\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BuyTripTaskResponse

@implementation BuyTripTaskResponse

@dynamic hasRetCode, retCode;
@dynamic buyId;

typedef struct BuyTripTaskResponse__storage_ {
  uint32_t _has_storage_[1];
  RetCode *retCode;
  NSString *buyId;
} BuyTripTaskResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "retCode",
        .dataTypeSpecific.className = GPBStringifySymbol(RetCode),
        .number = BuyTripTaskResponse_FieldNumber_RetCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BuyTripTaskResponse__storage_, retCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "buyId",
        .dataTypeSpecific.className = NULL,
        .number = BuyTripTaskResponse_FieldNumber_BuyId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BuyTripTaskResponse__storage_, buyId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BuyTripTaskResponse class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BuyTripTaskResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\007\000\002\005\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetMatchSaleTaskRequest

@implementation GetMatchSaleTaskRequest

@dynamic buyId;

typedef struct GetMatchSaleTaskRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *buyId;
} GetMatchSaleTaskRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "buyId",
        .dataTypeSpecific.className = NULL,
        .number = GetMatchSaleTaskRequest_FieldNumber_BuyId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetMatchSaleTaskRequest__storage_, buyId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetMatchSaleTaskRequest class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetMatchSaleTaskRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\002\005\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetMatchSaleTaskResponse

@implementation GetMatchSaleTaskResponse

@dynamic hasRetCode, retCode;
@dynamic marrySellTripTaskArray, marrySellTripTaskArray_Count;

typedef struct GetMatchSaleTaskResponse__storage_ {
  uint32_t _has_storage_[1];
  RetCode *retCode;
  NSMutableArray *marrySellTripTaskArray;
} GetMatchSaleTaskResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "retCode",
        .dataTypeSpecific.className = GPBStringifySymbol(RetCode),
        .number = GetMatchSaleTaskResponse_FieldNumber_RetCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetMatchSaleTaskResponse__storage_, retCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "marrySellTripTaskArray",
        .dataTypeSpecific.className = GPBStringifySymbol(SellTripTask),
        .number = GetMatchSaleTaskResponse_FieldNumber_MarrySellTripTaskArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GetMatchSaleTaskResponse__storage_, marrySellTripTaskArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetMatchSaleTaskResponse class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetMatchSaleTaskResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\007\000\002\000marrySellTripTask\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetSellTripTaskListRequest

@implementation GetSellTripTaskListRequest

@dynamic hasReq, req;

typedef struct GetSellTripTaskListRequest__storage_ {
  uint32_t _has_storage_[1];
  PageDataRequest *req;
} GetSellTripTaskListRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "req",
        .dataTypeSpecific.className = GPBStringifySymbol(PageDataRequest),
        .number = GetSellTripTaskListRequest_FieldNumber_Req,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetSellTripTaskListRequest__storage_, req),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetSellTripTaskListRequest class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetSellTripTaskListRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetSellTripTaskListRequestRespons

@implementation GetSellTripTaskListRequestRespons

@dynamic hasRetCode, retCode;
@dynamic taskListArray, taskListArray_Count;

typedef struct GetSellTripTaskListRequestRespons__storage_ {
  uint32_t _has_storage_[1];
  RetCode *retCode;
  NSMutableArray *taskListArray;
} GetSellTripTaskListRequestRespons__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "retCode",
        .dataTypeSpecific.className = GPBStringifySymbol(RetCode),
        .number = GetSellTripTaskListRequestRespons_FieldNumber_RetCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetSellTripTaskListRequestRespons__storage_, retCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "taskListArray",
        .dataTypeSpecific.className = GPBStringifySymbol(BuyTaskInfo),
        .number = GetSellTripTaskListRequestRespons_FieldNumber_TaskListArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GetSellTripTaskListRequestRespons__storage_, taskListArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetSellTripTaskListRequestRespons class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetSellTripTaskListRequestRespons__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\007\000\002\000taskList\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BuyMarrySellTripTaskRequest

@implementation BuyMarrySellTripTaskRequest

@dynamic sellTripTaskid;
@dynamic buyUserBizId;

typedef struct BuyMarrySellTripTaskRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *sellTripTaskid;
  NSString *buyUserBizId;
} BuyMarrySellTripTaskRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "sellTripTaskid",
        .dataTypeSpecific.className = NULL,
        .number = BuyMarrySellTripTaskRequest_FieldNumber_SellTripTaskid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BuyMarrySellTripTaskRequest__storage_, sellTripTaskid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "buyUserBizId",
        .dataTypeSpecific.className = NULL,
        .number = BuyMarrySellTripTaskRequest_FieldNumber_BuyUserBizId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BuyMarrySellTripTaskRequest__storage_, buyUserBizId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BuyMarrySellTripTaskRequest class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BuyMarrySellTripTaskRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\016\000\002\014\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BuyMarrySellTripTaskRespons

@implementation BuyMarrySellTripTaskRespons

@dynamic hasRetCode, retCode;
@dynamic marrySellTripTaskId;

typedef struct BuyMarrySellTripTaskRespons__storage_ {
  uint32_t _has_storage_[1];
  RetCode *retCode;
  NSString *marrySellTripTaskId;
} BuyMarrySellTripTaskRespons__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "retCode",
        .dataTypeSpecific.className = GPBStringifySymbol(RetCode),
        .number = BuyMarrySellTripTaskRespons_FieldNumber_RetCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BuyMarrySellTripTaskRespons__storage_, retCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "marrySellTripTaskId",
        .dataTypeSpecific.className = NULL,
        .number = BuyMarrySellTripTaskRespons_FieldNumber_MarrySellTripTaskId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BuyMarrySellTripTaskRespons__storage_, marrySellTripTaskId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BuyMarrySellTripTaskRespons class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BuyMarrySellTripTaskRespons__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\007\000\002\023\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetBuyOrderInfoRequest

@implementation GetBuyOrderInfoRequest

@dynamic orderId;

typedef struct GetBuyOrderInfoRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *orderId;
} GetBuyOrderInfoRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "orderId",
        .dataTypeSpecific.className = NULL,
        .number = GetBuyOrderInfoRequest_FieldNumber_OrderId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetBuyOrderInfoRequest__storage_, orderId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetBuyOrderInfoRequest class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetBuyOrderInfoRequest__storage_)
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

#pragma mark - GetBuyOrderInfoResponse

@implementation GetBuyOrderInfoResponse

@dynamic hasRetCode, retCode;
@dynamic hasOrderInfo, orderInfo;
@dynamic mes;

typedef struct GetBuyOrderInfoResponse__storage_ {
  uint32_t _has_storage_[1];
  RetCode *retCode;
  OrderInfo *orderInfo;
  NSString *mes;
} GetBuyOrderInfoResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "retCode",
        .dataTypeSpecific.className = GPBStringifySymbol(RetCode),
        .number = GetBuyOrderInfoResponse_FieldNumber_RetCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetBuyOrderInfoResponse__storage_, retCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "orderInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(OrderInfo),
        .number = GetBuyOrderInfoResponse_FieldNumber_OrderInfo,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GetBuyOrderInfoResponse__storage_, orderInfo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "mes",
        .dataTypeSpecific.className = NULL,
        .number = GetBuyOrderInfoResponse_FieldNumber_Mes,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GetBuyOrderInfoResponse__storage_, mes),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetBuyOrderInfoResponse class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetBuyOrderInfoResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\007\000\002\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BuyTaskInfo

@implementation BuyTaskInfo

@dynamic id_p;
@dynamic hasBuySpace, buySpace;
@dynamic spaceImageArray, spaceImageArray_Count;
@dynamic hasStartAddresseeInfo, startAddresseeInfo;
@dynamic hasEndAddressInfo, endAddressInfo;
@dynamic deadLineTime;
@dynamic budgetMoney;

typedef struct BuyTaskInfo__storage_ {
  uint32_t _has_storage_[1];
  int32_t deadLineTime;
  NSString *id_p;
  SpaceInfo *buySpace;
  NSMutableArray *spaceImageArray;
  AddresseeInfo *startAddresseeInfo;
  AddresseeInfo *endAddressInfo;
  double budgetMoney;
} BuyTaskInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = BuyTaskInfo_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BuyTaskInfo__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "buySpace",
        .dataTypeSpecific.className = GPBStringifySymbol(SpaceInfo),
        .number = BuyTaskInfo_FieldNumber_BuySpace,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BuyTaskInfo__storage_, buySpace),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "spaceImageArray",
        .dataTypeSpecific.className = NULL,
        .number = BuyTaskInfo_FieldNumber_SpaceImageArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(BuyTaskInfo__storage_, spaceImageArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "startAddresseeInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(AddresseeInfo),
        .number = BuyTaskInfo_FieldNumber_StartAddresseeInfo,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(BuyTaskInfo__storage_, startAddresseeInfo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "endAddressInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(AddresseeInfo),
        .number = BuyTaskInfo_FieldNumber_EndAddressInfo,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(BuyTaskInfo__storage_, endAddressInfo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "deadLineTime",
        .dataTypeSpecific.className = NULL,
        .number = BuyTaskInfo_FieldNumber_DeadLineTime,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(BuyTaskInfo__storage_, deadLineTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "budgetMoney",
        .dataTypeSpecific.className = NULL,
        .number = BuyTaskInfo_FieldNumber_BudgetMoney,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(BuyTaskInfo__storage_, budgetMoney),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeDouble,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BuyTaskInfo class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BuyTaskInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\006\002\010\000\003\000spaceImage\000\004\022\000\005\016\000\006\014\000\007\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - SellTripTask

@implementation SellTripTask

@dynamic tripTaskid;
@dynamic hasStartAddress, startAddress;
@dynamic hasEndAddressInfo, endAddressInfo;
@dynamic beginTime;
@dynamic endTime;
@dynamic hasConsignSpace, consignSpace;
@dynamic hasHandbagSpace, handbagSpace;
@dynamic orderId;

typedef struct SellTripTask__storage_ {
  uint32_t _has_storage_[1];
  NSString *tripTaskid;
  AddressInfo *startAddress;
  AddresseeInfo *endAddressInfo;
  SpaceInfo *consignSpace;
  SpaceInfo *handbagSpace;
  NSString *orderId;
  int64_t beginTime;
  int64_t endTime;
} SellTripTask__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "tripTaskid",
        .dataTypeSpecific.className = NULL,
        .number = SellTripTask_FieldNumber_TripTaskid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SellTripTask__storage_, tripTaskid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "startAddress",
        .dataTypeSpecific.className = GPBStringifySymbol(AddressInfo),
        .number = SellTripTask_FieldNumber_StartAddress,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SellTripTask__storage_, startAddress),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "endAddressInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(AddresseeInfo),
        .number = SellTripTask_FieldNumber_EndAddressInfo,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(SellTripTask__storage_, endAddressInfo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "beginTime",
        .dataTypeSpecific.className = NULL,
        .number = SellTripTask_FieldNumber_BeginTime,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(SellTripTask__storage_, beginTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "endTime",
        .dataTypeSpecific.className = NULL,
        .number = SellTripTask_FieldNumber_EndTime,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(SellTripTask__storage_, endTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "consignSpace",
        .dataTypeSpecific.className = GPBStringifySymbol(SpaceInfo),
        .number = SellTripTask_FieldNumber_ConsignSpace,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(SellTripTask__storage_, consignSpace),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "handbagSpace",
        .dataTypeSpecific.className = GPBStringifySymbol(SpaceInfo),
        .number = SellTripTask_FieldNumber_HandbagSpace,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(SellTripTask__storage_, handbagSpace),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "orderId",
        .dataTypeSpecific.className = NULL,
        .number = SellTripTask_FieldNumber_OrderId,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(SellTripTask__storage_, orderId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SellTripTask class]
                                     rootClass:[BuyRoot class]
                                          file:BuyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SellTripTask__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\010\001\n\000\002\014\000\003\016\000\004\t\000\005\007\000\006\014\000\007\014\000\010\007\000";
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