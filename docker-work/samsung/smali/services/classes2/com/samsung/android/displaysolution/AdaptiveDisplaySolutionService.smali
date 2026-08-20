.class public Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.super Ljava/lang/Object;
.source "AdaptiveDisplaySolutionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;,
        Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field public static final ADS_ON:Ljava/lang/String; = "sys.adaptivedisplaysolution.adson"

.field public static final TAG:Ljava/lang/String; = "AdaptiveDisplaySolutionService"


# instance fields
.field public final ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

.field public final ADAPTIVE_CONTROL_SUB_PATH:Ljava/lang/String;

.field public AUTO_CURRENT_LIMIT_VERSION:I

.field public final AVAILABLE_ADAPTIVE_CONTROL:Z

.field public final DEBUG:Z

.field public mACLwithBrightness:Z

.field public mADSEnableCondition:Z

.field public mAdaptiveControlValues:[Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mDetailViewState:Z

.field public mHandler:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mLastAutoCurrentLimitValue:I

.field public mPlatformBrightnessValue:I

.field public mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

.field public mUseAdaptiveDisplaySolutionServiceConfig:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetAUTO_CURRENT_LIMIT_VERSION(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastAutoCurrentLimitValue(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mLastAutoCurrentLimitValue:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mplatform_brightness_value_changed(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->platform_brightness_value_changed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_boot_completed_intent(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_boot_completed_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_screen_off_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_screen_on_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_user_present_intent(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_user_present_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAdaptiveControlStateInt(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->DEBUG:Z

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    .line 89
    iput v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    const/4 v1, -0x1

    .line 90
    iput v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mLastAutoCurrentLimitValue:I

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    const/4 v2, 0x0

    .line 93
    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    const-string v3, "/sys/class/lcd/panel/adaptive_control"

    .line 95
    iput-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    const-string v4, "/sys/class/lcd/panel1/adaptive_control"

    .line 96
    iput-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->ADAPTIVE_CONTROL_SUB_PATH:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 101
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "AdaptiveDisplaySolutionServiceThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 102
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v4, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandler:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    .line 107
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "AdaptiveDisplaySolutionService"

    if-eqz v3, :cond_8f

    const/4 v3, 0x1

    .line 108
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x107006c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e0016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_CURRENT_LIMIT_VERSION : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 115
    :cond_8f
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    .line 118
    :goto_91
    new-instance v3, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandler:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "screen_brightness"

    .line 122
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    invoke-virtual {v3, v5, v0, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "screen_brightness_mode"

    .line 123
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    invoke-virtual {v3, v5, v0, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 125
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 126
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 127
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 128
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 129
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    new-instance v8, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;

    invoke-direct {v8, p0, v2}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver-IA;)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo p1, "sys.adaptivedisplaysolution.adson"

    const-string v0, "false"

    .line 133
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    if-eqz p0, :cond_ee

    const-string/jumbo p0, "true"

    .line 136
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    const-string p0, "AdaptiveDisplaySolutionService Enabled"

    .line 139
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fileWriteInt(Ljava/lang/String;I)Z
    .registers 5

    .line 386
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3e

    const/4 p0, 0x0

    .line 390
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_2e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2a

    .line 395
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 396
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_26} :catch_28

    const/4 p0, 0x1

    return p0

    :catch_28
    move-exception p0

    goto :goto_33

    :catch_2a
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_33

    :catch_2e
    move-exception p1

    .line 392
    :try_start_2f
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_2a

    return v1

    .line 398
    :goto_33
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 400
    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    :goto_3e
    return v1
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 415
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_19

    .line 419
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 420
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_25

    :catch_16
    move-exception p0

    move-object v0, v1

    goto :goto_1a

    :catch_19
    move-exception p0

    .line 422
    :goto_1a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 424
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    .line 426
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_25
    :goto_25
    return-void
.end method


# virtual methods
.method public final display_setting_value_check()V
    .registers 6

    .line 211
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    iget v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_19

    const/4 v1, 0x0

    const/4 v3, -0x2

    const-string/jumbo v4, "screen_brightness_mode"

    .line 213
    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_19

    .line 214
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    :cond_19
    return-void
.end method

.method public final getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "File Close error"

    const-string v0, "AdaptiveDisplaySolutionService"

    const/16 v1, 0x80

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_11

    .line 439
    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 442
    :try_start_12
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_63
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_44
    .catchall {:try_start_12 .. :try_end_1c} :catchall_42

    .line 444
    :try_start_1c
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-eqz p1, :cond_2c

    .line 446
    new-instance v5, Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v3, p1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v5

    .line 448
    :cond_2c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2f} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2f} :catch_3a
    .catchall {:try_start_1c .. :try_end_2f} :catchall_37

    .line 459
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_83

    .line 461
    :catch_33
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :catchall_37
    move-exception p1

    move-object v1, v4

    goto :goto_84

    :catch_3a
    move-exception p1

    move-object v2, v1

    move-object v1, v4

    goto :goto_46

    :catch_3e
    move-exception p1

    move-object v2, v1

    move-object v1, v4

    goto :goto_65

    :catchall_42
    move-exception p1

    goto :goto_84

    :catch_44
    move-exception p1

    move-object v2, v1

    .line 454
    :goto_46
    :try_start_46
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_42

    if-eqz v1, :cond_82

    .line 459
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_7f

    goto :goto_82

    :catch_63
    move-exception p1

    move-object v2, v1

    .line 452
    :goto_65
    :try_start_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_65 .. :try_end_79} :catchall_42

    if-eqz v1, :cond_82

    .line 459
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_82

    .line 461
    :catch_7f
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    move-object v1, v2

    :goto_83
    return-object v1

    :goto_84
    if-eqz v1, :cond_8d

    .line 459
    :try_start_86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8d

    .line 461
    :catch_8a
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_8d
    :goto_8d
    throw p1
.end method

.method public final getting_platform_brightness_value()I
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 290
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mPlatformBrightnessValue:I

    return v0
.end method

.method public final platform_brightness_value_changed()V
    .registers 3

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->getting_platform_brightness_value()I

    move-result v0

    .line 282
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    if-eqz v1, :cond_b

    .line 283
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStatewithBrightness(ZI)V

    :cond_b
    return-void
.end method

.method public final receive_boot_completed_intent()V
    .registers 2

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->display_setting_value_check()V

    return-void
.end method

.method public final receive_screen_off_intent()V
    .registers 1

    return-void
.end method

.method public final receive_screen_on_intent()V
    .registers 1

    return-void
.end method

.method public final receive_user_present_intent()V
    .registers 1

    return-void
.end method

.method public setAutoCurrentLimitState(Z)V
    .registers 4

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoCurrentLimitState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") , mADSEnableCondition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlState(Z)V

    return-void
.end method

.method public setAutoCurrentLimitStateInt(I)V
    .registers 6

    .line 262
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    iget v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1b

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_mode"

    .line 264
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1b

    add-int/lit8 p1, p1, 0x2

    .line 268
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoCurrentLimitStateInt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") , mADSEnableCondition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    return-void
.end method

.method public setAutoCurrentLimitStateWithBrightness(Z)V
    .registers 5

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->getting_platform_brightness_value()I

    move-result v0

    const/4 v1, 0x1

    .line 274
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoCurrentLimitStateWithBrightness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") , mADSEnableCondition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptiveDisplaySolutionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStatewithBrightness(ZI)V

    return-void
.end method

.method public setGalleryDetailViewMode(Z)V
    .registers 3

    .line 251
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setGalleryDetailViewMode() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mADSEnableCondition : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdaptiveDisplaySolutionService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlState(Z)V

    return-void
.end method

.method public final updateAdaptiveControlState(Z)V
    .registers 7

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAdaptiveControlState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 330
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez v0, :cond_32

    const-string p0, "!AVAILABLE_ADAPTIVE_CONTROL"

    .line 331
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const-string v0, "/sys/class/lcd/panel/adaptive_control"

    const/4 v2, 0x0

    const-string v3, "/sys/class/lcd/panel1/adaptive_control"

    const/4 v4, 0x1

    if-eqz p1, :cond_6b

    const-string p1, "[AdaptiveControl]: ACL OFF"

    .line 336
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 338
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 339
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v4

    :goto_4d
    if-ltz p1, :cond_99

    .line 340
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 342
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v3, v1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    add-int/lit8 p1, p1, -0x1

    goto :goto_4d

    :cond_6b
    const-string p1, "[AdaptiveControl]: ACL ON"

    .line 346
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 348
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 349
    :goto_7a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v1, p1

    if-ge v4, v1, :cond_99

    .line 350
    aget-object p1, p1, v4

    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_96

    .line 352
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object p1, p1, v4

    invoke-static {v3, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 356
    :cond_99
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    return-void
.end method

.method public final updateAdaptiveControlStateInt(I)V
    .registers 6

    .line 360
    iput p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mLastAutoCurrentLimitValue:I

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAdaptiveControlStateInt("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mLastAutoCurrentLimitValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 364
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez p1, :cond_36

    const-string p0, "!AVAILABLE_ADAPTIVE_CONTROL"

    .line 365
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 369
    :cond_36
    iget p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mLastAutoCurrentLimitValue:I

    const/4 v2, 0x0

    if-nez p1, :cond_60

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AdaptiveControl]: ACL OFF ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mLastAutoCurrentLimitValue:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 372
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    goto :goto_85

    :cond_60
    if-lez p1, :cond_85

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AdaptiveControl]: ACL ON ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mLastAutoCurrentLimitValue:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 376
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 378
    :cond_85
    :goto_85
    iget p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mLastAutoCurrentLimitValue:I

    const-string v0, "/sys/class/lcd/panel/adaptive_control"

    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteInt(Ljava/lang/String;I)Z

    .line 379
    new-instance p1, Ljava/io/File;

    const-string v0, "/sys/class/lcd/panel1/adaptive_control"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 380
    iget p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mLastAutoCurrentLimitValue:I

    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteInt(Ljava/lang/String;I)Z

    .line 381
    :cond_9e
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    return-void
.end method

.method public final updateAdaptiveControlStatewithBrightness(ZI)V
    .registers 7

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAdaptiveControlStatewithBrightness("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 298
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez v0, :cond_32

    const-string p0, "!AVAILABLE_ADAPTIVE_CONTROL"

    .line 299
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const-string v0, "/sys/class/lcd/panel/adaptive_control"

    const-string v2, "/sys/class/lcd/panel1/adaptive_control"

    const/4 v3, 0x1

    if-eqz p1, :cond_6e

    const/16 p1, 0xff

    if-lt p2, p1, :cond_6e

    const-string p1, "[AdaptiveControl]: ACL OFF(with brightness)"

    .line 304
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 306
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 307
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v3

    :goto_50
    if-ltz p1, :cond_9d

    .line 308
    iget-object p2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object p2, p2, p1

    invoke-static {v0, p2}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 310
    iget-object p2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object p2, p2, p1

    invoke-static {v2, p2}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    add-int/lit8 p1, p1, -0x1

    goto :goto_50

    :cond_6e
    const-string p1, "[AdaptiveControl]: ACL ON(with brightness)"

    .line 314
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 316
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 317
    :goto_7e
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length p2, p1

    if-ge v3, p2, :cond_9d

    .line 318
    aget-object p1, p1, v3

    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 320
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-static {v2, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_9d
    return-void
.end method
