.class Lcom/samsung/android/game/FgCheckThread;
.super Landroid/os/HandlerThread;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;
    }
.end annotation


# static fields
.field private static final CREATE_FLAG_EFFECTVE_TIME:J = 0x1f4L

.field private static final MSG_APP_CREATE:I = 0x271a

.field private static final MSG_APP_RESUME:I = 0x2710

.field private static final MSG_KEY_GUARD_LOCKED:I = 0x2719

.field static final MSG_LCD_OFF:I = 0x2716

.field static final MSG_LCD_ON:I = 0x2717

.field private static final MSG_TASK_FOCUSED:I = 0x271b

.field private static final MSG_USER_PRESENT:I = 0x2718

.field private static final TAG:Ljava/lang/String; = "FgCheckThread"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDvfsAcquired:Z

.field private mFgHandler:Landroid/os/Handler;

.field private mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

.field private mIsGameBoosterInstalled:Z

.field private mIsGameLauncherEnabled:Z

.field private mIsGosEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardReceiver:Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;

.field private mKillNotiCount:I

.field private mLcdOn:Z

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/game/IGameManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

.field private mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

.field private mPrevNotiType:I

.field private mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

.field private mResumedPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/game/PkgWithUserId;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mSdm:Lcom/samsung/android/os/SemDvfsManager;

