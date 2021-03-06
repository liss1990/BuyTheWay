// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: com/buytheway/protocol/thirds.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum QiniuTokenTypeEnum

typedef GPB_ENUM(QiniuTokenTypeEnum) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  QiniuTokenTypeEnum_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** 简单凭证 */
  QiniuTokenTypeEnum_Simpl = 0,

  /** 覆盖凭证 */
  QiniuTokenTypeEnum_Cover = 1,

  /** custom */
  QiniuTokenTypeEnum_Custom = 2,

  /** 自定义并且带回调 */
  QiniuTokenTypeEnum_CustomBack = 3,
};

GPBEnumDescriptor *QiniuTokenTypeEnum_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL QiniuTokenTypeEnum_IsValidValue(int32_t value);

#pragma mark - ThirdsRoot

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
@interface ThirdsRoot : GPBRootObject
@end

#pragma mark - GetQiniuTokenRequest

typedef GPB_ENUM(GetQiniuTokenRequest_FieldNumber) {
  GetQiniuTokenRequest_FieldNumber_TokenType = 1,
};

/**
 * 获取七牛上次凭证  /thirds/getQiniuToken
 **/
@interface GetQiniuTokenRequest : GPBMessage

/** 简单凭证 simple   覆盖凭证 cover  自定义 custom  自定义并且带回调 custom_back     就先这些其他的再补充 ，现在只用第一种即可 */
@property(nonatomic, readwrite) QiniuTokenTypeEnum tokenType;

@end

/**
 * Fetches the raw value of a @c GetQiniuTokenRequest's @c tokenType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t GetQiniuTokenRequest_TokenType_RawValue(GetQiniuTokenRequest *message);
/**
 * Sets the raw value of an @c GetQiniuTokenRequest's @c tokenType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetGetQiniuTokenRequest_TokenType_RawValue(GetQiniuTokenRequest *message, int32_t value);

#pragma mark - GetQiniuTokenResponse

typedef GPB_ENUM(GetQiniuTokenResponse_FieldNumber) {
  GetQiniuTokenResponse_FieldNumber_QiNiuToken = 1,
};

@interface GetQiniuTokenResponse : GPBMessage

/** 返回token */
@property(nonatomic, readwrite, copy, null_resettable) NSString *qiNiuToken;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
