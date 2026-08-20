.class public Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.super Ljava/lang/Object;
.source "BatterySaverStateMachine.java"


# static fields
.field public static final ADAPTIVE_AUTO_DISABLE_BATTERY_LEVEL:I = 0x50

.field public static final ADAPTIVE_CHANGE_TIMEOUT_MS:J = 0x5265c00L

.field public static final BATTERY_SAVER_NOTIF_CHANNEL_ID:Ljava/lang/String; = "battery_saver_channel"

.field public static final DEBUG:Z = false

.field public static final DYNAMIC_MODE_NOTIFICATION_ID:I = 0x7c8

.field public static final DYNAMIC_MODE_NOTIF_CHANNEL_ID:Ljava/lang/String; = "dynamic_mode_notification"

.field public static final STATE_AUTOMATIC_ON:I = 0x3

.field public static final STATE_MANUAL_ON:I = 0x2

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_OFF_AUTOMATIC_SNOOZED:I = 0x4

.field public static final STATE_PENDING_STICKY_ON:I = 0x5

.field public static final STICKY_AUTO_DISABLED_NOTIFICATION_ID:I = 0x7c9

.field public static final SUPPORT_AUTO_BATTERY_SAVER:Z = false

.field public static final TAG:Ljava/lang/String; = "BatterySaverStateMachine"


# instance fields
.field public mBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field public final mBatterySaverStickyBehaviourDisabled:Z

.field public mBatteryStatusSet:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mBootCompleted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDynamicPowerSavingsDefaultDisableThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDynamicPowerSavingsDisableThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDynamicPowerSavingsEnableBatterySaver:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mEmergencyModeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsBatteryLevelLow:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsPowered:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastAdaptiveBatterySaverChangedExternallyElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastChangedIntReason:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastChangedStrReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mSettingAutomaticBatterySaver:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSettingBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSettingBatterySaverEnabledSticky:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSettingBatterySaverStickyAutoDisableEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSettingBatterySaverStickyAutoDisableThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSettingBatterySaverTriggerThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSettingsLoaded:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSettingsObserver:Landroid/database/ContentObserver;

.field public mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mThresholdChangeLogger:Ljava/lang/Runnable;

