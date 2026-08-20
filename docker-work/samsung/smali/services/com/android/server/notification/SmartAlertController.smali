.class public Lcom/android/server/notification/SmartAlertController;
.super Ljava/lang/Object;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;
    }
.end annotation


# static fields
.field public static final MOTION_UNREG_DELAY:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "SmartAlertController"


# instance fields
.field public filter:Landroid/content/IntentFilter;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mInCall:Z

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mMissedEventExist:Z

.field public mMotionEnabled:Z

.field public mMotionRegistered:Z

.field public final mPM:Landroid/os/PowerManager;

.field public mPickUpVibratePattern:[J

.field public mScreenOn:Z

.field public mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field public mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field public final mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

.field public mVibrator:Landroid/os/Vibrator;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$lucMOCmdyFFhamE03b_RgY3Y1C8(Lcom/android/server/notification/SmartAlertController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/SmartAlertController;->lambda$unregisterListener$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/SmartAlertController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCall(Lcom/android/server/notification/SmartAlertController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMissedEventExist(Lcom/android/server/notification/SmartAlertController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionEnabled(Lcom/android/server/notification/SmartAlertController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionRegistered(Lcom/android/server/notification/SmartAlertController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPickUpVibratePattern(Lcom/android/server/notification/SmartAlertController;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/android/server/notification/SmartAlertController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSmartAlertMotionListener(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSmartAlertMotionManager(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrator(Lcom/android/server/notification/SmartAlertController;)Landroid/os/Vibrator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/notification/SmartAlertController;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmInCall(Lcom/android/server/notification/SmartAlertController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMissedEventExist(Lcom/android/server/notification/SmartAlertController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMotionRegistered(Lcom/android/server/notification/SmartAlertController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/notification/SmartAlertController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSmartAlertEnabled(Lcom/android/server/notification/SmartAlertController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/SmartAlertController;->setSmartAlertEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    const/4 v1, 0x5

    new-array v1, v1, [J

    .line 64
    fill-array-data v1, :array_86

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    .line 67
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    .line 87
    new-instance v1, Lcom/android/server/notification/SmartAlertController$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$1;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    .line 198
    new-instance v1, Lcom/android/server/notification/SmartAlertController$4;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$4;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    .line 72
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    .line 73
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mPM:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "SmartAlert"

    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    new-instance v1, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;-><init>(Lcom/android/server/notification/SmartAlertController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    .line 82
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "motion_pick_up"

    .line 83
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->onChange(Z)V

    return-void

    :array_86
    .array-data 8
        0x0
        0x4b
        0x19
        0x4b
        0x12c
    .end array-data
.end method

.method private synthetic lambda$unregisterListener$0()V
    .registers 3

    .line 188
    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    if-eqz v0, :cond_17

    .line 189
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_17

    .line 190
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    const-string p0, "SmartAlertController"

    const-string v0, "SmartAlert - unregisterListener"

    .line 192
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method


# virtual methods
.method public checkMissedEvent(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/SmartAlertController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/SmartAlertController$2;-><init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener()V
    .registers 2

    .line 165
    new-instance v0, Lcom/android/server/notification/SmartAlertController$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SmartAlertController$3;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public resetSmartAlertSettingObserver(I)V
    .registers 5

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetSmartAlertSettingObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartAlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->onChange(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_pick_up"

    .line 242
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertSettingObserver:Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    const/4 v2, 0x1

    .line 241
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final setSmartAlertEnabled(Z)V
    .registers 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSmartAlertEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pre:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartAlertController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    if-eq p1, v0, :cond_56

    .line 116
    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    if-eqz p1, :cond_44

    .line 118
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez p1, :cond_56

    .line 120
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    goto :goto_56

    .line 124
    :cond_44
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    if-eqz p1, :cond_53

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    :cond_53
    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :cond_56
    :goto_56
    return-void
.end method

.method public unregisterListener(Z)V
    .registers 4

    if-eqz p1, :cond_5

    const/16 p1, 0x1f4

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 187
    :goto_6
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
