.class public Lcom/android/server/enterprise/email/AccountMetaData;
.super Ljava/lang/Object;
.source "AccountMetaData.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COMPATIBILITY_UUID:Ljava/lang/String; = "compatibilityUuid"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final DPM_POLICIES_ACCOUNTID:Ljava/lang/String; = "account_id"

.field public static final DPM_POLICIES_ID:Ljava/lang/String; = "_id"

.field public static final DPM_POLICIES_POLICYNAME:Ljava/lang/String; = "name"

.field public static final DPM_POLICIES_POLICYNAME_ALLOWHTMLEMAIL:Ljava/lang/String; = "AllowHTMLEmail"

.field public static final DPM_POLICIES_POLICYTYPE:Ljava/lang/String; = "type"

.field public static final DPM_POLICIES_POLICYVALUE:Ljava/lang/String; = "value"

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final FLAGS_ACCEPT_ALL_CERT:I = 0x8

.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1

.field public static final FLAGS_USE_SSL:I = 0x1

.field public static final FLAGS_USE_TLS:I = 0x2

.field public static final FLAGS_VIBRATE_ALWAYS:I = 0x2

.field public static final FLAGS_VIBRATE_WHEN_SILENT:I = 0x40

.field public static final HOST_AUTH_KEY_RECV:Ljava/lang/String; = "hostAuthKeyRecv"

.field public static final HOST_AUTH_KEY_SEND:Ljava/lang/String; = "hostAuthKeySend"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final IS_SIGNATURE_EDITED:Ljava/lang/String; = "isSignatureEdited"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final OFF_PEAK_SCHEDULE:Ljava/lang/String; = "offPeakSchedule"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PEAK_DAYS:Ljava/lang/String; = "peakDays"

.field public static final PEAK_END_MINUTE:Ljava/lang/String; = "peakEndMinute"

.field public static final PEAK_SCHEDULE:Ljava/lang/String; = "peakSchedule"

.field public static final PEAK_START_MINUTE:Ljava/lang/String; = "peakStartMinute"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static final RINGTONE_URI:Ljava/lang/String; = "ringtoneUri"

.field public static final ROAMING_SCHEDULE:Ljava/lang/String; = "roamingSchedule"

.field public static final SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SYNC_CALENDAR_LOOKBACK:Ljava/lang/String; = "calendarSyncLookback"

.field public static final SYNC_EMAIL_ROAMING_TRUNCATIONSIZE:Ljava/lang/String; = "roamingemailsize"

.field public static final SYNC_EMAIL_TRUNCATIONSIZE:Ljava/lang/String; = "emailsize"

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field public static final SYNC_LOOKBACK:Ljava/lang/String; = "syncLookback"


# instance fields
.field public mAllowHTMLEmail:Z

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mEasDomain:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailBodyTruncationSize:I

.field public mEmailNotificationVibrateAlways:Z

.field public mEmailNotificationVibrateWhenSilent:Z

.field public mEmailRoamingBodyTruncationSize:I

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public mId:I

.field public mInComingProtocol:Ljava/lang/String;

.field public mInComingServerAcceptAllCertificates:Z

.field public mInComingServerAddress:Ljava/lang/String;

.field public mInComingServerFlags:I

.field public mInComingServerLogin:Ljava/lang/String;

.field public mInComingServerPassword:Ljava/lang/String;

.field public mInComingServerPathPrefix:Ljava/lang/String;

.field public mInComingServerPort:I

.field public mInComingServerUseSSL:Z

.field public mInComingServerUseTLS:Z

.field public mIsDefault:Z

.field public mIsEAS:Z

.field public mNotify:Z

.field public mOffPeakSyncSchedule:I

.field public mOutGoingProtocol:Ljava/lang/String;

.field public mOutGoingServerAcceptAllCertificates:Z

.field public mOutGoingServerAddress:Ljava/lang/String;

.field public mOutGoingServerFlags:I

.field public mOutGoingServerLogin:Ljava/lang/String;

.field public mOutGoingServerPassword:Ljava/lang/String;

.field public mOutGoingServerPathPrefix:Ljava/lang/String;

.field public mOutGoingServerPort:I

.field public mOutGoingServerUseSSL:Z

.field public mOutGoingServerUseTLS:Z

.field public mPeakDays:I

.field public mPeakEndMinute:I

.field public mPeakStartMinute:I

.field public mPeakSyncSchedule:I

.field public mProtocolVersion:Ljava/lang/String;

.field public mRetrivalSize:I

.field public mRingtoneUri:Ljava/lang/String;

