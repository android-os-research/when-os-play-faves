.class public Lcom/android/server/chimera/SettingRepositoryDefault;
.super Ljava/lang/Object;
.source "SettingRepositoryDefault.java"

# interfaces
.implements Lcom/android/server/chimera/SettingRepository;


# static fields
.field public static final BROADCAST_SET_LMKD_PARAMETER_INTENT:Ljava/lang/String; = "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

.field public static final CUSTOM_MODE_AGGRESSIVE:Ljava/lang/String; = "CA"

.field public static final CUSTOM_MODE_CONSERVATIVE:Ljava/lang/String; = "CC"

.field public static final PACKAGE_NAME_MEMORY_GUARDIAN:Ljava/lang/String; = "com.samsung.android.memoryguardian"

.field public static final SYSTEM_PROPERTY_BG_KEEPING_POLICY:Ljava/lang/String; = "ro.slmk.use_bg_keeping_policy"

.field public static final SYSTEM_PROPERTY_CUSTOM_MODE:Ljava/lang/String; = "persist.config.chimera.enable"

.field public static final SYSTEM_PROPERTY_DHA_CACHED_MAX:Ljava/lang/String; = "ro.slmk.dha_cached_max"


# instance fields
.field public mDefaultCachedMax:I

.field public mIsConservativeMode:Z

.field public mIsCustomMode:Z

.field public mIsDefaultConservativeMode:Z

.field public mIsDynamicTargetFreeEnabled:Z

.field public mIsGcEnable:Z

.field public mIsIdleKillEnable:Z

.field public mIsReclaimPageCacheEnable:Z

.field public mIsSwapEnable:Z

.field public mLastCachedMax:I

.field public mQuickReclaimEnable:Z

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsReclaimPageCacheEnable:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsGcEnable:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsSwapEnable:Z

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mQuickReclaimEnable:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsIdleKillEnable:Z

    .line 35
    iput v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mDefaultCachedMax:I

    .line 36
    iput v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    .line 10
    iput-object p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v0, "ro.slmk.dha_cached_max"

    const-string v1, "16"

    .line 12
    invoke-interface {p1, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mDefaultCachedMax:I

    iput p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    .line 13
    iget-object p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v0, "ro.slmk.use_bg_keeping_policy"

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsDefaultConservativeMode:Z

    return-void
.end method


# virtual methods
.method public enableConservativeMode(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    return-void
.end method

.method public enableCustomMode(ZZ)V
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "persist.config.chimera.enable"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 155
    aget-object v0, v0, v2

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    if-eqz p1, :cond_3e

    .line 157
    iget-object p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "true,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_31

    const-string p2, "CC"

    goto :goto_33

    :cond_31
    const-string p2, "CA"

    :goto_33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/android/server/chimera/SystemRepository;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 159
    :cond_3e
    iget-object p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p1, v1, v2}, Lcom/android/server/chimera/SystemRepository;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_43
    invoke-virtual {p0}, Lcom/android/server/chimera/SettingRepositoryDefault;->initialize()V

    :cond_46
    return-void
.end method

.method public enableDynamicTargetFree(Z)V
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsDynamicTargetFreeEnabled:Z

    return-void
.end method

.method public enableGc(Z)V
    .registers 2

    .line 132
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsGcEnable:Z

    return-void
.end method

.method public enableIdleKill(Z)V
    .registers 2

    .line 188
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsIdleKillEnable:Z

    return-void
.end method

.method public enableQuickReclaim(Z)V
    .registers 2

    .line 178
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mQuickReclaimEnable:Z

    return-void
.end method

.method public enableReclaimPageCache(Z)V
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsReclaimPageCacheEnable:Z

    return-void
.end method

.method public enableSwap(Z)V
    .registers 2

    .line 142
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsSwapEnable:Z

    return-void
.end method

.method public initialize()V
    .registers 8

    .line 40
    iget-object v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "persist.config.chimera.enable"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsSwapEnable:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsCustomMode:Z

    .line 44
    iget-boolean v2, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsDefaultConservativeMode:Z

    iput-boolean v2, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    const-string v2, ","

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-boolean v2, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    .line 49
    iget-object v3, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v4, "com.samsung.android.memoryguardian"

    invoke-interface {v3, v4}, Lcom/android/server/chimera/SystemRepository;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    return-void

    .line 53
    :cond_27
    iget v3, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mDefaultCachedMax:I

    .line 55
    aget-object v4, v0, v1

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x30

    if-eqz v4, :cond_6a

    array-length v4, v0

    const/4 v6, 0x1

    if-le v4, v6, :cond_6a

    .line 56
    aget-object v0, v0, v6

    const-string v4, "CC"

    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 59
    iput-boolean v6, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    .line 60
    iput-boolean v6, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsCustomMode:Z

    .line 61
    iput-boolean v6, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsSwapEnable:Z

    .line 63
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_58

    int-to-double v0, v3

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v3

    double-to-int v0, v0

    move v3, v0

    goto :goto_5a

    :cond_58
    mul-int/lit8 v3, v3, 0x2

    :goto_5a
    if-le v3, v5, :cond_6a

    move v3, v5

    goto :goto_6a

    :cond_5e
    const-string v4, "CA"

    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 73
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    .line 74
    iput-boolean v6, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsCustomMode:Z

    .line 78
    :cond_6a
    :goto_6a
    iget v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    if-ne v0, v3, :cond_72

    iget-boolean v0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    if-eq v2, v0, :cond_a4

    .line 79
    :cond_72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    if-eq v1, v3, :cond_8e

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ro.slmk.dha_cached_max"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iput v3, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mLastCachedMax:I

    .line 87
    :cond_8e
    iget-boolean v1, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    if-eq v2, v1, :cond_9f

    if-eqz v1, :cond_97

    const-string v1, "1"

    goto :goto_99

    :cond_97
    const-string v1, "0"

    :goto_99
    const-string/jumbo v2, "ro.slmk.use_bg_keeping_policy"

    .line 88
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_9f
    iget-object p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p0, v0}, Lcom/android/server/chimera/SystemRepository;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a4
    return-void
.end method

.method public isConservativeDefault()Z
    .registers 3

    .line 168
    iget-object p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v0, "ro.slmk.use_bg_keeping_policy"

    const-string v1, "false"

    invoke-interface {p0, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isConservativeMode()Z
    .registers 1

    .line 107
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    return p0
.end method

.method public isCustomMode()Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsCustomMode:Z

    return p0
.end method

.method public isDynamicTargetFreeEnabled()Z
    .registers 1

    .line 97
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsDynamicTargetFreeEnabled:Z

    return p0
.end method

.method public isGcEnabled()Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsGcEnable:Z

    return p0
.end method

.method public isIdleKillEnabled()Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsIdleKillEnable:Z

    return p0
.end method

.method public isQuickReclaimEnable()Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mQuickReclaimEnable:Z

    return p0
.end method

.method public isReclaimPageCacheEnabled()Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsReclaimPageCacheEnable:Z

    return p0
.end method

.method public isSwapEnabled()Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/android/server/chimera/SettingRepositoryDefault;->mIsSwapEnable:Z

    return p0
.end method
