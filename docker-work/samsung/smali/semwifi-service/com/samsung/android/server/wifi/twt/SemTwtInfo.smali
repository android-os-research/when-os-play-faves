.class public Lcom/samsung/android/server/wifi/twt/SemTwtInfo;
.super Ljava/lang/Object;
.source "SemTwtInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x3e8

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiTwtMonitor history:"

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemTwtInfo"

.field private static mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAverageContentionTime:J

.field private mAverageTdt:J

.field public mCcaBusyTimeMs:J

.field public mCcaBusyTimeMsDiff:J

.field private mDataTime:J

.field private mDlPktCnt:J

.field private mFlowId:I

.field private mFreq:I

.field private mLastTime:J

.field private mMaxTdt:J

.field private mNegoCompleted:Z

.field private mPackageNameChangFlag:Z

.field private mPacketCount:J

.field private mPacketSize:J

.field private mPktCntSize:J

.field public mRadioOnTimeMs:J

.field public mRadioOnTimeMsDiff:J

.field private mRawPacketCount:[J

.field private mRssi:I

.field private mRxGood:J

.field private mRxGoodDiff:J

.field private mRxLinkSpeed:I

.field private mRxPktBytes:J

.field private mRxPktBytesDiff:J

.field private mRxPktBytesLink:J

.field private mRxPktBytesLinkDiff:J

.field private mRxPktCnt:J

.field private mRxPktCntDiff:J

.field private mSP:I

.field public mScanTimeMs:J

.field public mScanTimeMsDiff:J

.field private mTrafficTime:J

.field private mTwtInterval:I

.field private mTxBad:J

.field private mTxBadDiff:J

.field private mTxGood:J

.field private mTxGoodDiff:J

.field private mTxLinkSpeed:I

.field private mTxPktBytes:J

.field private mTxPktBytesDiff:J

.field private mTxPktBytesLink:J

.field private mTxPktBytesLinkDiff:J

.field private mTxPktCnt:J

.field private mTxPktCntDiff:J

.field private mTxRetry:J

.field private mTxRetryDiff:J

.field private mUlPktCnt:J

.field private mUsageStatsPackageName:Ljava/lang/String;

.field private mVarTdt:J

.field private mVerboseLoggingEnabled:Z

.field private overflowDetected:I

.field public tdtMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVerboseLoggingEnabled:Z

    const/4 v1, 0x1

    .line 35
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFlowId:I

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mNegoCompleted:Z

    const/16 v2, 0x2800

    .line 38
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mSP:I

    const v2, 0x19000

    .line 39
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTwtInterval:I

    const-wide/16 v2, 0x0

    .line 42
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageTdt:J

    .line 43
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mMaxTdt:J

    .line 44
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVarTdt:J

    .line 45
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDataTime:J

    .line 46
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketSize:J

    .line 47
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketCount:J

    .line 48
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageContentionTime:J

    const/16 v4, 0xfa

    new-array v4, v4, [J

    .line 49
    iput-object v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRawPacketCount:[J

    .line 50
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    .line 51
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPktCntSize:J

    .line 52
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDlPktCnt:J

    .line 53
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUlPktCnt:J

    .line 58
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxLinkSpeed:I

    .line 59
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxLinkSpeed:I

    .line 61
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMs:J

    .line 62
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMs:J

    .line 63
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMs:J

    .line 81
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCnt:J

    .line 82
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCnt:J

    .line 83
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytes:J

    .line 84
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytes:J

    .line 85
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mLastTime:J

    .line 93
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLink:J

    .line 94
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLink:J

    .line 95
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLinkDiff:J

    .line 96
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLinkDiff:J

    const-string v2, "default"

    .line 99
    iput-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUsageStatsPackageName:Ljava/lang/String;

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPackageNameChangFlag:Z

    .line 103
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->tdtMode:I

    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;I)V
    .registers 6

    if-nez p2, :cond_c

    .line 331
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_b

    const-string p0, "SemTwtInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    const/4 p0, 0x2

    if-ne p2, p0, :cond_15

    const-string p2, "SemTwtInfo"

    .line 334
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_15
    const-string p2, "SemTwtInfo"

    .line 336
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_1a
    :try_start_1a
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "%s %s"

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p0, v1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    .line 342
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3c} :catch_59

    .line 348
    sget-object p1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    monitor-enter p1

    .line 349
    :try_start_3f
    sget-object p2, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 350
    :goto_44
    sget-object p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 p2, 0x3e8

    if-le p0, p2, :cond_54

    .line 351
    sget-object p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_44

    .line 353
    :cond_54
    monitor-exit p1

    return-void

    :catchall_56
    move-exception p0

    monitor-exit p1
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_56

    throw p0

    :catch_59
    move-exception p0

    const-string p1, "SemTwtInfo"

    const-string p2, "format problem"

    .line 344
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public clearPackageChangeFlag()V
    .registers 2

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPackageNameChangFlag:Z

    return-void
.end method

.method public clrOverflow()V
    .registers 2

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 358
    sget-object p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    monitor-enter p0

    .line 359
    :try_start_3
    new-instance v0, Ljava/util/LinkedList;

    sget-object v1, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mHistory:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 360
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemWifiTwtMonitor history:"

    .line 361
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 365
    :cond_24
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 366
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p1

    .line 360
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 326
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getDiffStats()[J
    .registers 10

    const/16 v0, 0x9

    new-array v0, v0, [J

    .line 285
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCntDiff:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 286
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCntDiff:J

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 287
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesDiff:J

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 288
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesDiff:J

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 289
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMsDiff:J

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    .line 290
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMsDiff:J

    const/4 v5, 0x5

    aput-wide v3, v0, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const/4 v8, 0x6

    if-nez v7, :cond_2c

    aput-wide v5, v0, v8

    goto :goto_32

    :cond_2c
    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 295
    div-long/2addr v3, v1

    aput-wide v3, v0, v8

    :goto_32
    const/4 v1, 0x7

    .line 297
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTrafficTime:J

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    .line 298
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMsDiff:J

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public getLinkLayerDiffStats()[J
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [J

    .line 270
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGoodDiff:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 271
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetryDiff:J

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 272
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBadDiff:J

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 273
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGoodDiff:J

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 274
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLinkDiff:J

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    .line 275
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLinkDiff:J

    const/4 p0, 0x5

    aput-wide v1, v0, p0

    return-object v0
.end method

.method public getLinkLayerStats()[J
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 260
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGood:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 261
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetry:J

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 262
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBad:J

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 263
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMs:J

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 264
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMs:J

    const/4 p0, 0x4

    aput-wide v1, v0, p0

    return-object v0
.end method

.method public getLinkSpeed()[I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 251
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxLinkSpeed:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 252
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxLinkSpeed:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 253
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRssi:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 254
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFreq:I

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public getPackageChangeFlag()Z
    .registers 1

    .line 313
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPackageNameChangFlag:Z

    return p0
.end method

.method public getPacketMonitoringStats()[J
    .registers 5

    const/16 v0, 0xb

    new-array v0, v0, [J

    .line 213
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageTdt:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 214
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mMaxTdt:J

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 215
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDataTime:J

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 216
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketSize:J

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 217
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketCount:J

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    .line 218
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageContentionTime:J

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    .line 219
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPktCntSize:J

    const/4 v3, 0x6

    aput-wide v1, v0, v3

    .line 220
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDlPktCnt:J

    const/4 v3, 0x7

    aput-wide v1, v0, v3

    .line 221
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUlPktCnt:J

    const/16 v3, 0x8

    aput-wide v1, v0, v3

    .line 222
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMsDiff:J

    const/16 v3, 0x9

    aput-wide v1, v0, v3

    .line 223
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVarTdt:J

    const/16 p0, 0xa

    aput-wide v1, v0, p0

    return-object v0
.end method

.method public getTWTParams()[I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 233
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFlowId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 234
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mSP:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 235
    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTwtInterval:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 236
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public getTWTStatus()Z
    .registers 1

    .line 228
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mNegoCompleted:Z

    return p0
.end method

.method public getTdtMode()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->tdtMode:I

    return p0
.end method

.method public getTwtStats()Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;
    .registers 4

    .line 370
    new-instance v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V

    .line 371
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMsDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->radioOnTimeMs:J

    .line 372
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMsDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->ccaBusyTimeMs:J

    .line 373
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMsDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->scanTimeMs:J

    .line 374
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGoodDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txGood:J

    .line 375
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetryDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txRetry:J

    .line 376
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBadDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txBad:J

    .line 377
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGoodDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxGood:J

    .line 378
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCntDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txPktCnt:J

    .line 379
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCntDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxPktCnt:J

    .line 380
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->txPktBytes:J

    .line 381
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesDiff:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo$TwtStats;->rxPktBytes:J

    return-object v0
.end method

.method public getUsageStatsPackage()Ljava/lang/String;
    .registers 1

    .line 318
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUsageStatsPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getmRawPacketCount()[J
    .registers 1

    .line 280
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRawPacketCount:[J

    return-object p0
.end method

.method public setLinkLayerStats(IIIIJJJJJJJ)V
    .registers 37

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move-wide/from16 v11, p15

    move-wide/from16 v13, p17

    .line 145
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMs:J

    cmp-long v15, v9, v7

    const-wide/16 v16, 0x0

    if-lez v15, :cond_1b

    sub-long v7, v9, v7

    goto :goto_1d

    :cond_1b
    move-wide/from16 v7, v16

    :goto_1d
    iput-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMsDiff:J

    .line 146
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMs:J

    cmp-long v15, v11, v7

    if-lez v15, :cond_28

    sub-long v7, v11, v7

    goto :goto_2a

    :cond_28
    move-wide/from16 v7, v16

    :goto_2a
    iput-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMsDiff:J

    .line 147
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMs:J

    cmp-long v15, v13, v7

    if-lez v15, :cond_35

    sub-long v7, v13, v7

    goto :goto_37

    :cond_35
    move-wide/from16 v7, v16

    :goto_37
    iput-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMsDiff:J

    .line 149
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGood:J

    cmp-long v15, v1, v7

    if-lez v15, :cond_42

    sub-long v7, v1, v7

    goto :goto_44

    :cond_42
    move-wide/from16 v7, v16

    :goto_44
    iput-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGoodDiff:J

    .line 150
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetry:J

    cmp-long v15, v3, v13

    if-lez v15, :cond_4f

    sub-long v13, v3, v13

    goto :goto_51

    :cond_4f
    move-wide/from16 v13, v16

    :goto_51
    iput-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetryDiff:J

    .line 151
    iget-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBad:J

    cmp-long v15, v5, v11

    if-lez v15, :cond_5c

    sub-long v11, v5, v11

    goto :goto_5e

    :cond_5c
    move-wide/from16 v11, v16

    :goto_5e
    iput-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBadDiff:J

    .line 152
    iget-wide v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGood:J

    move-wide/from16 v5, p11

    cmp-long v15, v5, v9

    if-lez v15, :cond_6b

    sub-long v9, v5, v9

    goto :goto_6d

    :cond_6b
    move-wide/from16 v9, v16

    :goto_6d
    iput-wide v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGoodDiff:J

    .line 154
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytes:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLink:J

    cmp-long v15, v5, v3

    if-lez v15, :cond_7a

    sub-long v3, v5, v3

    goto :goto_7c

    :cond_7a
    move-wide/from16 v3, v16

    :goto_7c
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLinkDiff:J

    .line 155
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytes:J

    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLink:J

    cmp-long v15, v3, v1

    if-lez v15, :cond_89

    sub-long v1, v3, v1

    goto :goto_8b

    :cond_89
    move-wide/from16 v1, v16

    :goto_8b
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLinkDiff:J

    add-long/2addr v7, v13

    add-long/2addr v7, v11

    cmp-long v1, v7, v16

    if-lez v1, :cond_95

    .line 158
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesLink:J

    :cond_95
    cmp-long v1, v9, v16

    if-lez v1, :cond_9b

    .line 161
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesLink:J

    :cond_9b
    move/from16 v1, p4

    .line 164
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRssi:I

    move/from16 v1, p3

    .line 165
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFreq:I

    if-lez p1, :cond_a8

    move/from16 v1, p1

    goto :goto_aa

    .line 166
    :cond_a8
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxLinkSpeed:I

    :goto_aa
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxLinkSpeed:I

    if-lez p2, :cond_b1

    move/from16 v1, p2

    goto :goto_b3

    .line 167
    :cond_b1
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxLinkSpeed:I

    :goto_b3
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxLinkSpeed:I

    move-wide/from16 v1, p5

    .line 168
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxGood:J

    move-wide/from16 v1, p7

    .line 169
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxRetry:J

    move-wide/from16 v1, p9

    move-wide/from16 v3, p11

    .line 170
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxBad:J

    .line 171
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxGood:J

    move-wide/from16 v1, p13

    .line 172
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRadioOnTimeMs:J

    move-wide/from16 v1, p15

    .line 173
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mCcaBusyTimeMs:J

    move-wide/from16 v1, p17

    .line 174
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mScanTimeMs:J

    return-void
.end method

.method public setNegoStatus(Z)V
    .registers 2

    .line 322
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mNegoCompleted:Z

    return-void
.end method

.method public setNegotiationResult(ZIII)V
    .registers 5

    .line 135
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mNegoCompleted:Z

    .line 136
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mFlowId:I

    .line 137
    iput p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mSP:I

    .line 138
    iput p4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTwtInterval:I

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    return-void
.end method

.method public setOverflow()V
    .registers 2

    const/4 v0, 0x1

    .line 241
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->overflowDetected:I

    return-void
.end method

.method public setPacketMonitoringStats([J[J)V
    .registers 6

    const/4 v0, 0x0

    .line 192
    aget-wide v1, p1, v0

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageTdt:J

    const/4 v1, 0x1

    .line 193
    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mMaxTdt:J

    const/4 v1, 0x2

    .line 194
    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDataTime:J

    const/4 v1, 0x3

    .line 195
    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketSize:J

    const/4 v1, 0x4

    .line 196
    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPacketCount:J

    const/4 v1, 0x5

    .line 197
    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mAverageContentionTime:J

    const/4 v1, 0x6

    .line 198
    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mDlPktCnt:J

    const/4 v1, 0x7

    .line 199
    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUlPktCnt:J

    const/16 v1, 0x8

    .line 200
    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mVarTdt:J

    .line 201
    array-length p1, p2

    int-to-long v1, p1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPktCntSize:J

    .line 203
    :goto_32
    array-length p1, p2

    if-ge v0, p1, :cond_3e

    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRawPacketCount:[J

    aget-wide v1, p2, v0

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 206
    :cond_3e
    array-length p1, p2

    :goto_3f
    const/16 p2, 0x32

    if-ge p1, p2, :cond_4c

    .line 207
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRawPacketCount:[J

    const-wide/16 v0, 0x0

    aput-wide v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    :cond_4c
    return-void
.end method

.method public setTdtMode(I)V
    .registers 2

    .line 127
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->tdtMode:I

    return-void
.end method

.method public setTrafficStats(JJJJJ)V
    .registers 13

    .line 178
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCnt:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCntDiff:J

    .line 179
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCnt:J

    sub-long v0, p3, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCntDiff:J

    .line 180
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytes:J

    sub-long v0, p5, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytesDiff:J

    .line 181
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytes:J

    sub-long v0, p7, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytesDiff:J

    .line 182
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mLastTime:J

    sub-long v0, p9, v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTrafficTime:J

    .line 184
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktCnt:J

    .line 185
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktCnt:J

    .line 186
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mTxPktBytes:J

    .line 187
    iput-wide p7, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mRxPktBytes:J

    .line 188
    iput-wide p9, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mLastTime:J

    return-void
.end method

.method public setUsageStatsPackage(Ljava/lang/String;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mUsageStatsPackageName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->mPackageNameChangFlag:Z

    return-void
.end method