.field private mSystemHelper:Lcom/samsung/android/game/SystemHelper;

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private final mWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Lcom/samsung/android/game/SystemHelper;IZZZ)V
    .registers 14
    .param p1, "lcdOn"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "systemHelper"    # Lcom/samsung/android/game/SystemHelper;
    .param p4, "currentUserId"    # I
    .param p5, "isGosEnabled"    # Z
    .param p6, "isGameLauncherEnabled"    # Z
    .param p7, "isGameBoosterInstalled"    # Z

    .line 192
    const-string v0, "FgCheckThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z

    .line 48
    new-instance v2, Lcom/samsung/android/game/PkgWithUserId;

    const-string v3, "(unknown)"

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 49
    new-instance v2, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 50
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    .line 51
    iput v1, p0, Lcom/samsung/android/game/FgCheckThread;->mKillNotiCount:I

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    .line 59
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 62
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 65
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    .line 66
    new-instance v4, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v4, v3, v1}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 68
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    .line 69
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    .line 70
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    .line 71
    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 73
    new-instance v2, Lcom/samsung/android/game/FgCheckThread$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/FgCheckThread$1;-><init>(Lcom/samsung/android/game/FgCheckThread;)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    .line 81
    iput v1, p0, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameLauncherEnabled:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameBoosterInstalled:Z

    .line 86
    new-instance v2, Lcom/samsung/android/game/FgCheckThread$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/FgCheckThread$2;-><init>(Lcom/samsung/android/game/FgCheckThread;)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 150
    new-instance v2, Lcom/samsung/android/game/FgCheckThread$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/FgCheckThread$3;-><init>(Lcom/samsung/android/game/FgCheckThread;)V

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    .line 193
    iput-boolean p1, p0, Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z

    .line 194
    iput-object p2, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    .line 195
    iput-object p3, p0, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    .line 196
    iput p4, p0, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    .line 197
    iput-boolean p5, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    .line 198
    iput-boolean p6, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameLauncherEnabled:Z

    .line 199
    iput-boolean p7, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameBoosterInstalled:Z

    .line 200
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    .line 202
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 203
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    .line 204
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 207
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_d2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "r0q"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "b2q"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 208
    :cond_9f
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    .line 209
    if-eqz v3, :cond_f7

    .line 210
    const v4, 0x30002000

    const/16 v5, 0xab0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 211
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const v4, 0x32001001

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 212
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const v3, 0x32001002

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const v3, 0x32001003

    const/16 v4, 0x5a

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    goto :goto_f7

    .line 217
    :cond_d2
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_f7

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "r0s"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 218
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    .line 219
    if-eqz v1, :cond_f7

    .line 220
    const v3, 0x30001002

    const v4, 0x29a810

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 224
    :cond_f7
    :goto_f7
    new-instance v1, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;-><init>(Lcom/samsung/android/game/FgCheckThread;)V

    iput-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardReceiver:Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;

    .line 226
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 227
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_115

    .line 228
    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v3

    .line 230
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    :try_start_10a
    invoke-interface {v3, v2}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_10d
    .catch Ljava/lang/NullPointerException; {:try_start_10a .. :try_end_10d} :catch_10e
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_10d} :catch_10e

    .line 233
    goto :goto_114

    .line 231
    :catch_10e
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "failed to registerUsageStatsWatcher"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "usm":Landroid/app/usage/IUsageStatsManager;
    :goto_114
    goto :goto_11a

    .line 235
    :cond_115
    const-string v2, "failed to get usagestats"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_11a
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/game/FgCheckThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/game/FgCheckThread;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;
    .param p1, "x1"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/FgCheckThread;)Lcom/samsung/android/game/PkgWithUserId;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/FgCheckThread;Lcom/samsung/android/game/PkgWithUserId;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;
    .param p1, "x1"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/game/FgCheckThread;->handleResume(Lcom/samsung/android/game/PkgWithUserId;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/game/FgCheckThread;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 32
    iget-boolean v0, p0, Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/game/FgCheckThread;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/game/FgCheckThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->sendFocusOutConditionally()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/game/FgCheckThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->handleLcdOn()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/game/FgCheckThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->handleUserPresent()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/game/FgCheckThread;Lcom/samsung/android/game/PkgWithUserId;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/FgCheckThread;
    .param p1, "x1"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/game/FgCheckThread;->handleTaskFocused(Lcom/samsung/android/game/PkgWithUserId;)V

    return-void
.end method

.method private handleLcdOn()V
    .registers 8

    .line 478
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "FgCheckThread"

    if-nez v0, :cond_c

    .line 479
    const-string v0, "handleLcdOn(), mKeyguardManager is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void

    .line 482
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v2, :cond_a5

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-nez v2, :cond_16

    goto/16 :goto_a5

    .line 487
    :cond_16
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    .line 488
    .local v0, "isDeviceLocked":Z
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 489
    .local v2, "inKeyguardRestrictedInputMode":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLcdOn(). isDeviceLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", inKeyguardRestrictedInputMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/game/FgCheckThread;->isRunningApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    iget v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a4

    if-nez v0, :cond_a4

    if-nez v2, :cond_a4

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  handleLcdOn(). resume signal is needed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/4 v1, 0x0

    .line 495
    .local v1, "isTunableAppPrev":Ljava/lang/Boolean;
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 496
    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v5}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v3

    .line 497
    .local v3, "prevPkg":Lcom/samsung/android/game/PkgData;
    if-eqz v3, :cond_98

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgData;->isTunableApp()Ljava/lang/Boolean;

    move-result-object v1

    .line 499
    :cond_98
    if-eqz v1, :cond_a4

    .line 500
    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 503
    .end local v1    # "isTunableAppPrev":Ljava/lang/Boolean;
    .end local v3    # "prevPkg":Lcom/samsung/android/game/PkgData;
    :cond_a4
    return-void

    .line 483
    .end local v0    # "isDeviceLocked":Z
    .end local v2    # "inKeyguardRestrictedInputMode":Z
    :cond_a5
    :goto_a5
    const-string v0, "handleLcdOn(), mFocusedPkg or mPrevNotiPkg is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private handleResume(Lcom/samsung/android/game/PkgWithUserId;)V
    .registers 7
    .param p1, "resumedPkg"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 333
    const-string v0, "FgCheckThread"

    const-string v1, "handleResume()."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    if-nez p1, :cond_f

    .line 335
    const-string v1, "  handleResume(). resumedPkg == null!"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void

    .line 339
    :cond_f
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 340
    const-string v1, "  handleResume(). resumedPkg.getPkgName() == null!"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void

    .line 344
    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v1, :cond_f0

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v2, :cond_f0

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-nez v2, :cond_29

    goto/16 :goto_f0

    .line 349
    :cond_29
    invoke-virtual {v1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KILL_YOURSELF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 350
    const-string v1, "  handleResume(). same package with Prev KILL_YOURSELF. ignore"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void

    .line 354
    :cond_43
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevResumePkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 355
    iget v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 356
    const-string v1, "  handleResume(). same package. ignore"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void

    .line 361
    :cond_59
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_78

    .line 362
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    if-nez v1, :cond_6b

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 363
    :cond_6b
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v1, :cond_72

    .line 364
    invoke-virtual {v1}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 366
    :cond_72
    const-string v1, "  handleResume(). device is locked yet. ignore"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void

    .line 370
    :cond_78
    const/4 v1, 0x0

    .line 371
    .local v1, "isTunableApp":Ljava/lang/Boolean;
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 372
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v2

    .line 374
    .local v2, "curPkg":Lcom/samsung/android/game/PkgData;
    if-eqz v2, :cond_91

    .line 375
    invoke-virtual {v2}, Lcom/samsung/android/game/PkgData;->isTunableApp()Ljava/lang/Boolean;

    move-result-object v1

    .line 378
    :cond_91
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3, p1}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a8

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    if-eqz v3, :cond_a8

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 379
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a8

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->sendFocusOutConditionally()V

    .line 385
    :cond_a8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  handleResume(). pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 386
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isTunableApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_d3

    move-object v4, v1

    goto :goto_d5

    :cond_d3
    const-string v4, "null"

    :goto_d5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    if-eqz v1, :cond_eb

    .line 389
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    goto :goto_ef

    .line 392
    :cond_eb
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3, v0}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 394
    :goto_ef
    return-void

    .line 345
    .end local v1    # "isTunableApp":Ljava/lang/Boolean;
    .end local v2    # "curPkg":Lcom/samsung/android/game/PkgData;
    :cond_f0
    :goto_f0
    const-string v1, "  handleResume(). pkg objects is null, do nothing."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method private handleTaskFocused(Lcom/samsung/android/game/PkgWithUserId;)V
    .registers 8
    .param p1, "focusedPkg"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 397
    const-string v0, "FgCheckThread"

    const-string v1, "handleTaskFocused()."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    if-nez p1, :cond_f

    .line 399
    const-string v1, "  handleTaskFocused(), focusedPkg is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 403
    :cond_f
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 404
    const-string v1, "  handleTaskFocused(). focusedPkg.getPkgName() == null!"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void

    .line 408
    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 409
    .local v1, "prevFocusedPkg":Lcom/samsung/android/game/PkgWithUserId;
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 411
    invoke-virtual {v1, p1}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    if-eqz v2, :cond_32

    .line 412
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 413
    invoke-direct {p0}, Lcom/samsung/android/game/FgCheckThread;->sendFocusOutConditionally()V

    .line 417
    :cond_32
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    const-string v3, ", userID:"

    const-string v4, "  handleTaskFocused(), pkgName: "

    if-eqz v2, :cond_6a

    iget-object v5, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, p1}, Lcom/samsung/android/game/FgCheckThread;->handleResume(Lcom/samsung/android/game/PkgWithUserId;)V

    goto :goto_94

    .line 421
    :cond_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mResumedPkgMap does not containsKey."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_94
    return-void
