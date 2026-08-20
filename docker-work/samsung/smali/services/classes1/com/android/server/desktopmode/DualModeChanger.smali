.class public Lcom/android/server/desktopmode/DualModeChanger;
.super Lcom/android/server/desktopmode/ModeChanger;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;,
        Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;,
        Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;
    }
.end annotation


# static fields
.field public static final MSG_START_LOADING_SCREEN:I = 0x1

.field public static final MSG_STOP_LOADING_SCREEN:I = 0x2

.field public static final MSG_UNREGISTER_STATELISTENER:I = 0x3

.field public static final REASON_LOADING_SCREEN_TIMEOUT:I = -0x1

.field public static final TAG:Ljava/lang/String;

.field public static final TIMEOUT_LOADING_SCREEN:I = 0x2710


# instance fields
.field public final mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

.field public mDesktopDisplayContext:Landroid/content/Context;

.field public mDesktopDisplayId:I

.field public mDisplayUnsupportDialogShown:Z

.field public mDualModeEnabled:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLoadingScreenAnimationComplete:Z

.field public mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPrevDesktopDisplayId:I

.field public mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

.field public final mStabilizerModeChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mTopTaskId:I

.field public mTopTaskIdValid:Z

.field public final mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

.field public mTouchpadRequestedByNotification:Z

.field public final mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mWallpaperShown:Z


