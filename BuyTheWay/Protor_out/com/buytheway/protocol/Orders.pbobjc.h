// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: com/buytheway/protocol/orders.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class Money;
@class OrderInfo;
@class RetCode;
GPB_ENUM_FWD_DECLARE(OrderStatus);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - OrdersRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface OrdersRoot : GPBRootObject
@end

#pragma mark - GetBuyOrderInfoRequest

typedef GPB_ENUM(GetBuyOrderInfoRequest_FieldNumber) {
  GetBuyOrderInfoRequest_FieldNumber_OrderId = 1,
};

/**
 * 获得待支付订单 ，当卖家同意预约订单后 就会返回 ??  此处 等第三模块调试在考虑
 * 查询订单信息（状态，1.支付后会以后台返回的支付成功为准）
 * 同一订单，卖家和买家能看到的数据是需要区分的，所以同样是订单信息，分卖家和买家2个接口  虽然暂时看到的订单信息一样，但是还是分开俩个
 * 1.1 /orders/buy/getOrderInfo
 **/
@interface GetBuyOrderInfoRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *orderId;

@end

#pragma mark - GetBuyOrderInfoResponse

typedef GPB_ENUM(GetBuyOrderInfoResponse_FieldNumber) {
  GetBuyOrderInfoResponse_FieldNumber_RetCode = 1,
  GetBuyOrderInfoResponse_FieldNumber_OrderInfo = 2,
  GetBuyOrderInfoResponse_FieldNumber_Mes = 3,
};

/**
 * 1.2
 **/
@interface GetBuyOrderInfoResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) RetCode *retCode;
/** Test to see if @c retCode has been set. */
@property(nonatomic, readwrite) BOOL hasRetCode;

/** 订单界面的详情基本都在orderInfo里 */
@property(nonatomic, readwrite, strong, null_resettable) OrderInfo *orderInfo;
/** Test to see if @c orderInfo has been set. */
@property(nonatomic, readwrite) BOOL hasOrderInfo;

@property(nonatomic, readwrite, copy, null_resettable) NSString *mes;

@end

#pragma mark - GetSellOrderInfoRequest

typedef GPB_ENUM(GetSellOrderInfoRequest_FieldNumber) {
  GetSellOrderInfoRequest_FieldNumber_OrderId = 1,
};

/**
 * 1.3 /orders/sell/getOrderInfo
 **/
@interface GetSellOrderInfoRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *orderId;

@end

#pragma mark - GetSellOrderInfoResponse

typedef GPB_ENUM(GetSellOrderInfoResponse_FieldNumber) {
  GetSellOrderInfoResponse_FieldNumber_RetCode = 1,
  GetSellOrderInfoResponse_FieldNumber_OrderInfo = 2,
  GetSellOrderInfoResponse_FieldNumber_Mes = 3,
};

/**
 * 1.4
 **/
@interface GetSellOrderInfoResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) RetCode *retCode;
/** Test to see if @c retCode has been set. */
@property(nonatomic, readwrite) BOOL hasRetCode;

/** 订单界面的详情基本都在orderInfo里 */
@property(nonatomic, readwrite, strong, null_resettable) OrderInfo *orderInfo;
/** Test to see if @c orderInfo has been set. */
@property(nonatomic, readwrite) BOOL hasOrderInfo;

@property(nonatomic, readwrite, copy, null_resettable) NSString *mes;

@end

#pragma mark - OrderInfo

typedef GPB_ENUM(OrderInfo_FieldNumber) {
  OrderInfo_FieldNumber_OrderId = 1,
  OrderInfo_FieldNumber_Status = 2,
  OrderInfo_FieldNumber_BuyTripTaskId = 3,
  OrderInfo_FieldNumber_SellTripTaskId = 4,
  OrderInfo_FieldNumber_Money = 5,
  OrderInfo_FieldNumber_DiscardReason = 10,
};

/**
 * 买家预约行程就产生一个订单id，
 **/
@interface OrderInfo : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *orderId;

/** 订单状态 */
@property(nonatomic, readwrite) enum OrderStatus status;

/** 买家需求id，买家预约就会产生订单，绑定买家需求id */
@property(nonatomic, readwrite, copy, null_resettable) NSString *buyTripTaskId;

/** 卖家行程id，卖家同意预约是针对此订单号操作， 不同意刚废弃 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *sellTripTaskId;

/** 订单的钱有关对象信息 */
@property(nonatomic, readwrite, strong, null_resettable) Money *money;
/** Test to see if @c money has been set. */
@property(nonatomic, readwrite) BOOL hasMoney;

/** 订单被废弃的原因 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *discardReason;

@end

/**
 * Fetches the raw value of a @c OrderInfo's @c status property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t OrderInfo_Status_RawValue(OrderInfo *message);
/**
 * Sets the raw value of an @c OrderInfo's @c status property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetOrderInfo_Status_RawValue(OrderInfo *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
