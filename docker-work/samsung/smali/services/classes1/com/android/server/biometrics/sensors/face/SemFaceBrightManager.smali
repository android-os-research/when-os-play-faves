.class public Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;
.super Ljava/lang/Object;
.source "SemFaceBrightManager.java"


# static fields
.field public static final BRIGHTNESS_LEVEL_MAX_TIME:I = 0x1f4

.field public static final BRIGHTNESS_LEVEL_TIME:I = 0x7d0

.field public static final FACE_BRIGHTNESS_DEFAULT_MAX_VALUE:I = 0x82

.field public static final FACE_BRIGHTNESS_DEFAULT_START_VALUE:I = 0x46

.field public static final FACE_BRIGHTNESS_DEFAULT_UP_VALUE:I = 0x64

.field public static final FACE_BRIGHTNESS_GAP:I = 0x1e

.field public static final KEY_FACE_SCREEN_FLASH_GUIDELINE_DISPLAYED:Ljava/lang/String; = "face_screen_flash_guideline_displayed"

.field public static final MSG_BRIGHTNESS_LEVEL_UP:I = 0x2

.field public static final MSG_BRIGHTNESS_READY_TO_SET_MAX:I = 0x5

.field public static final NOTIFICATION_ACTION_CLOSE_BUTTON:Ljava/lang/String; = "close"

.field public static final NOTIFICATION_ACTION_KEY:Ljava/lang/String; = "screen_flash_notification_action"

.field public static final NOTIFICATION_ACTION_SETTINGS_BUTTON:Ljava/lang/String; = "settings"

.field public static final NOTIFICATION_ACTION_USER:Ljava/lang/String; = "user"

.field public static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "FaceServiceScreenFlashNotificationChannel"

.field public static final NOTIFICATION_ID:I = 0x1

.field public static final NOTIFICATION_INTENT_ACTION_NAME:Ljava/lang/String; = "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

.field public static final NOTIFICATION_TAG:Ljava/lang/String; = "FaceServiceScreenFlash"

.field public static SInstance:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager; = null

.field public static final TAG:Ljava/lang/String; = "SemFaceBrightManager"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mHandlerBg:Landroid/os/Handler;

.field public mIsReadyToSetMaxBrightness:Z

.field public mIsScreenAutoBrightnessOn:Z

.field public mIsSetBrightness:Z

.field public mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mScreenFlashBrightnessGuideLevel:I

.field public mScreenFlashBrightnessLevelMax:I

.field public mScreenFlashBrightnessLevelMaxCorrected:I

.field public mScreenFlashBrightnessLevelUp:I

.field public mScreenFlashBrightnessLevelUpCorrected:I

.field public mScreenFlashBrightnessStartValue:I

.field public mScreenFlashBrightnessStartValueCorrected:I