# direct methods
.method public static synthetic $r8$lambda$WdvOTh_ZJH4o_o3eiKiHI0n_17E(Lcom/android/server/desktopmode/DualModeChanger;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->lambda$onSecuredAppLaunched$0(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mwgMeD4hYdJ0jaZ4FQ7fZB9wLzM(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->lambda$onDesktopDisplayConfigured$1(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopDisplayContext(Lcom/android/server/desktopmode/DualModeChanger;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayUnsupportDialogShown(Lcom/android/server/desktopmode/DualModeChanger;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLoadingScreenAnimationComplete(Lcom/android/server/desktopmode/DualModeChanger;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateListener(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadManager(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/TouchpadManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadRequestedByNotification(Lcom/android/server/desktopmode/DualModeChanger;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWallpaperShown(Lcom/android/server/desktopmode/DualModeChanger;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLoadingScreenAnimationComplete(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStateListener(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTouchpadRequestedByNotification(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWallpaperShown(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->collapsePanelsToDisplay(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStopLoadingScreen(Lcom/android/server/desktopmode/DualModeChanger;ZI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->handleStopLoadingScreen(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleStopLoadingScreenIfPossible(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->showDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowStabilizerModeDialogIfNeeded(Lcom/android/server/desktopmode/DualModeChanger;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->showStabilizerModeDialogIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartSPenModeSettingActivity(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startSPenModeSettingActivity(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartTouchpadActivity(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startTouchpadActivity(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNavBarIcon(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->updateNavBarIcon(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSpenNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->updateSpenNotification(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTouchpadNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->updateTouchpadNotification(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/CoverStateManager;Landroid/app/KeyguardManager;Lcom/android/server/desktopmode/TouchpadManager;Landroid/os/PowerManager;Landroid/os/PowerManagerInternal;)V
    .registers 36

    move-object v14, p0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    .line 169
    invoke-direct/range {v0 .. v13}, Lcom/android/server/desktopmode/ModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    .line 112
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 113
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 114
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    .line 115
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 116
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    const/4 v0, -0x1

    .line 118
    iput v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 119
    iput v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    .line 120
    iput v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 128
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$1;

    const-string/jumbo v1, "touchpad_enabled"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$1;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Ljava/lang/String;)V

    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 140
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$2;

    const-string/jumbo v1, "stabilizer_mode"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$2;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Ljava/lang/String;)V

    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mStabilizerModeChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 183
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Landroid/os/Looper;)V

    iput-object v0, v14, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p5

    .line 184
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p16

    .line 185
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    move-object/from16 v0, p17

    .line 186
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v0, p18

    .line 187
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    move-object/from16 v0, p19

    .line 188
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p20

    .line 189
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p7

    .line 190
    iput-object v0, v14, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-void
.end method

.method private synthetic lambda$onDesktopDisplayConfigured$1(Z)V
    .registers 2

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->handleDesktopDisplayConfigured(Z)V

    return-void
.end method

.method private synthetic lambda$onSecuredAppLaunched$0(ILjava/lang/String;)V
    .registers 5

    .line 297
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->showSecuredAppLaunchedDialog()V

    .line 299
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.desktopmode.action.SECURED_APP_LAUNCHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.dexonpc"

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.android.desktopmode.extra.TASK_ID"

    .line 301
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.samsung.android.desktopmode.extra.PACKAGE_NAME"

    .line 302
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 299
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public canShowTouchpadNotification(Lcom/android/server/desktopmode/State;)Z
    .registers 3

    .line 594
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isNavBarGestureEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->hasNavigationBar()Z

    move-result p0

    if-nez p0, :cond_1a

    .line 595
    :cond_c
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadAvailable()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadEnabled()Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final collapsePanelsToDisplay(I)V
    .registers 3

    .line 572
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p0, :cond_15

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x1

    .line 573
    :goto_9
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    .line 578
    sget-object p1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string v0, "collapsePanelsToDisplay failed."

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesktopDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDualModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mModeToModeChangeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrevDesktopDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTopTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTopTaskIdValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTouchpadRequestedByNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getModeToModeChangeType()I
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public final handleDesktopDisplayConfigured(Z)V
    .registers 8

    .line 396
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 397
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 399
    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_7a

    .line 400
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_19

    goto :goto_7a

    :cond_19
    const/4 v2, 0x1

    if-eqz p1, :cond_21

    .line 404
    iget v3, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_27

    :cond_21
    if-nez p1, :cond_7a

    iget v3, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v3, v2, :cond_7a

    .line 406
    :cond_27
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_4a

    sget-object v3, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleDesktopDisplayConfigured(), added="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", desktopModeState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_4a
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    const/4 v1, 0x4

    const/4 v3, 0x2

    if-eqz p1, :cond_52

    move v4, v1

    goto :goto_53

    :cond_52
    move v4, v3

    :goto_53
    const/16 v5, 0x28

    .line 409
    invoke-virtual {p0, v4, v5}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    if-eqz p1, :cond_60

    .line 412
    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;I)V

    goto :goto_64

    .line 415
    :cond_60
    iput-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 416
    iput-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 419
    :goto_64
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZLcom/android/server/desktopmode/State;)V

    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v3

    :goto_6d
    const/16 v0, 0x32

    .line 420
    invoke-virtual {p0, v1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 421
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeOnConfigurationChanged(Z)V

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public final handleStartLoadingScreen(Lcom/android/server/desktopmode/State;Z)V
    .registers 6

    .line 338
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting loading screen... enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p2, :cond_50

    .line 341
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    goto :goto_41

    .line 345
    :cond_26
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->showModeChangeScreen()Z

    move-result p1

    if-eqz p1, :cond_33

    const/16 p1, 0x75

    goto :goto_35

    :cond_33
    const/16 p1, 0x71

    .line 348
    :goto_35
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x67

    new-instance v2, Lcom/android/server/desktopmode/DualModeChanger$3;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DualModeChanger$3;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 360
    :goto_41
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 361
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStabilizerModeChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    goto :goto_61

    .line 364
    :cond_50
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 365
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStabilizerModeChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    const/4 p1, 0x0

    .line 366
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 368
    :goto_61
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeStartLoadingScreen(Z)V

    .line 369
    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeInternal(Z)V

    return-void
.end method

.method public final handleStopLoadingScreen(ZI)V
    .registers 9

    .line 465
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_43

    .line 467
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_25

    sget-object p2, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading screen timeout! enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_25
    iput-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 472
    iput-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 476
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p2

    const-string v3, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/server/desktopmode/ModeChanger;->hasPackageTask(ILjava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_43

    .line 478
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_40

    sget-object p2, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string v3, "DeX Home task does not exist in DeX display"

    invoke-static {p2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_40
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    .line 483
    :cond_43
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p2

    iget p2, p2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x32

    if-eq p2, v3, :cond_74

    .line 484
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_73

    sget-object p0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to stop loading screen. onDesktopDisplayConfigured() is not called! enter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", desktopModeState="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    return-void

    .line 489
    :cond_74
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_96

    sget-object p2, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping loading screen... enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_96
    iget-boolean p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    const/4 v3, 0x0

    if-eqz p2, :cond_a7

    if-eqz p1, :cond_a7

    .line 492
    iget p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    iget v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    const/4 v5, 0x5

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/desktopmode/ModeChanger;->bringTaskToForeground(III)V

    .line 494
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 498
    :cond_a7
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v4, 0x67

    const/16 v5, 0x6f

    invoke-virtual {p2, v4, v5}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 500
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/DualModeChanger;->setModeChangeLock(Z)V

    if-eqz p1, :cond_b6

    const/4 v1, 0x4

    .line 501
    :cond_b6
    invoke-virtual {p0, v1, v3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 502
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeStopLoadingScreen(Z)V

    if-nez p1, :cond_d9

    .line 505
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    invoke-static {p2}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->-$$Nest$munregister(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V

    const/4 p2, 0x0

    .line 506
    iput-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    .line 507
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 510
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->forceKillProcessWhenExit()V

    goto :goto_119

    .line 512
    :cond_d9
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    .line 513
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->showDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/State;)V

    .line 515
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    if-eqz p2, :cond_f4

    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "auto_open_last_app"

    .line 516
    invoke-static {p2, v1, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_f4

    .line 517
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    const v1, 0x104042a

    invoke-static {p2, v1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    .line 519
    :cond_f4
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const v1, 0x1040430

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const v3, 0x104042f

    .line 520
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {p0, p2, v1}, Lcom/android/server/desktopmode/ModeChanger;->showDexMirroringTipsNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p2

    if-eqz p2, :cond_116

    .line 522
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v0, 0xcc

    invoke-virtual {p2, v0}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    .line 524
    :cond_116
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->showStabilizerModeDialogIfNeeded()V

    .line 527
    :goto_119
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    xor-int/2addr p1, v2

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyScheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public final hasNavigationBar()Z
    .registers 2

    .line 621
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101b5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onDesktopDisplayConfigured(Z)V
    .registers 5

    .line 390
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopDisplayConfigured(), added="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDesktopDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_25
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSecuredAppLaunched(ILjava/lang/String;)V
    .registers 5

    .line 296
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/DualModeChanger;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public saveTopTaskId(I)V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    return-void
.end method

.method public final scheduleStartLoadingScreen(Lcom/android/server/desktopmode/State;Z)V
    .registers 8

    .line 327
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1b
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 332
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 331
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    .line 330
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->handleStartLoadingScreen(Lcom/android/server/desktopmode/State;Z)V

    return-void
.end method

.method public final scheduleStopLoadingScreenIfPossible(Z)V
    .registers 7

    .line 452
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 453
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_41

    sget-object v1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleStopLoadingScreenIfPossible(), enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWallpaperShown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mLoadingScreenAnimationComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", desktopModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_41
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    if-eqz v1, :cond_6c

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    if-eqz v1, :cond_6c

    const/4 v1, 0x2

    if-eqz p1, :cond_4e

    const/4 v2, 0x4

    goto :goto_4f

    :cond_4e
    move v2, v1

    :goto_4f
    const/16 v3, 0x32

    const/16 v4, 0x66

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 459
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6c
    return-void
.end method

.method public final setDesktopDisplayId(I)V
    .registers 3

    .line 315
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    .line 316
    iput p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 317
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setDesktopDisplayId(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    .line 318
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 319
    :goto_18
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    return-void
.end method

.method public setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .registers 13

    .line 213
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isModeChangeLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_27
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setModeChangeLock(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_36

    const/16 v2, 0x66

    goto :goto_37

    :cond_36
    move v2, v1

    .line 218
    :goto_37
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/ModeChanger;->saveDisplayType(I)V

    .line 219
    iput-object p3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 222
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isAdapter()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_50

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_50

    :cond_4e
    move v2, v3

    goto :goto_5a

    .line 223
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x5

    const-string/jumbo v5, "max_visible_freeform_count"

    invoke-static {v2, v5, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 228
    :goto_5a
    iget-object v4, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v4, v2, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMaxVisibleFreeformCountForDex(II)V

    .line 232
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    const/4 v4, 0x2

    if-nez v2, :cond_83

    if-eqz p3, :cond_73

    .line 234
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v2

    if-ne v2, v4, :cond_73

    .line 235
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getTopTaskId()I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    goto :goto_81

    .line 237
    :cond_73
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p2, :cond_79

    move v5, v1

    goto :goto_7b

    .line 238
    :cond_79
    iget v5, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 237
    :goto_7b
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 240
    :goto_81
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    :cond_83
    if-eqz p3, :cond_90

    .line 243
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v2

    if-ne v2, v0, :cond_90

    .line 244
    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    invoke-virtual {p3, v2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->setTopTaskId(I)V

    .line 248
    :cond_90
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v5, 0x12d

    invoke-virtual {v2, v5}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    const/4 v2, 0x3

    if-eqz p2, :cond_9c

    move v5, v2

    goto :goto_9d

    :cond_9c
    move v5, v0

    :goto_9d
    const/16 v6, 0x14

    .line 249
    invoke-virtual {p0, v5, v6}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 250
    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/ModeChanger;->setDesktopModeToSurfaceFlinger(Z)V

    if-eqz p2, :cond_e6

    .line 253
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->cancelKillProcessWhenExit()V

    .line 255
    new-instance v3, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver-IA;)V

    iput-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    .line 256
    invoke-static {v3}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->-$$Nest$mregister(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V

    .line 257
    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    if-nez v3, :cond_d4

    .line 258
    new-instance v2, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    invoke-direct {v2, p0, v4}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener-IA;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    .line 259
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_cc

    sget-object v2, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mStateListener registered"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_cc
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    invoke-interface {v2, v3}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    goto :goto_d9

    .line 262
    :cond_d4
    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    :goto_d9
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/ModeChanger;->switchKnoxToFolderMode(Lcom/android/server/desktopmode/State;)V

    .line 265
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopDisplayId(I)V

    goto :goto_11e

    .line 267
    :cond_e6
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/CoverStateManager;->goToSleepIfFlipTypeCoverClosed()Z

    move-result v2

    if-nez v2, :cond_103

    .line 268
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2}, Landroid/os/PowerManagerInternal;->isInternalDisplayOff()Z

    move-result v2

    if-eqz v2, :cond_103

    .line 269
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/16 v7, 0x72

    const-string v8, "android.server:DeX"

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 273
    :cond_103
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    if-eqz v2, :cond_116

    if-eqz p3, :cond_10f

    .line 275
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v2

    if-ne v2, v4, :cond_116

    .line 276
    :cond_10f
    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/desktopmode/ModeChanger;->bringTaskToForeground(III)V

    .line 278
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 280
    :cond_116
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    .line 281
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopDisplayId(I)V

    .line 283
    :goto_11e
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStartLoadingScreen(Lcom/android/server/desktopmode/State;Z)V

    return-object p3
.end method

.method public setDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return-void
.end method

.method public final setDesktopModeInternal(Z)V
    .registers 5

    .line 373
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeInternal(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 374
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/ModeChanger;->dismissDialog([I)V

    if-eqz p1, :cond_27

    const/4 v0, 0x3

    :cond_27
    const/16 v1, 0x1e

    .line 375
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 376
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeSetDesktopModeInternal(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/ModeChanger;->backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/State;)V

    if-eqz p1, :cond_46

    .line 380
    :try_start_3c
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopSystemLockTaskMode()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 382
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_46
    :goto_46
    return-void
.end method

.method public setDesktopModeState(II)V
    .registers 5

    .line 195
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    if-nez p2, :cond_9

    const/4 v1, 0x0

    goto :goto_b

    :cond_9
    const/16 v1, 0x66

    .line 197
    :goto_b
    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>(III)V

    .line 198
    sget-object p1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDesktopModeState(), newState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 200
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, v0}, Lcom/android/server/desktopmode/IStateManager;->setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 201
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_3f
    return-void
.end method

.method public final setModeChangeLock(Z)V
    .registers 2

    .line 323
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->setModeChangeLocked(Z)V

    return-void
.end method

.method public final showDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 531
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDisplayResolutionUnsupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 532
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    const/4 p1, 0x1

    .line 533
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    :cond_14
    return-void
.end method

.method public final showSecuredAppLaunchedDialog()V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    if-eqz v0, :cond_14

    .line 310
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :cond_14
    return-void
.end method

.method public final showStabilizerModeDialogIfNeeded()V
    .registers 5

    .line 626
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "stabilizer_mode_consent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "stabilizer_mode"

    invoke-static {v1, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3a

    if-eqz v0, :cond_18

    goto :goto_3a

    .line 634
    :cond_18
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DualModeChanger$4;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    .line 643
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    if-eqz v1, :cond_3a

    .line 644
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p0

    const/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final startActivityInDesktopDisplay(Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 562
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 563
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 564
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 565
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 566
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 565
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_23
    return-void
.end method

.method public startHome(Lcom/android/server/desktopmode/State;)V
    .registers 4

    .line 427
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 428
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;I)V

    :cond_8
    return-void
.end method

.method public final startHome(Lcom/android/server/desktopmode/State;I)V
    .registers 6

    .line 437
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHome(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10210000

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 444
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sec.android.app.desktoplauncher"

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 446
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 447
    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 448
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final startSPenModeSettingActivity(Lcom/android/server/desktopmode/State;)V
    .registers 6

    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.desktoplauncher"

    const-string v3, "com.android.launcher3.settings.SPenInputModePreferenceActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14200000

    .line 541
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 544
    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startActivityInDesktopDisplay(Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public final startTouchpadActivity(Lcom/android/server/desktopmode/State;)V
    .registers 6

    .line 548
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    .line 549
    invoke-virtual {v1}, Lcom/android/server/desktopmode/TouchpadManager;->getInternalUiCallback()Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x12c

    .line 548
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 550
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->minimizeAllTasks(IZ)V

    .line 552
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 553
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isNavBarGestureEnabled()Z

    move-result p1

    if-nez p1, :cond_36

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->hasNavigationBar()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 554
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    goto :goto_3d

    .line 556
    :cond_36
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/TouchpadManager;->notifyStartedByNotification()V

    .line 557
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    :goto_3d
    return-void
.end method

.method public final updateNavBarIcon(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 608
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNavBarIcon(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 610
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_2c

    sget-object p0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string p1, "Skip updateNavBarIcon"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void

    .line 613
    :cond_2d
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadAvailable()Z

    move-result p1

    const/16 v0, 0x190

    if-eqz p1, :cond_3b

    .line 614
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->showNavBarIcon(I)V

    goto :goto_40

    .line 616
    :cond_3b
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->removeNavBarIcon(I)V

    :goto_40
    return-void
.end method

.method public final updateSpenNotification(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 599
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSpenNotification(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_1b
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadEnabled()Z

    move-result v0

    const/16 v1, 0xcb

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isSpenEnabled()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 601
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_34

    .line 603
    :cond_2f
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    :goto_34
    return-void
.end method

.method public final updateTouchpadNotification(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 583
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTouchpadNotification(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->canShowTouchpadNotification(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 585
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    if-eqz v0, :cond_34

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result p1

    if-nez p1, :cond_34

    const/16 p1, 0xca

    goto :goto_36

    :cond_34
    const/16 p1, 0xc9

    :goto_36
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_41

    .line 589
    :cond_3a
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 p1, 0xc8

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    :goto_41
    return-void
.end method