.field public mRoamingSyncSchedule:I

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncCalendarAge:I

.field public mSyncInterval:I

.field public mSyncLookback:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 143
    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    .line 143
    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const/4 v3, 0x0

    .line 298
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 299
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v4, 0x0

    .line 300
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 301
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 302
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const-wide/16 v5, -0x1

    .line 303
    iput-wide v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 304
    iput-wide v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 305
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 306
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v5, 0x1

    .line 307
    iput v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 308
    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 309
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 310
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 311
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 312
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 313
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 314
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    move-object v1, p2

    .line 315
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    move-object v1, p3

    .line 316
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move v1, p4

    .line 317
    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 318
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 319
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 320
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    move-object v1, p5

    .line 321
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    move-object v1, p6

    .line 322
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 323
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    move-object v1, p7

    .line 324
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    move-object v1, p8

    .line 325
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    move/from16 v1, p9

    .line 326
    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 327
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 328
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 329
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object/from16 v1, p10

    .line 330
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 331
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 332
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 333
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 334
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 335
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 336
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 337
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 338
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 339
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    .line 340
    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Z)V
    .registers 31

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p12

    move/from16 v5, p13

    move/from16 v6, p14

    move-object/from16 v7, p15

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, -0x1

    .line 143
    iput v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const/4 v9, 0x1

    .line 348
    iput-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v10, 0x0

    .line 349
    iput v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v11, 0x0

    .line 350
    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 351
    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    move-object/from16 v12, p4

    .line 352
    iput-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const-wide/16 v12, -0x1

    .line 353
    iput-wide v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 354
    iput-wide v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    move-object v12, p1

    .line 355
    iput-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    move-object/from16 v12, p2

    .line 356
    iput-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    if-gt v9, v2, :cond_36

    const/4 v12, 0x6

    if-ge v12, v2, :cond_37

    :cond_36
    move v2, v9

    .line 357
    :cond_37
    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 364
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    move/from16 v2, p16

    .line 366
    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    move-object/from16 v2, p8

    .line 367
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v2, p7

    .line 368
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    move-object/from16 v2, p9

    .line 369
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    move/from16 v2, p10

    .line 370
    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    move/from16 v2, p11

    .line 371
    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    const-string v2, "eas"

    .line 372
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 373
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 374
    iput v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 375
    iput-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 376
    iput-boolean v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 377
    iput-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 378
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 379
    iput-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 380
    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 381
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 382
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 383
    iput v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 384
    iput-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 385
    iput-boolean v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 386
    iput-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 387
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 388
    iput-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 389
    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 391
    iput v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 392
    iput v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 393
    iput v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 394
    iput v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 395
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 396
    iput v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 397
    iput v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    .line 398
    iput-boolean v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;ZIIIIIIZ)V
    .registers 37

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p12

    move/from16 v5, p13

    move/from16 v6, p14

    move-object/from16 v7, p15

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, -0x1

    .line 143
    iput v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const/4 v8, 0x1

    .line 409
    iput-boolean v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v9, 0x0

    .line 410
    iput v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v10, 0x0

    .line 411
    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 412
    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    move-object/from16 v11, p4

    .line 413
    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const-wide/16 v11, -0x1

    .line 414
    iput-wide v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 415
    iput-wide v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    move-object v11, p1

    .line 416
    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    move-object v11, p2

    .line 417
    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    if-gt v8, v2, :cond_37

    const/4 v11, 0x6

    if-ge v11, v2, :cond_36

    goto :goto_37

    :cond_36
    move v8, v2

    .line 418
    :cond_37
    :goto_37
    iput v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 425
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    move/from16 v2, p16

    .line 427
    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    move-object/from16 v2, p8

    .line 428
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v2, p7

    .line 429
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    move-object/from16 v2, p9

    .line 430
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    move/from16 v2, p10

    .line 431
    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    move/from16 v2, p11

    .line 432
    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    const-string v2, "eas"

    .line 433
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 434
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 435
    iput v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 436
    iput-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 437
    iput-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 438
    iput-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 439
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 440
    iput-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 441
    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 442
    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 443
    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 444
    iput v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 445
    iput-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 446
    iput-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 447
    iput-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 448
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 449
    iput-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 450
    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    move/from16 v1, p17

    .line 452
    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    move/from16 v1, p18

    .line 453
    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    move/from16 v1, p19

    .line 454
    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    move/from16 v1, p20

    .line 455
    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 456
    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    move/from16 v1, p21

    .line 457
    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    move/from16 v1, p22

    .line 458
    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    move/from16 v1, p23

    .line 459
    iput-boolean v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    return-void
.end method