.field public mUltraPowerSavingModeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1EwyG_pn3H-C0ioZbgS2cfrLLCI(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$triggerStickyDisabledNotification$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$5YGRMAjJ8DyuYmjloVzrbb8dcsY(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$onBootCompleted$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$LslWh4hhYFjFFwmSSc2-r8ZXWXk(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$hideNotification$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$S_N5dZx6EbaDriR4Ktah_f_DgcA(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ewgD6bxpnnceuq98_gMQ2pkRgvE(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$triggerDynamicModeNotification$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrefreshSettingsLocked(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 6

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 524
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    .line 256
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 257
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 258
    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 p1, 0x1

    .line 259
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 261
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1110039

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    .line 263
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0098

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    return-void
.end method

.method private synthetic lambda$hideNotification$4(I)V
    .registers 4

    .line 980
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 981
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "BatterySaverStateMachine"

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 1

    .line 525
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeBatterySaverSetting(I)V

    return-void
.end method

.method private synthetic lambda$onBootCompleted$0()V
    .registers 5

    .line 318
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    .line 319
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "low_power_sticky"

    .line 322
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "low_power_trigger_level"

    .line 325
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "automatic_power_save_mode"

    .line 328
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "dynamic_power_savings_enabled"

    .line 331
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "dynamic_power_savings_disable_threshold"

    .line 334
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "low_power_sticky_auto_disable_enabled"

    .line 337
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "low_power_sticky_auto_disable_level"

    .line 340
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "emergency_mode"

    .line 345
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "ultra_powersaving_mode"

    .line 349
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 354
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7e
    const-string/jumbo v1, "low_power_sticky"

    .line 355
    invoke-virtual {p0, v1, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_89

    move v3, v2

    :cond_89
    if-eqz v3, :cond_8e

    const/4 v1, 0x5

    .line 359
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 362
    :cond_8e
    iput-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    .line 364
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    .line 366
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 367
    monitor-exit v0

    return-void

    :catchall_98
    move-exception p0

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_7e .. :try_end_9a} :catchall_98

    throw p0
.end method

.method private synthetic lambda$triggerDynamicModeNotification$2()V
    .registers 6

    .line 906
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "dynamic_mode_notification"

    const v2, 0x1040487

    .line 907
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    const v2, 0x1040489

    const v3, 0x1040488

    const-string v4, "android.intent.action.POWER_USAGE_SUMMARY"

    .line 911
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;IILjava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "BatterySaverStateMachine"

    const/16 v3, 0x7c8

    .line 910
    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$triggerStickyDisabledNotification$3()V
    .registers 6

    .line 924
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "battery_saver_channel"

    const v2, 0x104024b

    .line 925
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    const v2, 0x104024c

    const v3, 0x1040248

    const-string v4, "android.settings.BATTERY_SAVER_SETTINGS"

    .line 929
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;IILjava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "BatterySaverStateMachine"

    const/16 v3, 0x7c9

    .line 928
    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public final buildNotification(Ljava/lang/String;IILjava/lang/String;)Landroid/app/Notification;
    .registers 9

    .line 948
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 949
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p4, 0x10008000

    .line 950
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 951
    iget-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {p4, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 954
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 955
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 957
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080362

    .line 958
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 959
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 960
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 961
    invoke-virtual {p0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 962
    invoke-virtual {p1, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 963
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 964
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 965
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final doAutoBatterySaverLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 1009
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p1, "Battery saver state machine:"

    .line 1012
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1014
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_15
    const-string v1, "Enabled="

    .line 1015
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1017
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "full="

    .line 1018
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "adaptive="

    .line 1020
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, " (advertise="

    .line 1023
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1025
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v1

    .line 1024
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v1, ")"

    .line 1026
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    :cond_61
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1029
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mState="

    .line 1030
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mLastChangedIntReason="

    .line 1033
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mLastChangedStrReason="

    .line 1035
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "mBootCompleted="

    .line 1038
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mSettingsLoaded="

    .line 1040
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mBatteryStatusSet="

    .line 1042
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mIsPowered="

    .line 1045
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mBatteryLevel="

    .line 1047
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mIsBatteryLevelLow="

    .line 1049
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mSettingAutomaticBatterySaver="

    .line 1052
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mSettingBatterySaverEnabled="

    .line 1054
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1055
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mSettingBatterySaverEnabledSticky="

    .line 1056
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mSettingBatterySaverStickyAutoDisableEnabled="

    .line 1058
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mSettingBatterySaverStickyAutoDisableThreshold="

    .line 1060
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mSettingBatterySaverTriggerThreshold="

    .line 1062
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mBatterySaverStickyBehaviourDisabled="

    .line 1064
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mDynamicPowerSavingsDefaultDisableThreshold="

    .line 1067
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mDynamicPowerSavingsDisableThreshold="

    .line 1069
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mDynamicPowerSavingsEnableBatterySaver="

    .line 1071
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mLastAdaptiveBatterySaverChangedExternallyElapsed="

    .line 1074
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    iget-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    invoke-virtual {v0, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1076
    monitor-exit p1
    :try_end_144
    .catchall {:try_start_15 .. :try_end_144} :catchall_148

    .line 1077
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_148
    move-exception p0

    .line 1076
    :try_start_149
    monitor-exit p1
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_148

    throw p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 1081
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v1, 0x10800000001L

    .line 1084
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1085
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v3

    .line 1084
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10e00000012L

    .line 1086
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1080000000eL

    .line 1087
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1088
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v3

    .line 1087
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1080000000fL

    .line 1089
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1090
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v3

    .line 1089
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000010L

    .line 1091
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1092
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v3

    .line 1091
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000002L

    .line 1094
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000003L

    .line 1095
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000004L

    .line 1096
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000006L

    .line 1099
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10500000007L

    .line 1100
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000008L

    .line 1101
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10e00000013L

    .line 1103
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000009L

    .line 1105
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1080000000aL

    .line 1107
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1050000000bL

    .line 1109
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1080000000cL

    .line 1111
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1050000000dL

    .line 1114
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000014L

    .line 1119
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000015L

    .line 1122
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000016L

    .line 1125
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10300000011L

    .line 1129
    iget-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1134
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1135
    monitor-exit v0

    return-void

    :catchall_f2
    move-exception p0

    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_3 .. :try_end_f4} :catchall_f2

    throw p0
.end method

.method public final enableBatterySaverLocked(ZZI)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 832
    invoke-static {p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    return-void
.end method

.method public final enableBatterySaverLocked(ZZILjava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBatterySaver: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " manual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatterySaverStateMachine"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_3c

    return-void

    .line 864
    :cond_3c
    iput p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    .line 865
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    .line 867
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 876
    iget-boolean p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    if-nez p4, :cond_5e

    iget-boolean p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    if-nez p4, :cond_5e

    const-string/jumbo p4, "low_power"

    .line 877
    invoke-virtual {p0, p4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    if-eqz p2, :cond_5e

    .line 880
    iget-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p2, :cond_5a

    if-eqz p1, :cond_5a

    const/4 p2, 0x1

    goto :goto_5b

    :cond_5a
    const/4 p2, 0x0

    :goto_5b
    invoke-virtual {p0, p2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    .line 885
    :cond_5e
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->enableBatterySaver(ZI)V

    const/16 p2, 0x9

    if-ne p3, p2, :cond_6b

    .line 889
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerDynamicModeNotification()V

    goto :goto_70

    :cond_6b
    if-nez p1, :cond_70

    .line 891
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideDynamicModeNotification()V

    :cond_70
    :goto_70
    return-void
.end method

.method public final ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .registers 5

    .line 939
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 940
    invoke-virtual {p0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p3, 0x3

    invoke-direct {v0, p2, p0, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    .line 941
    invoke-virtual {v0, p0, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p0, 0x1

    .line 942
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 943
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public getFullBatterySaverPolicy()Landroid/os/BatterySaverPolicyConfig;
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPolicyLocked(I)Landroid/os/BatterySaverPolicyConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    .line 567
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getGlobalSetting(Ljava/lang/String;I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 999
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getState()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_3
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 810
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getSystemSetting(Ljava/lang/String;I)I
    .registers 3

    .line 1004
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final hideDynamicModeNotification()V
    .registers 2

    const/16 v0, 0x7c8

    .line 969
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    return-void
.end method

.method public final hideNotification(I)V
    .registers 3

    .line 979
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final hideStickyDisabledNotification()V
    .registers 2

    const/16 v0, 0x7c9

    .line 973
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    return-void
.end method

.method public final isAutomaticModeActiveLocked()Z
    .registers 2

    .line 269
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-nez v0, :cond_a

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isDynamicModeActiveLocked()Z
    .registers 3

    .line 285
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public final isInAutomaticLowZoneLocked()Z
    .registers 1

    .line 280
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    return p0
.end method

.method public final isInDynamicLowZoneLocked()Z
    .registers 2

    .line 296
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-gt v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isUltraPowerSavingModeEnabled()Z
    .registers 2

    .line 586
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public onBootCompleted()V
    .registers 2

    .line 316
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putGlobalSetting(Ljava/lang/String;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putGlobalSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatterySaverStateMachine"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final refreshSettingsLocked()V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string/jumbo v0, "low_power"

    const/4 v1, 0x0

    .line 392
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    const-string/jumbo v3, "low_power_sticky"

    .line 394
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_19

    move v6, v2

    goto :goto_1a

    :cond_19
    move v6, v1

    :goto_1a
    const-string v3, "dynamic_power_savings_enabled"

    .line 396
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_24

    move v11, v2

    goto :goto_25

    :cond_24
    move v11, v1

    :goto_25
    const-string/jumbo v3, "low_power_trigger_level"

    .line 398
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v7

    const-string v3, "automatic_power_save_mode"

    .line 400
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v10

    .line 403
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    const-string v4, "dynamic_power_savings_disable_threshold"

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v3, "low_power_sticky_auto_disable_enabled"

    .line 406
    invoke-virtual {p0, v3, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_45

    move v8, v2

    goto :goto_46

    :cond_45
    move v8, v1

    :goto_46
    const/16 v3, 0x5a

    const-string/jumbo v4, "low_power_sticky_auto_disable_level"

    .line 408
    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v9

    const-string v3, "emergency_mode"

    .line 412
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getSystemSetting(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_59

    move v3, v2

    goto :goto_5a

    :cond_59
    move v3, v1

    :goto_5a
    iput-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    const-string/jumbo v3, "ultra_powersaving_mode"

    .line 415
    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getSystemSetting(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_67

    move v3, v2

    goto :goto_68

    :cond_67
    move v3, v1

    :goto_68
    iput-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] refreshSettingsLocked: lowPowerModeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " emergencyModeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ultraPowerSavingModeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " lowPowerModeEnabledSticky: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " lowPowerModeTriggerLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatterySaverStateMachine"

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_b1

    .line 427
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    if-nez v0, :cond_b1

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    if-eqz v0, :cond_af

    goto :goto_b1

    :cond_af
    move v5, v1

    goto :goto_b2

    :cond_b1
    :goto_b1
    move v5, v2

    :goto_b2
    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setSettingsLocked(ZZIZIIZI)V

    return-void
.end method

.method public runOnBgThread(Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 376
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnBgThreadLazy(Ljava/lang/Runnable;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 385
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 386
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    int-to-long v0, p2

    .line 387
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAdaptiveBatterySaverEnabled(Z)Z
    .registers 5

    .line 598
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 600
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v1, 0xb

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 602
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setAdaptiveBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 5

    .line 613
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 615
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v1, 0xb

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 617
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setBatterySaverEnabledManually(Z)V
    .registers 5

    const-string v0, "BatterySaverStateMachine"

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBatterySaverEnabledManually: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 824
    :try_start_1b
    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(ZZ)V

    .line 827
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw p0
.end method

.method public setBatteryStatus(ZIZ)V
    .registers 10

    .line 538
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 539
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    .line 541
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    const/4 v3, 0x0

    if-eq v2, p1, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v3

    .line 542
    :goto_e
    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    if-eq v4, p2, :cond_14

    move v4, v1

    goto :goto_15

    :cond_14
    move v4, v3

    .line 543
    :goto_15
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    if-eq v5, p3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    if-nez v2, :cond_23

    if-nez v4, :cond_23

    if-nez v1, :cond_23

    .line 546
    monitor-exit v0

    return-void

    .line 549
    :cond_23
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    .line 550
    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    .line 551
    iput-boolean p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    .line 553
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 554
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public setFullBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 4

    .line 578
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v1, 0xd

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 581
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public setSettingsLocked(ZZIZIIZI)V
    .registers 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    const/4 v8, 0x1

    .line 461
    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    move/from16 v9, p5

    .line 464
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 467
    iget-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    if-eq v10, v1, :cond_1f

    move v10, v8

    goto :goto_20

    :cond_1f
    const/4 v10, 0x0

    .line 468
    :goto_20
    iget-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eq v12, v2, :cond_26

    move v12, v8

    goto :goto_27

    :cond_26
    const/4 v12, 0x0

    .line 470
    :goto_27
    iget v13, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-eq v13, v3, :cond_2d

    move v13, v8

    goto :goto_2e

    :cond_2d
    const/4 v13, 0x0

    .line 472
    :goto_2e
    iget-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eq v14, v4, :cond_34

    move v14, v8

    goto :goto_35

    :cond_34
    const/4 v14, 0x0

    .line 474
    :goto_35
    iget v15, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-eq v15, v9, :cond_3b

    move v15, v8

    goto :goto_3c

    :cond_3b
    const/4 v15, 0x0

    .line 476
    :goto_3c
    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-eq v11, v5, :cond_42

    move v11, v8

    goto :goto_43

    :cond_42
    const/4 v11, 0x0

    .line 477
    :goto_43
    iget v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-eq v8, v7, :cond_49

    const/4 v8, 0x1

    goto :goto_4a

    :cond_49
    const/4 v8, 0x0

    .line 479
    :goto_4a
    iget-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    if-eq v7, v6, :cond_50

    const/4 v7, 0x1

    goto :goto_51

    :cond_50
    const/4 v7, 0x0

    :goto_51
    if-nez v10, :cond_62

    if-nez v12, :cond_62

    if-nez v13, :cond_62

    if-nez v11, :cond_62

    if-nez v14, :cond_62

    if-nez v15, :cond_62

    if-nez v8, :cond_62

    if-nez v7, :cond_62

    return-void

    .line 488
    :cond_62
    iput-boolean v1, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 489
    iput-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 490
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 491
    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    .line 492
    iput v9, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    .line 493
    iput v5, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    move/from16 v2, p8

    .line 494
    iput v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    .line 495
    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    if-eqz v13, :cond_7d

    .line 499
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThreadLazy(Ljava/lang/Runnable;I)V

    .line 502
    :cond_7d
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-nez v2, :cond_84

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    :cond_84
    if-eqz v10, :cond_b3

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " em:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ul:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 517
    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    goto :goto_b6

    .line 520
    :cond_b3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    :goto_b6
    return-void
.end method

.method public final setStickyActive(Z)V
    .registers 3

    .line 986
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    const-string/jumbo v0, "low_power_sticky"

    .line 987
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    return-void
.end method

.method public triggerDynamicModeNotification()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 905
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public triggerStickyDisabledNotification()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 923
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateStateLocked(ZZ)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-nez p1, :cond_f

    .line 671
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_f

    :cond_e
    return-void

    .line 675
    :cond_f
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    const/4 v1, 0x3

    const-string v2, "BatterySaverStateMachine"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_131

    const/4 v6, 0x7

    const/4 v7, 0x5

    if-eq v0, v3, :cond_10c

    const/4 v8, 0x4

    if-eq v0, v1, :cond_b4

    if-eq v0, v8, :cond_77

    if-eq v0, v7, :cond_3c

    .line 801
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16f

    :cond_3c
    if-eqz p1, :cond_44

    const-string p0, "Tried to manually change BS state from PENDING_STICKY_ON"

    .line 780
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 783
    :cond_44
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eqz p1, :cond_50

    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-lt p1, p2, :cond_50

    move p1, v5

    goto :goto_51

    :cond_50
    move p1, v4

    .line 785
    :goto_51
    iget-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p2, :cond_5c

    iget-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-nez p2, :cond_5a

    goto :goto_5c

    :cond_5a
    move p2, v4

    goto :goto_5d

    :cond_5c
    :goto_5c
    move p2, v5

    :goto_5d
    if-nez p2, :cond_6d

    if-eqz p1, :cond_62

    goto :goto_6d

    .line 791
    :cond_62
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez p1, :cond_16f

    .line 793
    invoke-virtual {p0, v5, v5, v8}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 795
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_16f

    .line 788
    :cond_6d
    :goto_6d
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 789
    invoke-virtual {p0, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    .line 790
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerStickyDisabledNotification()V

    goto/16 :goto_16f

    :cond_77
    if-eqz p1, :cond_88

    if-nez p2, :cond_81

    const-string p0, "Tried to disable BS when it\'s already AUTO_SNOOZED"

    .line 761
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 764
    :cond_81
    invoke-virtual {p0, v5, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 766
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_16f

    .line 767
    :cond_88
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez p1, :cond_b0

    .line 768
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_98

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 769
    :cond_98
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_a4

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 770
    :cond_a4
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_16f

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_16f

    .line 771
    :cond_b0
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_16f

    .line 725
    :cond_b4
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_bf

    .line 726
    invoke-virtual {p0, v4, v4, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 728
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_16f

    :cond_bf
    if-eqz p1, :cond_d0

    if-eqz p2, :cond_c9

    const-string p0, "Tried to enable BS when it\'s already AUTO_ON"

    .line 731
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 734
    :cond_c9
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 741
    iput v8, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_16f

    .line 742
    :cond_d0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_e3

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result p1

    if-nez p1, :cond_e3

    .line 743
    invoke-virtual {p0, v4, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 745
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_16f

    .line 746
    :cond_e3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_f8

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result p1

    if-nez p1, :cond_f8

    const/16 p1, 0xa

    .line 747
    invoke-virtual {p0, v4, v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 749
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_16f

    .line 750
    :cond_f8
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_16f

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_16f

    const/16 p1, 0x8

    .line 751
    invoke-virtual {p0, v4, v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 753
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_16f

    :cond_10c
    if-eqz p1, :cond_11c

    if-eqz p2, :cond_116

    const-string p0, "Tried to enable BS when it\'s already MANUAL_ON"

    .line 705
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 708
    :cond_116
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 710
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_16f

    .line 711
    :cond_11c
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz p1, :cond_16f

    .line 712
    invoke-virtual {p0, v4, v4, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 714
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eqz p1, :cond_12e

    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p1, :cond_12e

    .line 716
    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_16f

    .line 718
    :cond_12e
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_16f

    :cond_131
    if-eqz p1, :cond_144

    if-nez p2, :cond_13b

    const-string p0, "Tried to disable BS when it\'s already OFF"

    .line 680
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 683
    :cond_13b
    invoke-virtual {p0, v5, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 685
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 686
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_16f

    .line 687
    :cond_144
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_159

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_159

    .line 688
    invoke-virtual {p0, v5, v4, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 690
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 691
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_16f

    .line 692
    :cond_159
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_16f

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_16f

    const/16 p1, 0x9

    .line 693
    invoke-virtual {p0, v5, v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 695
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 696
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    :cond_16f
    :goto_16f
    return-void
.end method
