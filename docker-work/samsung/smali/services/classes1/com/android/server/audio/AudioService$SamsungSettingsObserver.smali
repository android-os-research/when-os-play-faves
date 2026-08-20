.class public Lcom/android/server/audio/AudioService$SamsungSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SamsungSettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 6

    .line 14599
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 14600
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14602
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 14603
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "volume_monitor"

    .line 14604
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 14603
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14607
    :cond_1d
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "hearing_musiccheck"

    .line 14608
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    .line 14607
    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14609
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "k2hd_effect"

    .line 14610
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 14609
    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14616
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v0, :cond_4c

    .line 14617
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "isBikeMode"

    .line 14618
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 14617
    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14620
    :cond_4c
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v0, :cond_5e

    .line 14621
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "headphone_monitoring"

    .line 14622
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 14621
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14625
    :cond_5e
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v0, :cond_7e

    .line 14626
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "theme_touch_sound"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14628
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "system_sound"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14632
    :cond_7e
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "multi_audio_focus_enabled"

    .line 14633
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 14632
    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14635
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz v0, :cond_9d

    .line 14636
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "cmc_own_settings_menu_supported"

    .line 14637
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14636
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_9d
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    .line 14643
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 14645
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    .line 14646
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "volume_monitor"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 14648
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeMonitorValue(Lcom/android/server/audio/AudioService;)I

    move-result v2

    if-eq v2, p1, :cond_3d

    .line 14649
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmVolumeMonitorValue(Lcom/android/server/audio/AudioService;I)V

    .line 14650
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetVolumeMonitorService(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v2

    if-ne p1, v0, :cond_2d

    move v3, v0

    goto :goto_2e

    :cond_2d
    move v3, v1

    :goto_2e
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3d

    .line 14652
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetVolumeMonitorService(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetByDataClear()V

    .line 14657
    :cond_3d
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "hearing_musiccheck"

    const/4 v3, -0x2

    invoke-static {p1, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 14659
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "k2hd_effect"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 14661
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAdaptSoundEnabled(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, p1, :cond_77

    .line 14662
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmAdaptSoundEnabled(Lcom/android/server/audio/AudioService;I)V

    .line 14663
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAdaptSoundEnabled(Lcom/android/server/audio/AudioService;)I

    move-result p1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDhaParam(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/samsung/android/server/audio/CoreFxHelper;->setAdaptSound(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_8d

    .line 14664
    :cond_77
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUpscalerEnabled(Lcom/android/server/audio/AudioService;)I

    move-result p1

    if-eq p1, v2, :cond_8d

    .line 14665
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmUpscalerEnabled(Lcom/android/server/audio/AudioService;I)V

    .line 14666
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUpscalerEnabled(Lcom/android/server/audio/AudioService;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/server/audio/CoreFxHelper;->setUpscalerMode(I)V

    .line 14669
    :cond_8d
    :goto_8d
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz p1, :cond_a8

    .line 14670
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isBikeMode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_a4

    move v2, v0

    goto :goto_a5

    :cond_a4
    move v2, v1

    :goto_a5
    invoke-static {p1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmIsBikeMode(Lcom/android/server/audio/AudioService;Z)V

    .line 14680
    :cond_a8
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz p1, :cond_cc

    .line 14681
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "headphone_monitoring"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/android/server/audio/AudioService;->mKaraokeListenbackEnabled:I

    .line 14683
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRecordMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/RecordingActivityMonitor;->isOnlyKaraokeRecordingActive()Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 14684
    sget p1, Lcom/android/server/audio/AudioService;->mKaraokeListenbackEnabled:I

    invoke-static {p1}, Lcom/samsung/android/server/audio/KaraokeHelper;->setKaraokeListenback(I)V

    .line 14687
    :cond_cc
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz p1, :cond_d9

    .line 14688
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {p1, v2, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateThemeSound(Lcom/android/server/audio/AudioService;IZ)V

    .line 14691
    :cond_d9
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "multi_audio_focus_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_ea

    move p1, v0

    goto :goto_eb

    :cond_ea
    move p1, v1

    .line 14693
    :goto_eb
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService;->setMultiAudioFocusEnabled(Z)V

    .line 14695
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz p1, :cond_11a

    .line 14697
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioHelper;->getPlatformType(Landroid/content/Context;)I

    move-result p1

    .line 14698
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlatformType(Lcom/android/server/audio/AudioService;)I

    move-result v2

    if-eq v2, p1, :cond_11a

    .line 14699
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmPlatformType(Lcom/android/server/audio/AudioService;I)V

    .line 14700
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlatformType(Lcom/android/server/audio/AudioService;)I

    move-result p1

    if-ne p1, v0, :cond_113

    .line 14701
    sput-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 14703
    :cond_113
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    const-string p1, "AS.AudioService.CMC"

    invoke-static {p0, v1, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateStreamVolumeAlias(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    :cond_11a
    return-void
.end method
