.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;
.super Lcom/samsung/android/wifi/SemWifiApClientDetails;
.source "SemWifiApClientLowLevelDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails$SemWifiApClientHandler;
    }
.end annotation


# static fields
.field private static final CLIENT_TIME_LIMIT_TIMEOUT:I = 0x1

.field private static final CLIENT_TIME_OUT_TAG:Ljava/lang/String; = "client_time_limit_handler_tag"

.field private static TAG:Ljava/lang/String; = "SemWifiApClientLowLevelDetails"

.field private static mSemWifiApClientHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails$SemWifiApClientHandler;


# instance fields
.field private mClientActiveSessionTotalDataConsumed:J

.field private mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

.field private mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails$SemWifiApClientHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails$SemWifiApClientHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApClientHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails$SemWifiApClientHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;JJZJJZZZ)V
    .registers 32

    move-object v13, p0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p11

    move-wide/from16 v10, p13

    move/from16 v12, p15

    .line 34
    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZ)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, v13, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    move/from16 v0, p17

    .line 39
    iput-boolean v0, v13, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isMhsDebug:Z

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, v13, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionTotalDataConsumed:J

    move-object/from16 v0, p5

    .line 41
    iput-object v0, v13, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    move/from16 v0, p16

    .line 42
    iput-boolean v0, v13, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isCellularStream:Z

    move/from16 v0, p10

    .line 43
    iput-boolean v0, v13, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPausedFromUi:Z

    .line 44
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApClientHandler:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails$SemWifiApClientHandler;

    const-string v2, "client_time_limit_handler_tag"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p2, v0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v4

    move/from16 p8, v5

    move-object/from16 p9, p0

    invoke-direct/range {p2 .. p9}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    iput-object v0, v13, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkClientAllSetting()V

    return-void
.end method

.method private cancelClientTimeLimitTimer()V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 309
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time Limit timer cancelled for device MAC :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkClientAllSetting()V
    .registers 5

    .line 355
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPausedFromUi:Z

    if-eqz v0, :cond_32

    .line 356
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseInternet(Ljava/lang/String;J)V

    .line 357
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " internet is paused by user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_32
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkClientTimeLimitConditions_2()V

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkDataLimitReachedConditions_3()V

    return-void
.end method

