.class public Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;
.super Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;
.source "ExynosDisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;,
        Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ExynosDisplaySolutionManagerService"


# instance fields
.field public final ATC_ENABLE_DEFAULT:I

.field public final DEBUG:Z

.field public mAtcAlreadyEnable:Z

.field public mAtcEnableSetting:Z

.field public mBootCompleted:Z

.field public mColorModeName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

.field public mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

.field public mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

.field public mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

.field public final mLock:Ljava/lang/Object;

.field public mScreenWatchingReceiver:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;

.field public mSettingsObserver:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;

.field public mTuneEnableSetting:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAtcAlreadyEnable(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcAlreadyEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAtcEnableSetting(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExynosDisplayATC(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Lcom/android/server/display/exynos/ExynosDisplayATC;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExynosDisplayTune(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Lcom/android/server/display/exynos/ExynosDisplayTune;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTuneEnableSetting(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mTuneEnableSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAtcAlreadyEnable(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcAlreadyEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msettingChanged(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->settingChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 72
    invoke-direct {p0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;-><init>()V

    .line 53
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1b

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1b

    :cond_19
    move v1, v3

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v1, v2

    :goto_1c
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 60
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 61
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 62
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 66
    iput-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    .line 67
    iput-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mTuneEnableSetting:Z

    .line 68
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->ATC_ENABLE_DEFAULT:I

    .line 69
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 70
    iput-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcAlreadyEnable:Z

    .line 73
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 74
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-direct {v2}, Lcom/android/server/display/exynos/ExynosDisplayTune;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 75
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-direct {v2}, Lcom/android/server/display/exynos/ExynosDisplayColor;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 76
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-direct {v2, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 77
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-direct {v2, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 79
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-virtual {v2, v4}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setExynosDisplayTune(Lcom/android/server/display/exynos/ExynosDisplayTune;)V

    .line 80
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v2, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setExynosDisplayATC(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 84
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mSettingsObserver:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "dqe_tune_enabled"

    .line 88
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mSettingsObserver:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;

    const/4 v6, -0x1

    .line 87
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "atc_mode_enabled"

    .line 90
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mSettingsObserver:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;

    .line 89
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "display_color_mode"

    .line 92
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mSettingsObserver:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;

    .line 91
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 94
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 95
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    .line 96
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_PRESENT"

    .line 98
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    new-instance v3, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;

    invoke-direct {v3, p0, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;-><init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver-IA;)V

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->settingChanged()V

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ExynosDisplaySolutionManagerService created "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExynosDisplaySolutionManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getColorEnhancementMode()Ljava/lang/String;
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getColorEnhancementMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mColorModeName:Ljava/lang/String;

    .line 227
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_27

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColorEnhancementMode(): mColorModeName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mColorModeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_27
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mColorModeName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_2b
    move-exception p0

    .line 229
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public getRgbGain()[F
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {v1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getRgbGain()[F

    move-result-object v1

    .line 332
    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz p0, :cond_3d

    const-string p0, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRgbGain(): r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", g="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_3d
    monitor-exit v0

    return-object v1

    :catchall_3f
    move-exception p0

    .line 334
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public setColorEnhancementSettingValue(I)V
    .registers 6

    .line 234
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setColorEnhancementSettingValue(): value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setColorEnhancement(I)V

    .line 237
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setColorTempSettingOn(I)V
    .registers 6

    .line 250
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setColorTempSettingOn(): onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setColorTempOn(I)V

    .line 253
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setColorTempSettingValue(I)V
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setColorTempSettingValue(): value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setColorTempValue(I)V

    .line 245
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V
    .registers 10

    .line 107
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_36

    const-string v1, "ExynosDisplaySolutionManagerService"

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDisplayFeature(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const-string/jumbo v1, "setDisplayColorFeature"

    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 112
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-virtual {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getCountDownTimerCount()I

    move-result p1

    .line 113
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_53

    if-lez p1, :cond_4c

    goto :goto_53

    .line 119
    :cond_4c
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setDisplayColorFeature(IILjava/lang/String;)V

    .line 120
    monitor-exit v0

    return-void

    :cond_53
    :goto_53
    const-string p2, "ExynosDisplaySolutionManagerService"

    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setDisplayColorFeature is not ready: mBootCompleted="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", timer_count="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v0

    return-void

    :cond_76
    const-string v1, "dqe_tune"

    .line 123
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8d

    if-nez p2, :cond_8b

    if-nez p3, :cond_85

    goto :goto_86

    :cond_85
    move v2, v3

    .line 127
    :goto_86
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneDQE(Z)V

    .line 129
    :cond_8b
    monitor-exit v0

    return-void

    :cond_8d
    const-string/jumbo v1, "hdr_tune"

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    if-eqz p4, :cond_115

    const-string p1, "0x"

    .line 135
    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a3

    const/16 p1, 0x10

    goto :goto_a5

    :cond_a3
    const/16 p1, 0xa

    :goto_a5
    const-string v1, "^0x"

    const-string v2, ""

    .line 136
    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 137
    new-instance p1, Landroid/content/Intent;

    const-string p4, "com.android.server.display.HDR_TUNE_PATTERN_CHANGED"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p4, 0x40000000    # 2.0f

    .line 138
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p4, "com.android.settings"

    .line 139
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "com.android.server.display.hdr_tune_format"

    .line 140
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "com.android.server.display.hdr_tune_type"

    .line 141
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "com.android.server.display.hdr_tune_color"

    .line 142
    invoke-virtual {p1, p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p4, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p4, "com.android.exynos.hdrdisplaytune"

    .line 144
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    new-instance p4, Landroid/os/UserHandle;

    invoke-direct {p4, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p0, "ExynosDisplaySolutionManagerService"

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Send Pattern format: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pattern: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " RGBA: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_115
    monitor-exit v0

    return-void

    :cond_117
    const-string p4, "atc_user"

    .line 152
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14b

    if-nez p2, :cond_130

    if-nez p3, :cond_124

    goto :goto_125

    :cond_124
    move v2, v3

    .line 156
    :goto_125
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 157
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    goto :goto_149

    :cond_130
    if-ne p2, v3, :cond_149

    .line 161
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcAlreadyEnable:Z

    if-nez p1, :cond_144

    .line 162
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget-boolean p2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    invoke-virtual {p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 163
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p1, v3}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 164
    iput-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcAlreadyEnable:Z

    .line 167
    :cond_144
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p0, p3}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setLastLuminance(I)V

    .line 180
    :cond_149
    :goto_149
    monitor-exit v0

    return-void

    :cond_14b
    const-string p4, "atc_tune"

    .line 183
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_194

    if-eqz p2, :cond_158

    const/4 p1, 0x7

    if-ne p2, p1, :cond_177

    :cond_158
    if-nez p3, :cond_15c

    move p1, v2

    goto :goto_15d

    :cond_15c
    move p1, v3

    .line 187
    :goto_15d
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p4, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    if-eqz p2, :cond_16d

    if-eqz p1, :cond_167

    goto :goto_16d

    .line 191
    :cond_167
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->resetATC()V

    goto :goto_172

    .line 189
    :cond_16d
    :goto_16d
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p4, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 192
    :goto_172
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p4, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    :cond_177
    const/16 p1, 0x8

    if-ne p2, p1, :cond_184

    if-nez p3, :cond_17e

    goto :goto_17f

    :cond_17e
    move v2, v3

    .line 197
    :goto_17f
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    :cond_184
    const/16 p1, 0x9

    if-ne p2, p1, :cond_192

    .line 201
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p1, v3}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 202
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p0, p3}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setLastLuminance(I)V

    .line 204
    :cond_192
    monitor-exit v0

    return-void

    :cond_194
    const-string p4, "atc_timer"

    .line 207
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1ad

    .line 209
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p1, v3}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 210
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setCountDownTimer(II)V

    .line 211
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 212
    monitor-exit v0

    return-void

    :cond_1ad
    const-string p2, "factory_timer"

    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1bd

    .line 216
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->startCountDownTimer(Ljava/lang/String;)V

    .line 217
    monitor-exit v0

    return-void

    .line 220
    :cond_1bd
    monitor-exit v0

    return-void

    :catchall_1bf
    move-exception p0

    monitor-exit v0
    :try_end_1c1
    .catchall {:try_start_3 .. :try_end_1c1} :catchall_1bf

    throw p0
.end method

.method public setEdgeSharpnessSettingOn(I)V
    .registers 6

    .line 347
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ExynosDisplaySolutionManagerService"

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEdgeSharpnessSettingOn(): onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setEdgeSharpnessOn(I)V

    .line 350
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setEdgeSharpnessSettingValue(I)V
    .registers 6

    .line 339
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ExynosDisplaySolutionManagerService"

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEdgeSharpnessSettingValue(): value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setEdgeSharpnessValue(I)V

    .line 342
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setEyeTempSettingOn(I)V
    .registers 6

    .line 266
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEyeTempSettingOn(): onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setEyeTempOn(I)V

    .line 269
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setEyeTempSettingValue(I)V
    .registers 6

    .line 258
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEyeTempSettingValue(): value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setEyeTempValue(I)V

    .line 261
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setHsvGainSettingOn(I)V
    .registers 6

    .line 306
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHsvGainSettingOn(): onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setHsvGainOn(I)V

    .line 309
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setHsvGainSettingValue(III)V
    .registers 8

    .line 298
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_2e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHsvGainSettingValue(): h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_2e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setHsvGainValue(III)V

    .line 301
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public setRgbGain(FFF)V
    .registers 8

    .line 322
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_2e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRgbGain(): r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", g="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setRgbGain(FFF)V

    .line 325
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public setRgbGainSettingOn(I)V
    .registers 6

    .line 282
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRgbGainSettingOn(): onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setRgbGainOn(I)V

    .line 285
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setRgbGainSettingValue(III)V
    .registers 8

    .line 274
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_2e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRgbGainSettingValue(): r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", g="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setRgbGainValue(III)V

    .line 277
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public setSkinColorSettingOn(I)V
    .registers 6

    .line 290
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSkinColorSettingOn(): onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setSkinColorOn(I)V

    .line 293
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public setWhitePointColorSettingOn(I)V
    .registers 6

    .line 314
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "ExynosDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWhitePointColorSettingOn(): onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1e
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setWhitePointColorOn(I)V

    .line 317
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final settingChanged()V
    .registers 7

    .line 390
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dqe_tune_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 392
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_13

    move v1, v4

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    const-string v5, "atc_mode_enabled"

    .line 395
    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    const-string v5, "display_color_mode"

    .line 398
    invoke-static {v0, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "settingChanged: mAtcEnableSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " atcEnableSetting ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExynosDisplaySolutionManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "settingChanged: display_color_mode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_5e
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mTuneEnableSetting:Z

    if-eq v0, v1, :cond_6b

    .line 405
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_6b

    .line 406
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneTimer(Z)V

    .line 408
    :cond_6b
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mTuneEnableSetting:Z

    .line 410
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    if-eq v0, v4, :cond_9e

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settingChanged: ATC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_9e

    .line 413
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 417
    :cond_9e
    iput-boolean v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    return-void
.end method
