.class public final Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SemDisplayQualityAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displayquality/SemDisplayQualityAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Landroid/os/Handler;)V
    .registers 3

    .line 85
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    .line 86
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe(Ljava/lang/String;)V
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-object v0, v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    .line 91
    iget-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-object p1, p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mBrightnessModeLock:Ljava/lang/Object;

    monitor-enter p1

    .line 92
    :try_start_5
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-object v0, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, v0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->isBrightnessModeAuto(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    .line 93
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-boolean p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    if-eqz p2, :cond_19

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleAutoBrightnessModeOn()V

    goto :goto_1c

    .line 96
    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleAutoBrightnessModeOff()V

    .line 98
    :goto_1c
    monitor-exit p1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p0
.end method
