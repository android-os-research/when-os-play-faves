.class public Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field public static final CHARGING_VIBRATION_AMPLITUDE:[I

.field public static final CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final CHARGING_VIBRATION_TIME:[J

.field public static final DEBUG:Z = false

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field public static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field public static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field public static final MSG_BROADCAST:I = 0x2

.field public static final MSG_BROADCAST_ENHANCED_PREDICTION:I = 0x4

.field public static final MSG_PROFILE_TIMED_OUT:I = 0x5

.field public static final MSG_SCREEN_POLICY:I = 0x7

.field public static final MSG_USER_ACTIVITY:I = 0x1

.field public static final MSG_WIRED_CHARGING_STARTED:I = 0x6

.field public static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field public static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBroadcastInProgress:Z

.field public mBroadcastStartTime:J

.field public mBroadcastedInteractiveState:I

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

.field public final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field public final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field public final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public mInteractive:Z

.field public mInteractiveChangeOffReason:I

.field public mInteractiveChangeOnReason:I

.field public mInteractiveChangeStartTime:J

.field public mInteractiveChanging:Z

.field public final mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLock:Ljava/lang/Object;

.field public mPendingGoToSleepBroadcast:Z

.field public mPendingInteractiveState:I

.field public mPendingWakeUpBroadcast:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mProximity:Z

.field public final mScreenOffByProximityIntent:Landroid/content/Intent;

.field public final mScreenOffIntent:Landroid/content/Intent;

.field public final mScreenOnByProximityIntent:Landroid/content/Intent;

.field public final mScreenOnIntent:Landroid/content/Intent;

.field public final mShowWirelessChargingAnimationConfig:Z

.field public final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field public final mSuspendWhenScreenOffDueToProximityConfig:Z

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mUserActivityPending:Z

.field public final mVibrator:Landroid/os/Vibrator;

.field public final mWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field public final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$12151LgGyIv_D9SFvvVhjU0BT18(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->lambda$handleEarlyInteractiveChange$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$BiCR0Y24dzT-6fY-LYE6FiLY6s4(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->lambda$handleEarlyInteractiveChange$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$I57ZoxZ4N5rRpZjlcTk0QB9k0XI(Lcom/android/server/power/Notifier;IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/Notifier;->lambda$onPowerGroupWakefulnessChanged$4(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$JQPCfs1pubrHgYXB1mWgkIL18es(Lcom/android/server/power/Notifier;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateInteractiveChange$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lsm4UZVwpig2M8WbYEtV0DDUf8c(Landroid/os/IWakeLockCallback;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/Notifier;->lambda$notifyWakeLockListener$6(Landroid/os/IWakeLockCallback;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nl0xh2b6rrgA2wwOFnLfiO_KxBU(Lcom/android/server/power/Notifier;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$playChargingStartedFeedback$5(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gj2jPj9Hz83gkJTM16w1ro2-PqM(Lcom/android/server/power/Notifier;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->lambda$handleLateInteractiveChange$2(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastStartTime(Lcom/android/server/power/Notifier;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/Notifier;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOffByProximityIntent(Lcom/android/server/power/Notifier;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenOffByProximityIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOnByProximityIntent(Lcom/android/server/power/Notifier;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenOnByProximityIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlockProfile(Lcom/android/server/power/Notifier;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->lockProfile(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscreenPolicyChanging(Lcom/android/server/power/Notifier;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->screenPolicyChanging(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendEnhancedDischargePredictionBroadcast(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendEnhancedDischargePredictionBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendNextBroadcast(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUserActivity(Lcom/android/server/power/Notifier;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->sendUserActivity(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowWiredChargingStarted(Lcom/android/server/power/Notifier;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->showWiredChargingStarted(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowWirelessChargingStarted(Lcom/android/server/power/Notifier;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->showWirelessChargingStarted(II)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v1, v0, [J

    .line 111
    fill-array-data v1, :array_20

    sput-object v1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_TIME:[J

    new-array v0, v0, [I

    .line 115
    fill-array-data v0, :array_64

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_AMPLITUDE:[I

    const/4 v2, -0x1

    .line 120
    invoke-static {v1, v0, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    const/16 v0, 0x32

    .line 123
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void

    :array_20
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    :array_64
    .array-data 4
        0x1
        0x4
        0xb
        0x19
        0x2c
        0x43
        0x5b
        0x72
        0x7b
        0x67
        0x4f
        0x37
        0x22
        0x11
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;)V
    .registers 10

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance p6, Ljava/lang/Object;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    const/4 p6, 0x1

    .line 161
    iput-boolean p6, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 187
    new-instance p7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p7, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p7, 0x0

    .line 196
    iput-object p7, p0, Lcom/android/server/power/Notifier;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 906
    new-instance p7, Lcom/android/server/power/Notifier$3;

    invoke-direct {p7, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object p7, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 929
    new-instance p7, Lcom/android/server/power/Notifier$4;

    invoke-direct {p7, p0}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object p7, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 202
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 203
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 204
    const-class p7, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/app/AppOpsManager;

    iput-object p7, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 205
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 206
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 211
    const-class p4, Landroid/app/ActivityManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 212
    const-class p4, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/input/InputManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 213
    const-class p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 214
    const-class p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 215
    const-class p4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 216
    const-class p4, Landroid/app/trust/TrustManager;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/trust/TrustManager;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 217
    const-class p4, Landroid/os/Vibrator;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Vibrator;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 219
    new-instance p4, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {p4, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 220
    iput-object p8, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 221
    new-instance p1, Landroid/content/Intent;

    const-string p4, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 p4, 0x50200000

    .line 222
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    new-instance p1, Landroid/content/Intent;

    const-string p5, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 226
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    iput-boolean p6, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 235
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101b2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    .line 238
    new-instance p1, Lcom/android/server/power/WakeLockLog;

    invoke-direct {p1}, Lcom/android/server/power/WakeLockLog;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 242
    :try_start_b7
    invoke-interface {p3, p6}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_ba} :catch_ba

    :catch_ba
    const/16 p1, 0x21

    .line 244
    invoke-static {p1, p6}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 248
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnByProximityIntent:Landroid/content/Intent;

    const/high16 p2, 0x50000000

    .line 249
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffByProximityIntent:Landroid/content/Intent;

    .line 252
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    const-class p1, Lcom/samsung/android/edge/EdgeManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/edge/EdgeManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    return-void
.end method

.method private synthetic lambda$handleEarlyInteractiveChange$0()V
    .registers 3

    .line 568
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOnReason:I

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->startedWakingUp(I)V

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleEarlyInteractiveChange reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOnReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerNotifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    return-void
.end method

.method private synthetic lambda$handleEarlyInteractiveChange$1()V
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOffReason:I

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->startedGoingToSleep(I)V

    .line 584
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    return-void
.end method

.method private synthetic lambda$handleLateInteractiveChange$2(I)V
    .registers 11

    .line 602
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    .line 603
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 604
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOnReason:I

    invoke-static {v1}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    int-to-long v1, p1

    .line 607
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 608
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOnReason:I

    .line 610
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x69e

    .line 608
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 611
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v8, p1

    .line 612
    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 613
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p0, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOnReason:I

    invoke-interface {p1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->finishedWakingUp(I)V

    return-void
.end method

.method private synthetic lambda$handleLateInteractiveChange$3(II)V
    .registers 12

    .line 639
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    .line 640
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 641
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    int-to-long v1, p2

    .line 642
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 647
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOffReason:I

    .line 648
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x69f

    .line 647
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 649
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v8, p2

    .line 650
    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 653
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOffReason:I

    invoke-interface {p2, v0}, Lcom/android/server/policy/WindowManagerPolicy;->finishedGoingToSleep(I)V

    .line 655
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    const-string/jumbo v0, "why"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    iget p0, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOffReason:I

    const-string/jumbo p2, "reason"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic lambda$notifyWakeLockListener$6(Landroid/os/IWakeLockCallback;Z)V
    .registers 3

    .line 1029
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IWakeLockCallback;->onStateChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 1031
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wakelock.mCallback is already dead."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private synthetic lambda$onPowerGroupWakefulnessChanged$4(IIII)V
    .registers 5

    .line 673
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/policy/WindowManagerPolicy;->onPowerGroupWakefulnessChanged(IIII)V

    return-void
.end method

.method private synthetic lambda$playChargingStartedFeedback$5(IZ)V
    .registers 7

    .line 952
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_vibration_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    move p1, v2

    goto :goto_13

    :cond_12
    move p1, v0

    :goto_13
    if-eqz p1, :cond_1e

    .line 955
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v3, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual {p1, v1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 960
    :cond_1e
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_2a

    const-string/jumbo p2, "wireless_charging_started_sound"

    goto :goto_2c

    :cond_2a
    const-string p2, "charging_started_sound"

    :goto_2c
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 963
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 965
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 967
    invoke-virtual {p1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 968
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    .line 971
    :cond_55
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 789
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    if-eqz p0, :cond_7

    .line 790
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;)V

    :cond_7
    return-void
.end method

.method public final finishPendingBroadcastLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 808
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 809
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public final getBatteryStatsWakeLockMonitorType(I)I
    .registers 5

    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_23

    const/4 v2, 0x6

    if-eq p1, v2, :cond_22

    const/16 v2, 0xa

    if-eq p1, v2, :cond_22

    const/16 v1, 0x20

    const/4 v2, -0x1

    if-eq p1, v1, :cond_1c

    const/16 p0, 0x80

    if-eq p1, p0, :cond_19

    return v2

    :cond_19
    const/16 p0, 0x12

    return p0

    .line 433
    :cond_1c
    iget-boolean p0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz p0, :cond_21

    return v2

    :cond_21
    return v0

    :cond_22
    return v1

    :cond_23
    return v0
.end method

.method public final handleEarlyInteractiveChange()V
    .registers 4

    .line 562
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_1a

    .line 565
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    .line 575
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 576
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 577
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_24

    .line 581
    :cond_1a
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    :goto_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final handleLateInteractiveChange()V
    .registers 7

    .line 596
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 599
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v2, :cond_1a

    .line 601
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3f

    .line 624
    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    .line 625
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 626
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 635
    :cond_27
    iget v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOffReason:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v2

    .line 638
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v5, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x2

    .line 661
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 662
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 663
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 665
    :goto_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final isChargingFeedbackEnabled(I)Z
    .registers 5

    .line 1002
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    move p1, v2

    goto :goto_13

    :cond_12
    move p1, v0

    .line 1004
    :goto_13
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "zen_mode"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_24

    move p0, v2

    goto :goto_25

    :cond_24
    move p0, v0

    :goto_25
    if-eqz p1, :cond_2a

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v0

    :goto_2b
    return v2
.end method

.method public final lockProfile(I)V
    .registers 3

    .line 998
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method public final notifyWakeLockListener(Landroid/os/IWakeLockCallback;Z)V
    .registers 4

    if-eqz p1, :cond_16

    .line 1026
    invoke-interface {p1}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1027
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Landroid/os/IWakeLockCallback;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public onInternalDisplayStateChange(Z)V
    .registers 2

    .line 472
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerInternal;->setInteractiveForInternalDisplay(Z)V

    return-void
.end method

.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 11

    if-eqz p3, :cond_e

    .line 330
    :try_start_2
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    const/16 p0, 0xb

    const/4 p2, 0x0

    .line 331
    invoke-static {p0, p3, p1, p4, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1d

    .line 335
    :cond_e
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0xb

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v1, p2

    move-object v3, p1

    move-object v4, p4

    .line 336
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1d

    :catch_1d
    :goto_1d
    return-void
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 11

    if-eqz p3, :cond_e

    .line 305
    :try_start_2
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    const/16 p0, 0xb

    const/4 p2, 0x1

    .line 306
    invoke-static {p0, p3, p1, p4, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1d

    .line 310
    :cond_e
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0xb

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v1, p2

    move-object v3, p1

    move-object v4, p4

    .line 311
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1d

    :catch_1d
    :goto_1d
    return-void
.end method

.method public onPowerGroupWakefulnessChanged(IIII)V
    .registers 13

    .line 673
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v7, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/Notifier;IIII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProfileTimeout(I)V
    .registers 4

    .line 729
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 730
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 731
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 732
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onScreenPolicyUpdate(II)V
    .registers 6

    .line 774
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 776
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 777
    iput p2, v1, Landroid/os/Message;->arg2:I

    const/4 p1, 0x1

    .line 778
    invoke-virtual {v1, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 779
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 780
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onScreenStateChangeStartedByProximity(Z)V
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mProximity:Z

    if-eq v1, p1, :cond_13

    .line 456
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mProximity:Z

    .line 466
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onUserActivity(III)V
    .registers 6

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p3, p2}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    .line 691
    :catch_5
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 692
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 693
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 694
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 695
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 696
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 697
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 698
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    :cond_21
    monitor-exit p3

    return-void

    :catchall_23
    move-exception p0

    monitor-exit p3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v9, p4

    const/4 v2, 0x1

    move-object/from16 v3, p8

    .line 273
    invoke-virtual {v0, v3, v2}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Z)V

    .line 274
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v15

    if-ltz v15, :cond_48

    const/16 v3, 0x3e8

    if-ne v9, v3, :cond_1c

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v1

    if-eqz v3, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    move/from16 v16, v2

    if-eqz p6, :cond_2f

    .line 280
    :try_start_21
    iget-object v10, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v11, p6

    move/from16 v12, p5

    move-object/from16 v13, p2

    move-object/from16 v14, p7

    invoke-interface/range {v10 .. v16}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_48

    .line 283
    :cond_2f
    iget-object v2, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    move v7, v15

    move/from16 v8, v16

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 286
    iget-object v2, v0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x28

    move-object/from16 v4, p3

    invoke-virtual {v2, v3, v9, v4}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_48} :catch_48

    .line 293
    :catch_48
    :cond_48
    :goto_48
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2, v9, v1}, Lcom/android/server/power/WakeLockLog;->onWakeLockAcquired(Ljava/lang/String;II)V

    return-void
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .registers 30

    move-object v9, p0

    move/from16 v10, p9

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 356
    invoke-virtual {p0, v10}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v11

    if-eqz p6, :cond_39

    if-eqz p14, :cond_39

    if-ltz v5, :cond_39

    if-ltz v11, :cond_39

    const/16 v0, 0x3e8

    move/from16 v12, p12

    if-ne v12, v0, :cond_20

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v10

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move v12, v0

    .line 369
    :try_start_22
    iget-object v0, v9, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v1, p6

    move/from16 v2, p5

    move-object v3, p2

    move-object/from16 v4, p7

    move-object/from16 v6, p14

    move/from16 v7, p13

    move-object/from16 v8, p10

    move-object/from16 v9, p15

    move v10, v11

    move v11, v12

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_38} :catch_80

    goto :goto_80

    :cond_39
    move/from16 v12, p12

    move-object/from16 v0, p8

    move-object/from16 v11, p16

    .line 375
    invoke-static {v0, v11}, Lcom/android/server/power/PowerManagerService;->isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z

    move-result v1

    if-nez v1, :cond_6a

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 376
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    move/from16 p1, p9

    move-object/from16 p2, p10

    move-object/from16 p3, p11

    move/from16 p4, p12

    move/from16 p5, p13

    move-object/from16 p6, p14

    move-object/from16 p7, p15

    move-object/from16 p8, p16

    .line 378
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    goto :goto_80

    .line 381
    :cond_6a
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    move/from16 p1, p9

    move-object/from16 p2, p10

    move-object/from16 p3, p11

    move/from16 p4, p12

    move/from16 p5, p13

    move-object/from16 p6, p14

    move-object/from16 p7, p15

    move-object/from16 p8, p16

    .line 383
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    :catch_80
    :goto_80
    return-void
.end method

.method public final onWakeLockForEdgeLighting(ILjava/lang/String;I)V
    .registers 5

    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_10

    const/16 v0, 0xa

    if-eq p1, v0, :cond_10

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_10

    goto :goto_17

    .line 1016
    :cond_10
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    if-eqz p0, :cond_17

    .line 1017
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/edge/EdgeManagerInternal;->hideForWakeLock(Ljava/lang/String;I)V

    :cond_17
    :goto_17
    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .registers 16

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, p8, v0}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Z)V

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v6

    if-ltz v6, :cond_26

    if-eqz p6, :cond_16

    .line 405
    :try_start_c
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v2, p6

    move v3, p5

    move-object v4, p2

    move-object v5, p7

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_26

    .line 408
    :cond_16
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v2, p4

    move v3, p5

    move-object v4, p2

    move-object v5, p7

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 410
    iget-object p5, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p6, 0x28

    invoke-virtual {p5, p6, p4, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_26} :catch_26

    .line 416
    :catch_26
    :cond_26
    :goto_26
    iget-object p5, p0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {p5, p2, p4}, Lcom/android/server/power/WakeLockLog;->onWakeLockReleased(Ljava/lang/String;I)V

    .line 419
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/power/Notifier;->onWakeLockForEdgeLighting(ILjava/lang/String;I)V

    return-void
.end method

.method public onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 7

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    if-eqz p4, :cond_e

    .line 717
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p2, 0x3d

    invoke-virtual {p0, p2, p5, p4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    const/16 p0, 0x11a

    .line 722
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public onWakefulnessChangeFinished()V
    .registers 2

    .line 551
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 553
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    :cond_a
    return-void
.end method

.method public onWakefulnessChangeStarted(IIJ)V
    .registers 8

    .line 483
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 490
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eq v1, v0, :cond_2e

    if-eqz v0, :cond_2e

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startedEarlyWakingUp: interactive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerNotifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->startedEarlyWakingUp(I)V

    .line 500
    :cond_2e
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    iget-boolean p1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eq p1, v0, :cond_68

    .line 511
    iget-boolean p1, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz p1, :cond_43

    .line 512
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 516
    :cond_43
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 517
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 521
    :try_start_4d
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_52} :catch_52

    :catch_52
    const/16 p1, 0x21

    .line 523
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 528
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v0, :cond_5e

    .line 532
    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOnReason:I

    goto :goto_60

    .line 534
    :cond_5e
    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOffReason:I

    .line 537
    :goto_60
    iput-wide p3, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeStartTime:J

    const/4 p1, 0x1

    .line 538
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 539
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V

    :cond_68
    return-void
.end method

.method public onWiredChargingStarted(I)V
    .registers 4

    .line 759
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 760
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 761
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 762
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 763
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onWirelessChargingStarted(II)V
    .registers 5

    .line 743
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 744
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 745
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 746
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 747
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 748
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final playChargingStartedFeedback(IZ)V
    .registers 6

    .line 939
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 943
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 950
    :cond_12
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/Notifier;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postEnhancedDischargePredictionBroadcast(J)V
    .registers 4

    .line 829
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final screenPolicyChanging(II)V
    .registers 3

    return-void
.end method

.method public final sendEnhancedDischargePredictionBroadcast()V
    .registers 3

    .line 833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.ENHANCED_DISCHARGE_PREDICTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 834
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 835
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendGoToSleepBroadcast()V
    .registers 11

    .line 920
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 921
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_34

    :cond_1a
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 924
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 925
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    :goto_34
    return-void
.end method

.method public final sendNextBroadcast()V
    .registers 6

    .line 840
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 841
    :try_start_3
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_18

    .line 844
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eq v1, v3, :cond_13

    .line 852
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 853
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_47

    .line 846
    :cond_13
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 847
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_47

    :cond_18
    if-ne v1, v4, :cond_31

    .line 858
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_2c

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v3, :cond_27

    goto :goto_2c

    .line 863
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 864
    monitor-exit v0

    return-void

    .line 860
    :cond_2c
    :goto_2c
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 861
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_47

    .line 868
    :cond_31
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_43

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_43

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_3e

    goto :goto_43

    .line 873
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 874
    monitor-exit v0

    return-void

    .line 870
    :cond_43
    :goto_43
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 871
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 878
    :goto_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 879
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 880
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_5f

    const/16 v0, 0xaa5

    .line 882
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(II)I

    if-ne v1, v4, :cond_5b

    .line 885
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    goto :goto_5e

    .line 887
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    :goto_5e
    return-void

    :catchall_5f
    move-exception p0

    .line 880
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public final sendUserActivity(II)V
    .registers 3

    .line 813
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 814
    :try_start_3
    iget-boolean p2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez p2, :cond_9

    .line 815
    monitor-exit p1

    return-void

    :cond_9
    const/4 p2, 0x0

    .line 817
    iput-boolean p2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 818
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_20

    .line 819
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 820
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->notifyUserActivity()V

    .line 821
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->userActivity()V

    return-void

    :catchall_20
    move-exception p0

    .line 818
    :try_start_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final sendWakeUpBroadcast()V
    .registers 13

    .line 896
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 897
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeOnReason:I

    const-string/jumbo v2, "why"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 898
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3d

    :cond_24
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 901
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 902
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    :goto_3d
    return-void
.end method

.method public final showWiredChargingStarted(I)V
    .registers 3

    const/4 v0, 0x0

    .line 987
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 988
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public final showWirelessChargingStarted(II)V
    .registers 4

    const/4 v0, 0x1

    .line 977
    invoke-virtual {p0, p2, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 980
    iget-boolean p2, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p2, :cond_f

    .line 981
    invoke-interface {p2, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showChargingAnimation(I)V

    .line 983
    :cond_f
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public final updatePendingBroadcastLocked()V
    .registers 4

    .line 795
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v0, :cond_2b

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_14

    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v0, v1, :cond_2b

    :cond_14
    const/4 v0, 0x1

    .line 799
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 800
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 801
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 802
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 803
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2b
    return-void
.end method
