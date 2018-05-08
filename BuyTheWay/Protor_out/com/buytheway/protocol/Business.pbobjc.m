// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: com/buytheway/protocol/business.proto

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

 #import "com/buytheway/protocol/Business.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - BusinessRoot

@implementation BusinessRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - BusinessRoot_FileDescriptor

static GPBFileDescriptor *BusinessRoot_FileDescriptor(void) {
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

#pragma mark - Enum CardTypeEnum

GPBEnumDescriptor *CardTypeEnum_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "UnknownCardTypeCode\000Id\000Passport\000DrivingL"
        "icense\000";
    static const int32_t values[] = {
        CardTypeEnum_UnknownCardTypeCode,
        CardTypeEnum_Id,
        CardTypeEnum_Passport,
        CardTypeEnum_DrivingLicense,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(CardTypeEnum)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:CardTypeEnum_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL CardTypeEnum_IsValidValue(int32_t value__) {
  switch (value__) {
    case CardTypeEnum_UnknownCardTypeCode:
    case CardTypeEnum_Id:
    case CardTypeEnum_Passport:
    case CardTypeEnum_DrivingLicense:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum OrderStatus

GPBEnumDescriptor *OrderStatus_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "OrderStatusUnknown\000OrderStatusToBeConfir"
        "med\000OrderStatusRejected\000OrderStatusTobeP"
        "ayed\000OrderStatusPayed\000OrderStatusSalerGo"
        "tPack\000OrderStatusBuyerGotPack\000OrderStatu"
        "sDidcarded\000";
    static const int32_t values[] = {
        OrderStatus_OrderStatusUnknown,
        OrderStatus_OrderStatusToBeConfirmed,
        OrderStatus_OrderStatusRejected,
        OrderStatus_OrderStatusTobePayed,
        OrderStatus_OrderStatusPayed,
        OrderStatus_OrderStatusSalerGotPack,
        OrderStatus_OrderStatusBuyerGotPack,
        OrderStatus_OrderStatusDidcarded,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(OrderStatus)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:OrderStatus_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL OrderStatus_IsValidValue(int32_t value__) {
  switch (value__) {
    case OrderStatus_OrderStatusUnknown:
    case OrderStatus_OrderStatusToBeConfirmed:
    case OrderStatus_OrderStatusRejected:
    case OrderStatus_OrderStatusTobePayed:
    case OrderStatus_OrderStatusPayed:
    case OrderStatus_OrderStatusSalerGotPack:
    case OrderStatus_OrderStatusBuyerGotPack:
    case OrderStatus_OrderStatusDidcarded:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - PhoneNumber

@implementation PhoneNumber

@dynamic phonePre;
@dynamic phone;

typedef struct PhoneNumber__storage_ {
  uint32_t _has_storage_[1];
  NSString *phonePre;
  NSString *phone;
} PhoneNumber__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "phonePre",
        .dataTypeSpecific.className = NULL,
        .number = PhoneNumber_FieldNumber_PhonePre,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PhoneNumber__storage_, phonePre),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "phone",
        .dataTypeSpecific.className = NULL,
        .number = PhoneNumber_FieldNumber_Phone,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PhoneNumber__storage_, phone),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PhoneNumber class]
                                     rootClass:[BusinessRoot class]
                                          file:BusinessRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PhoneNumber__storage_)
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

#pragma mark - CityInfo

@implementation CityInfo

@dynamic country;
@dynamic provide;
@dynamic city;
@dynamic countryCode;
@dynamic provideCode;
@dynamic cityCode;

typedef struct CityInfo__storage_ {
  uint32_t _has_storage_[1];
  NSString *country;
  NSString *provide;
  NSString *city;
  NSString *countryCode;
  NSString *provideCode;
  NSString *cityCode;
} CityInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "country",
        .dataTypeSpecific.className = NULL,
        .number = CityInfo_FieldNumber_Country,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CityInfo__storage_, country),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "provide",
        .dataTypeSpecific.className = NULL,
        .number = CityInfo_FieldNumber_Provide,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(CityInfo__storage_, provide),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "city",
        .dataTypeSpecific.className = NULL,
        .number = CityInfo_FieldNumber_City,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(CityInfo__storage_, city),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "countryCode",
        .dataTypeSpecific.className = NULL,
        .number = CityInfo_FieldNumber_CountryCode,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(CityInfo__storage_, countryCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "provideCode",
        .dataTypeSpecific.className = NULL,
        .number = CityInfo_FieldNumber_ProvideCode,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(CityInfo__storage_, provideCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "cityCode",
        .dataTypeSpecific.className = NULL,
        .number = CityInfo_FieldNumber_CityCode,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(CityInfo__storage_, cityCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CityInfo class]
                                     rootClass:[BusinessRoot class]
                                          file:BusinessRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CityInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\003\004\013\000\005\013\000\006\010\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - SpaceInfo

@implementation SpaceInfo

@dynamic spaceLength;
@dynamic spaceWidth;
@dynamic spaceHeight;
@dynamic spaceWeight;

typedef struct SpaceInfo__storage_ {
  uint32_t _has_storage_[1];
  int32_t spaceLength;
  int32_t spaceWidth;
  int32_t spaceHeight;
  int32_t spaceWeight;
} SpaceInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "spaceLength",
        .dataTypeSpecific.className = NULL,
        .number = SpaceInfo_FieldNumber_SpaceLength,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SpaceInfo__storage_, spaceLength),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "spaceWidth",
        .dataTypeSpecific.className = NULL,
        .number = SpaceInfo_FieldNumber_SpaceWidth,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SpaceInfo__storage_, spaceWidth),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "spaceHeight",
        .dataTypeSpecific.className = NULL,
        .number = SpaceInfo_FieldNumber_SpaceHeight,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(SpaceInfo__storage_, spaceHeight),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "spaceWeight",
        .dataTypeSpecific.className = NULL,
        .number = SpaceInfo_FieldNumber_SpaceWeight,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(SpaceInfo__storage_, spaceWeight),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SpaceInfo class]
                                     rootClass:[BusinessRoot class]
                                          file:BusinessRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SpaceInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\004\001\013\000\002\n\000\003\013\000\014\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AddressInfo

@implementation AddressInfo

@dynamic country;
@dynamic provide;
@dynamic city;
@dynamic countryCode;
@dynamic provideCode;
@dynamic cityCode;
@dynamic address;

typedef struct AddressInfo__storage_ {
  uint32_t _has_storage_[1];
  NSString *country;
  NSString *provide;
  NSString *city;
  NSString *countryCode;
  NSString *provideCode;
  NSString *cityCode;
  NSString *address;
} AddressInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "country",
        .dataTypeSpecific.className = NULL,
        .number = AddressInfo_FieldNumber_Country,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AddressInfo__storage_, country),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "provide",
        .dataTypeSpecific.className = NULL,
        .number = AddressInfo_FieldNumber_Provide,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AddressInfo__storage_, provide),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "city",
        .dataTypeSpecific.className = NULL,
        .number = AddressInfo_FieldNumber_City,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(AddressInfo__storage_, city),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "countryCode",
        .dataTypeSpecific.className = NULL,
        .number = AddressInfo_FieldNumber_CountryCode,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(AddressInfo__storage_, countryCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "provideCode",
        .dataTypeSpecific.className = NULL,
        .number = AddressInfo_FieldNumber_ProvideCode,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(AddressInfo__storage_, provideCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "cityCode",
        .dataTypeSpecific.className = NULL,
        .number = AddressInfo_FieldNumber_CityCode,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(AddressInfo__storage_, cityCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "address",
        .dataTypeSpecific.className = NULL,
        .number = AddressInfo_FieldNumber_Address,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(AddressInfo__storage_, address),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AddressInfo class]
                                     rootClass:[BusinessRoot class]
                                          file:BusinessRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AddressInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\003\004\013\000\005\013\000\006\010\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - FlightInfo

@implementation FlightInfo

@dynamic hasStartCityInfo, startCityInfo;
@dynamic hasEndCityInfo, endCityInfo;
@dynamic flightInfoNo;
@dynamic beginTime;
@dynamic endTime;

typedef struct FlightInfo__storage_ {
  uint32_t _has_storage_[1];
  CityInfo *startCityInfo;
  CityInfo *endCityInfo;
  NSString *flightInfoNo;
  int64_t beginTime;
  int64_t endTime;
} FlightInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "startCityInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(CityInfo),
        .number = FlightInfo_FieldNumber_StartCityInfo,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(FlightInfo__storage_, startCityInfo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "endCityInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(CityInfo),
        .number = FlightInfo_FieldNumber_EndCityInfo,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(FlightInfo__storage_, endCityInfo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "flightInfoNo",
        .dataTypeSpecific.className = NULL,
        .number = FlightInfo_FieldNumber_FlightInfoNo,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(FlightInfo__storage_, flightInfoNo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "beginTime",
        .dataTypeSpecific.className = NULL,
        .number = FlightInfo_FieldNumber_BeginTime,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(FlightInfo__storage_, beginTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "endTime",
        .dataTypeSpecific.className = NULL,
        .number = FlightInfo_FieldNumber_EndTime,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(FlightInfo__storage_, endTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[FlightInfo class]
                                     rootClass:[BusinessRoot class]
                                          file:BusinessRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(FlightInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\005\001\r\000\002\013\000\005L\000\006\t\000\007\007\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AddresseeInfo

@implementation AddresseeInfo

@dynamic id_p;
@dynamic hasAddress, address;
@dynamic hasConsigneePhone, consigneePhone;
@dynamic consigneeName;
@dynamic default_p;

typedef struct AddresseeInfo__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
  AddressInfo *address;
  PhoneNumber *consigneePhone;
  NSString *consigneeName;
} AddresseeInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = AddresseeInfo_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AddresseeInfo__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "address",
        .dataTypeSpecific.className = GPBStringifySymbol(AddressInfo),
        .number = AddresseeInfo_FieldNumber_Address,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AddresseeInfo__storage_, address),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "consigneePhone",
        .dataTypeSpecific.className = GPBStringifySymbol(PhoneNumber),
        .number = AddresseeInfo_FieldNumber_ConsigneePhone,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(AddresseeInfo__storage_, consigneePhone),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "consigneeName",
        .dataTypeSpecific.className = NULL,
        .number = AddresseeInfo_FieldNumber_ConsigneeName,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(AddresseeInfo__storage_, consigneeName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "default_p",
        .dataTypeSpecific.className = NULL,
        .number = AddresseeInfo_FieldNumber_Default_p,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AddresseeInfo class]
                                     rootClass:[BusinessRoot class]
                                          file:BusinessRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AddresseeInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\003\016\000\004\r\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - OrderInfo

@implementation OrderInfo

@dynamic orderId;
@dynamic status;
@dynamic buyIdArray, buyIdArray_Count;
@dynamic saleId;
@dynamic money;
@dynamic moneyUnit;
@dynamic discardReason;

typedef struct OrderInfo__storage_ {
  uint32_t _has_storage_[1];
  OrderStatus status;
  NSString *orderId;
  NSMutableArray *buyIdArray;
  NSString *saleId;
  NSString *money;
  NSString *moneyUnit;
  NSString *discardReason;
} OrderInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "orderId",
        .dataTypeSpecific.className = NULL,
        .number = OrderInfo_FieldNumber_OrderId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(OrderInfo__storage_, orderId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "status",
        .dataTypeSpecific.enumDescFunc = OrderStatus_EnumDescriptor,
        .number = OrderInfo_FieldNumber_Status,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(OrderInfo__storage_, status),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "buyIdArray",
        .dataTypeSpecific.className = NULL,
        .number = OrderInfo_FieldNumber_BuyIdArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(OrderInfo__storage_, buyIdArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "saleId",
        .dataTypeSpecific.className = NULL,
        .number = OrderInfo_FieldNumber_SaleId,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(OrderInfo__storage_, saleId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "money",
        .dataTypeSpecific.className = NULL,
        .number = OrderInfo_FieldNumber_Money,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(OrderInfo__storage_, money),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "moneyUnit",
        .dataTypeSpecific.className = NULL,
        .number = OrderInfo_FieldNumber_MoneyUnit,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(OrderInfo__storage_, moneyUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "discardReason",
        .dataTypeSpecific.className = NULL,
        .number = OrderInfo_FieldNumber_DiscardReason,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(OrderInfo__storage_, discardReason),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[OrderInfo class]
                                     rootClass:[BusinessRoot class]
                                          file:BusinessRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(OrderInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\005\001\007\000\003\000buyId\000\004\006\000\006\t\000\n\r\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t OrderInfo_Status_RawValue(OrderInfo *message) {
  GPBDescriptor *descriptor = [OrderInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:OrderInfo_FieldNumber_Status];
  return GPBGetMessageInt32Field(message, field);
}

void SetOrderInfo_Status_RawValue(OrderInfo *message, int32_t value) {
  GPBDescriptor *descriptor = [OrderInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:OrderInfo_FieldNumber_Status];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)