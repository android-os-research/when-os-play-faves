.class public Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;
.super Landroid/os/Handler;
.source "LmsAssemblyTrackerCTC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist RAW_PROJECTION:[Ljava/lang/String;

.field private static final blacklist RAW_URI:Landroid/net/Uri;


# instance fields
.field private final blacklist mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

.field private blacklist mIsAlarmReceiverActive:Z

.field blacklist mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field private final blacklist mQueuedLmsTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSmsLogger:Lcom/android/internal/telephony/SmsLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 54
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    .line 63
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    const-string v0, "pdu"

    const-string v1, "reference_number"

    const-string v2, "sequence"

    const-string v3, "destination_port"

    .line 82
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    .line 89
    new-instance v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;-><init>(Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    .line 103
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    const-string p2, "power_whitelist"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerWhitelistManager;

    iput-object p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    return-void
.end method

.method private static blacklist dbSelectionForLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    .line 374
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "address = ? AND reference_number = ?"

    .line 372
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private blacklist deleteStoredMessageParts(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .registers 4

    .line 367
    invoke-static {p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dbSelectionForLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Landroid/util/Pair;

    move-result-object p1

    .line 368
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private blacklist dispatchIncompleteLms(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;I)V
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 276
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "dispatchIncompleteLms, lmsToken=%s, lmsStatus=%d"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    sget-object v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->queryStoredMessageParts([Ljava/lang/String;Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v3, "LmsAssemblyTrackerCTC"

    if-nez v0, :cond_23

    const-string p0, "dispatchIncompleteLms: cursor is NULL"

    .line 280
    invoke-static {v3, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :cond_23
    new-instance v4, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;

    iget v5, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-direct {v4, v5, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;-><init>(IZ)V

    :try_start_2a
    const-string v1, "sequence"

    .line 289
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v5, "pdu"

    .line 290
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "destination_port"

    .line 291
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 287
    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->addAllFromCursor(Landroid/database/Cursor;III)V
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_71

    .line 294
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 298
    invoke-virtual {v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string p0, "dispatchIncompleteLms: no parts stored"

    .line 299
    invoke-static {v3, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 304
    :cond_4e
    iget-object v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/high16 v0, 0x50000

    goto :goto_5d

    :cond_5b
    const/high16 v0, 0x30000

    .line 310
    :goto_5d
    invoke-virtual {v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->getDestPort()I

    move-result v1

    if-eq v1, v0, :cond_69

    const-string p0, "dispatchIncompleteLms: ignoring partial dispatch request for port-addressed LMS"

    .line 311
    invoke-static {v3, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_69
    invoke-virtual {v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->getPdusSequence()[[B

    move-result-object v0

    .line 315
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dispatchPdusCTC([[BLcom/samsung/android/telephony/cdma/SemLmsTokenCTC;ILcom/android/internal/telephony/InboundSmsTracker;)V

    return-void

    :catchall_71
    move-exception p0

    .line 294
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 295
    throw p0
.end method

.method private blacklist dispatchPdusCTC([[BLcom/samsung/android/telephony/cdma/SemLmsTokenCTC;ILcom/android/internal/telephony/InboundSmsTracker;)V
    .registers 13

    .line 408
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchPdusCTC lmsToken : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " lmsStatus : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LmsAssemblyTrackerCTC"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_35

    const/4 v3, 0x2

    if-eq p3, v3, :cond_2f

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    .line 419
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3a

    :cond_2f
    const-string v3, "com.samsung.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

    .line 416
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3a

    :cond_35
    const-string v3, "com.samsung.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

    .line 413
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3a
    const-string v3, "pdus"

    .line 423
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 424
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    array-length p1, p1

    if-le p1, v0, :cond_4c

    const-string p1, "lms_token_ctc"

    .line 427
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 430
    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchPdusCTC simSlot : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {v1, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 432
    iget-object p1, p2, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    const-string p2, "format"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/4 p2, 0x0

    if-nez p3, :cond_d9

    if-eqz p4, :cond_ed

    .line 436
    iget-object p3, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getSmsBroadcastReceiver(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v5

    .line 437
    iget-object p3, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_c5

    .line 440
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v3, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 441
    invoke-virtual {v0, v2, p3, v3}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 444
    :cond_c5
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 446
    invoke-virtual {p4}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v7

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    .line 445
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    goto :goto_ed

    .line 449
    :cond_d9
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 451
    invoke-virtual {p4}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v7

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    .line 450
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    :cond_ed
    :goto_ed
    return-void
.end method

.method private blacklist findStoredMessagePartsOlderThan(J)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "address"

    const-string v2, "reference_number"

    const-string v3, "count"

    const-string v4, "format"

    .line 326
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 329
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "date <= ?"

    const-string v4, "date ASC"

    .line 326
    invoke-direct {p0, v1, p1, v3, v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->queryStoredMessageParts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_2d

    const-string p0, "LmsAssemblyTrackerCTC"

    const-string p1, "findStoredMessagePartsOlderThan, cursor is NULL"

    .line 334
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 339
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 340
    new-instance p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    .line 342
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    .line 344
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    .line 345
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 340
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_52

    goto :goto_2d

    .line 350
    :cond_4e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_52
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 351
    throw p1
.end method

.method private static blacklist getFirstDisplayTimeoutDuration(I)J
    .registers 5

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x14

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 111
    sget-boolean p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    if-eqz p0, :cond_14

    const-string p0, "debug.lms_assemble_timeout_1st"

    .line 112
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getSystemPropertyAsLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_14
    return-wide v0
.end method

.method private static blacklist getMaximalTimeoutDuration()J
    .registers 3

    .line 120
    sget-boolean v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    const-wide/32 v1, 0x2932e00

    if-eqz v0, :cond_e

    const-string v0, "debug.lms_assemble_timeout_max"

    .line 121
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getSystemPropertyAsLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_e
    return-wide v1
.end method

.method private blacklist getOrCreateLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
    .registers 3

    .line 537
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object v0

    if-nez v0, :cond_10

    .line 539
    new-instance v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    invoke-direct {v0, p1}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V

    .line 540
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0
.end method

.method private blacklist getQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
    .registers 2

    .line 533
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    return-object p0
.end method

.method private static blacklist getSystemPropertyAsLong(Ljava/lang/String;J)J
    .registers 4

    :try_start_0
    const-string v0, ""

    .line 129
    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_e} :catch_f

    return-wide p0

    :catch_f
    return-wide p1
.end method

.method private blacklist handleFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "handleFirstDisplayTimeout, lmsToken=%s"

    .line 155
    invoke-static {v2, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->cancelFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V

    .line 157
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dispatchIncompleteLms(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    return-void
.end method

.method private blacklist handleMaximalConnectionTimeout()V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "handleMaximalConnectionTimeout"

    .line 162
    invoke-static {v2, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getMaximalTimeoutDuration()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 165
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->findStoredMessagePartsOlderThan(J)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "handleMaximalConnectionTimeout: timed out lms: %s"

    .line 169
    invoke-static {v0, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    const/4 v2, 0x2

    .line 173
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dispatchIncompleteLms(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;I)V

    .line 174
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->deleteStoredMessageParts(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V

    goto :goto_23

    .line 178
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    return-void
.end method

.method private blacklist handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;
    .registers 12

    if-eqz p1, :cond_9

    .line 382
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sms-app"

    goto :goto_11

    .line 385
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sms-broadcast"

    :goto_11
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1f

    .line 391
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 393
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 395
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const/16 p2, 0x13a

    invoke-virtual {p0, p1, v2, p2, v0}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v4

    if-nez v1, :cond_2d

    .line 397
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    :cond_2d
    const/4 v6, 0x0

    const/16 v7, 0x13a

    const-string v8, ""

    move-object v3, v1

    .line 398
    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 402
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static varargs blacklist logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 551
    sget-boolean v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 552
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LmsAssemblyTrackerCTC"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private blacklist queryStoredMessageParts([Ljava/lang/String;Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    .line 362
    invoke-static {p2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dbSelectionForLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Landroid/util/Pair;

    move-result-object p2

    .line 363
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, [Ljava/lang/String;

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private blacklist queryStoredMessageParts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private blacklist registerAlarmReceiver()V
    .registers 4

    .line 249
    iget-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    if-eqz v0, :cond_5

    return-void

    .line 253
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.internal.telephony.CTC_LMS_CONNECTION_ALARM"

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    return-void
.end method

.method private blacklist removeQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .registers 2

    .line 546
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist unregisterAlarmReceiver()V
    .registers 3

    .line 260
    iget-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    if-nez v0, :cond_5

    return-void

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    return-void
.end method


# virtual methods
.method public blacklist cancelFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "cancelFirstDisplayTimeout, lmsToken=%s"

    .line 192
    invoke-static {v2, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 195
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->removeQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V

    :cond_17
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 139
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    goto :goto_1f

    .line 144
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->handleMaximalConnectionTimeout()V

    goto :goto_1f

    .line 141
    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->handleFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LmsAssemblyTrackerCTC"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public blacklist hasScheduledFirstDisplayTimeout()Z
    .registers 2

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public blacklist hasScheduledFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Z
    .registers 3

    .line 201
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getQueuedLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 202
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isMaximalConnectionTimeAlarmActive()Z
    .registers 1

    .line 271
    iget-boolean p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    return p0
.end method

.method public blacklist scheduleFirstDisplayTimeout(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "scheduleFirstDisplayTimeout, lmsToken=%s"

    .line 184
    invoke-static {v2, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getOrCreateLmsToken(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object v1

    .line 186
    iget p1, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-static {p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getFirstDisplayTimeoutDuration(I)J

    move-result-wide v2

    .line 187
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blacklist updateMaximalConnectionTimeAlarm()V
    .registers 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "updateMaximalConnectionTimeAlarm"

    .line 213
    invoke-static {v2, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "date"

    .line 215
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "date ASC"

    invoke-direct {p0, v1, v2, v2, v3}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->queryStoredMessageParts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1f

    const-string p0, "LmsAssemblyTrackerCTC"

    const-string v0, "updateMaximalConnectionTimeAlarm: cursor is NULL"

    .line 217
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 223
    :cond_1f
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 225
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getMaximalTimeoutDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_7c

    .line 230
    :cond_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 233
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.CTC_LMS_CONNECTION_ALARM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    const/high16 v4, 0x14000000

    invoke-static {v3, v0, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 236
    iget-object v3, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    if-eqz v2, :cond_6e

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 238
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v5, v0

    const-string v0, "updateMaximalConnectionTimeAlarm: set alarm at %s"

    invoke-static {v0, v5}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-direct {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->registerAlarmReceiver()V

    .line 240
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_7b

    :cond_6e
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "updateMaximalConnectionTimeAlarm: no alarm needed"

    .line 242
    invoke-static {v2, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->unregisterAlarmReceiver()V

    .line 244
    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_7b
    return-void

    :catchall_7c
    move-exception p0

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 231
    throw p0
.end method
