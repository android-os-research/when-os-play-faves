.class public Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;
.super Ljava/lang/Object;
.source "GlobalActionFeatures.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/Features;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    return-void
.end method


# virtual methods
.method public final isCapturedBlurSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isDataModeSupported()Z
    .registers 2

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isDesktopModeSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isEffectSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "SF_EFFECT"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 66
    invoke-virtual {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEffectSupported()Z

    move-result p0

    return p0

    :cond_d
    const-string v0, "NAV_BAR"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 68
    invoke-virtual {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isNaviBarSupported()Z

    move-result p0

    return p0

    :cond_1a
    const-string v0, "DESKTOP_MODE"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 70
    invoke-virtual {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isDesktopModeSupported()Z

    move-result p0

    return p0

    :cond_27
    const-string v0, "DATA_MODE"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 72
    invoke-virtual {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isDataModeSupported()Z

    move-result p0

    return p0

    :cond_34
    const-string v0, "LOCKDOWN_MODE"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    const-string v0, "FORCE_RESTART_MESSAGE"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 76
    invoke-virtual {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isForceRestartMessageSupported()Z

    move-result p0

    return p0

    :cond_4b
    const-string v0, "RESERVE_BATTERY_MODE"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 78
    invoke-virtual {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isRBMSupported()Z

    move-result p0

    return p0

    :cond_58
    const/4 p0, 0x0

    return p0
.end method

.method public final isForceRestartMessageSupported()Z
    .registers 2

    .line 55
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isNaviBarSupported()Z
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101b5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isRBMSupported()Z
    .registers 2

    .line 60
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_ConfigYuva"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    const-string/jumbo v0, "powerplanning"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "reserve"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method
