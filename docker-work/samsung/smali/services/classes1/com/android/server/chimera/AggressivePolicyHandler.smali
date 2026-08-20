.class public Lcom/android/server/chimera/AggressivePolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "AggressivePolicyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;
    }
.end annotation


# static fields
.field public static final KILL_BOOST_RAM_MAX:I = 0x3

.field public static final RELEASE_TARGET_THRESHOLD:I = 0x2800

.field public static final TAG:Ljava/lang/String; = "AggressivePolicyHandler"


# instance fields
.field public mAdjustTargetFreeEndTime:J

.field public mAdjustTargetFreeFactor:D

.field public mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

.field public mHeavyLaunchBufferSize:I

.field public mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

.field public mHeavyLaunchPackageLimit:I

.field public mIsAdjustTargetFree:Z

.field public mIsHeavyLaunchOn:Z

.field public mPkgKillIntervalDefault:I

.field public mReleasedMemory:J


# direct methods
.method public static synthetic $r8$lambda$ETzli5L1avv_wsqqYov1Cyd3lw0(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->lambda$executePolicy$2(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZiESfivQHDth0vx3K5uSw6TBBEs(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/chimera/AggressivePolicyHandler;->lambda$readSystemProperties$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u2EBYXoe2jDGiw8HL4YS_4g6Tbk(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/chimera/AggressivePolicyHandler;->lambda$readSystemProperties$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    const p1, 0x2932e00

    .line 23
    iput p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    const-wide/16 p1, 0x0

    .line 25
    iput-wide p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    const/4 p4, 0x0

    .line 28
    iput-boolean p4, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 29
    iput-wide p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 30
    iput-wide p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 37
    sget-object p1, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    iput-object p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 40
    iput-boolean p4, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 41
    iput p4, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    .line 42
    iput p4, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    .line 48
    new-instance p1, Lcom/android/server/chimera/SkipReasonLogger;

    invoke-direct {p1, p3}, Lcom/android/server/chimera/SkipReasonLogger;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 49
    invoke-direct {p0}, Lcom/android/server/chimera/AggressivePolicyHandler;->readSystemProperties()V

    .line 51
    iget-boolean p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    if-eqz p1, :cond_5c

    .line 52
    new-instance p1, Lcom/android/server/chimera/HeavyLaunchCounter;

    iget p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    iget p3, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    invoke-direct {p1, p2, p3}, Lcom/android/server/chimera/HeavyLaunchCounter;-><init>(II)V

    iput-object p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 53
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Heavy launch param : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AggressivePolicyHandler"

    invoke-interface {p1, p2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    return-void
.end method

.method public static synthetic lambda$executePolicy$2(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 2

    .line 198
    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$readSystemProperties$0(Ljava/lang/String;)Z
    .registers 1

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$readSystemProperties$1(Ljava/lang/String;)Z
    .registers 1

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private readSystemProperties()V
    .registers 12

    .line 62
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "ro.slmk.chimera_kill_interval_ms"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2f

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2f

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    array-length v6, v0

    if-ne v6, v3, :cond_2f

    .line 66
    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    .line 67
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    .line 70
    :cond_2f
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PKG_KILL_INTERVAL_DEFAULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AggressivePolicyHandler"

    invoke-interface {v0, v7, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PKG_KILL_INTERVAL_HEAVY: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "persist.sys.chimera_pkg_kill_interval_ms"

    .line 76
    invoke-interface {v0, v8, v6}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    iget-object v6, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    sget-object v8, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    const-string/jumbo v9, "ro.slmk.chimera_cem_pkg_kill_interval_ms"

    .line 82
    invoke-interface {v6, v9, v8}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    new-array v6, v3, [[I

    const/4 v8, 0x3

    new-array v9, v8, [I

    const/16 v10, 0xc8

    aput v10, v9, v4

    const/16 v10, 0x352

    aput v10, v9, v5

    aput v0, v9, v3

    aput-object v9, v6, v4

    new-array v0, v8, [I

    const/16 v9, 0x64

    aput v9, v0, v4

    aput v10, v0, v5

    .line 86
    iget v9, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    aput v9, v0, v3

    aput-object v0, v6, v5

    iput-object v6, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 92
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v6, "ro.slmk.chimera_kill_boost_on_normal"

    .line 93
    invoke-interface {v0, v6, v2}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v6, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda1;-><init>()V

    .line 94
    invoke-virtual {v0, v6}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v6, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda2;-><init>()V

    .line 95
    invoke-virtual {v0, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v6

    if-gt v6, v8, :cond_d8

    move v6, v5

    goto :goto_d9

    :cond_d8
    move v6, v4

    :goto_d9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 100
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v6, "ro.slmk.chimera_kill_boost_on_heavy"

    .line 101
    invoke-interface {v0, v6, v2}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v6, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda3;-><init>()V

    .line 102
    invoke-virtual {v0, v6}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v6, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda2;-><init>()V

    .line 103
    invoke-virtual {v0, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v6

    if-gt v6, v8, :cond_110

    move v6, v5

    goto :goto_111

    :cond_110
    move v6, v4

    :goto_111
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 107
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->isBubEnabled(Lcom/android/server/chimera/SystemRepository;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    .line 109
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v6, "ro.slmk.chimera_adjust_boot_targetfree"

    invoke-interface {v0, v6, v2}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_181

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    array-length v1, v0

    if-ne v1, v3, :cond_181

    .line 116
    :try_start_13f
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v8, v4

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    .line 119
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 121
    iput-boolean v5, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 123
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust targetfree : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_179} :catch_17a

    goto :goto_181

    .line 125
    :catch_17a
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "Error while adjust targetfee"

    invoke-interface {v0, v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_181
    :goto_181
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_192

    const/16 v0, 0x50

    .line 131
    iput v0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    const/16 v0, 0x19

    .line 132
    iput v0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    .line 133
    iput-boolean v5, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    :cond_192
    return-void
.end method


# virtual methods
.method public final doGcReclaimIfNecessary(ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;JJ)V
    .registers 8

    .line 437
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->isGcReclaimEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_e

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/chimera/AggressivePolicyHandler;->isFreeTargetSatisfied(JJ)Z

    move-result p1

    if-nez p1, :cond_15

    .line 438
    :cond_e
    sget-object p1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne p2, p1, :cond_15

    .line 439
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->performGcAndReclaim()V

    :cond_15
    return-void
.end method

.method public doKill(Ljava/util/List;JJLcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;JJ",
            "Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    .line 235
    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start doKill, protected policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AggressivePolicyHandler"

    invoke-interface {v1, v3, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_1f

    return v1

    .line 242
    :cond_1f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 243
    iget v6, v5, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3f

    .line 244
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v5, "killing stopped to group 4"

    invoke-interface {v2, v3, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 248
    :cond_3f
    invoke-virtual {p0, v5}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v6

    if-nez v6, :cond_46

    goto :goto_24

    .line 252
    :cond_46
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v7, v5, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Killed on trigger"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", freed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0, v5}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-interface {v6, v3, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v6, v5, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 264
    iget-object v6, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 265
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v7, v7, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Chimera #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 265
    invoke-interface {v8, v7, v9, v10}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_9c

    :cond_c7
    int-to-long v6, v1

    .line 269
    iget-wide v8, v5, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    add-long/2addr v6, v8

    long-to-int v1, v6

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, p6

    .line 272
    invoke-virtual {p0, v5, v6}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 274
    iget-object v5, v0, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v7, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v5, v7, :cond_e1

    iget-boolean v7, v0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    if-nez v7, :cond_de

    goto :goto_e1

    :cond_de
    :goto_de
    move-wide v7, p2

    goto/16 :goto_24

    :cond_e1
    :goto_e1
    sget-object v7, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v5, v7, :cond_ea

    iget-boolean v5, v0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz v5, :cond_ea

    goto :goto_de

    :cond_ea
    move-wide v7, p2

    .line 278
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/chimera/PolicyHandler;->isRelTargetEnough(JI)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 284
    :cond_f1
    :goto_f1
    iget v2, v0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    int-to-long v5, v2

    iget-wide v7, v0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    mul-long/2addr v5, v7

    int-to-long v7, v1

    add-long/2addr v5, v7

    add-int/lit8 v9, v2, 0x1

    int-to-long v9, v9

    div-long/2addr v5, v9

    iput-wide v5, v0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    int-to-long v5, v2

    .line 285
    iget-wide v9, v0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    mul-long/2addr v5, v9

    add-long v5, v5, p4

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    int-to-long v9, v2

    div-long/2addr v5, v9

    iput-wide v5, v0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 288
    iget-wide v5, v0, Lcom/android/server/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    .line 290
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "kill complete: killed "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " apps, freed "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " KB"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    if-eqz p2, :cond_1e8

    .line 348
    array-length v0, p2

    if-nez v0, :cond_7

    goto/16 :goto_1e8

    :cond_7
    const/4 v0, 0x0

    .line 352
    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 355
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 357
    iget-boolean p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    if-eqz p2, :cond_41

    iget-object p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    invoke-virtual {p2}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    move-result p2

    if-eqz p2, :cond_41

    .line 358
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HeavyLaunch mode from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    invoke-virtual {v0}, Lcom/android/server/chimera/HeavyLaunchCounter;->getLastStartedUpTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_41
    const-string p2, "************** adjinfo ****************"

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    const-string p2, "\n************** appinfo ****************"

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    const-string p2, "\n************** kill history ****************"

    .line 365
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    goto/16 :goto_1e8

    .line 367
    :cond_5b
    array-length v1, p2

    if-lez v1, :cond_1e8

    .line 368
    aget-object v0, p2, v0

    const-string/jumbo v1, "weight"

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_ae

    array-length v1, p2

    if-le v1, v2, :cond_ae

    .line 371
    :try_start_6e
    aget-object v0, p2, v3

    .line 372
    aget-object p2, p2, v2

    .line 373
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 374
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 375
    invoke-virtual {p0, v0, p2}, Lcom/android/server/chimera/AggressivePolicyHandler;->setWeight(FF)V

    .line 376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wLru: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " wStandbyBucket: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_a2} :catch_a4

    goto/16 :goto_1e8

    :catch_a4
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_ae
    const-string/jumbo v1, "set_normal_boost_mode"

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v4, "off"

    const-string/jumbo v5, "on"

    if-eqz v1, :cond_e7

    array-length v1, p2

    if-le v1, v3, :cond_e7

    .line 381
    aget-object p2, p2, v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Normal kill boost : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    if-eqz p0, :cond_db

    move-object v4, v5

    :cond_db
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_e7
    const-string/jumbo v1, "set_heavy_boost_mode"

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    array-length v1, p2

    if-le v1, v3, :cond_11a

    .line 384
    aget-object p2, p2, v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Heavy kill boost : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz p0, :cond_10e

    move-object v4, v5

    :cond_10e
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_11a
    const-string/jumbo v1, "set_normal_kill_interval"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    array-length v1, p2

    if-le v1, v3, :cond_165

    .line 388
    :try_start_126
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v1, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aget-object p2, p2, v3

    .line 389
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    aput p2, v0, v2
    :try_end_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_126 .. :try_end_13a} :catch_13b

    goto :goto_143

    :catch_13b
    move-exception p2

    .line 391
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    :goto_143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Normal kill interval : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_165
    const-string/jumbo v1, "set_heavy_kill_interval"

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    array-length v1, p2

    if-le v1, v3, :cond_1af

    .line 396
    :try_start_171
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v1, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aget-object p2, p2, v3

    .line 397
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    aput p2, v0, v2
    :try_end_185
    .catch Ljava/lang/NumberFormatException; {:try_start_171 .. :try_end_185} :catch_186

    goto :goto_18e

    :catch_186
    move-exception p2

    .line 399
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    :goto_18e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Heavy kill interval : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    aget p0, p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e8

    :cond_1af
    const-string/jumbo p2, "info"

    .line 402
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1bf

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    goto :goto_1e8

    :cond_1bf
    const-string p2, "appinfo"

    .line 405
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1cb

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    goto :goto_1e8

    :cond_1cb
    const-string p2, "adjinfo"

    .line 407
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d7

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    goto :goto_1e8

    :cond_1d7
    const-string/jumbo p2, "history"

    .line 409
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e8

    const-string p2, "Chimera Kill History:"

    .line 410
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    :cond_1e8
    :goto_1e8
    return-void
.end method

.method public final dumpInfo(Ljava/io/PrintWriter;)V
    .registers 7

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoreWeight: lru="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " standbybucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Normal kill interval : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v2, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Heavy kill interval : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v3, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v1, v1, v3

    aget v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    if-nez v0, :cond_84

    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz v0, :cond_7e

    goto :goto_84

    :cond_7e
    const-string p0, "Kill boost mode: off"

    .line 424
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    .line 421
    :cond_84
    :goto_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kill boost mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    const-string v2, ""

    if-eqz v1, :cond_97

    const-string v1, " Normal"

    goto :goto_98

    :cond_97
    move-object v1, v2

    :goto_98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz p0, :cond_a1

    const-string v2, " Heavy"

    .line 422
    :cond_a1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 421
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_ab
    return-void
.end method

.method public executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 148
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v9, "AggressivePolicyHandler"

    if-nez v0, :cond_15

    .line 149
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v2, "executePolicy() - prepareForTrigger fails"

    invoke-interface {v0, v9, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 153
    :cond_15
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executePolicy() - triggerSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 157
    iget v0, v7, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 158
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 161
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    move-result-wide v12

    .line 162
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v0, v12, v13}, Lcom/android/server/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide v2

    .line 164
    iget-boolean v0, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    if-eqz v0, :cond_5c

    iget-wide v4, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    cmp-long v0, v10, v4

    if-gez v0, :cond_5c

    long-to-double v2, v2

    .line 165
    iget-wide v4, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    :cond_5c
    sub-long v14, v2, v12

    const-wide/16 v4, 0x2800

    cmp-long v0, v14, v4

    if-gtz v0, :cond_88

    .line 171
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "available memory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", free memory target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", quit chimera"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 176
    :cond_88
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne v8, v0, :cond_93

    .line 177
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraStrategy;->getProtectedCountOnLmkdTrigger()I

    move-result v0

    goto :goto_99

    :cond_93
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraStrategy;->getProtectedCountOnHomeTrigger()I

    move-result v0

    .line 179
    :goto_99
    iget-boolean v4, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    if-eqz v4, :cond_ad

    iget-object v4, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    invoke-virtual {v4}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 180
    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v4, v4, v16

    double-to-int v0, v4

    .line 183
    :cond_ad
    iget-object v4, v7, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "memAvailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", memFreeTarget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", releaseTarget:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", protectedLruCount: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v9, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, v7, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v2}, Lcom/android/server/chimera/SkipReasonLogger;->clear()V

    .line 187
    iget-object v2, v7, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v3, v7, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v2, v3, v0, v8}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_187

    .line 189
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_f4

    goto/16 :goto_187

    .line 195
    :cond_f4
    invoke-virtual {v7, v6}, Lcom/android/server/chimera/PolicyHandler;->calcAppScores(Ljava/util/List;)V

    .line 198
    new-instance v0, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->isUserShipBuild()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 201
    invoke-virtual {v7, v6}, Lcom/android/server/chimera/PolicyHandler;->printAllAppInfo(Ljava/util/List;)V

    .line 204
    :cond_10a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->isGcReclaimEnabled()Z

    move-result v0

    if-eqz v0, :cond_11f

    const-wide/32 v2, 0xc800

    cmp-long v0, v14, v2

    if-gez v0, :cond_11f

    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne v8, v0, :cond_11f

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->performGcAndReclaim()V

    return v1

    :cond_11f
    const-wide/16 v0, 0x0

    .line 211
    iput-wide v0, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    :goto_123
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v14

    move-wide v4, v12

    move-object/from16 v16, v6

    move-object/from16 v6, p1

    .line 213
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/chimera/AggressivePolicyHandler;->doKill(Ljava/util/List;JJLcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)I

    move-result v17

    if-lez v17, :cond_146

    .line 215
    iget-wide v3, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/chimera/AggressivePolicyHandler;->doGcReclaimIfNecessary(ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;JJ)V

    .line 216
    sget-object v0, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    iput-object v0, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 217
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    goto :goto_161

    .line 219
    :cond_146
    iget v0, v7, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 220
    iget-object v0, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v1, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v0, v1, :cond_15f

    .line 221
    iget-wide v3, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/chimera/AggressivePolicyHandler;->doGcReclaimIfNecessary(ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;JJ)V

    goto :goto_163

    .line 224
    :cond_15f
    iput-object v1, v7, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    :goto_161
    if-eqz v17, :cond_184

    .line 228
    :goto_163
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v0, v9}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 230
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing time(ms) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v17

    :cond_184
    move-object/from16 v6, v16

    goto :goto_123

    :cond_187
    :goto_187
    move-object/from16 v16, v6

    .line 190
    iget-object v0, v7, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executePolicy() - getAppsToKill return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_19c

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_19d

    :cond_19c
    move v3, v1

    .line 191
    :goto_19d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-interface {v0, v9, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public hasProtectedAdjOrProcState(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_7d

    .line 295
    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v1, :cond_7d

    move v1, v0

    .line 296
    :goto_8
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v3, v3

    if-ge v1, v3, :cond_7d

    .line 297
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v4, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    aget v3, v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2d

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, -0x3e8

    if-lt v2, v3, :cond_2d

    return v4

    .line 302
    :cond_2d
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0x64

    const/4 v5, 0x5

    const/16 v6, 0x12c

    if-lt v2, v3, :cond_53

    if-ge v2, v6, :cond_53

    .line 304
    iget v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    if-ne v3, v5, :cond_41

    return v4

    :cond_41
    const/16 v7, 0xc8

    if-ge v2, v7, :cond_4a

    const/16 v2, 0x28

    if-ge v3, v2, :cond_4a

    return v4

    .line 315
    :cond_4a
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/chimera/PolicyHandler;->isPowerWhitelistedApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    return v4

    .line 320
    :cond_53
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    aget v3, v3, v1

    const/4 v7, 0x3

    if-eq v3, v7, :cond_7c

    if-ne v3, v5, :cond_5f

    goto :goto_7c

    .line 326
    :cond_5f
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0x33e

    if-ne v2, v3, :cond_68

    return v4

    .line 330
    :cond_68
    sget-boolean v3, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    if-nez v3, :cond_71

    sget v3, Lcom/android/server/chimera/PolicyHandler;->PICKED_OOM_ADJ:I

    if-ne v2, v3, :cond_71

    return v4

    :cond_71
    const/16 v3, 0x2bc

    if-ne v2, v3, :cond_76

    return v4

    :cond_76
    if-ne v2, v6, :cond_79

    return v4

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_7c
    :goto_7c
    return v4

    :cond_7d
    return v0
.end method

.method public final isFreeTargetSatisfied(JJ)Z
    .registers 5

    cmp-long p0, p1, p3

    if-gez p0, :cond_e

    sub-long/2addr p3, p1

    const-wide/16 p0, 0x5000

    cmp-long p0, p3, p0

    if-gez p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method public onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .registers 7

    .line 447
    invoke-super/range {p0 .. p6}, Lcom/android/server/chimera/PolicyHandler;->onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V

    .line 449
    iget-boolean p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    if-eqz p1, :cond_16

    if-nez p6, :cond_16

    if-eqz p3, :cond_16

    iget-object p0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    if-eqz p0, :cond_16

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/chimera/HeavyLaunchCounter;->addLaunch(IJ)V

    :cond_16
    return-void
.end method

.method public setWeight(FF)V
    .registers 5

    .line 138
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 139
    iput p2, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 140
    new-instance p1, Ljava/math/BigDecimal;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance p2, Ljava/math/BigDecimal;

    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    return-void
.end method
