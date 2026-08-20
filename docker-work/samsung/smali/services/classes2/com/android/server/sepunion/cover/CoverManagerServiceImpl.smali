.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;
.implements Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;
    }
.end annotation


# static fields
.field public static final COVER_ABSENT:I = -0x1

.field public static final COVER_ATTACH:I = 0x1

.field public static final COVER_CLOSED:I = 0x1

.field public static final COVER_DETACH:I = 0x0

.field public static final COVER_OPEN:I = 0x0

.field public static final HALLIC_COVER_CLOSED:I = 0x0

.field public static final HALLIC_COVER_OPEN:I = 0x1

.field public static final MSG_UPDATE_WINDOW_SIZE:I = 0x12c

.field public static final SERVICE_VERSION:I = 0x10c0000

.field public static final SLEEP_TOKEN_DEFAULT_DISPLAY:Ljava/lang/String; = "cover"

.field public static final SLEEP_TOKEN_VIRTUAL_DISPLAY:Ljava/lang/String; = "cover-virtual"

.field public static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAnimationStartCallback:Ljava/lang/Runnable;

.field public final mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

.field public mContext:Landroid/content/Context;

.field public final mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

.field public final mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

.field public final mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

.field public final mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field public final mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverStateLock:Ljava/lang/Object;

.field public final mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

.field public final mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

.field public final mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

.field public mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

.field public mHallicSensorEventListener:Landroid/hardware/SensorEventListener;

.field public final mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsAttachStateChanged:Z

.field public mIsCoverAppCovered:Z

.field public mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mResolutionMonitor:Lcom/android/server/sepunion/cover/ResolutionMonitor;

.field public mResolutionMonitorCallback:Ljava/lang/Runnable;

.field public mResolver:Landroid/content/ContentResolver;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

.field public final mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

.field public mSupportHallIcSensor:Z

.field public mSupportSubDisplay:Z

.field public mSystemReady:Z

