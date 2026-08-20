.class public Lcom/android/internal/telephony/SignalStrengthController;
.super Landroid/os/Handler;
.source "SignalStrengthController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;,
        Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;
    }
.end annotation


# static fields
.field private static final blacklist POLL_PERIOD_MILLIS:J

.field private static final blacklist SIGNAL_STRENGTH_REFRESH_THRESHOLD_IN_MS:J


# instance fields
.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mLastSignalStrength:Landroid/telephony/SignalStrength;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mLteRsrpBoost:I

.field private blacklist mNrRsrpBoost:[I

.field private blacklist mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRsrpBoostLock:Ljava/lang/Object;

.field private blacklist mSignalBarInfo:Landroid/telephony/SignalBarInfo;

.field private final blacklist mSignalRequestRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSignalStrength:Landroid/telephony/SignalStrength;

.field private final blacklist mSignalStrengthLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mSignalStrengthUpdatedTime:J


# direct methods
.method public static synthetic blacklist $r8$lambda$4Hz8txT3RiS7V8_46FdgzXN6650(ILjava/lang/Integer;Ljava/lang/Integer;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SignalStrengthController;->lambda$getConsolidatedSignalThresholds$1(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$J_uQ9drEBXByJlLRynCHCseGOGU(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->lambda$shouldHonorSystemThresholds$2(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Y-Ry1J3-ANy6MROM7q5ysdLBQWU(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->lambda$updateAlwaysReportSignalStrength$3(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$f6d96MfFe5aU-WPW8VRo8ymoKzU(Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->lambda$handleMessage$0(Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SignalStrengthController;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlocalLog(Lcom/android/internal/telephony/SignalStrengthController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/SignalStrengthController;->SIGNAL_STRENGTH_REFRESH_THRESHOLD_IN_MS:J

    const-wide/16 v1, 0x14

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/SignalStrengthController;->POLL_PERIOD_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 183
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 126
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    .line 129
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthLog:Lcom/android/internal/telephony/LocalLog;

    .line 137
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 142
    iput v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    .line 148
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    .line 150
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mRsrpBoostLock:Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    .line 161
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 164
    new-instance v1, Lcom/android/internal/telephony/SignalStrengthController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SignalStrengthController$1;-><init>(Lcom/android/internal/telephony/SignalStrengthController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 185
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x4

    .line 187
    invoke-interface {v1, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v3, 0x5

    .line 188
    invoke-interface {v1, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    invoke-interface {v1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->setSignalStrengthDefaultValues()V

    .line 193
    new-instance v1, Landroid/telephony/SignalBarInfo;

    invoke-direct {v1}, Landroid/telephony/SignalBarInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    .line 195
    iget-object v1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v2, 0x3e9

    invoke-interface {v1, p0, v2, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForSignalBarInfoChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    if-eqz v1, :cond_6a

    const/16 v2, 0x3eb

    .line 200
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x3ec

    .line 201
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    :cond_6a
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist consolidatedAndSetReportingCriteria(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;)V"
        }
    .end annotation

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    .line 647
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 648
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalThresholdInfo;

    .line 649
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v2

    .line 650
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v3

    .line 651
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->isEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_33

    .line 656
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->shouldHonorSystemThresholds()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 657
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    goto :goto_35

    :cond_33
    new-array v1, v5, [I

    :goto_35
    const/4 v6, 0x1

    .line 653
    invoke-virtual {p0, v2, v3, v1, v6}, Lcom/android/internal/telephony/SignalStrengthController;->getConsolidatedSignalThresholds(II[II)[I

    move-result-object v1

    .line 660
    iget-object v7, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 664
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 665
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->isDeviceIdle()Z

    move-result v8

    .line 661
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/android/internal/telephony/SignalStrengthController;->shouldEnableSignalThresholdForAppRequest(IIIZ)Z

    move-result v7

    .line 666
    new-instance v8, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v8}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 668
    invoke-virtual {v8, v2}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    .line 669
    invoke-virtual {v2, v3}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    const/16 v3, 0xbb8

    .line 670
    invoke-virtual {v2, v3}, Landroid/telephony/SignalThresholdInfo$Builder;->setHysteresisMs(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 671
    invoke-virtual {v2, v3}, Landroid/telephony/SignalThresholdInfo$Builder;->setHysteresisDb(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    .line 672
    invoke-virtual {v2, v1, v6}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([IZ)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v1

    if-nez v4, :cond_6a

    if-eqz v7, :cond_6b

    :cond_6a
    move v5, v6

    .line 673
    :cond_6b
    invoke-virtual {v1, v5}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 666
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 676
    :cond_77
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSignalStrengthReportingCriteria(Ljava/util/List;Landroid/os/Message;)V

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSignalStrengthReportingCriteria consolidatedSignalThresholdInfos="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;I)I"
        }
    .end annotation

    if-eqz p0, :cond_2b

    .line 1023
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1024
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_28

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_28

    return v0

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2b
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3e

    const/4 v1, 0x0

    move v2, v1

    .line 1048
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_3e

    const/4 v3, 0x0

    .line 1050
    :try_start_d
    aget-object v4, p0, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1051
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1a

    return-object v3

    .line 1058
    :cond_1a
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 1059
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v5, v4, :cond_2a

    return-object v3

    .line 1068
    :cond_2a
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_d .. :try_end_3a} :catch_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_3a} :catch_3d

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catch_3d
    return-object v3

    :cond_3e
    return-object v0
.end method

.method private static blacklist createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;
    .registers 5

    .line 1101
    new-instance v0, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 1102
    invoke-virtual {v0, p0}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1103
    invoke-virtual {p0, p1}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1104
    invoke-virtual {p0, p2}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1105
    invoke-virtual {p0, p3}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1106
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 3

    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 901
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1d

    .line 904
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1d

    return-object p0

    .line 910
    :cond_1d
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z
    .registers 4

    .line 882
    invoke-virtual {p2}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v0

    if-ne p0, v0, :cond_e

    .line 883
    invoke-virtual {p2}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result p0

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static blacklist isSignalReportRequestedWhileIdle(Landroid/telephony/SignalStrengthUpdateRequest;)Z
    .registers 2

    .line 888
    invoke-virtual {p0}, Landroid/telephony/SignalStrengthUpdateRequest;->isSystemThresholdReportingRequestedWhileIdle()Z

    move-result v0

    if-nez v0, :cond_f

    .line 889
    invoke-virtual {p0}, Landroid/telephony/SignalStrengthUpdateRequest;->isReportingRequestedWhileIdle()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static synthetic blacklist lambda$getConsolidatedSignalThresholds$1(ILjava/lang/Integer;Ljava/lang/Integer;)I
    .registers 5

    .line 795
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p0

    if-lt v0, v1, :cond_18

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p0

    if-gt v0, v1, :cond_18

    const/4 p0, 0x0

    return p0

    .line 798
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$handleMessage$0(Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .registers 4

    .line 230
    iget v0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mCallingUid:I

    iget v1, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mCallingUid:I

    if-ne v0, v1, :cond_e

    iget p1, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    iget p0, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static synthetic blacklist lambda$shouldHonorSystemThresholds$2(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .registers 3

    .line 845
    iget v0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne p0, v0, :cond_e

    iget-object p0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    .line 846
    invoke-virtual {p0}, Landroid/telephony/SignalStrengthUpdateRequest;->isSystemThresholdReportingRequestedWhileIdle()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static synthetic blacklist lambda$updateAlwaysReportSignalStrength$3(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .registers 3

    .line 944
    iget v0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne v0, p0, :cond_e

    iget-object p0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-static {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isSignalReportRequestedWhileIdle(Landroid/telephony/SignalStrengthUpdateRequest;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private blacklist localLog(Ljava/lang/String;)V
    .registers 4

    const-string v0, "SSCtr"

    .line 1232
    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSCtr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SSCtr"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SSCtr"

    .line 1227
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onCarrierConfigChanged()V
    .registers 2

    .line 1087
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "Carrier Config changed."

    .line 1092
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->logd(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateArfcnLists()V

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    return-void
.end method

.method private blacklist onReset()V
    .registers 1

    .line 372
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->setDefaultSignalStrengthReportingCriteria()V

    return-void
.end method

.method private blacklist onSignalStrengthResult(Landroid/os/AsyncResult;)Z
    .registers 9

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 404
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5f

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_5f

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5f

    .line 405
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SignalStrength;

    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p1, v1}, Landroid/telephony/SignalStrength;->setSignalBar(Landroid/telephony/SignalBarInfo;)V

    .line 408
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 410
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v5, ""

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 412
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_58

    .line 413
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_59

    :cond_58
    const/4 v6, 0x0

    .line 414
    :goto_59
    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/telephony/SignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;Ljava/lang/String;Z)V

    .line 416
    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_7c

    .line 418
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->logd(Ljava/lang/String;)V

    .line 419
    new-instance p1, Landroid/telephony/SignalStrength;

    invoke-direct {p1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 422
    :goto_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthUpdatedTime:J

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->notifySignalStrength()Z

    move-result p0

    return p0
.end method

.method private blacklist setDefaultSignalStrengthReportingCriteria()V
    .registers 7

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->GERAN:[I

    const/4 v2, 0x1

    .line 582
    invoke-static {v2, v1, v2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 581
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN:[I

    const/4 v3, 0x2

    .line 588
    invoke-static {v3, v1, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 587
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRP:[I

    const/4 v3, 0x3

    .line 594
    invoke-static {v3, v1, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 593
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->CDMA2000:[I

    const/4 v4, 0x4

    .line 600
    invoke-static {v2, v1, v4, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 599
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 607
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRQ:[I

    const/4 v5, 0x0

    .line 608
    invoke-static {v4, v1, v3, v5}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 607
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 613
    sget-object v4, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSSNR:[I

    .line 614
    invoke-static {v1, v4, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 613
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRP:[I

    const/4 v3, 0x6

    .line 622
    invoke-static {v3, v1, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 621
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 627
    sget-object v2, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRQ:[I

    .line 628
    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 627
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 633
    sget-object v2, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSSINR:[I

    .line 634
    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 633
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_6e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->consolidatedAndSetReportingCriteria(Ljava/util/List;)V

    return-void
.end method

.method private blacklist shouldRefreshSignalStrength()Z
    .registers 8

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 446
    iget-wide v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthUpdatedTime:J

    cmp-long v4, v2, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v4, :cond_16

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/internal/telephony/SignalStrengthController;->SIGNAL_STRENGTH_REFRESH_THRESHOLD_IN_MS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    goto :goto_16

    :cond_14
    move v0, v6

    goto :goto_17

    :cond_16
    :goto_16
    move v0, v5

    :goto_17
    if-nez v0, :cond_1a

    return v6

    .line 450
    :cond_1a
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 451
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 452
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 454
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 455
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 459
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 460
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 461
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 464
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v1

    if-nez v1, :cond_40

    return v5

    :cond_71
    return v6
.end method

.method private blacklist updateAlwaysReportSignalStrength()V
    .registers 4

    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 943
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 948
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->setAlwaysReportSignalStrength(Z)V

    return-void
.end method


# virtual methods
.method public blacklist clearSignalStrengthUpdateRequest(IILandroid/telephony/SignalStrengthUpdateRequest;Landroid/os/Message;)V
    .registers 7

    .line 767
    new-instance v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;-><init>(Lcom/android/internal/telephony/SignalStrengthController;IILandroid/telephony/SignalStrengthUpdateRequest;)V

    .line 768
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x2

    invoke-virtual {p0, p4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 771
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearSignalStrengthUpdateRequest subId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callingUid="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " request="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method blacklist dispose()V
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForSignalBarInfoChange(Landroid/os/Handler;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 361
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 362
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    :cond_1a
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrengthController - phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SignalStrengthController - Log Begin ----"

    .line 723
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, "SignalStrengthController - Log End ----"

    .line 725
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSignalRequestRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLastSignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLteRsrpBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNrRsrpBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mEarfcnPairListForRsrpBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNrarfcnRangeListForRsrpBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 737
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " RSSI level Log:"

    .line 739
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 741
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 743
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getConsolidatedSignalThresholds(II[II)[I
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 794
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p4}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const/4 p4, 0x0

    if-eqz p3, :cond_1d

    .line 802
    array-length v1, p3

    move v2, p4

    :goto_f
    if-ge v2, v1, :cond_1d

    aget v3, p3, v2

    .line 803
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 807
    :cond_1d
    iget-object p3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->isDeviceIdle()Z

    move-result p3

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 812
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 813
    iget v3, v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne v1, v3, :cond_2f

    if-eqz p3, :cond_4a

    iget-object v3, v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    .line 814
    invoke-virtual {v3}, Landroid/telephony/SignalStrengthUpdateRequest;->isReportingRequestedWhileIdle()Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_2f

    .line 817
    :cond_4a
    iget-object v2, v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v2}, Landroid/telephony/SignalStrengthUpdateRequest;->getSignalThresholdInfos()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SignalThresholdInfo;

    .line 818
    invoke-static {p1, p2, v3}, Lcom/android/internal/telephony/SignalStrengthController;->isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 819
    invoke-virtual {v3}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v3

    array-length v4, v3

    move v5, p4

    :goto_6c
    if-ge v5, v4, :cond_54

    aget v6, v3, v5

    .line 820
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    .line 826
    :cond_7a
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 828
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_84
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p3, p4, 0x1

    .line 829
    aput p2, p0, p4

    move p4, p3

    goto :goto_84

    :cond_9a
    return-object p0
.end method

.method public blacklist getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 2

    .line 434
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->shouldRefreshSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "getSignalStrength() refreshing signal strength."

    .line 435
    invoke-static {v0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 436
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method blacklist getSignalStrengthFromCi()V
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_106

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_102

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_102

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_138

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message with number: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    goto/16 :goto_136

    .line 323
    :pswitch_2a
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->onCarrierConfigChanged()V

    goto/16 :goto_136

    .line 317
    :pswitch_2f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    goto/16 :goto_136

    .line 310
    :pswitch_38
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_136

    .line 298
    :pswitch_45
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    return-void

    .line 302
    :cond_4f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 303
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    goto/16 :goto_136

    .line 219
    :pswitch_58
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->onReset()V

    goto/16 :goto_136

    .line 289
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    goto/16 :goto_136

    .line 258
    :pswitch_62
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 260
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 261
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 264
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 265
    :cond_74
    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 266
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 267
    iget-object v4, v3, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v4}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v5}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 270
    :try_start_92
    iget-object v4, v3, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v4}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_9b

    .line 274
    :catch_9b
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_74

    .line 278
    :cond_9f
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateAlwaysReportSignalStrength()V

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    if-eqz p1, :cond_136

    .line 282
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 283
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_136

    .line 222
    :pswitch_af
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 224
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 225
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 226
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 229
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 233
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setSignalStrengthUpdateRequest called again with same subId"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 235
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_136

    .line 240
    :cond_dd
    :try_start_dd
    iget-object v3, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v3}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_e6} :catch_f5
    .catch Ljava/lang/NullPointerException; {:try_start_dd .. :try_end_e6} :catch_f5

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateAlwaysReportSignalStrength()V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    .line 253
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_136

    .line 242
    :catch_f5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Signal request client is already dead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 244
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_136

    .line 343
    :cond_102
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->recalculateSignalStrength()V

    goto :goto_136

    .line 329
    :cond_106
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 330
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_136

    .line 331
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SignalBarInfo;

    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    if-nez p1, :cond_11c

    const-string p1, "EVENT_SIGNAL_LEVEL_INFO_CHANGED - mSignalBarInfo is null"

    .line 333
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->logd(Ljava/lang/String;)V

    goto :goto_136

    .line 336
    :cond_11c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SIGNAL_LEVEL_INFO_CHANGED - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalBarInfo:Landroid/telephony/SignalBarInfo;

    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->logd(Ljava/lang/String;)V

    :cond_136
    :goto_136
    return-void

    nop

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_af
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_58
        :pswitch_45
        :pswitch_38
        :pswitch_2f
        :pswitch_45
        :pswitch_2a
    .end packed-switch
.end method

.method blacklist notifySignalStrength()Z
    .registers 6

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_30

    .line 694
    :try_start_b
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifySignalStrength()V

    const/4 v2, 0x1

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_30

    :catch_16
    move-exception v1

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "SignalStrength not notified"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    .line 703
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_48

    .line 705
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getSignalBar()Landroid/telephony/SignalBarInfo;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getSignalBar()Landroid/telephony/SignalBarInfo;

    move-result-object v0

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSignalBar()Landroid/telephony/SignalBarInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/telephony/SignalBarInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 706
    :cond_48
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-static {v0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    .line 708
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_54
    return v2
.end method

.method blacklist onDeviceIdleStateChanged(Z)V
    .registers 4

    .line 850
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceIdleStateChanged isDeviceIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist recalculateSignalStrength()V
    .registers 4

    .line 1244
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Landroid/telephony/SignalStrength;

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {v1, v2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    return-void
.end method

.method blacklist setSignalStrengthDefaultValues()V
    .registers 3

    .line 683
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthUpdatedTime:J

    return-void
.end method

.method public blacklist setSignalStrengthUpdateRequest(IILandroid/telephony/SignalStrengthUpdateRequest;Landroid/os/Message;)V
    .registers 7

    .line 752
    new-instance v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;-><init>(Lcom/android/internal/telephony/SignalStrengthController;IILandroid/telephony/SignalStrengthUpdateRequest;)V

    .line 753
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x1

    invoke-virtual {p0, p4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 756
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSignalStrengthUpdateRequest subId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callingUid="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " request="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist shouldEnableSignalThresholdForAppRequest(IIIZ)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 864
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 865
    iget v1, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-eq p3, v1, :cond_17

    goto :goto_6

    .line 868
    :cond_17
    iget-object v1, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v1}, Landroid/telephony/SignalStrengthUpdateRequest;->getSignalThresholdInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalThresholdInfo;

    .line 869
    invoke-static {p1, p2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    if-eqz p4, :cond_3d

    iget-object v2, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    .line 870
    invoke-static {v2}, Lcom/android/internal/telephony/SignalStrengthController;->isSignalReportRequestedWhileIdle(Landroid/telephony/SignalStrengthUpdateRequest;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_3d
    const/4 p0, 0x1

    return p0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist shouldHonorSystemThresholds()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isDeviceIdle()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 843
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 844
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method blacklist updateArfcnLists()V
    .registers 5

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 953
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "lte_earfcns_rsrp_boost_int"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    .line 955
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "boosted_lte_earfcns_string_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 957
    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 960
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "nrarfcns_rsrp_boost_int_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    .line 962
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "boosted_nrarfcns_string_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 964
    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    .line 967
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    if-nez v2, :cond_3a

    if-nez v1, :cond_49

    :cond_3a
    if-eqz v2, :cond_3e

    if-eqz v1, :cond_49

    :cond_3e
    if-eqz v2, :cond_53

    if-eqz v1, :cond_53

    array-length v2, v2

    .line 970
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v2, v1, :cond_53

    :cond_49
    const-string v1, "Invalid parameters for NR RSRP boost"

    .line 971
    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 972
    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    .line 973
    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    .line 975
    :cond_53
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public blacklist updateReportingCriteria()V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "gsm_rssi_thresholds_int_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 485
    invoke-static {v2, v1, v2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 484
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_17
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v3, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_29

    const/4 v3, 0x2

    .line 496
    invoke-static {v3, v1, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 495
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_29
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v3, "parameters_used_for_lte_signal_bar_int"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 505
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v4, "lte_rsrp_thresholds_int_array"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v3, :cond_4b

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_43

    move v6, v2

    goto :goto_44

    :cond_43
    move v6, v5

    .line 509
    :goto_44
    invoke-static {v4, v3, v4, v6}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v3

    .line 508
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_4b
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 517
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v6, "lte_rsrq_thresholds_int_array"

    invoke-virtual {v3, v6}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v6, 0x4

    if-eqz v3, :cond_72

    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_6a

    move v7, v2

    goto :goto_6b

    :cond_6a
    move v7, v5

    .line 521
    :goto_6b
    invoke-static {v6, v3, v4, v7}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v3

    .line 520
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_72
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v7, "lte_rssnr_thresholds_int_array"

    invoke-virtual {v3, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_8a

    const/4 v7, 0x5

    and-int/2addr v1, v6

    if-eqz v1, :cond_82

    move v1, v2

    goto :goto_83

    :cond_82
    move v1, v5

    .line 532
    :goto_83
    invoke-static {v7, v3, v4, v1}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 531
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_8a
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v3, "parameters_use_for_5g_nr_signal_bar_int"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 541
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v4, "5g_nr_ssrsrp_thresholds_int_array"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x6

    if-eqz v3, :cond_ab

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_a3

    move v7, v2

    goto :goto_a4

    :cond_a3
    move v7, v5

    .line 545
    :goto_a4
    invoke-static {v4, v3, v4, v7}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v3

    .line 544
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_ab
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v7, "5g_nr_ssrsrq_thresholds_int_array"

    invoke-virtual {v3, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_c4

    const/4 v7, 0x7

    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_bc

    move v8, v2

    goto :goto_bd

    :cond_bc
    move v8, v5

    .line 556
    :goto_bd
    invoke-static {v7, v3, v4, v8}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v3

    .line 555
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_c4
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v7, "5g_nr_sssinr_thresholds_int_array"

    invoke-virtual {v3, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_dc

    const/16 v7, 0x8

    and-int/2addr v1, v6

    if-eqz v1, :cond_d4

    goto :goto_d5

    :cond_d4
    move v2, v5

    .line 567
    :goto_d5
    invoke-static {v7, v3, v4, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 566
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_dc
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->consolidatedAndSetReportingCriteria(Ljava/util/List;)V

    return-void
.end method

.method blacklist updateServiceStateArfcnRsrpBoost(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 987
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_7
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x6

    if-eq v2, v3, :cond_13

    goto :goto_3d

    .line 998
    :cond_13
    check-cast p2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p2

    if-eq p2, v4, :cond_3d

    .line 1000
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    invoke-static {v2, p2}, Lcom/android/internal/telephony/SignalStrengthController;->containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)I

    move-result p2

    if-eq p2, v4, :cond_3d

    .line 1002
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    if-eqz p0, :cond_3d

    .line 1003
    aget p0, p0, p2

    move v0, p0

    goto :goto_3d

    .line 990
    :cond_2b
    check-cast p2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p2

    if-eq p2, v4, :cond_3d

    .line 991
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 992
    invoke-static {v2, p2}, Lcom/android/internal/telephony/SignalStrengthController;->containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)I

    move-result p2

    if-eq p2, v4, :cond_3d

    .line 994
    iget v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    .line 1010
    :cond_3d
    :goto_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_42

    .line 1011
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setArfcnRsrpBoost(I)V

    return-void

    :catchall_42
    move-exception p0

    .line 1010
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method