.end method

.method private handleUserPresent()V
    .registers 7

    .line 506
    const-string v0, "FgCheckThread"

    const-string v1, "handleUserPresent()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v1, :cond_c4

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-nez v2, :cond_11

    goto/16 :goto_c4

    .line 512
    :cond_11
    invoke-virtual {v1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/game/FgCheckThread;->isRunningApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 513
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "  handleUserPresent(). resume signal is needed for "

    const/4 v4, 0x1

    if-eqz v1, :cond_70

    iget v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-ne v1, v4, :cond_70

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "isTunableAppPrev":Ljava/lang/Boolean;
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 518
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v1

    .line 519
    .local v1, "prevPkg":Lcom/samsung/android/game/PkgData;
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Lcom/samsung/android/game/PkgData;->isTunableApp()Ljava/lang/Boolean;

    move-result-object v0

    .line 521
    :cond_64
    if-eqz v0, :cond_6f

    .line 522
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 524
    .end local v0    # "isTunableAppPrev":Ljava/lang/Boolean;
    .end local v1    # "prevPkg":Lcom/samsung/android/game/PkgData;
    :cond_6f
    goto :goto_c3

    .line 527
    :cond_70
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    iget-object v5, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v1, v5}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    iget v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_81

    if-ne v1, v4, :cond_c3

    .line 529
    :cond_81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "isTunableApp":Ljava/lang/Boolean;
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 533
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v4}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v1

    .line 534
    .local v1, "fgPkg":Lcom/samsung/android/game/PkgData;
    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Lcom/samsung/android/game/PkgData;->isTunableApp()Ljava/lang/Boolean;

    move-result-object v0

    .line 536
    :cond_b8
    if-eqz v0, :cond_c3

    .line 537
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 541
    .end local v0    # "isTunableApp":Ljava/lang/Boolean;
    .end local v1    # "fgPkg":Lcom/samsung/android/game/PkgData;
    :cond_c3
    :goto_c3
    return-void

    .line 508
    :cond_c4
    :goto_c4
    const-string v1, "  handleUserPresent(), mFocusedPkg or mPrevNotiPkg is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method private isRunningApp(Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 452
    const-string v0, "FgCheckThread"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v2, :cond_42

    .line 453
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 454
    .local v2, "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_13

    .line 455
    const-string v3, "runningAppList is null."

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 457
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 458
    .local v4, "rap":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->semGetProcessState()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_41

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v5, :cond_41

    .line 460
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v5

    move v7, v1

    :goto_32
    if-ge v7, v6, :cond_41

    aget-object v8, v5, v7

    .line 461
    .local v8, "runningPkg":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_43

    if-eqz v9, :cond_3e

    .line 462
    const/4 v0, 0x1

    return v0

    .line 460
    .end local v8    # "runningPkg":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 466
    .end local v4    # "rap":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_41
    goto :goto_17

    .line 471
    .end local v2    # "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_42
    :goto_42
    goto :goto_4b

    .line 469
    :catch_43
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    const-string v2, "process is not found."

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return v1
.end method

