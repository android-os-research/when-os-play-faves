.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;,
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;
    }
.end annotation


# static fields
.field private static final blacklist PDU_PENDING_MESSAGE_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final blacklist PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field static final blacklist PDU_PENDING_MESSAGE_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist instance:[Lcom/android/internal/telephony/SmsBroadcastUndelivered;

.field private static final blacklist mFbeEnabled:Z

.field private static final blacklist mPendingTrackers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/telephony/InboundSmsTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private final blacklist mMessageHandler:Landroid/os/Handler;

.field private final blacklist mResolver:Landroid/content/ContentResolver;

.field private blacklist mRetryCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGsmInboundSmsHandler(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUndeliveredSmsExpirationTime(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)J
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getUndeliveredSmsExpirationTime(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessPendingMessage(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->processPendingMessage()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 13

    const-string v0, "pdu"

    const-string v1, "sequence"

    const-string v2, "destination_port"

    const-string v3, "date"

    const-string v4, "reference_number"

    const-string v5, "count"

    const-string v6, "address"

    const-string v7, "_id"

    const-string v8, "message_body"

    const-string v9, "display_originating_addr"

    const-string v10, "sub_id"

    .line 67
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "pdu"

    const-string v2, "sequence"

    const-string v3, "destination_port"

    const-string v4, "date"

    const-string v5, "reference_number"

    const-string v6, "count"

    const-string v7, "address"

    const-string v8, "_id"

    const-string v9, "message_body"

    const-string v10, "display_originating_addr"

    const-string v11, "sub_id"

    const-string v12, "format"

    .line 86
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const-string v0, "ro.crypto.type"

    const-string v1, "unknown"

    .line 465
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mFbeEnabled:Z

    .line 467
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPendingTrackers:Ljava/util/HashSet;

    return-void
.end method

.method private constructor greylist <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .registers 6
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$2;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 479
    iput v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mRetryCount:I

    .line 485
    new-instance v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$3;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mMessageHandler:Landroid/os/Handler;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    .line 195
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const-string p2, "user"

    .line 197
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    .line 198
    invoke-virtual {p2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p2

    if-eqz p2, :cond_30

    .line 202
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->setUserUnlocked()V

    goto :goto_3d

    .line 204
    :cond_30
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 205
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    :goto_3d
    sget-boolean v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mFbeEnabled:Z

    if-eqz v0, :cond_43

    if-eqz p2, :cond_4c

    .line 209
    :cond_43
    new-instance p2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread-IA;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_4c
    return-void
.end method

.method private static blacklist broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Z)V
    .registers 7

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v0

    .line 373
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 374
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    const-string v3, "broadcastSms: ignoring message; no phone found for subId "

    const-string v4, "SmsBroadcastUndelivered"

    if-nez v2, :cond_29

    .line 375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    if-nez p1, :cond_31

    .line 379
    sget-object p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPendingTrackers:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 382
    :cond_31
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_52

    .line 384
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " phoneId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 388
    :cond_52
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object p1

    if-eqz p1, :cond_61

    const/4 v0, 0x2

    .line 390
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_7e

    .line 392
    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "null handler for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " format, can\'t deliver."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7e
    return-void
.end method

.method private blacklist getUndeliveredSmsExpirationTime(Landroid/content/Context;)J
    .registers 4

    .line 397
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    const-string v0, "carrier_config"

    .line 399
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 400
    invoke-virtual {p1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const-wide/32 v0, 0x240c8400

    if-eqz p0, :cond_1c

    const-string p1, "undelivered_sms_message_expiration_time"

    .line 403
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_1c
    return-wide v0
.end method

.method public static blacklist initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .registers 6

    .line 165
    sget-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:[Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    if-nez v0, :cond_10

    .line 166
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 167
    new-array v0, v0, [Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:[Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    :cond_10
    const v0, 0x7fffffff

    if-eqz p1, :cond_1d

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 175
    :cond_1d
    sget-object v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:[Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    aget-object v1, v1, v0

    if-nez v1, :cond_42

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: makeInstance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsBroadcastUndelivered"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:[Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    new-instance v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    aput-object v2, v1, v0

    :cond_42
    const/4 p0, 0x6

    if-eqz p1, :cond_48

    .line 184
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_48
    if-eqz p2, :cond_4d

    .line 187
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_4d
    return-void
.end method

.method private blacklist processPendingMessage()V
    .registers 4

    .line 504
    iget v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mRetryCount:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_27

    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushManagerSupported()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 505
    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushManagerAvailable()Z

    move-result v0

    if-nez v0, :cond_27

    .line 506
    iget v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mRetryCount:I

    .line 507
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_57

    .line 508
    :cond_27
    sget-boolean v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mFbeEnabled:Z

    if-nez v0, :cond_4c

    sget-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPendingSMSduringLockState:Z

    if-eqz v0, :cond_30

    goto :goto_4c

    .line 510
    :cond_30
    sget-object p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPendingTrackers:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 511
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 512
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Z)V

    goto :goto_3c

    .line 509
    :cond_4c
    :goto_4c
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread-IA;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_57
    :goto_57
    return-void
.end method

.method static blacklist scanRawTable(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V
    .registers 25

    move-object/from16 v1, p0

    const-string v2, "error loading SmsTracker: "

    const-string v0, "scanRawTable:"

    const-string v3, " ms"

    const-string v4, "finished scanning raw table in "

    const-string v5, "SmsBroadcastUndelivered"

    const-string v6, "scanning raw table for undelivered messages"

    .line 217
    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_1d

    const-string v6, "PackageManager is null."

    .line 222
    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 223
    :cond_1d
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v6

    if-eqz v6, :cond_29

    const-string v0, "device is safe mode, skip scanning raw table."

    .line 224
    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_29
    :goto_29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 230
    new-instance v15, Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-direct {v15, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 232
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v8}, Ljava/util/HashSet;-><init>(I)V

    const/16 v16, 0x0

    const-wide/32 v17, 0xf4240

    .line 238
    :try_start_41
    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    .line 240
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sim_slot = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " AND deleted = 0"

    .line 242
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v10, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 245
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v19, 0x0

    move-object v8, v14

    move-object v9, v0

    move-object/from16 v20, v14

    move-object v14, v13

    move-object/from16 v13, v19

    .line 244
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_87
    .catch Landroid/database/SQLException; {:try_start_41 .. :try_end_87} :catch_209
    .catchall {:try_start_41 .. :try_end_87} :catchall_207

    if-nez v8, :cond_b0

    :try_start_89
    const-string v0, "error getting pending message cursor"

    .line 248
    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Landroid/database/SQLException; {:try_start_89 .. :try_end_8e} :catch_203
    .catchall {:try_start_89 .. :try_end_8e} :catchall_1ff

    if-eqz v8, :cond_93

    .line 356
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    div-long v1, v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b0
    :try_start_b0
    const-string v0, "user"

    .line 254
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 255
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v9

    const/4 v0, 0x0

    .line 256
    :goto_bd
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_180

    const-string v11, "format"

    .line 258
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    if-nez v11, :cond_d6

    .line 260
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->isCurrentFormat3gpp2()Z

    move-result v0

    :cond_d4
    move v13, v0

    goto :goto_df

    :cond_d6
    const-string v13, "3gpp2"

    .line 261
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d4

    move v13, v12

    .line 264
    :goto_df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current cursor format: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isCurrentFormat3gpp2:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catch Landroid/database/SQLException; {:try_start_b0 .. :try_end_fb} :catch_203
    .catchall {:try_start_b0 .. :try_end_fb} :catchall_1ff

    .line 268
    :try_start_fb
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v10, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 269
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0
    :try_end_10d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_10d} :catch_16a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_fb .. :try_end_10d} :catch_156
    .catch Landroid/database/SQLException; {:try_start_fb .. :try_end_10d} :catch_203
    .catchall {:try_start_fb .. :try_end_10d} :catchall_1ff

    .line 284
    :try_start_10d
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v10

    if-ne v10, v12, :cond_117

    .line 287
    invoke-static {v0, v9}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Z)V

    goto :goto_17d

    .line 290
    :cond_117
    new-instance v10, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 291
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_137

    .line 293
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v11

    cmp-long v0, v11, p2

    if-gez v0, :cond_17d

    .line 297
    invoke-virtual {v14, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17d

    .line 300
    :cond_137
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v12

    .line 301
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v12

    if-ne v11, v12, :cond_14e

    const-string v11, "found complete multi-part message"

    .line 304
    invoke-static {v5, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {v0, v9}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Z)V

    .line 309
    invoke-virtual {v14, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_17d

    .line 311
    :cond_14e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17d

    :catch_156
    move-exception v0

    .line 279
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17d

    :catch_16a
    move-exception v0

    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catch Landroid/database/SQLException; {:try_start_10d .. :try_end_17d} :catch_203
    .catchall {:try_start_10d .. :try_end_17d} :catchall_1ff

    :cond_17d
    :goto_17d
    move v0, v13

    goto/16 :goto_bd

    :cond_180
    const/4 v1, 0x0

    .line 323
    :try_start_181
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v16
    :try_end_185
    .catch Ljava/lang/IllegalStateException; {:try_start_181 .. :try_end_185} :catch_186
    .catch Landroid/database/SQLException; {:try_start_181 .. :try_end_185} :catch_203
    .catchall {:try_start_181 .. :try_end_185} :catchall_1ff

    goto :goto_18b

    :catch_186
    :try_start_186
    const-string v0, "It\'s transferred from PhoneFactory. Phone is not created"

    .line 325
    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_18b
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 333
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 334
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhere()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v20

    .line 333
    invoke-virtual {v11, v2, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1b3

    const-string v9, "No rows were deleted from raw table!"

    .line 336
    invoke-static {v5, v9}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d6

    .line 338
    :cond_1b3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " rows from raw table for incomplete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " part message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d6
    if-lez v2, :cond_1f2

    .line 343
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v9

    .line 344
    iget-object v10, v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mFormat:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v10, v2, v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDroppedIncomingMultipartSms(ILjava/lang/String;II)V

    if-eqz v16, :cond_1f3

    .line 347
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v9

    iget-boolean v10, v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mIs3gpp2:Z

    iget v1, v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v9, v10, v2, v1}, Lcom/android/internal/telephony/metrics/SmsStats;->onDroppedIncomingMultipartSms(ZII)V
    :try_end_1f1
    .catch Landroid/database/SQLException; {:try_start_186 .. :try_end_1f1} :catch_203
    .catchall {:try_start_186 .. :try_end_1f1} :catchall_1ff

    goto :goto_1f3

    :cond_1f2
    const/4 v13, 0x0

    :cond_1f3
    :goto_1f3
    move-object/from16 v20, v11

    goto :goto_18f

    .line 356
    :cond_1f6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_219

    :catchall_1ff
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_231

    :catch_203
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_20a

    :catchall_207
    move-exception v0

    goto :goto_231

    :catch_209
    move-exception v0

    :goto_20a
    :try_start_20a
    const-string v1, "error reading pending SMS messages"

    .line 353
    invoke-static {v5, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20f
    .catchall {:try_start_20a .. :try_end_20f} :catchall_207

    if-eqz v16, :cond_214

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_219
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    div-long v1, v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_231
    if-eqz v16, :cond_236

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    div-long v8, v8, v17

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v5, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    throw v0
.end method
