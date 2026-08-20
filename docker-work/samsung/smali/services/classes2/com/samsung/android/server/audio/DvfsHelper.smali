.class public Lcom/samsung/android/server/audio/DvfsHelper;
.super Ljava/lang/Object;
.source "DvfsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/DvfsHelper$DefaultDvfsManagerFactory;,
        Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;
    }
.end annotation


# static fields
.field public static final DVFS_CPU_BOOST_MAX_TIME:I = 0x7530

.field public static final DVFS_CPU_BOOST_RETRY_DELAY_MS:I = 0x6d60

.field public static final HINT_TYPE_VOIP_BOOST:I = 0xce4

.field public static final TAG:Ljava/lang/String; = "AS.DvfsHelper"

.field public static final VOIP_BOOST:Ljava/lang/String; = "AUDIOSERVICE_VOIP_BOOST"

.field public static sInstance:Lcom/samsung/android/server/audio/DvfsHelper;


# instance fields
.field public final boostChecker:Ljava/lang/Runnable;

.field public mCPUBoostValueForVoIP:I

.field public mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

.field public final mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

.field public mHandler:Landroid/os/Handler;

.field public mIsCPUBoostedForVoIP:Z

.field public mIsScreenOn:Z

.field public mRetryDelayMs:I

.field public mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public static synthetic $r8$lambda$f82yi-QrJ5tAGMQENMWHIHn5Mh8(Lcom/samsung/android/server/audio/DvfsHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper$DefaultDvfsManagerFactory;

    invoke-direct {v0}, Lcom/samsung/android/server/audio/DvfsHelper$DefaultDvfsManagerFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/audio/DvfsHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    const/16 v0, 0x6d60

    .line 43
    iput v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    .line 167
    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/DvfsHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    .line 61
    iput-object p2, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DvfsHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/DvfsHelper;
    .registers 2

    .line 75
    sget-object v0, Lcom/samsung/android/server/audio/DvfsHelper;->sInstance:Lcom/samsung/android/server/audio/DvfsHelper;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DvfsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/DvfsHelper;->sInstance:Lcom/samsung/android/server/audio/DvfsHelper;

    .line 78
    :cond_b
    sget-object p0, Lcom/samsung/android/server/audio/DvfsHelper;->sInstance:Lcom/samsung/android/server/audio/DvfsHelper;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    if-eqz v0, :cond_8

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->acquireCPUBoost()V

    goto :goto_b

    .line 171
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->releaseCPUBoost()V

    :goto_b
    return-void
.end method


# virtual methods
.method public acquireCPUBoost()V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "AS.DvfsHelper"

    const-string v1, "acquire() cpu min lock for audio VoIP"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 114
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v1, :cond_25

    .line 115
    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_25

    const-string v1, "acquireCPUBoost CPU state lock"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 122
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    iget p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_39
    return-void
.end method

.method public getCPUBoostValueForVoIP()I
    .registers 1

    .line 156
    iget p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    return p0
.end method

.method public getIsScreenOn()Z
    .registers 1

    .line 164
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

    const-string v1, "AUDIOSERVICE_VOIP_BOOST"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_11

    const/16 v0, 0xce4

    .line 84
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 87
    :cond_11
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "AS.DvfsHelper"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public releaseCPUBoost()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const-string v1, "AS.DvfsHelper"

    if-eqz v0, :cond_11

    const-string/jumbo v0, "release() cpu min lock"

    .line 94
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 98
    :cond_11
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v0, :cond_24

    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_24

    const-string/jumbo v0, "releaseCPUBoost CPU state lock"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_24
    return-void
.end method

.method public setRetryTime(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 67
    iput p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    return-void
.end method

.method public setScreenOn(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    return-void
.end method

.method public startCPUBoostForVoIP(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    .line 130
    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const-string v2, "AS.DvfsHelper"

    if-nez v1, :cond_f

    const-string p0, "DvfsManager is null"

    .line 131
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_f
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v1, :cond_2e

    const-string v1, "initCPUBoost create cpu state lock"

    .line 136
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_2e

    .line 139
    iget v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    const v2, 0x10003000

    .line 140
    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(III)I

    move-result v0

    .line 139
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 145
    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->acquireCPUBoost()V

    return-void
.end method

.method public stopCPUBoostForVoIP()V
    .registers 3

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method