.field public final mThread:Landroid/os/HandlerThread;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimationStartCallback(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverHideAnimator(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverHideAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverServiceManager(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverServiceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverStateLock(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateNotifier(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/StateNotifier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcloneCoverStateLocked(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCoverSwitchStateFromInputManager(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifySmartCoverAttachStateChangedInternal(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCoverSwitchStateLocked(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZZZ)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateCoverAttachState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCoverStateToWindowManagerLocked(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Lcom/samsung/android/cover/CoverState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCoverWindowSize(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverWindowSize()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportSubDisplay:Z

    .line 111
    new-instance v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Ljava/lang/Runnable;

    .line 123
    new-instance v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mResolutionMonitorCallback:Ljava/lang/Runnable;

    .line 136
    new-instance v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    .line 151
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    .line 152
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "power"

    .line 153
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mResolver:Landroid/content/ContentResolver;

    .line 157
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    .line 158
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 159
    new-instance v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler-IA;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    .line 160
    new-instance v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    new-instance v2, Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/cover/CoverVerifier;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 169
    new-instance v2, Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;)V

    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 170
    new-instance v2, Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/server/sepunion/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 171
    new-instance v2, Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/server/sepunion/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    .line 172
    new-instance v2, Lcom/android/server/sepunion/cover/CoverHideAnimator;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/android/server/sepunion/cover/CoverHideAnimator;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 173
    new-instance v1, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-direct {v1}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;-><init>()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    .line 174
    new-instance v1, Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/sepunion/cover/AutoScreenOn;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 175
    new-instance v1, Lcom/android/server/sepunion/cover/ResolutionMonitor;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mResolutionMonitorCallback:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/sepunion/cover/ResolutionMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mResolutionMonitor:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    .line 176
    new-instance v1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    .line 177
    new-instance p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-direct {p1, v1, v2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 193
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 195
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportSubDisplay:Z

    const-string v0, "com.sec.feature.cover.hallic"

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportHallIcSensor:Z

    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .registers 6

    .line 999
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1001
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1000
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1002
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "addLedNotification : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1005
    :cond_24
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_32

    .line 1007
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->addLedNotification(Landroid/os/Bundle;)V

    :cond_32
    return-void
.end method

.method public final cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;
    .registers 2

    .line 274
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 275
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    return-object v0
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 8

    .line 864
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 866
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 867
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 866
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 868
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "disableCoverManager : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 873
    :cond_2a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_75

    .line 874
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p2}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result p2

    .line 875
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_42

    move v0, v2

    goto :goto_43

    :cond_42
    move v0, v1

    :goto_43
    if-nez p2, :cond_47

    if-eqz v0, :cond_48

    :cond_47
    move v1, v2

    .line 877
    :cond_48
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p2, v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    .line 878
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disable CoverManager : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", pkg : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoverManager_"

    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance p2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;

    invoke-direct {p2, p0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_75
    return-void
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1039
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1040
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1041
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1040
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1042
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "disableLcdOffByCover : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1045
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable LCD OFF : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverManager_"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 1048
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    const/4 v0, 0x1

    if-eqz p2, :cond_50

    .line 1049
    invoke-virtual {p2, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    .line 1050
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p2, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 1052
    :cond_50
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p2, :cond_5c

    .line 1053
    invoke-virtual {p2, v0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    .line 1054
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p2, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_5c
    return p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 1165
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1167
    :cond_b
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-nez v0, :cond_29e

    if-eqz p3, :cond_29e

    array-length v0, p3

    if-lez v0, :cond_29e

    const/4 v0, 0x0

    .line 1168
    aget-object v1, p3, v0

    const-string v2, "on"

    .line 1169
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v2, :cond_bc

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto/16 :goto_bc

    :cond_2d
    const-string/jumbo v2, "open"

    .line 1245
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string v2, "close"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_86

    :cond_3f
    const-string/jumbo v2, "vr"

    .line 1254
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29e

    .line 1260
    :try_start_48
    aget-object p1, p3, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1261
    aget-object v1, p3, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1262
    aget-object v2, p3, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1263
    aget-object p3, p3, v3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_60} :catch_64

    move v9, v0

    move v0, p1

    move p1, v9

    goto :goto_67

    :catch_64
    move p1, v0

    move v1, p1

    move v2, v1

    .line 1270
    :goto_67
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1271
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestVisibleRectToSetting(Landroid/graphics/Rect;)V

    .line 1272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: CLEAR VIEW COVER VISIBLE AREA "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1246
    :cond_86
    :goto_86
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result p1

    if-nez p1, :cond_92

    const-string p0, "NOT TEST MODE"

    .line 1247
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_92
    const-string p1, "close"

    .line 1250
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    .line 1251
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TEST MODE: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a8

    const-string v0, "OPEN"

    goto :goto_aa

    :cond_a8
    const-string v0, "CLOSE"

    :goto_aa
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    return-void

    :cond_bc
    :goto_bc
    const-string p1, "on"

    .line 1170
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_27e

    .line 1171
    array-length v7, p3

    if-le v7, v6, :cond_27e

    .line 1172
    aget-object p1, p3, v6

    .line 1173
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/16 v7, 0x8

    const/4 v8, 0x7

    sparse-switch p3, :sswitch_data_31a

    :goto_d7
    move v3, v2

    goto/16 :goto_13b

    :sswitch_da
    const-string p3, "cs"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e3

    goto :goto_d7

    :cond_e3
    move v3, v7

    goto/16 :goto_13b

    :sswitch_e6
    const-string p3, "cc"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ef

    goto :goto_d7

    :cond_ef
    move v3, v8

    goto :goto_13b

    :sswitch_f1
    const-string p3, "n"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fa

    goto :goto_d7

    :cond_fa
    const/4 v3, 0x6

    goto :goto_13b

    :sswitch_fc
    const-string p3, "m"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_105

    goto :goto_d7

    :cond_105
    const/4 v3, 0x5

    goto :goto_13b

    :sswitch_107
    const-string p3, "l"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13b

    goto :goto_d7

    :sswitch_110
    const-string p3, "g"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_119

    goto :goto_d7

    :cond_119
    move v3, v4

    goto :goto_13b

    :sswitch_11b
    const-string p3, "f"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_124

    goto :goto_d7

    :cond_124
    move v3, v5

    goto :goto_13b

    :sswitch_126
    const-string p3, "c"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12f

    goto :goto_d7

    :cond_12f
    move v3, v6

    goto :goto_13b

    :sswitch_131
    const-string p3, "b"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13a

    goto :goto_d7

    :cond_13a
    move v3, v0

    :cond_13b
    :goto_13b
    packed-switch v3, :pswitch_data_340

    goto/16 :goto_29a

    .line 1217
    :pswitch_140
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 p3, 0xf

    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 1218
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: CLEAR SIDE VIEW COVER "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1231
    :pswitch_164
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 p3, 0x11

    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 1232
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: CLEAR CAMERA VIEW COVER "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1196
    :pswitch_188
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 p3, 0xb

    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 1197
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: NEON_COVER "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1224
    :pswitch_1ac
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 p3, 0x10

    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 1225
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: MINI SVIEW WALLET COVER "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1189
    :pswitch_1d0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v8}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 1190
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, v8}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: LED_COVER "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1203
    :pswitch_1f2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 p3, 0xd

    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 1204
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: GAMEPACK_COVER "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1175
    :pswitch_216
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 1176
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: FLIP_COVER "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1182
    :pswitch_238
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v7}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 1183
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, v7}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: CLEAR_COVER "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1210
    :pswitch_25a
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 p3, 0xe

    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 1211
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1212
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: LED BACK COVER "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_27e
    if-nez p1, :cond_29a

    .line 1239
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    .line 1240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TEST MODE: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1243
    :cond_29a
    :goto_29a
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->printCoverDebugModeGuide(Ljava/io/PrintWriter;)V

    return-void

    :cond_29e
    const-string v0, "COVER MANAGER SERVICE (dumpsys cover)"

    .line 1277
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " Current Cover state"

    .line 1279
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_2ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  "

    .line 1282
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverVerifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1284
    monitor-exit v0
    :try_end_2cc
    .catchall {:try_start_2ab .. :try_end_2cc} :catchall_317

    .line 1285
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/Feature;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/StateNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2eb

    .line 1290
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1292
    :cond_2eb
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v0, :cond_2f2

    .line 1293
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1295
    :cond_2f2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result v0

    if-eqz v0, :cond_2ff

    .line 1296
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/AutoScreenOn;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1298
    :cond_2ff
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p0, "CoverManager_"

    .line 1300
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1303
    const-class p0, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;

    if-eqz p0, :cond_316

    .line 1305
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_316
    return-void

    :catchall_317
    move-exception p0

    .line 1284
    :try_start_318
    monitor-exit v0
    :try_end_319
    .catchall {:try_start_318 .. :try_end_319} :catchall_317

    throw p0

    :sswitch_data_31a
    .sparse-switch
        0x62 -> :sswitch_131
        0x63 -> :sswitch_126
        0x66 -> :sswitch_11b
        0x67 -> :sswitch_110
        0x6c -> :sswitch_107
        0x6d -> :sswitch_fc
        0x6e -> :sswitch_f1
        0xc60 -> :sswitch_e6
        0xc70 -> :sswitch_da
    .end sparse-switch

    :pswitch_data_340
    .packed-switch 0x0
        :pswitch_25a
        :pswitch_238
        :pswitch_216
        :pswitch_1f2
        :pswitch_1d0
        :pswitch_1ac
        :pswitch_188
        :pswitch_164
        :pswitch_140
    .end packed-switch
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1062
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1063
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1064
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1063
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1065
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "enableLcdOffByCover : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1068
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable LCD OFF : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverManager_"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public final getCoverAttachStateFromInputManager()I
    .registers 4

    .line 775
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_20

    const/16 v1, -0x100

    const/16 v2, 0x1a

    .line 778
    :try_start_b
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_18

    if-lez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    if-nez p0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    return v0

    .line 787
    :catch_18
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "getCoverAttachStateFromInputManager : Can\'t get cover attach state"

    invoke-static {p0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 790
    :cond_20
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "getCoverAttachStateFromInputManager : InputManager is null"

    invoke-static {p0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 2

    const/4 v0, 0x1

    .line 818
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    return-object p0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .registers 2

    .line 822
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "deprecated getCoverStateForExternal"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;
    .registers 2

    .line 1159
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 1161
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;
    .registers 5

    .line 827
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_2d

    if-eqz p1, :cond_2d

    .line 828
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p1, v0, :cond_2d

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 829
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 830
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 829
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 831
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "getCoverStateInternal : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 835
    :cond_2d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method public getCoverSwitchState()Z
    .registers 5

    .line 839
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 842
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 841
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 843
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "getCoverSwitchState : caller is invalid"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 847
    :cond_2b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 848
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverDisabler;->getRealCoverSwitchState()Z

    move-result p0

    return p0

    .line 850
    :cond_3a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    return p0
.end method

.method public final getCoverSwitchStateFromInputManager()I
    .registers 4

    .line 796
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_20

    const/16 v1, -0x100

    const/16 v2, 0x15

    .line 799
    :try_start_b
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_18

    if-lez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    if-nez p0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    return v0

    .line 808
    :catch_18
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "getCoverSwitchStateFromInputManager : Can\'t get cover switch state"

    invoke-static {p0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 812
    :cond_20
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "getCoverSwitchStateFromInputManager : InputManager is null"

    invoke-static {p0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getHallicSensorEventListener()Landroid/hardware/SensorEventListener;
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_b

    .line 297
    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$7;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 315
    :cond_b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public final getInputManagerService()Lcom/android/server/input/InputManagerService;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-nez v0, :cond_12

    const-string v0, "input"

    .line 289
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 290
    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 292
    :cond_12
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-object p0
.end method

.method public getVersion()I
    .registers 1

    const/high16 p0, 0x10c0000

    return p0
.end method

.method public final getWindowManagerService()Lcom/android/server/wm/WindowManagerService;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "window"

    .line 281
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 284
    :cond_13
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public final initialize()V
    .registers 5

    .line 211
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 213
    new-instance v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_56

    .line 219
    :cond_16
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 220
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverAttachStateFromInputManager()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    move v0, v2

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v0

    if-eq v0, v2, :cond_34

    move v1, v2

    .line 223
    :cond_34
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 224
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->off()Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_4a
    move v1, v2

    .line 227
    :cond_4b
    invoke-virtual {p0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    goto :goto_56

    .line 230
    :cond_4f
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "Nfc authentication supported, skipping creating first coverState"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method

.method public final initializeCoverController(ZII)V
    .registers 4

    if-eqz p2, :cond_49

    const/4 p3, 0x7

    if-eq p2, p3, :cond_2e

    const/16 p3, 0xb

    if-eq p2, p3, :cond_e

    const/16 p3, 0xe

    if-eq p2, p3, :cond_2e

    goto :goto_68

    .line 734
    :cond_e
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 735
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-nez p1, :cond_68

    .line 736
    new-instance p1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    goto :goto_68

    .line 724
    :cond_2e
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result p3

    if-eqz p3, :cond_68

    .line 725
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-nez p3, :cond_41

    .line 726
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    .line 728
    :cond_41
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_68

    .line 729
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->updateNfcLedCoverAttachStateLocked(ZI)V

    goto :goto_68

    .line 741
    :cond_49
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 742
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-nez p1, :cond_68

    .line 743
    new-instance p1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    :cond_68
    :goto_68
    return-void
.end method

.method public final initializeLedCoverController()V
    .registers 4

    .line 751
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->getSupportNfcLedCoverLevel()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_69

    const/16 v1, 0x14

    if-eq v0, v1, :cond_59

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_49

    const/16 v1, 0x28

    if-eq v0, v1, :cond_49

    const/16 v1, 0x32

    if-eq v0, v1, :cond_49

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_49

    const/16 v1, 0x46

    if-eq v0, v1, :cond_49

    const/16 v1, 0x50

    if-eq v0, v1, :cond_49

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_49

    const/16 v1, 0x64

    if-eq v0, v1, :cond_49

    .line 770
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeLedCoverController : unsupported NfcLedCover level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 761
    :cond_49
    new-instance v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    goto :goto_78

    .line 764
    :cond_59
    new-instance v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    goto :goto_78

    .line 767
    :cond_69
    new-instance v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    :goto_78
    return-void
.end method

.method public isCoverManagerDisabled()Z
    .registers 3

    .line 855
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_19

    .line 856
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_11

    goto :goto_19

    .line 857
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 860
    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result p0

    return p0
.end method

.method public final isThemeCover(Ljava/lang/String;)Z
    .registers 3

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_18

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x34

    if-ne p0, p1, :cond_18

    .line 415
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "isThemeCover : it is theme cover"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_18
    return v0
.end method

.method public notifyCoverAttachStateChanged(JZ)V
    .registers 4

    .line 360
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez p1, :cond_c

    .line 361
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "notifyCoverAttachStateChanged : return because system is not yet ready"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 365
    :cond_c
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result p1

    if-nez p1, :cond_25

    .line 366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    if-ne p1, p2, :cond_1d

    goto :goto_25

    .line 367
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 370
    :cond_25
    :goto_25
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverAttachStateChangedInternal(Z)V

    return-void
.end method

.method public final notifyCoverAttachStateChangedInternal(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 374
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .registers 6

    .line 527
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez p1, :cond_c

    .line 528
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "notifyCoverSwitchStateChanged : return because system is not yet ready"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 532
    :cond_c
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result p1

    if-nez p1, :cond_4b

    .line 533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    if-ne p1, p2, :cond_1d

    goto :goto_4b

    .line 534
    :cond_1d
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCallingUid() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", myUid() == "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 539
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_73

    .line 540
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/CoverVerifier;->isCoverAttached()Z

    move-result p1

    if-eqz p1, :cond_5e

    if-eqz p3, :cond_5f

    :cond_5e
    const/4 p2, 0x1

    .line 541
    :cond_5f
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    .line 542
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/sepunion/cover/CoverDisabler;->sendCoverSwitchIntent(Landroid/content/Context;Z)V

    const-string p0, "CoverManager_"

    const-string p1, "cover switch fail because CoverManager is disabled"

    .line 545
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 549
    :cond_73
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result p1

    if-eqz p1, :cond_81

    const-string p0, "CoverManager_"

    const-string p1, "cover switch fail because factory app is running."

    .line 551
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 555
    :cond_81
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportSubDisplay:Z

    if-eqz p1, :cond_b1

    if-nez p3, :cond_b1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result p1

    if-nez p1, :cond_b1

    const-string p1, "CoverManager_"

    const-string v0, "folder is open."

    .line 557
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 559
    :try_start_9b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_ac

    const-string v0, "CoverManager_"

    const-string v1, "AutoScreenOn changed in cover closed state"

    .line 560
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    monitor-exit p1

    goto :goto_b1

    .line 562
    :cond_ac
    monitor-exit p1

    return-void

    :catchall_ae
    move-exception p0

    .line 564
    monitor-exit p1
    :try_end_b0
    .catchall {:try_start_9b .. :try_end_b0} :catchall_ae

    throw p0

    .line 567
    :cond_b1
    :goto_b1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result p1

    if-eqz p1, :cond_e1

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->off()Z

    move-result p1

    if-eqz p1, :cond_e1

    const-string p1, "CoverManager_"

    const-string v0, "AutoScreenOn is disabled."

    .line 569
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 571
    :try_start_cb
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_dc

    const-string v0, "CoverManager_"

    const-string v1, "AutoScreenOn changed in cover closed state"

    .line 572
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    monitor-exit p1

    goto :goto_e1

    .line 574
    :cond_dc
    monitor-exit p1

    return-void

    :catchall_de
    move-exception p0

    .line 576
    monitor-exit p1
    :try_end_e0
    .catchall {:try_start_cb .. :try_end_e0} :catchall_de

    throw p0

    :cond_e1
    :goto_e1
    const-string p1, "CoverManager_"

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cover switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0, p3, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .registers 7

    .line 378
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez p1, :cond_c

    .line 379
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "notifySmartCoverAttachStateChanged : return because system is not yet ready"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 383
    :cond_c
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result p1

    if-nez p1, :cond_25

    .line 384
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    if-ne p1, p2, :cond_1d

    goto :goto_25

    .line 385
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    :goto_25
    const-string p1, "CoverManager_"

    if-eqz p4, :cond_78

    .line 389
    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_78

    .line 390
    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_78

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 391
    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_78

    .line 392
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifySmartCoverAttachStateChanged : not supported cover type = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cover attach is failed - not supported cover type = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 397
    :cond_78
    sget-object p2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySmartCoverAttachStateChanged : attach = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_b0

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cover attach : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", cover type : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_b0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public final notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_7

    .line 407
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->notifyAuthenticationResponse()V

    :cond_7
    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public onBootComplete()V
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->onBootComplete()V

    return-void
.end method

.method public onCoverAppCovered(Z)I
    .registers 5

    .line 1097
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1098
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_11

    goto :goto_19

    .line 1099
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1102
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAppCovered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z

    .line 1106
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->update(ZZ)V

    .line 1108
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->isBindingCoverService()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1109
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->onCoverAppStateChanged(Z)I

    move-result p0

    return p0

    .line 1111
    :cond_4a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->onCoverAppStateChanged(Z)I

    move-result p0

    return p0
.end method

.method public onLcdOffByCoverEnabled()V
    .registers 3

    .line 1117
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1118
    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 1121
    :cond_d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz v0, :cond_19

    .line 1122
    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    .line 1123
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_19
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 5

    .line 252
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_53

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer unlocked - exiting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3b
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 257
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindActiveCoverService(I)V

    .line 259
    :cond_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_50

    throw p0

    .line 262
    :cond_53
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_56
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 264
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->switchCoverService(II)V

    .line 266
    :cond_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_78

    .line 268
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 269
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->update()V

    :cond_77
    return-void

    :catchall_78
    move-exception p0

    .line 266
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public onUserStopped(I)V
    .registers 4

    .line 248
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserStopped : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 5

    .line 235
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_39

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer unlocked - exiting"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_39
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 241
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 242
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 244
    :cond_50
    monitor-exit p1

    return-void

    :catchall_52
    move-exception p0

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_52

    throw p0
.end method

.method public final printCoverDebugModeGuide(Ljava/io/PrintWriter;)V
    .registers 2

    const-string p0, "Cover Test Mode options:"

    .line 1310
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [cmd] [type]"

    .line 1311
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  cmd may be one of:"

    .line 1312
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    on: cover attached"

    .line 1313
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    off: cover detached"

    .line 1314
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    open: cover opened"

    .line 1315
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    close: cover closed"

    .line 1316
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    vr: set clear view visible rect"

    .line 1317
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  type may be one of:"

    .line 1318
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    f[lip cover]: flip cover"

    .line 1319
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    s[view cover]: sview cover"

    .line 1320
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    c[lear cover]: clear cover"

    .line 1321
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    l[ed cover]: led cover"

    .line 1322
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    n[eon cover]: neon cover"

    .line 1323
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    g[amepack cover]: gamepack cover"

    .line 1324
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    b: led back cover"

    .line 1325
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    cs: clear side view cover"

    .line 1326
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    m: mini sview wallet cover"

    .line 1327
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    cc: clear camera view cover"

    .line 1328
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x1

    .line 319
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 5

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 4

    .line 327
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 328
    sget-object p1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deprecated registerListenerCallbackForExternal "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V
    .registers 8

    if-eqz p4, :cond_27

    .line 333
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p4, v0, :cond_27

    iget-object p4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p4, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result p4

    if-nez p4, :cond_27

    .line 335
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerListenerCallbackInternal : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_27
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/StateNotifier;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 926
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 925
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 927
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerNfcTouchListenerCallback : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 930
    :cond_25
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2c

    .line 931
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 933
    :cond_2c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p0, :cond_33

    .line 934
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    :cond_33
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .registers 6

    .line 1013
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1014
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1015
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1014
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1016
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeLedNotification : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1019
    :cond_25
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_34

    .line 1021
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->removeLedNotification(Landroid/os/Bundle;)V

    :cond_34
    return-void
.end method

.method public requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1074
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1075
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1074
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1076
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "requestCoverAuthentication : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1079
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1080
    sget-object v3, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCoverAuthentication : whenNanos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_4c

    .line 1082
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    return v2
.end method

.method public final sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .registers 10

    .line 436
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 437
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-eq v3, v2, :cond_11

    goto :goto_13

    :cond_11
    move v3, v1

    goto :goto_14

    :cond_13
    :goto_13
    move v3, v2

    .line 439
    :goto_14
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-nez v4, :cond_2a

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v4}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAutoScreenOn:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {v4}, Lcom/android/server/sepunion/cover/AutoScreenOn;->off()Z

    move-result v4

    if-eqz v4, :cond_2b

    :cond_2a
    move v3, v2

    .line 445
    :cond_2b
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    .line 447
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p2

    .line 448
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    .line 451
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/sepunion/cover/Feature;->isSupportSecureCover()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 452
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    return-void

    .line 457
    :cond_55
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v4

    invoke-virtual {p0, v0, p2, v4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeCoverController(ZII)V

    .line 459
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    const-string/jumbo v4, "sensor"

    if-eqz v0, :cond_ce

    .line 463
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v5, p2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 465
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v6

    invoke-virtual {v5, v2, p2, v6}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    .line 466
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p2}, Lcom/android/server/sepunion/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result p2

    if-nez p2, :cond_81

    .line 468
    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    goto :goto_86

    .line 470
    :cond_81
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p2, v3}, Lcom/android/server/sepunion/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    .line 472
    :goto_86
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {p2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSamsungCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result p2

    if-eqz p2, :cond_91

    .line 473
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverInformationToAgentLocked(Z)V

    .line 475
    :cond_91
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportSubDisplay:Z

    if-eqz p1, :cond_9e

    .line 476
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 478
    :cond_9e
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportHallIcSensor:Z

    if-eqz p1, :cond_128

    .line 479
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez p1, :cond_b0

    .line 480
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 482
    :cond_b0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const p2, 0x10040

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_128

    .line 484
    sget-object p2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendCoverAttachStateLocked : register Sensor "

    invoke-static {p2, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getHallicSensorEventListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p2, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_128

    .line 490
    :cond_ce
    invoke-virtual {p0, v2, p1, v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 492
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v5

    invoke-virtual {p1, v1, p2, v5}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    .line 494
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindCoverService(I)V

    .line 496
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    invoke-virtual {p1, v2}, Lcom/android/server/sepunion/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    .line 497
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    const/4 p2, 0x0

    if-eqz p1, :cond_ee

    .line 498
    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    goto :goto_f4

    .line 499
    :cond_ee
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p1, :cond_f4

    .line 500
    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 502
    :cond_f4
    :goto_f4
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportSubDisplay:Z

    if-eqz p1, :cond_101

    .line 503
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 505
    :cond_101
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSupportHallIcSensor:Z

    if-eqz p1, :cond_128

    .line 506
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHallicSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz p1, :cond_128

    .line 507
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez p1, :cond_117

    .line 508
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 510
    :cond_117
    sget-object p1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "sendCoverAttachStateLocked : unregister Sensor "

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getHallicSensorEventListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 516
    :cond_128
    :goto_128
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendCoverAttachStateLocked : coverAttached = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", switchState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendCoverInformationToAgentLocked(Z)V
    .registers 3

    .line 521
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 522
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_17
    return-void
.end method

.method public final sendCoverSwitchStateLocked(ZZZZ)Z
    .registers 9

    const-string v0, "CoverManager_"

    const/4 v1, 0x0

    if-nez p3, :cond_13

    .line 633
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p3

    if-ne p1, p3, :cond_13

    const-string p0, "cover switch fail because switch state is same"

    .line 637
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 641
    :cond_13
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p3

    .line 642
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_55

    .line 643
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendCoverSwitchStateLocked : return false because type("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cover switch fail because type("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 648
    :cond_55
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isBackCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 649
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    if-nez v0, :cond_79

    .line 650
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendCoverSwitchStateLocked : return because this cover is back cover "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_79
    if-eqz v0, :cond_97

    if-nez p1, :cond_97

    .line 653
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendCoverSwitchStateLocked : return because attach state is changed, but switch is false "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 657
    :cond_95
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsAttachStateChanged:Z

    .line 660
    :cond_97
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isClearCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    const/16 v1, 0xb

    if-nez v0, :cond_a8

    if-ne p3, v1, :cond_b8

    .line 663
    :cond_a8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->update(ZZ)V

    .line 664
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->cancelHideAnimation()V

    .line 669
    :cond_b8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isClearCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_cb

    if-ne p3, v1, :cond_f9

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 670
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->isLcdOffByDisabledByApp()Z

    move-result v0

    if-nez v0, :cond_f9

    :cond_cb
    if-eqz p4, :cond_f9

    if-ne p1, v2, :cond_f9

    .line 673
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 675
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance p2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;

    invoke-direct {p2, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_131

    .line 685
    :cond_e2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p1, p3, v2}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    .line 686
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    .line 687
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 688
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {p3, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 689
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    goto :goto_131

    :cond_f9
    if-eqz p3, :cond_11b

    const/4 p4, 0x7

    if-ne p3, p4, :cond_ff

    goto :goto_11b

    .line 699
    :cond_ff
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 701
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {p3, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 702
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    .line 704
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance p2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;

    invoke-direct {p2, p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_131

    .line 693
    :cond_11b
    :goto_11b
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object p4

    .line 694
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 695
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v0, p4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 696
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v0, p4, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    .line 697
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    .line 713
    :goto_131
    sget-object p1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendCoverSwitchStateLocked : switchState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean p3, p3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", type = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget p3, p3, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", color = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget p3, p3, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", widthPixel = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget p3, p3, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", heightPixel = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public sendDataToCover(I[B)V
    .registers 5

    .line 895
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    if-eq p1, p2, :cond_25

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 896
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 897
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 896
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result p1

    if-nez p1, :cond_25

    .line 898
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToCover : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 901
    :cond_25
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.android.systemui"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 902
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .registers 7

    .line 959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 960
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 961
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 960
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 962
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendStateDataToCover : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 965
    :cond_25
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 966
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 969
    :cond_42
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_50

    .line 970
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_65

    .line 971
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_65

    :cond_50
    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_66

    if-ne p1, v0, :cond_57

    goto :goto_66

    .line 988
    :cond_57
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_5e

    .line 989
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    .line 991
    :cond_5e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_65

    .line 992
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    :cond_65
    :goto_65
    return-void

    :cond_66
    :goto_66
    const/4 p2, 0x1

    if-ne p1, v1, :cond_70

    .line 979
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_79

    :cond_70
    if-ne p1, v0, :cond_79

    .line 981
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 983
    :cond_79
    :goto_79
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-nez p1, :cond_80

    .line 984
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_80
    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 3

    .line 908
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_19

    .line 909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_11

    goto :goto_19

    .line 910
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 913
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPowerKeyToCover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_28

    .line 915
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendPowerKeyToCover()V

    .line 917
    :cond_28
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p0, :cond_2f

    .line 918
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->sendPowerKeyToCover()V

    :cond_2f
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .registers 6

    .line 1026
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1027
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1028
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1027
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1029
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendSystemEvent : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1032
    :cond_25
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_2c

    .line 1033
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    :cond_2c
    return-void
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1086
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1087
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1088
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1087
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1089
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setFotaInProgress : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1092
    :cond_26
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFotaInProgress : inProgress = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_48

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_48

    const/4 v2, 0x1

    :cond_48
    return v2
.end method

.method public systemRunning()V
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initialize()V

    :cond_a
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .registers 3

    const/4 v0, 0x1

    .line 342
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->unregisterCallbackInternal(Landroid/os/IBinder;Z)Z

    move-result p0

    return p0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .registers 4

    .line 346
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 347
    sget-object p1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated unregisterCallbackForExternal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final unregisterCallbackInternal(Landroid/os/IBinder;Z)Z
    .registers 6

    if-eqz p2, :cond_20

    .line 352
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p2, v0, :cond_20

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result p2

    if-nez p2, :cond_20

    const/4 p0, 0x0

    return p0

    .line 356
    :cond_20
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 7

    .line 940
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 941
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_26

    .line 943
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterNfcTouchListenerCallback : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 948
    :cond_26
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2f

    .line 949
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    goto :goto_30

    :cond_2f
    move v0, v2

    .line 951
    :goto_30
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p0, :cond_39

    .line 952
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result p0

    goto :goto_3a

    :cond_39
    move p0, v2

    :goto_3a
    if-nez v0, :cond_3e

    if-eqz p0, :cond_3f

    :cond_3e
    const/4 v2, 0x1

    :cond_3f
    return v2
.end method

.method public final updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .registers 7

    .line 422
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverAttachState : attach="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_26

    .line 424
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 426
    :cond_26
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverAttachState(Z)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 427
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 428
    :try_start_31
    invoke-virtual {p0, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    .line 429
    monitor-exit p1

    goto :goto_3f

    :catchall_36
    move-exception p0

    monitor-exit p1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_36

    throw p0

    :cond_39
    const-string/jumbo p0, "updateCoverAttachState : Returning attach state - it is same"

    .line 431
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method public final updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V
    .registers 2

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1130
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_14

    .line 1132
    :cond_c
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateCoverStateToWindowManagerLocked : wms is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void
.end method

.method public final updateCoverSwitchState(ZZ)V
    .registers 7

    .line 584
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_3
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverSwitchState : switchState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isBoot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/Feature;->isSupportSecureCover()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo p0, "updateCoverSwitchState : return because this cover is secure cover"

    .line 588
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    monitor-exit v0

    return-void

    .line 592
    :cond_36
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isBackCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string/jumbo p0, "updateCoverSwitchState : return because this cover is back cover"

    .line 593
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    monitor-exit v0

    return-void

    :cond_46
    if-nez p2, :cond_5b

    if-nez p1, :cond_56

    .line 597
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->needsCPUBoostCover(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 598
    :cond_56
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 601
    :cond_5b
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-nez v1, :cond_87

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 602
    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isSupportDetectCover()Z

    move-result v1

    if-nez v1, :cond_87

    .line 603
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverVerification()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_80

    .line 604
    invoke-virtual {p0, p2, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_87

    .line 606
    :cond_80
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    .line 610
    :cond_87
    :goto_87
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->isCoverAttached()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_9c

    .line 615
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    if-nez p1, :cond_96

    goto :goto_97

    :cond_96
    move v2, v3

    :goto_97
    invoke-virtual {p0, v2}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 616
    monitor-exit v0

    return-void

    .line 619
    :cond_9c
    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result p2

    if-eqz p1, :cond_be

    .line 620
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_be

    if-eqz p2, :cond_be

    const-string p1, "CoverManager_"

    const-string/jumbo p2, "wake up by cover open"

    .line 624
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/16 v1, 0x67

    const-string/jumbo v2, "updateCoverSwitchState"

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 628
    :cond_be
    monitor-exit v0

    return-void

    :catchall_c0
    move-exception p0

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_3 .. :try_end_c2} :catchall_c0

    throw p0
.end method

.method public final updateCoverWindowSize()V
    .registers 5

    .line 1137
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->initializeDefaultCoverState()V

    .line 1139
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_37

    const/16 v2, 0x8

    if-eq v1, v2, :cond_37

    const/16 v2, 0xb

    if-eq v1, v2, :cond_37

    .line 1151
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverWindowSize: no need to update cover window for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 1143
    :cond_37
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverWindowSize: updating cover window for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V

    .line 1145
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 1146
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 1147
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 1148
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    .line 1154
    :goto_6d
    monitor-exit v0

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw p0
.end method
