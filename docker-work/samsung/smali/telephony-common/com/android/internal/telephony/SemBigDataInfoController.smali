.class public Lcom/android/internal/telephony/SemBigDataInfoController;
.super Landroid/os/Handler;
.source "SemBigDataInfoController.java"


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist LC_TX_TM:[Ljava/lang/String;

.field private static final blacklist NR_TX_TM:[Ljava/lang/String;


# instance fields
.field private blacklist bDMASupport:Z

.field private blacklist bNetworkDiagnosticSupport:Z

.field private blacklist bUtMode:Z

.field private blacklist mBatteryChargeType:I

.field private blacklist mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private blacklist mBatteryStatus:I

.field private blacklist mBatteryVoltage:I

.field private blacklist mBigDataFeature:I

.field private blacklist mBigDataPath:I

.field private blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private blacklist mPreviousSurveyFeature:Ljava/lang/String;

.field private blacklist mScgFailureCount:I

.field private blacklist mScgFailureDupEndTime:J

.field private blacklist mScgFailureDupStartTime:J

.field private blacklist mScgFailureMsg:Ljava/lang/String;

.field private blacklist mSemHqmManager:Landroid/os/SemHqmManager;

.field private blacklist sBigDataAction:Ljava/lang/String;

.field private blacklist sBigDataComId:Ljava/lang/String;

.field private blacklist sBigDataFeature:Ljava/lang/String;

.field private blacklist sBigDataInfo:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryChargeType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataFeature:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataPath:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemBigDataInfoController;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataAction:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataComId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataFeature:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputbUtMode(Lcom/android/internal/telephony/SemBigDataInfoController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bUtMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryChargeType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryStatus(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryVoltage(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryVoltage:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataFeature:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataPath:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataAction:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataComId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataFeature:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minsertLog(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/SemBigDataInfoController;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minsertLogToBatteryStatsService(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->insertLogToBatteryStatsService(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misSemHqmEnable(Lcom/android/internal/telephony/SemBigDataInfoController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->isSemHqmEnable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpreLogCEND(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->preLogCEND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpreLogDROP(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->preLogDROP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 38
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    const-string v0, "NR_TX0_TM"

    const-string v1, "NR_TX1_TM"

    const-string v2, "NR_TX2_TM"

    const-string v3, "NR_TX3_TM"

    const-string v4, "NR_TX4_TM"

    .line 121
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemBigDataInfoController;->NR_TX_TM:[Ljava/lang/String;

    const-string v0, "LC_TX0_TM"

    const-string v1, "LC_TX1_TM"

    const-string v2, "LC_TX2_TM"

    const-string v3, "LC_TX3_TM"

    const-string v4, "LC_TX4_TM"

    .line 126
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemBigDataInfoController;->LC_TX_TM:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 6

    .line 294
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bDMASupport:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bNetworkDiagnosticSupport:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bUtMode:Z

    const-string v1, ""

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    .line 48
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    const-wide/16 v1, 0x0

    .line 49
    iput-wide v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupStartTime:J

    .line 50
    iput-wide v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupEndTime:J

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataComId:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataInfo:Ljava/lang/String;

    .line 108
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataFeature:I

    .line 109
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataFeature:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataAction:Ljava/lang/String;

    .line 111
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataPath:I

    .line 112
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryChargeType:I

    const/4 v2, 0x1

    .line 113
    iput v2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStatus:I

    .line 114
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryVoltage:I

    .line 115
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/SemBigDataInfoController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemBigDataInfoController$1;-><init>(Lcom/android/internal/telephony/SemBigDataInfoController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 296
    iput-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 297
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    .line 298
    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->checkVersionOfDMA(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bDMASupport:Z

    .line 299
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->checkVersionOfNetworkDiagnostic(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bNetworkDiagnosticSupport:Z

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->checkUserTrialEnvironment()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bUtMode:Z

    .line 302
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.intent.action.BIG_DATA_INFO"

    .line 303
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    .line 304
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "sec.intent.action.networkdiagnostic.UT_MODE_CHANGED"

    .line 305
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist checkDuplicated(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 9

    const-string v0, "SCGF"

    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4f

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 471
    iput-wide p3, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupEndTime:J

    .line 472
    sget-boolean p1, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz p1, :cond_40

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "duplicated SCGF is delivered: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "(ea)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemBigDataInfoController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v3

    .line 475
    :cond_41
    iget v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    if-le v0, v3, :cond_48

    .line 476
    invoke-direct {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->updateDuplicated()V

    .line 480
    :cond_48
    iput-wide p3, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupStartTime:J

    .line 481
    iput v3, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    .line 482
    iput-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    goto :goto_64

    .line 484
    :cond_4f
    iget-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 485
    iget p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    if-le p2, v3, :cond_5e

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->updateDuplicated()V

    .line 489
    :cond_5e
    iput v2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    const-string p2, ""

    .line 490
    iput-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    .line 492
    :goto_64
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    return v2
.end method

.method private blacklist checkUserTrialEnvironment()Z
    .registers 2

    const-string p0, "nedi.ut_mode"

    const-string v0, "normal"

    .line 464
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkVersionOfDMA(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    .line 441
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.sec.android.diagmonagent"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const-string v1, "SemBigDataInfoController"

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMA package version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2b

    const v1, 0x202fbf00

    if-lt p0, v1, :cond_2b

    const/4 v0, 0x1

    :catch_2b
    :cond_2b
    return v0
.end method

.method private blacklist checkVersionOfNetworkDiagnostic(Landroid/content/Context;)Z
    .registers 5

    const/4 p0, 0x0

    .line 455
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.samsung.android.networkdiagnostic"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v0, "SemBigDataInfoController"

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkDiagnostic package version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2b

    const v0, 0xe4fa2a2

    if-lt p1, v0, :cond_2b

    const/4 p0, 0x1

    :catch_2b
    :cond_2b
    return p0
.end method

.method private blacklist deleteCID(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string p0, "C_ID"

    .line 416
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_31

    add-int/lit8 v0, p0, 0x7

    const-string v1, "\""

    .line 418
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    return-object p1
.end method

.method private blacklist insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p6

    .line 334
    sget-boolean v15, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    const-string v11, "SemBigDataInfoController"

    if-eqz v15, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertLog - feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_32
    iget-object v1, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_3c

    const-string v0, "insertLog: Context is null"

    .line 337
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3c
    and-int/lit8 v1, v14, 0x2

    const-string v10, "RFDV"

    const/4 v9, 0x1

    if-lez v1, :cond_b7

    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->isSemHqmEnable()Z

    move-result v1

    if-eqz v1, :cond_b7

    if-eqz v15, :cond_50

    const-string v1, "insertLog: send bigdata to HQM server"

    .line 343
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    const/4 v2, 0x0

    const-string v1, "Modem"

    move-object/from16 v3, p1

    .line 355
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 356
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SemBigDataInfoController;->deleteCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v15, :cond_77

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertLog - deleteCIDextra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :cond_76
    move-object v1, v13

    .line 362
    :cond_77
    :goto_77
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_8c

    .line 363
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object/from16 v16, v5

    goto :goto_98

    .line 365
    :cond_8c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    move-object v8, v5

    .line 368
    :goto_98
    iget-object v1, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v1, :cond_b7

    const-string v5, "ph"

    const-string v6, "0.0"

    const-string v7, "sec"

    const-string v17, ""

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v18, v9

    move-object/from16 v9, v16

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    move-object v0, v11

    move-object/from16 v11, p2

    .line 369
    invoke-virtual/range {v1 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_bc

    :cond_b7
    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object v0, v11

    :goto_bc
    and-int/lit8 v1, v14, 0x1

    if-lez v1, :cond_141

    move-object/from16 v1, v19

    .line 376
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    if-eqz v15, :cond_e3

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertLog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " do not send to CF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    return-void

    :cond_e4
    if-eqz v15, :cond_eb

    const-string v1, "insertLog: send bigdata to CF"

    .line 381
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_eb
    move-object v1, v0

    move-object/from16 v0, p0

    .line 383
    invoke-direct {v0, v12, v13}, Lcom/android/internal/telephony/SemBigDataInfoController;->insertLogToNedi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TTSC"

    .line 385
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_141

    if-eqz v15, :cond_100

    const-string v2, "insertLog: send bigdata to CF: TTSC"

    .line 386
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_100
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tracking_id"

    const-string v3, "4K1-399-5554100"

    .line 389
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    .line 390
    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const-string v3, "ev"

    .line 391
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v2, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_12a

    const-string v2, "extra"

    .line 394
    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_12a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 398
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "com.sec.android.diagmonagent"

    .line 400
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v0, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_141
    return-void
.end method

.method private blacklist insertLogToBatteryStatsService(Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SemBigDataInfoController"

    .line 545
    :try_start_6
    sget-boolean v3, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feature: CMAI, extra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "SLP_TM"

    .line 549
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "IDL_TM"

    .line 550
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    new-array v6, v5, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_34
    if-ge v8, v5, :cond_43

    .line 554
    sget-object v9, Lcom/android/internal/telephony/SemBigDataInfoController;->NR_TX_TM:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_43
    const-string v8, "NR_RX_TM"

    .line 556
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "NR_TX_BYTE"

    .line 557
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v11, "NR_RX_BYTE"

    .line 558
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    new-array v13, v5, [I

    :goto_57
    if-ge v7, v5, :cond_66

    .line 562
    sget-object v14, Lcom/android/internal/telephony/SemBigDataInfoController;->LC_TX_TM:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_57

    :cond_66
    const-string v7, "LC_RX_TM"

    .line 564
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v14, "LC_TX_BYTE"

    .line 565
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v5, "LC_RX_BYTE"
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_74} :catch_d7
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_74} :catch_bd

    move-object/from16 v16, v2

    .line 566
    :try_start_76
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v5, "batterystats"

    .line 568
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 570
    new-instance v5, Landroid/os/SemModemActivityInfo$MobileActivity;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Landroid/os/SemModemActivityInfo$MobileActivity;-><init>(I)V

    .line 571
    invoke-virtual {v5, v6}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxTimeMillis([I)V

    .line 572
    invoke-virtual {v5, v8}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxTimeMillis(I)V

    .line 573
    invoke-virtual {v5, v9, v10}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxBytes(J)V

    .line 574
    invoke-virtual {v5, v11, v12}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxBytes(J)V

    .line 576
    new-instance v0, Landroid/os/SemModemActivityInfo$MobileActivity;

    const/4 v6, 0x5

    invoke-direct {v0, v6}, Landroid/os/SemModemActivityInfo$MobileActivity;-><init>(I)V

    .line 577
    invoke-virtual {v0, v13}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxTimeMillis([I)V

    .line 578
    invoke-virtual {v0, v7}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxTimeMillis(I)V

    .line 579
    invoke-virtual {v0, v14, v15}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxBytes(J)V

    .line 580
    invoke-virtual {v0, v2, v3}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxBytes(J)V

    .line 582
    new-instance v2, Landroid/os/SemModemActivityInfo;

    invoke-direct {v2, v1, v4, v5, v0}, Landroid/os/SemModemActivityInfo;-><init>(IILandroid/os/SemModemActivityInfo$MobileActivity;Landroid/os/SemModemActivityInfo$MobileActivity;)V

    move-object/from16 v0, p0

    .line 583
    iget-object v0, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->updateSemModemActivityInfo(Landroid/os/SemModemActivityInfo;)V
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_b6} :catch_b9
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_b6} :catch_b7

    goto :goto_f1

    :catch_b7
    move-exception v0

    goto :goto_c0

    :catch_b9
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_d9

    :catch_bd
    move-exception v0

    move-object/from16 v16, v2

    .line 587
    :goto_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    :catch_d7
    move-exception v0

    move-object v1, v2

    .line 585
    :goto_d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f1
    return-void
.end method

.method private blacklist insertLogToNedi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 513
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bNetworkDiagnosticSupport:Z

    if-nez v0, :cond_5

    return-void

    .line 515
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 516
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->checkDuplicated(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_10

    return-void

    .line 518
    :cond_10
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "feature"

    .line 519
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-boolean v3, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bUtMode:Z

    const-string v4, "ut-mode"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "timestamp"

    .line 521
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_2d

    const-string v0, "extra"

    .line 523
    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_2d
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "sec.intent.action.networkdiagnostic.USE_APP_FEATURE_SURVEY"

    .line 526
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p2, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.networkdiagnostic"

    .line 528
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "CRSH"

    .line 531
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "SemBigDataInfoController"

    if-eqz p1, :cond_8b

    const-wide/32 v3, 0x493e0

    cmp-long p1, v0, v3

    if-gtz p1, :cond_8b

    .line 532
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 533
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    invoke-static {p0, v5, p2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sub-long v0, v3, v0

    .line 535
    sget-boolean p2, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz p2, :cond_86

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertLog: send bigdata to NEDI (after "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    const/4 p2, 0x2

    .line 536
    invoke-virtual {p1, p2, v3, v4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_99

    .line 538
    :cond_8b
    sget-boolean p1, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz p1, :cond_94

    const-string p1, "insertLog: send bigdata to NEDI"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_94
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_99
    return-void
.end method

.method private blacklist isSemHqmEnable()Z
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 313
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    const-string v2, "HqmManagerService"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_2a

    :catch_12
    move-exception p0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSemHqmEnable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemBigDataInfoController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 320
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_3e

    .line 321
    invoke-virtual {v0}, Landroid/os/SemHqmManager;->getCFServerEnable()Z

    move-result v0

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    invoke-virtual {p0}, Landroid/os/SemHqmManager;->getDVServerEnable()Z

    move-result p0

    if-nez v0, :cond_3c

    if-eqz p0, :cond_3e

    :cond_3c
    const/4 p0, 0x1

    return p0

    :cond_3e
    return v1
.end method

.method private blacklist preLogCEND(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\"CHGT\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStatus:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryChargeType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist preLogDROP(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 411
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->preLogCEND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\"BATL\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryVoltage:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist updateDuplicated()V
    .registers 7

    const-string v0, "SemBigDataInfoController"

    :try_start_2
    const-string v1, "content://com.samsung.android.networkdiagnostic.SurveyProvider/SurveyBasicLocal"

    .line 498
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 499
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "feature"

    .line 500
    iget-object v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    .line 501
    iget-object v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "start"

    .line 502
    iget-wide v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupStartTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "end"

    .line 503
    iget-wide v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupEndTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "count"

    .line 504
    iget v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 506
    sget-boolean v1, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz v1, :cond_82

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update duplicated information of SCGF ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_64} :catch_65

    goto :goto_82

    :catch_65
    move-exception p0

    .line 508
    sget-boolean v1, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz v1, :cond_82

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update duplicated information of SCGF failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 428
    iget p0, p1, Landroid/os/Message;->what:I

    .line 430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message with number: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemBigDataInfoController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
