.class public abstract Lcom/samsung/android/displayquality/SemDisplayQualityAP;
.super Ljava/lang/Object;
.source "SemDisplayQualityAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;,
        Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SemDisplayQualityAP"


# instance fields
.field public DEBUG:Z

.field public final mBrightnessModeLock:Ljava/lang/Object;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mIsBrightnessModeAuto:Z

.field public mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

.field public mUseScreenStatusAsyncHandle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v2

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    .line 26
    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mBrightnessModeLock:Ljava/lang/Object;

    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mUseScreenStatusAsyncHandle:Z

    .line 31
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    if-eqz p0, :cond_39

    const-string p0, "SemDisplayQualityAP"

    .line 35
    invoke-static {p0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method


# virtual methods
.method public enhanceOutdoorVisibilityByLux(I)V
    .registers 2

    return-void
.end method

.method public abstract handleAutoBrightnessModeOff()V
.end method

.method public abstract handleAutoBrightnessModeOn()V
.end method

.method public abstract handleScreenOff()V
.end method

.method public abstract handleScreenOffAsync()V
.end method

.method public abstract handleScreenOn()V
.end method

.method public abstract handleScreenOnAsync()V
.end method

.method public isBrightnessModeAuto(Landroid/content/ContentResolver;)Z
    .registers 4

    const-string/jumbo p0, "screen_brightness_mode"

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 55
    invoke-static {p1, p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_d

    move v0, p1

    :cond_d
    return v0
.end method

.method public setAdaptiveSync(Z)V
    .registers 2

    return-void
.end method

.method public startScreenStatusReceiver()V
    .registers 5

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    if-nez v1, :cond_11

    const-string p0, "SemDisplayQualityAP"

    const-string v0, "mContext is null"

    .line 74
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver-IA;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startSettingObserver()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string p0, "SemDisplayQualityAP"

    const-string v0, "mContext is null"

    .line 62
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_c
    new-instance v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    const-string/jumbo p0, "screen_brightness_mode"

    .line 67
    invoke-virtual {v0, p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->observe(Ljava/lang/String;)V

    return-void
.end method