.field public mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmScreenFlashBrightnessLevelUpCorrected(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsReadyToSetMaxBrightness(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotification(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->cancelNotification(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleGoToSettingAction(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->handleGoToSettingAction(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrightness(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightness(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    .line 49
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    .line 50
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    .line 51
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 52
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 53
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    const/16 v0, 0x23

    .line 54
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsSetBrightness:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    .line 72
    new-instance v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;-><init>(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 102
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    .line 103
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 104
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;
    .registers 3

    const-class v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    monitor-enter v0

    .line 94
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->SInstance:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    if-nez v1, :cond_e

    .line 95
    new-instance v1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->SInstance:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 97
    :cond_e
    sget-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->SInstance:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final cancelNotification(I)V
    .registers 4

    .line 359
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    .line 360
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 362
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v0, "FaceServiceScreenFlash"

    const/4 v1, 0x1

    .line 361
    invoke-virtual {p0, v0, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final closeNotificationPanel()V
    .registers 3

    .line 378
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    .line 380
    :try_start_b
    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->collapsePanels()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
    move-exception p0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeNotificationPanel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFaceBrightManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public final getCloseNotificationAction(Landroid/content/Context;I)Landroid/app/Notification$Action;
    .registers 7

    .line 343
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const v1, 0x1040c4a

    .line 345
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    const/4 v3, 0x0

    .line 346
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 347
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public final getGoToSettingsNotificationAction(Landroid/content/Context;I)Landroid/app/Notification$Action;
    .registers 7

    .line 351
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const v1, 0x1040c4b

    .line 353
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settings"

    const/4 v3, 0x1

    .line 354
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 355
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public final getNotification(Landroid/content/Context;I)Landroid/app/Notification;
    .registers 7

    .line 287
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "FaceServiceScreenFlashNotificationChannel"

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x10809d8

    .line 288
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1040d0a

    .line 289
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x1040d0c

    .line 290
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x1040d0b

    .line 291
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 292
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "settings"

    .line 296
    invoke-virtual {p0, p1, v1, v3, p2}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getCloseNotificationAction(Landroid/content/Context;I)Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getGoToSettingsNotificationAction(Landroid/content/Context;I)Landroid/app/Notification$Action;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 299
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    const p2, 0x106001c

    .line 300
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 301
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;
    .registers 6

    .line 387
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "screen_flash_notification_action"

    .line 388
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "user"

    .line 389
    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/high16 p4, 0x4000000

    .line 390
    invoke-static {p1, p3, p0, p4, p2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final handleGoToSettingAction(I)V
    .registers 4

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->cancelNotification(I)V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->closeNotificationPanel()V

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FACE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    :try_start_12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_38

    :catch_1c
    move-exception p0

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "handleGoToSettingAction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFaceBrightManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public final initBrightness(I)V
    .registers 6

    .line 150
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_36

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->convertToBrightness(F)I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/high16 v2, 0x429a0000    # 77.0f

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->convertToBrightness(F)I

    move-result v1

    .line 160
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->convertToBrightness(F)I

    move-result v2

    if-lez v0, :cond_2a

    if-lez v1, :cond_2a

    if-lez v2, :cond_2a

    .line 162
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    .line 163
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    .line 164
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    goto :goto_36

    :cond_2a
    const/16 v0, 0x46

    .line 166
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    const/16 v0, 0x64

    .line 167
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    const/16 v0, 0x82

    .line 168
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    .line 172
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->isBlackWallpaper()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 174
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    add-int/lit8 v3, v2, -0x14

    if-le v1, v3, :cond_47

    .line 175
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    goto :goto_4b

    :cond_47
    add-int/lit8 v1, v2, -0x14

    .line 177
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 179
    :goto_4b
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    add-int/lit8 v3, v2, -0xa

    if-le v1, v3, :cond_54

    .line 180
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    goto :goto_58

    :cond_54
    add-int/lit8 v1, v2, -0xa

    .line 182
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 184
    :goto_58
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    goto :goto_67

    .line 186
    :cond_5b
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 187
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 188
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    .line 190
    :goto_67
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", auto = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", blackWallpaper = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", guide = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFaceBrightManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isAlreadyGuided(Landroid/content/Context;I)Z
    .registers 4

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "face_screen_flash_guideline_displayed"

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ltz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final isBlackWallpaper()Z
    .registers 8

    .line 199
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    const-string v0, "SemFaceBrightManager"

    const/4 v1, 0x1

    if-nez p0, :cond_e

    const-string/jumbo p0, "mWallpaperManager is null"

    .line 200
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    const/4 v2, 0x2

    .line 203
    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p0

    if-nez p0, :cond_1b

    const-string p0, "colors is null"

    .line 205
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1b
    const-wide/16 v2, 0x200

    .line 209
    invoke-virtual {p0, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    const-wide/16 v3, 0x20

    .line 210
    invoke-virtual {p0, v3, v4}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    const-wide/16 v4, 0x40

    .line 211
    invoke-virtual {p0, v4, v5}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    const-wide/16 v5, 0x80

    .line 212
    invoke-virtual {p0, v5, v6}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    if-eqz v2, :cond_7f

    if-eqz v3, :cond_7f

    if-eqz v4, :cond_7f

    if-nez p0, :cond_3c

    goto :goto_7f

    .line 217
    :cond_3c
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v2

    .line 218
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v3

    .line 219
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v4

    .line 220
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    if-eq v2, v1, :cond_54

    if-eq v3, v1, :cond_54

    if-eq v4, v1, :cond_54

    if-ne p0, v1, :cond_55

    :cond_54
    const/4 v1, 0x0

    .line 225
    :cond_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBlackWallpaper : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7f
    :goto_7f
    const-string/jumbo p0, "items are null"

    .line 214
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isNeededSetBrightness()Z
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public final registerBroadcastForNotificationAction()V
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_23

    .line 306
    new-instance v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;-><init>(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 328
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 327
    invoke-static {v1, p0, v0, v2, v3}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    :cond_23
    return-void
.end method

.method public restoreBrightness()V
    .registers 4

    .line 246
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsSetBrightness:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsSetBrightness:Z

    .line 251
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1f

    .line 255
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, v2, v2}, Landroid/os/PowerManager;->semSetAutoBrightnessLimit(II)V

    goto :goto_24

    .line 257
    :cond_1f
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v2, v0}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IZ)V

    :goto_24
    const-string p0, "SemFaceBrightManager"

    const-string/jumbo v0, "restoreBrightness"

    .line 259
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBrightness(I)V
    .registers 4

    .line 230
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 231
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/PowerManager;->setAutoBrightnessLimit(IIZ)V

    goto :goto_11

    .line 233
    :cond_c
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1, v1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IZ)V

    .line 235
    :goto_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBrightness : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFaceBrightManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBrightnessMax()V
    .registers 2

    .line 239
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    if-eqz v0, :cond_c

    .line 240
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightness(I)V

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    :cond_c
    return-void
.end method

.method public final setFirstGuide(Landroid/content/Context;I)V
    .registers 4

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "face_screen_flash_guideline_displayed"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final showNotificationIfNeed(I)V
    .registers 7

    .line 266
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->isAlreadyGuided(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 269
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setFirstGuide(Landroid/content/Context;I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->registerBroadcastForNotificationAction()V

    .line 272
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 275
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    const v3, 0x1040d0a

    .line 276
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "FaceServiceScreenFlashNotificationChannel"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 v1, 0x1

    .line 280
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {p0, v2, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getNotification(Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object p0

    .line 282
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v2, "FaceServiceScreenFlash"

    .line 280
    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startBrightness(I)V
    .registers 9

    .line 112
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    float-to-int v0, v0

    .line 114
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    const/4 v2, 0x1

    .line 119
    :try_start_17
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_27

    move v1, v2

    :cond_27
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_33

    :catch_2a
    move-exception v1

    const-string v5, "SemFaceBrightManager"

    const-string/jumbo v6, "startBrightness : "

    .line 122
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :goto_33
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->initBrightness(I)V

    .line 127
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    const-wide/16 v5, 0x7d0

    if-eqz v1, :cond_4e

    .line 128
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightness(I)V

    .line 129
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Landroid/os/Handler;

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 130
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    if-ge v0, v1, :cond_6f

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->showNotificationIfNeed(I)V

    goto :goto_6f

    .line 134
    :cond_4e
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    if-ge v0, v1, :cond_64

    .line 135
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    if-ge v0, v1, :cond_5e

    .line 136
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightness(I)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->showNotificationIfNeed(I)V

    .line 139
    :cond_5e
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Landroid/os/Handler;

    invoke-virtual {p1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6f

    .line 140
    :cond_64
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    if-ge v0, p1, :cond_71

    .line 141
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    :cond_6f
    :goto_6f
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsSetBrightness:Z

    :cond_71
    return-void
.end method