.method private notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V
    .registers 20
    .param p1, "pkgWithUserId"    # Lcom/samsung/android/game/PkgWithUserId;
    .param p2, "type"    # I
    .param p3, "isTunableApp"    # Z

    .line 544
    move-object/from16 v1, p0

    move/from16 v0, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFocusInOut(). of pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTunableApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", userId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    const-string v4, "FgCheckThread"

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v2, 0x4

    const/4 v5, 0x1

    if-eqz v0, :cond_63

    if-eq v0, v5, :cond_63

    if-eq v0, v2, :cond_63

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  notifyFocusInOut(). unexpected type. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void

    .line 551
    :cond_63
    iget-object v6, v1, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v7, 0x0

    if-eqz v6, :cond_78

    iget-boolean v8, v1, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    if-eqz v8, :cond_78

    if-eqz v0, :cond_78

    .line 552
    invoke-virtual {v6}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 553
    iput-boolean v7, v1, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    .line 554
    const-string v6, "Memory clock setting released"

    invoke-static {v4, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_78
    iget-object v6, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-nez v6, :cond_82

    .line 558
    const-string v2, "  notifyFocusInOut(), mPrevNotiPkg is null!"

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void

    .line 561
    :cond_82
    if-ne v0, v5, :cond_92

    move-object/from16 v8, p1

    invoke-virtual {v6, v8}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 562
    const-string v2, "  notifyFocusInOut(). not current game. ignore"

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void

    .line 561
    :cond_92
    move-object/from16 v8, p1

    .line 567
    :cond_94
    const-string v6, "  notifyFocusInOut(). changed mKillNotiCount: "

    const-string v9, "KILL_YOURSELF"

    if-ne v0, v2, :cond_185

    .line 568
    iget v2, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-ne v2, v5, :cond_101

    .line 569
    iget v2, v1, Lcom/samsung/android/game/FgCheckThread;->mKillNotiCount:I

    if-ge v2, v5, :cond_e1

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  notifyFocusInOut(). mKillNotiCount: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v10, v1, Lcom/samsung/android/game/FgCheckThread;->mKillNotiCount:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance v2, Lcom/samsung/android/game/PkgWithUserId;

    iget v10, v1, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    invoke-direct {v2, v9, v10}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    .line 572
    .end local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .local v2, "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    const/4 v0, 0x1

    .line 573
    .end local p2    # "type":I
    .local v0, "type":I
    iget v8, v1, Lcom/samsung/android/game/FgCheckThread;->mKillNotiCount:I

    add-int/2addr v8, v5

    iput v8, v1, Lcom/samsung/android/game/FgCheckThread;->mKillNotiCount:I

    .line 574
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v1, Lcom/samsung/android/game/FgCheckThread;->mKillNotiCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v2

    move v2, v0

    goto/16 :goto_186

    .line 576
    .end local v0    # "type":I
    .end local v2    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .restart local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .restart local p2    # "type":I
    :cond_e1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  notifyFocusInOut(). do nothing. mKillNotiCount: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v1, Lcom/samsung/android/game/FgCheckThread;->mKillNotiCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v2, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v2, :cond_100

    .line 578
    invoke-virtual {v2}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 580
    :cond_100
    return-void

    .line 582
    :cond_101
    if-nez v2, :cond_165

    .line 583
    const-string v2, "  notifyFocusInOut(). send PAUSED for force-stop"

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v2, 0x0

    .line 586
    .local v2, "isTunableAppPrev":Ljava/lang/Boolean;
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v10

    iput-object v10, v1, Lcom/samsung/android/game/FgCheckThread;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 588
    iget-object v11, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v11}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v12}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v10

    .line 589
    .local v10, "prevPkg":Lcom/samsung/android/game/PkgData;
    if-eqz v10, :cond_125

    invoke-virtual {v10}, Lcom/samsung/android/game/PkgData;->isTunableApp()Ljava/lang/Boolean;

    move-result-object v2

    .line 591
    :cond_125
    if-nez v2, :cond_14b

    .line 592
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  notifyFocusInOut(). do nothing. mPrevNotiPkg is not a normal app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v6}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v4, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v4, :cond_14a

    .line 594
    invoke-virtual {v4}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 596
    :cond_14a
    return-void

    .line 599
    :cond_14b
    new-instance v11, Lcom/samsung/android/game/PkgWithUserId;

    iget-object v12, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v12}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v13}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    move-object v8, v11

    .line 600
    .end local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .local v8, "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    const/4 v0, 0x1

    .line 601
    .end local p2    # "type":I
    .restart local v0    # "type":I
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 602
    .end local v10    # "prevPkg":Lcom/samsung/android/game/PkgData;
    .end local p3    # "isTunableApp":Z
    .local v2, "isTunableApp":Z
    move v3, v2

    move v2, v0

    goto :goto_186

    .line 603
    .end local v0    # "type":I
    .end local v2    # "isTunableApp":Z
    .end local v8    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .restart local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .restart local p2    # "type":I
    .restart local p3    # "isTunableApp":Z
    :cond_165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  notifyFocusInOut(). unexpected mPrevNotiType: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v2, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v2, :cond_184

    .line 605
    invoke-virtual {v2}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 607
    :cond_184
    return-void

    .line 567
    :cond_185
    move v2, v0

    .line 611
    .end local p1    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    .end local p2    # "type":I
    .end local p3    # "isTunableApp":Z
    .local v2, "type":I
    .local v3, "isTunableApp":Z
    .restart local v8    # "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    :goto_186
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c7

    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v0, v8}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    iget v0, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-ne v0, v2, :cond_1c7

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  notifyFocusInOut(). duplicated. ignore. ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void

    .line 616
    :cond_1c7
    if-nez v2, :cond_1f5

    if-nez v3, :cond_1f5

    .line 617
    iput v7, v1, Lcom/samsung/android/game/FgCheckThread;->mKillNotiCount:I

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/samsung/android/game/FgCheckThread;->mKillNotiCount:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mSdm:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1f5

    iget-boolean v6, v1, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    if-nez v6, :cond_1f5

    .line 622
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 623
    iput-boolean v5, v1, Lcom/samsung/android/game/FgCheckThread;->mDvfsAcquired:Z

    .line 624
    const-string v0, "Memory clock setting acquired"

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_1f5
    const-string v6, "userId"

    const-string v9, "pkgName"

    const-string v10, "type"

    if-nez v3, :cond_3c1

    .line 630
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v11, v0

    .line 631
    .local v11, "i":I
    :goto_204
    if-lez v11, :cond_230

    .line 632
    add-int/lit8 v11, v11, -0x1

    .line 633
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/samsung/android/game/IGameManagerCallback;

    .line 634
    .local v12, "observer":Lcom/samsung/android/game/IGameManagerCallback;
    if-eqz v12, :cond_22f

    .line 636
    if-nez v2, :cond_21f

    .line 637
    :try_start_215
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Lcom/samsung/android/game/IGameManagerCallback;->onGameFocusIn(Ljava/lang/String;)V

    goto :goto_22f

    .line 640
    :catch_21d
    move-exception v0

    goto :goto_229

    .line 638
    :cond_21f
    if-ne v2, v5, :cond_22f

    .line 639
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Lcom/samsung/android/game/IGameManagerCallback;->onGameFocusOut(Ljava/lang/String;)V
    :try_end_228
    .catch Landroid/os/RemoteException; {:try_start_215 .. :try_end_228} :catch_21d

    goto :goto_22f

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    :goto_229
    const-string v13, "  notifyFocusInOut(). callback error"

    invoke-static {v4, v13}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    .line 644
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v12    # "observer":Lcom/samsung/android/game/IGameManagerCallback;
    :cond_22f
    :goto_22f
    goto :goto_204

    .line 645
    :cond_230
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 647
    iget-boolean v0, v1, Lcom/samsung/android/game/FgCheckThread;->mIsGameBoosterInstalled:Z

    const-string v12, "minimized"

    const-string v13, ", pkgName:"

    if-eqz v0, :cond_2b3

    iget-boolean v0, v1, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    if-nez v0, :cond_243

    if-eqz v2, :cond_2b3

    .line 649
    :cond_243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  notifyFocusInOut(). before send intent to GameBooster. type:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v0, Landroid/content/Intent;

    const-string v14, "com.samsung.android.game.gametools.GAMETOOLS_INTENTSERVICE"

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 651
    .local v14, "gameBoosterIntent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.game.gametools"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    invoke-virtual {v14, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 653
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v0

    invoke-virtual {v14, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    invoke-virtual {v14, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    :try_start_286
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    iget v7, v1, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    invoke-direct {v15, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 659
    .local v0, "retGameBoosterIntent":Landroid/content/ComponentName;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  notifyFocusInOut(). after send intent to GameBooster. componentName:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a9
    .catch Ljava/lang/SecurityException; {:try_start_286 .. :try_end_2a9} :catch_2aa
    .catch Ljava/lang/IllegalStateException; {:try_start_286 .. :try_end_2a9} :catch_2aa

    .line 663
    .end local v0    # "retGameBoosterIntent":Landroid/content/ComponentName;
    goto :goto_2b3

    .line 660
    :catch_2aa
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v7, "  notifyFocusInOut(). failed to send intent to GameBooster"

    invoke-static {v4, v7}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 667
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "gameBoosterIntent":Landroid/content/Intent;
    :cond_2b3
    :goto_2b3
    iget-boolean v0, v1, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    if-nez v0, :cond_2be

    if-eqz v2, :cond_2ba

    goto :goto_2be

    :cond_2ba
    move/from16 p1, v3

    goto/16 :goto_340

    .line 668
    :cond_2be
    :goto_2be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  notifyFocusInOut(). before send intent to SoundAlive. type:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "eventType":Ljava/lang/String;
    if-nez v2, :cond_2e7

    .line 671
    const-string v0, "GAME_RESUMED"

    move-object v7, v0

    goto :goto_2ee

    .line 672
    :cond_2e7
    if-ne v2, v5, :cond_2ed

    .line 673
    const-string v0, "GAME_PAUSED"

    move-object v7, v0

    goto :goto_2ee

    .line 672
    :cond_2ed
    move-object v7, v0

    .line 675
    .end local v0    # "eventType":Ljava/lang/String;
    .local v7, "eventType":Ljava/lang/String;
    :goto_2ee
    if-eqz v7, :cond_33c

    .line 676
    const-string v14, "com.sec.android.app.soundalive"

    .line 677
    .local v14, "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    const-string v15, "com.sec.android.app.soundalive.RECEIVE_GAME_EVENTS"

    .line 678
    .local v15, "INTENT_ACTION_SOUND_ALIVE":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.soundalive.RECEIVE_GAME_EVENTS"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 679
    .local v5, "saIntent":Landroid/content/Intent;
    const-string v0, "com.sec.android.app.soundalive"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    :try_start_312
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;
    :try_end_314
    .catch Ljava/lang/SecurityException; {:try_start_312 .. :try_end_314} :catch_32e
    .catch Ljava/lang/IllegalStateException; {:try_start_312 .. :try_end_314} :catch_32e

    move/from16 p1, v3

    .end local v3    # "isTunableApp":Z
    .local p1, "isTunableApp":Z
    :try_start_316
    new-instance v3, Landroid/os/UserHandle;
    :try_end_318
    .catch Ljava/lang/SecurityException; {:try_start_316 .. :try_end_318} :catch_32a
    .catch Ljava/lang/IllegalStateException; {:try_start_316 .. :try_end_318} :catch_32a

    move-object/from16 p2, v7

    .end local v7    # "eventType":Ljava/lang/String;
    .local p2, "eventType":Ljava/lang/String;
    :try_start_31a
    iget v7, v1, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    invoke-direct {v3, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 685
    const-string v0, "  notifyFocusInOut(). after send intent to SoundAlive."

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_327
    .catch Ljava/lang/SecurityException; {:try_start_31a .. :try_end_327} :catch_328
    .catch Ljava/lang/IllegalStateException; {:try_start_31a .. :try_end_327} :catch_328

    .line 689
    goto :goto_340

    .line 686
    :catch_328
    move-exception v0

    goto :goto_333

    .end local p2    # "eventType":Ljava/lang/String;
    .restart local v7    # "eventType":Ljava/lang/String;
    :catch_32a
    move-exception v0

    move-object/from16 p2, v7

    .end local v7    # "eventType":Ljava/lang/String;
    .restart local p2    # "eventType":Ljava/lang/String;
    goto :goto_333

    .end local p1    # "isTunableApp":Z
    .end local p2    # "eventType":Ljava/lang/String;
    .restart local v3    # "isTunableApp":Z
    .restart local v7    # "eventType":Ljava/lang/String;
    :catch_32e
    move-exception v0

    move/from16 p1, v3

    move-object/from16 p2, v7

    .line 687
    .end local v3    # "isTunableApp":Z
    .end local v7    # "eventType":Ljava/lang/String;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local p1    # "isTunableApp":Z
    .restart local p2    # "eventType":Ljava/lang/String;
    :goto_333
    const-string v3, "  notifyFocusInOut(). failed to send intent to SoundAlive"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_340

    .line 675
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "saIntent":Landroid/content/Intent;
    .end local v14    # "PKG_NAME_SOUND_ALIVE":Ljava/lang/String;
    .end local v15    # "INTENT_ACTION_SOUND_ALIVE":Ljava/lang/String;
    .end local p1    # "isTunableApp":Z
    .end local p2    # "eventType":Ljava/lang/String;
    .restart local v3    # "isTunableApp":Z
    .restart local v7    # "eventType":Ljava/lang/String;
    :cond_33c
    move/from16 p1, v3

    move-object/from16 p2, v7

    .line 694
    .end local v3    # "isTunableApp":Z
    .end local v7    # "eventType":Ljava/lang/String;
    .restart local p1    # "isTunableApp":Z
    :goto_340
    iget-boolean v0, v1, Lcom/samsung/android/game/FgCheckThread;->mIsGameLauncherEnabled:Z

    if-eqz v0, :cond_3c3

    .line 695
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_3bb

    .line 696
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_3c3

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  notifyFocusInOut(). before send intent to GameLauncher. type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.game.gamehome.GAME_PACKAGE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 699
    .local v3, "intent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.game.gamehome"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v0

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    const/4 v5, 0x0

    invoke-virtual {v3, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    :try_start_392
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 706
    .local v0, "retIntent":Landroid/content/ComponentName;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  notifyFocusInOut(). after send intent to GameLauncher. componentName:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b0
    .catch Ljava/lang/SecurityException; {:try_start_392 .. :try_end_3b0} :catch_3b1
    .catch Ljava/lang/IllegalStateException; {:try_start_392 .. :try_end_3b0} :catch_3b1

    .line 710
    .end local v0    # "retIntent":Landroid/content/ComponentName;
    goto :goto_3ba

    .line 707
    :catch_3b1
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "  notifyFocusInOut(). failed to send intent to GameLauncher"

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 711
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_3ba
    goto :goto_3c3

    .line 713
    :cond_3bb
    const-string v0, "mDesktopModeManager is null"

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c3

    .line 629
    .end local v11    # "i":I
    .end local p1    # "isTunableApp":Z
    .local v3, "isTunableApp":Z
    :cond_3c1
    move/from16 p1, v3

    .line 718
    .end local v3    # "isTunableApp":Z
    .restart local p1    # "isTunableApp":Z
    :cond_3c3
    :goto_3c3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 719
    .local v3, "sendIntent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.game.gos"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v0

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    new-instance v0, Lcom/samsung/android/game/SystemInfoCollector;

    iget-object v5, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/samsung/android/game/SystemInfoCollector;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .line 725
    .local v5, "sic":Lcom/samsung/android/game/SystemInfoCollector;
    const-string v0, "systemInfo"

    if-nez v2, :cond_3f5

    .line 726
    invoke-virtual {v5}, Lcom/samsung/android/game/SystemInfoCollector;->makeSystemInfoForFocusIn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_403

    .line 727
    :cond_3f5
    const/4 v6, 0x1

    if-ne v2, v6, :cond_403

    .line 728
    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/SystemInfoCollector;->makeSystemInfoForFocusOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    :cond_403
    :goto_403
    const/4 v0, 0x0

    .line 733
    .local v0, "isCreate":Z
    const-wide/16 v6, 0x0

    .line 735
    .local v6, "prevCreateGameTime":J
    iget-object v9, v1, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_41a

    .line 736
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v9, v8, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 738
    :cond_41a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    .line 739
    .local v12, "prevCreateInterval":J
    if-nez v2, :cond_444

    const-wide/16 v14, 0x1f4

    cmp-long v9, v12, v14

    if-gez v9, :cond_444

    .line 740
    const/4 v0, 0x1

    .line 741
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  notifyFocusInOut(). create==true of "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v0

    goto :goto_445

    .line 743
    :cond_444
    move v9, v0

    .end local v0    # "isCreate":Z
    .local v9, "isCreate":Z
    :goto_445
    const-string v0, "create"

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    const/4 v14, 0x1

    if-ne v2, v14, :cond_454

    .line 745
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    if-eqz v0, :cond_454

    .line 746
    invoke-virtual {v0}, Lcom/samsung/android/game/SystemHelper;->callReleaseBlock()V

    .line 751
    :cond_454
    :try_start_454
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/os/UserHandle;

    iget v15, v1, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 752
    const-string v0, "  notifyFocusInOut(). after send intent to GameIntentService"

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_465
    .catch Ljava/lang/SecurityException; {:try_start_454 .. :try_end_465} :catch_466
    .catch Ljava/lang/IllegalStateException; {:try_start_454 .. :try_end_465} :catch_466

    .line 756
    goto :goto_46f

    .line 753
    :catch_466
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v14, "  notifyFocusInOut(). failed to send intent to GameIntentService"

    invoke-static {v4, v14}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 758
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_46f
    new-instance v0, Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v14

    invoke-direct {v0, v4, v14}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    .line 759
    iput v2, v1, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    .line 760
    iget-object v0, v1, Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;

    if-eqz v0, :cond_498

    .line 761
    new-instance v4, Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v15

    invoke-direct {v4, v14, v15}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    :cond_498
    return-void
.end method

.method private sendFocusOutConditionally()V
    .registers 6

    .line 426
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    const-string v1, "FgCheckThread"

    if-nez v0, :cond_c

    .line 427
    const-string v0, "  sendFocusOutConditionally(), mPrevNotiPkg is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void

    .line 431
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFocusOutConditionally() - mPrevNotiPkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget v0, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiType:I

    if-eqz v0, :cond_3d

    return-void

    .line 434
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  sendFocusOutConditionally(). pause signal is needed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "isTunableAppPrev":Ljava/lang/Boolean;
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 439
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v1

    .line 441
    .local v1, "prevPkg":Lcom/samsung/android/game/PkgData;
    if-eqz v1, :cond_76

    invoke-virtual {v1}, Lcom/samsung/android/game/PkgData;->isTunableApp()Ljava/lang/Boolean;

    move-result-object v0

    .line 443
    :cond_76
    if-eqz v0, :cond_82

    .line 444
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread;->mPrevNotiPkg:Lcom/samsung/android/game/PkgWithUserId;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/game/FgCheckThread;->notifyFocusInOut(Lcom/samsung/android/game/PkgWithUserId;IZ)V

    .line 446
    :cond_82
    return-void
.end method


# virtual methods
.method getFocusedPkgName()Ljava/lang/String;
    .registers 2

    .line 811
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;

    if-eqz v0, :cond_9

    .line 812
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 813
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method getForegroundPkgName()Ljava/lang/String;
    .registers 5

    .line 786
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_25

    .line 787
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 789
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_25

    .line 790
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "foregroundPkgName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getForegroundApp(), foregroundPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FgCheckThread"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-object v1

    .line 795
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "foregroundPkgName":Ljava/lang/String;
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method getRegisteredCallbackCount()I
    .registers 2

    .line 838
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    return v0
.end method

.method getTopActivityName()Ljava/lang/String;
    .registers 3

    .line 799
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_d

    .line 800
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 801
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_d

    .line 803
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 806
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLooperPrepared()V
    .registers 3

    .line 241
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 242
    new-instance v0, Lcom/samsung/android/game/FgCheckThread$4;

    invoke-virtual {p0}, Lcom/samsung/android/game/FgCheckThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/game/FgCheckThread$4;-><init>(Lcom/samsung/android/game/FgCheckThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    .line 306
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/PkgDataHelper;->setFgCheckHandler(Landroid/os/Handler;)V

    .line 307
    return-void
.end method

.method registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;

    .line 828
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 829
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method registerTaskStackListener()V
    .registers 3

    .line 775
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 776
    .local v0, "activityTaskManager":Landroid/app/IActivityTaskManager;
    if-eqz v0, :cond_b

    .line 777
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 781
    .end local v0    # "activityTaskManager":Landroid/app/IActivityTaskManager;
    :cond_b
    goto :goto_12

    .line 779
    :catch_c
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FgCheckThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 782
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public sendEmptyMessage(I)V
    .registers 3
    .param p1, "message"    # I

    .line 324
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .registers 6
    .param p1, "message"    # I
    .param p2, "delay"    # I

    .line 328
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 330
    return-void
.end method

.method public sendFocusedMessage(Lcom/samsung/android/game/PkgWithUserId;)V
    .registers 4
    .param p1, "focusedPkg"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 317
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 319
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void
.end method

.method public sendResumeMessage(Lcom/samsung/android/game/PkgWithUserId;)V
    .registers 4
    .param p1, "resumedPkg"    # Lcom/samsung/android/game/PkgWithUserId;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 312
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 314
    return-void
.end method

.method setCurrentUserId(I)V
    .registers 2
    .param p1, "currentUserId"    # I

    .line 817
    iput p1, p0, Lcom/samsung/android/game/FgCheckThread;->mCurrentUserId:I

    .line 818
    return-void
.end method

.method setKeyguardManager(Landroid/app/KeyguardManager;)V
    .registers 3
    .param p1, "keyguardManager"    # Landroid/app/KeyguardManager;

    .line 766
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_6

    .line 767
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 769
    :cond_6
    return-void
.end method

.method setPkgEnabledState(ZZZ)V
    .registers 4
    .param p1, "isGosEnabled"    # Z
    .param p2, "isGameLauncherEnabled"    # Z
    .param p3, "isGameBoosterInstalled"    # Z

    .line 822
    iput-boolean p1, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGosEnabled:Z

    .line 823
    iput-boolean p2, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameLauncherEnabled:Z

    .line 824
    iput-boolean p3, p0, Lcom/samsung/android/game/FgCheckThread;->mIsGameBoosterInstalled:Z

    .line 825
    return-void
.end method

.method unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;

    .line 833
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 834
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
