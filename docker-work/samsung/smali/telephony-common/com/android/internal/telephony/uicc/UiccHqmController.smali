.class public Lcom/android/internal/telephony/uicc/UiccHqmController;
.super Landroid/os/Handler;
.source "UiccHqmController.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/UiccHqmConstants;


# static fields
.field private static final blacklist PROJECT_SIM_NUM:I

.field private static greylist mInstance:Lcom/android/internal/telephony/uicc/UiccHqmController;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final greylist mLock:Ljava/lang/Object;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# instance fields
.field public blacklist mContext:Landroid/content/Context;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPbState:[I

.field private blacklist mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSimState:[I

.field private blacklist mUiccHqmState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$0ObSucSMWwCp0BXP0Ns-8ALpDOI(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->lambda$getEsimProfileCount$1(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Ni7vYvoC5xNmoR1RuWJunDtCYqM(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->lambda$getEsimProfileEnabledStatus$2(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$bCGoWEpfhNuKMu5sr5YZpoW1yH4(Lcom/android/internal/telephony/uicc/UiccHqmController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->lambda$sendUiccHqm$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimState(Lcom/android/internal/telephony/uicc/UiccHqmController;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUiccHqmState(Lcom/android/internal/telephony/uicc/UiccHqmController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSimState(Lcom/android/internal/telephony/uicc/UiccHqmController;ILjava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getSimState(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendSchgInfo(Lcom/android/internal/telephony/uicc/UiccHqmController;IIILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendSchgInfo(IIILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendUiccHqm(Lcom/android/internal/telephony/uicc/UiccHqmController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendUiccHqm()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPbStateBySimState(Lcom/android/internal/telephony/uicc/UiccHqmController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->setPbStateBySimState(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mLock:Ljava/lang/Object;

    .line 41
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;[Lcom/android/internal/telephony/SemCommandsInterface;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 42
    sget v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    .line 43
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    .line 87
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccHqmController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccHqmController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "UiccHqmController"

    const-string v1, "UiccHqmController() : create"

    .line 59
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->checkIfAlarmSent()I

    .line 62
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 p1, 0x0

    move p2, p1

    .line 63
    :goto_24
    sget v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    if-ge p2, v0, :cond_33

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    aput p1, v0, p2

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_33
    move p2, p1

    .line 67
    :goto_34
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    array-length v1, v0

    if-ge p2, v1, :cond_45

    .line 68
    aget-object v0, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_34

    .line 70
    :cond_45
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.UICC_HQM_DATA"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.intent.action.UICC_HQM_TIME_UP"

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist checkIfAlarmSent()I
    .registers 7

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uicc_hqm_alarm_time"

    const-wide/16 v2, 0x0

    .line 311
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_21

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    .line 315
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->setAlarm(J)V

    :cond_1d
    const/4 v0, 0x0

    .line 317
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    goto :goto_24

    :cond_21
    const/4 v0, 0x1

    .line 319
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    .line 321
    :goto_24
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    return p0
.end method

.method private blacklist checkPbCheckComplete()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 182
    :goto_2
    sget v2, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_32

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pbstate["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UiccHqmController"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aget v2, v2, v1

    if-nez v2, :cond_2f

    return v0

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist checkSimLoadedComplete()Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 170
    :goto_3
    sget v3, Lcom/android/internal/telephony/uicc/UiccHqmController;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_15

    .line 171
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    aget v3, v3, v1

    if-nez v3, :cond_e

    return v0

    :cond_e
    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    const/4 v2, 0x1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    return v2
.end method

.method public static greylist getInstance()Lcom/android/internal/telephony/uicc/UiccHqmController;
    .registers 3
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 78
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccHqmController;->mInstance:Lcom/android/internal/telephony/uicc/UiccHqmController;

    if-eqz v1, :cond_9

    .line 83
    monitor-exit v0

    return-object v1

    .line 80
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UiccHqmController.getInstance can\'t be called before make()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_11
    move-exception v1

    .line 84
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist getSimState(ILjava/lang/String;)I
    .registers 4

    .line 157
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    const-string p1, "LOADED"

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    const-string p1, "ABSENT"

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2e

    const-string p1, "NOT_READY"

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    if-eqz p0, :cond_2c

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result p0

    if-ne p0, v0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p0, 0x0

    return p0

    :cond_2e
    :goto_2e
    return v0
.end method

.method private static synthetic blacklist lambda$getEsimProfileCount$1(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    .line 283
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$getEsimProfileEnabledStatus$2(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    .line 291
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$sendUiccHqm$0()V
    .registers 1

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendUiccInfo()V

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;[Lcom/android/internal/telephony/SemCommandsInterface;)Lcom/android/internal/telephony/uicc/UiccHqmController;
    .registers 4

    .line 46
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccHqmController;->mInstance:Lcom/android/internal/telephony/uicc/UiccHqmController;

    if-nez v1, :cond_10

    .line 53
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccHqmController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/uicc/UiccHqmController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/SemCommandsInterface;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccHqmController;->mInstance:Lcom/android/internal/telephony/uicc/UiccHqmController;

    .line 54
    monitor-exit v0

    return-object v1

    .line 51
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "UiccHqmController.make() should only be called once"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_18
    move-exception p0

    .line 55
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method private blacklist sendSchgInfo(IIILjava/lang/String;)V
    .registers 7

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSchgInfo() slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " err : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccHqmController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SLOT"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SEVT"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "REST"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSFE"

    .line 213
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    const-string p1, "SCHG"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccHqmAgent;->sendUiccInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method private blacklist sendUiccHqm()V
    .registers 5

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->checkSimLoadedComplete()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 193
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->checkPbCheckComplete()Z

    move-result v0

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    if-eqz v0, :cond_11

    goto :goto_42

    .line 197
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UiccHqmController"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->setAlarm(J)V

    .line 200
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/uicc/UiccHqmController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 203
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mUiccHqmState:I

    :cond_42
    :goto_42
    return-void
.end method

.method private blacklist sendUiccInfo()V
    .registers 6

    const-string v0, "UiccHqmController"

    const-string v1, "sendUiccInfo()"

    .line 218
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getDsdsCapa()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSDS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getPinEnabledState(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PIN1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 222
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getPinEnabledState(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PIN2"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getUsedPbCount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SPB1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getUsedPbCount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPB2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getEsimSupport()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESIM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getEsimProfileEnabledStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESIE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getEsimProfileCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESIC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getSwitchStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWTS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    const-string v1, "UICC"

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccHqmAgent;->sendUiccInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method private blacklist setAlarm(J)V
    .registers 8

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 296
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.UICC_HQM_TIME_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0xa000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 305
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 306
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "uicc_hqm_alarm_time"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist setPbStateBySimState(I)V
    .registers 7

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mSimState:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 142
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aput v1, p0, p1

    return-void

    .line 145
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aget v2, v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    return-void

    :cond_14
    const/4 v2, 0x0

    if-ne v0, v3, :cond_21

    .line 150
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v3, 0x493e0

    .line 151
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 153
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aput v2, p0, p1

    return-void
.end method


# virtual methods
.method public blacklist getDsdsCapa()I
    .registers 3

    .line 234
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 238
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->getEsimSupport()I

    move-result p0

    if-ne p0, v1, :cond_14

    return v1

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getEsimProfileCount()J
    .registers 3

    .line 280
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 282
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda0;-><init>()V

    .line 283
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getEsimProfileEnabledStatus()I
    .registers 2

    .line 287
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 290
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccHqmController$$ExternalSyntheticLambda1;-><init>()V

    .line 291
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getEsimSupport()I
    .registers 3

    .line 262
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_e

    return v1

    .line 264
    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_RIL_SupportEsim"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x2

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getPinEnabledState(I)I
    .registers 2

    .line 245
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public blacklist getSwitchStatus()I
    .registers 2

    const-string p0, "persist.ril.esim.slotswitch"

    const-string v0, ""

    .line 271
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tsds2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_12

    return v0

    :cond_12
    const-string p0, "ril.simslottype2"

    .line 273
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1d

    const/4 p0, 0x2

    return p0

    :cond_1d
    return v0
.end method

.method public blacklist getUsedPbCount(I)I
    .registers 3

    .line 251
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 252
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v0, 0x3

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    :catch_13
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_2a

    .line 129
    :cond_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    aget v2, v0, p1

    if-nez v2, :cond_2a

    .line 131
    aput v1, v0, p1

    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendUiccHqm()V

    goto :goto_2a

    .line 123
    :cond_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 124
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController;->mPbState:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 126
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendUiccHqm()V

    :cond_2a
    :goto_2a
    return-void
.end method