.method private checkClientTimeLimitConditions_2()V
    .registers 9

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    const-string v1, "MAC: "

    if-eqz v0, :cond_96

    .line 226
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientTimeLimit:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_71

    .line 227
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientTimeLimit:J

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalTime()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_40

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->timerLogicWhenTimeLimitIsSetButNotReached()V

    .line 230
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : timer is set"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    :cond_40
    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->stopTheTiming()V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseInternet(Ljava/lang/String;J)V

    .line 235
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : timer reached and internet is paused"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 238
    :cond_71
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->timerLogicWhenTimeLimitIsNotSet()V

    .line 239
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : timer is reset"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    :cond_96
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->stopTheTiming()V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->resumeInternet(Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : client disconnected and stop the timing"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c6
    return-void
.end method

.method private checkDataLimitReachedConditions_3()V
    .registers 9

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    const-string v1, "MAC : "

    if-eqz v0, :cond_d0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isCellularStream:Z

    if-eqz v0, :cond_d0

    .line 119
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientDataLimit:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_9b

    .line 120
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientDataLimit:J

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_6f

    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPauseByTimeLimit:Z

    if-nez v0, :cond_13f

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByUser()Z

    move-result v0

    if-nez v0, :cond_13f

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionTotalDataConsumed()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientDataLimit:J

    add-long/2addr v3, v5

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseInternet(Ljava/lang/String;J)V

    .line 124
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+ cellular stream: called paused : Target Data : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientActiveSessionTotalDataConsumed()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientDataLimit:J

    add-long/2addr v3, v5

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13f

    .line 128
    :cond_6f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseInternet(Ljava/lang/String;J)V

    .line 129
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , pause the internet because data limit reached"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13f

    .line 132
    :cond_9b
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPauseByTimeLimit:Z

    if-nez v0, :cond_13f

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByUser()Z

    move-result v0

    if-nez v0, :cond_13f

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->resumeInternet(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , resume internet as no set data limit"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 137
    :cond_d0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isCellularStream:Z

    if-nez v0, :cond_10f

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    if-eqz v0, :cond_10f

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPauseByTimeLimit:Z

    if-nez v0, :cond_10f

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByUser()Z

    move-result v0

    if-nez v0, :cond_10f

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->resumeInternet(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , resume internet as wifi sharing is on and internet is not pause by time limit and by user"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 141
    :cond_10f
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    if-nez v0, :cond_13f

    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->resumeInternet(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , resume internet as client disconnected"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13f
    :goto_13f
    return-void
.end method

.method private registerClientTimeLimitTimeOutTimer()V
    .registers 6

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayIntermediateTimeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4c

    .line 314
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientTimeLimit:J

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_80

    .line 316
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mTimeLimitTimeoutWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 317
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time Limit timer is register for device MAC :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for time(milliSeconds) : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 320
    :cond_4c
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t register the timelimit for device MAC :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mClientCurrentDayIntermediateTimeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayIntermediateTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    :goto_80
    return-void
.end method

.method private resetClientTimeLimitTimer()V
    .registers 1

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->cancelClientTimeLimitTimer()V

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->registerClientTimeLimitTimeOutTimer()V

    return-void
.end method

.method private startTheTiming()V
    .registers 5

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByUser()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPauseByTimeLimit:Z

    if-nez v0, :cond_3c

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayIntermediateTimeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3c

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 275
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Timing started"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 277
    :cond_3c
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t start the timing data is paused by time or user"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return-void
.end method

.method private timerLogicWhenTimeLimitIsNotSet()V
    .registers 4

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByUser()Z

    move-result v0

    const-string v1, "MAC: "

    if-nez v0, :cond_30

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->startTheTiming()V

    .line 213
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : starting the time as internet is not paused by user"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 215
    :cond_30
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->stopTheTiming()V

    .line 216
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : stop the time as internet is paused by user"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_54
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByUser()Z

    move-result v0

    if-nez v0, :cond_69

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByDataLimit()Z

    move-result v0

    if-nez v0, :cond_69

    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->resumeInternet(Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method private timerLogicWhenTimeLimitIsSetButNotReached()V
    .registers 4

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByUser()Z

    move-result v0

    const-string v1, "MAC: "

    if-nez v0, :cond_33

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->startTheTiming()V

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->resetClientTimeLimitTimer()V

    .line 198
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : starting the time as internet is not paused by user"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 200
    :cond_33
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->stopTheTiming()V

    .line 201
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : stop the time as internet is paused by user"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_57
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByUser()Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataPausedByDataLimit()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 205
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->resumeInternet(Ljava/lang/String;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method public clientConnectedAgain(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    if-nez v0, :cond_19

    .line 53
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isCellularStream:Z

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIpAddress:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsConnected:Z

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientRecentConnectionTimeStamp:J

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkClientAllSetting()V

    goto :goto_20

    .line 61
    :cond_19
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    const-string p1, "Exception : client already connected, attempt to make it connected again"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method

.method public clientDisconnected()V
    .registers 4

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIpAddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsConnected:Z

    const-wide/16 v0, -0x1

    .line 74
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientRecentConnectionTimeStamp:J

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkClientTimeLimitConditions_2()V

    .line 76
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client disconnected mac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 78
    :cond_33
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    const-string v0, "Exception : trying to make client disconnected even though it is already disconnected"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method public dateChangedOccur(JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    .line 99
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayMobileDataUsageNotIncludeActiveSession:J

    .line 101
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientTotalTimeOnCurrentDayNotIncludedActiveCounter:J

    const-wide/16 p1, -0x1

    .line 102
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->cancelClientTimeLimitTimer()V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkClientAllSetting()V

    return-void
.end method

.method public getClientActiveSessionTotalDataConsumed()J
    .registers 3

    .line 186
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionTotalDataConsumed:J

    return-wide v0
.end method

.method public getSemWifiApEbf()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;
    .registers 1

    .line 364
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    return-object p0
.end method

.method public isClientDataLimitReached()Z
    .registers 5

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientDataLimitSet()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientDataLimit:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isClientDataLimitSet()Z
    .registers 5

    .line 178
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientTimeLimit:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public mhsIsOff()V
    .registers 4

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIpAddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsConnected:Z

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayMobileDataUsageNotIncludeActiveSession:J

    const-wide/16 v0, 0x0

    .line 88
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    .line 89
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionMobileDataConsumed:J

    .line 90
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionTotalDataConsumed:J

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkClientTimeLimitConditions_2()V

    .line 93
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MHS off for client : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setClientDataLimit(J)V
    .registers 6

    .line 170
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientDataLimit:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_37

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_37

    .line 171
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientDataLimit:J

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkDataLimitReachedConditions_3()V

    .line 173
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Data Limit call for = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public setClientDataPausedByUser(Z)V
    .registers 7

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 337
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPausedFromUi:Z

    if-eq v0, p1, :cond_7b

    const-string v0, "MAC: "

    if-eqz p1, :cond_41

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientInternetPaused()Z

    move-result v1

    if-nez v1, :cond_41

    .line 339
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseInternet(Ljava/lang/String;J)V

    .line 340
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : user pause the data"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :cond_41
    if-nez p1, :cond_73

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientInternetPaused()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 342
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mSemWifiApEbf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->resumeInternet(Ljava/lang/String;)V

    .line 343
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : user resume the data and internet is not paused by time and data limit therefore resume the internet"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_73
    :goto_73
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPausedFromUi:Z

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkClientTimeLimitConditions_2()V

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkDataLimitReachedConditions_3()V

    :cond_7b
    return-void
.end method

.method public setClientIsDataPauseByTimeLimit(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIsDataPauseByTimeLimit:Z

    return-void
.end method

.method public setClientMobileAndTotalDataConsumed(J)V
    .registers 7

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 159
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionTotalDataConsumed:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1a

    sub-long v0, p1, v0

    .line 161
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionMobileDataConsumed:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionMobileDataConsumed:J

    .line 162
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    .line 163
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionTotalDataConsumed:J

    :cond_1a
    return-void
.end method

.method public setClientTimeLimit(J)V
    .registers 6

    .line 255
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientTimeLimit:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3a

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3a

    .line 256
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientTimeLimit:J

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkClientTimeLimitConditions_2()V

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkDataLimitReachedConditions_3()V

    .line 259
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : time limit is set to = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method public setClientTotalDataConsumed(J)V
    .registers 5

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionTotalDataConsumed:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    .line 151
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientActiveSessionTotalDataConsumed:J

    :cond_e
    return-void
.end method

.method public stopTheTiming()V
    .registers 5

    .line 264
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayIntermediateTimeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_36

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientTodayTotalTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientTotalTimeOnCurrentDayNotIncludedActiveCounter:J

    .line 266
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->cancelClientTimeLimitTimer()V

    .line 268
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : timer stop"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method public streamChanged(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isCellularStream:Z

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->isClientConnected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->checkClientAllSetting()V

    :cond_b
    return-void
.end method

.method public updateNameAndIp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 66
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientIpAddress:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->mClientName:Ljava/lang/String;

    return-void
.end method
