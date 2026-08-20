.class public Lcom/android/server/desktopmode/StandaloneModeChanger;
.super Lcom/android/server/desktopmode/ModeChanger;
.source "StandaloneModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;,
        Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;
    }
.end annotation


# static fields
.field public static final DELAY_SET_DESKTOP_MODE:I = 0x1f4

.field public static final DELAY_START_LOADING_SCREEN:I = 0x0

.field public static final DELAY_STOP_LOADING_SCREEN:I = 0x0

.field public static final MAXIMUM_SET_DESKTOP_MODE_RETRY_COUNT:I = 0xa

.field public static final MSG_SET_DESKTOP_MODE_INTERNAL:I = 0x1

.field public static final MSG_START_LOADING_SCREEN:I = 0x2

.field public static final MSG_STOP_LOADING_SCREEN:I = 0x3

.field public static final REASON_LOADING_SCREEN_IN_TIME:I = 0x0

.field public static final REASON_LOADING_SCREEN_TIMEOUT:I = -0x1

.field public static final TAG:Ljava/lang/String;

.field public static final TIMEOUT_LOADING_SCREEN:I = 0x3a98


# instance fields
.field public mCurrentUiMode:I

.field public mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field public mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field public mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

.field public mStandaloneModeEnabled:Z

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public mTelecomManager:Landroid/telecom/TelecomManager;

.field public mTopTaskId:I

.field public mUiModeManager:Landroid/app/IUiModeManager;

.field public mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

.field public mWallpaperShown:Z


# direct methods
.method public static synthetic $r8$lambda$LK4cz49CoWrrP4mcfWDyK6mJcK8(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->lambda$handleStartLoadingScreen$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$O8fJZ37G3QWJn0jPPwLvyiAnL0M(Lcom/android/server/desktopmode/StandaloneModeChanger;ZLjava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->lambda$setDesktopMode$1(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RfCWFvbGJdTm69vhr9Pu0ajBw2g(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmStandaloneModeEnabled(Lcom/android/server/desktopmode/StandaloneModeChanger;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmWallpaperShown(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartLoadingScreen(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleStartLoadingScreen(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStopLoadingScreen(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleStopLoadingScreen(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleStopLoadingScreenIfPossible(Lcom/android/server/desktopmode/StandaloneModeChanger;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStopLoadingScreenIfPossible()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDesktopModeInternal(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstoreDefaultHomePackageName(Lcom/android/server/desktopmode/StandaloneModeChanger;ZLjava/util/function/Consumer;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->storeDefaultHomePackageName(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/os/SemDvfsManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Landroid/telecom/TelecomManager;Landroid/app/IUiModeManager;Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/UiModeManagerInternal;)V
    .registers 36

    move-object/from16 v14, p0

    move-object/from16 v15, p14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p15

    .line 141
    invoke-direct/range {v0 .. v13}, Lcom/android/server/desktopmode/ModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 101
    iput-boolean v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    const/4 v0, -0x1

    .line 103
    iput v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    .line 104
    iput v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    .line 114
    new-instance v0, Lcom/android/server/desktopmode/StandaloneModeChanger$1;

    invoke-direct {v0, v14}, Lcom/android/server/desktopmode/StandaloneModeChanger$1;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    iput-object v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 155
    new-instance v1, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v14, v2, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler-IA;)V

    iput-object v1, v14, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p16

    .line 156
    iput-object v1, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v1, p17

    .line 157
    iput-object v1, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    move-object/from16 v1, p19

    .line 158
    iput-object v1, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    move-object/from16 v1, p18

    .line 159
    iput-object v1, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    .line 160
    iput-object v15, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v15, :cond_59

    const/16 v1, 0xbb8

    .line 162
    invoke-virtual {v15, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 164
    :cond_59
    iget-object v1, v14, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method

.method private synthetic lambda$handleStartLoadingScreen$2(Z)V
    .registers 2

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(Z)V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V
    .registers 2

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$setDesktopMode$1(ZLjava/lang/Boolean;)V
    .registers 5

    .line 359
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 360
    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add home role holder. desktopMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(Z)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentUiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsLockTaskModeEnabledAndSecured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStandaloneModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTopTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 618
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v0, :cond_99

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWallpaperShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 621
    :cond_99
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getConfigurationState(Landroid/content/res/Configuration;)I
    .registers 8

    .line 272
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 274
    :goto_c
    iget v3, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v3, v1, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 276
    :goto_13
    iget-object v4, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    if-eqz v4, :cond_21

    iget v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 277
    invoke-virtual {v4}, Lcom/android/server/desktopmode/MultiResolutionManager;->getStandaloneModeDensity()I

    move-result v4

    if-ne v5, v4, :cond_21

    move v4, v1

    goto :goto_22

    :cond_21
    move v4, v2

    .line 278
    :goto_22
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    if-eqz p0, :cond_30

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 279
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->getStandaloneModeOriginalDensity(I)I

    move-result p0

    if-ne p1, p0, :cond_30

    move p0, v1

    goto :goto_31

    :cond_30
    move p0, v2

    :goto_31
    if-eqz v0, :cond_38

    if-eqz v3, :cond_38

    if-eqz v4, :cond_38

    return v1

    :cond_38
    if-nez v3, :cond_3d

    if-eqz p0, :cond_3d

    return v2

    :cond_3d
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentUiMode()I
    .registers 1

    .line 521
    iget p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    return p0
.end method

.method public final getDefaultHomePackageName(Landroid/app/role/RoleManager;)Ljava/lang/String;
    .registers 3

    .line 400
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    const-string v0, "android.app.role.HOME"

    .line 399
    invoke-virtual {p1, v0, p0}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 401
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p0, 0x0

    goto :goto_19

    :cond_12
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_19
    return-object p0
.end method

.method public getModeToModeChangeType()I
    .registers 1

    .line 608
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public final handleOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 12

    .line 219
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 221
    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_f1

    .line 222
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1a

    goto/16 :goto_f1

    .line 226
    :cond_1a
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_4b

    sget-object v2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleOnConfigurationChanged(), newConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", desktopModeDensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 227
    invoke-virtual {v4}, Lcom/android/server/desktopmode/MultiResolutionManager;->getStandaloneModeDensity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", desktopModeState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_57

    .line 232
    iget v4, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v4, v2, :cond_5d

    :cond_57
    if-nez p1, :cond_f1

    iget v4, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v4, v3, :cond_f1

    :cond_5d
    const/4 v4, 0x0

    if-ne p1, v3, :cond_62

    move v5, v3

    goto :goto_63

    :cond_62
    move v5, v4

    .line 235
    :goto_63
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_7e

    sget-object v6, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleOnConfigurationChanged(), enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v5, :cond_84

    move v8, v6

    goto :goto_85

    :cond_84
    move v8, v7

    :goto_85
    const/16 v9, 0x28

    .line 237
    invoke-virtual {p0, v8, v9}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 238
    iput-boolean v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-ne p1, v3, :cond_97

    .line 240
    iget p1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne p1, v2, :cond_97

    .line 241
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHomeStack(I)V

    .line 243
    :cond_97
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    .line 244
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHomeStack(I)V

    .line 246
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {p1, v5, v0}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZLcom/android/server/desktopmode/State;)V

    const-string p1, "Ongoing phone call!"

    if-eqz v5, :cond_c5

    .line 249
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->usingNativeInCallUi()Z

    move-result v0

    if-nez v0, :cond_e0

    .line 250
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_bf

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_bf
    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    goto :goto_e0

    .line 256
    :cond_c5
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 257
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_d6

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_d6
    iput-boolean v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 259
    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 261
    :cond_dd
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->clearSettingsBadgeCount()V

    .line 264
    :cond_e0
    :goto_e0
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, v5}, Lcom/android/server/desktopmode/IStateManager;->notifyOnConfigurationChanged(Z)V

    if-eqz v5, :cond_e8

    goto :goto_e9

    :cond_e8
    move v6, v7

    :goto_e9
    const/16 p1, 0x32

    .line 266
    invoke-virtual {p0, v6, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStopLoadingScreenIfPossible()V

    :cond_f1
    :goto_f1
    return-void
.end method

.method public final handleStartLoadingScreen(ZI)V
    .registers 7

    const-wide/32 v0, 0x80000

    const-string/jumbo v2, "loading screen"

    const/4 v3, 0x0

    .line 427
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_24

    .line 430
    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading screen shown by in-call UI timeout enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 432
    :cond_24
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting loading screen... enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    new-instance v1, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_9c

    if-nez p2, :cond_64

    if-eqz p1, :cond_59

    const/4 p2, 0x3

    goto :goto_5a

    :cond_59
    const/4 p2, 0x1

    :goto_5a
    const/16 v0, 0x14

    .line 438
    invoke-virtual {p0, p2, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 439
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyStartLoadingScreen(Z)V

    .line 443
    :cond_64
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p2, :cond_76

    invoke-virtual {p2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->showModeChangeScreen()Z

    move-result p2

    if-eqz p2, :cond_76

    if-eqz p1, :cond_73

    const/16 p2, 0x74

    goto :goto_7d

    :cond_73
    const/16 p2, 0x75

    goto :goto_7d

    :cond_76
    if-eqz p1, :cond_7b

    const/16 p2, 0x71

    goto :goto_7d

    :cond_7b
    const/16 p2, 0x72

    .line 448
    :goto_7d
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x64

    new-instance v2, Lcom/android/server/desktopmode/StandaloneModeChanger$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$2;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 458
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowManagerInternal;->launchHomeForDesktopMode(I)V

    if-eqz p1, :cond_b3

    .line 460
    new-instance p1, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver-IA;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    .line 461
    invoke-static {p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->-$$Nest$mregister(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V

    goto :goto_b3

    .line 464
    :cond_9c
    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "handleStartLoadingScreen(), Binding DesktopUiService... enter="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    return-void
.end method

.method public final handleStopLoadingScreen(ZI)V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3c

    .line 552
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_1f

    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading screen dismissed by timeout enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const-string p2, "com.sec.android.app.desktoplauncher"

    .line 555
    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/desktopmode/ModeChanger;->hasPackageTask(ILjava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_56

    .line 557
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_32

    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string v2, "DeX Home task does not exist"

    invoke-static {p2, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_32
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    goto :goto_56

    .line 561
    :cond_3c
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_56

    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping loading screen... enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_56
    :goto_56
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p2, :cond_5d

    .line 565
    invoke-virtual {p2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 568
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->verifyCurrentState()Z

    move-result p2

    if-nez p2, :cond_64

    return-void

    :cond_64
    if-eqz p1, :cond_67

    const/4 v0, 0x4

    .line 571
    :cond_67
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 573
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    const/4 v0, 0x1

    if-eqz p2, :cond_75

    .line 574
    invoke-virtual {p2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result p2

    if-ne p2, v0, :cond_7f

    .line 575
    :cond_75
    iget p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    if-eqz p1, :cond_7b

    const/4 v2, 0x5

    goto :goto_7c

    :cond_7b
    move v2, v0

    :goto_7c
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/desktopmode/ModeChanger;->bringTaskToForeground(III)V

    .line 581
    :cond_7f
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p2, :cond_91

    invoke-virtual {p2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->showModeChangeScreen()Z

    move-result p2

    if-eqz p2, :cond_91

    if-eqz p1, :cond_8e

    const/16 p2, 0x74

    goto :goto_98

    :cond_8e
    const/16 p2, 0x75

    goto :goto_98

    :cond_91
    if-eqz p1, :cond_96

    const/16 p2, 0x71

    goto :goto_98

    :cond_96
    const/16 p2, 0x72

    .line 586
    :goto_98
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, p2}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 587
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyStopLoadingScreen(Z)V

    .line 588
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setModeChangeLock(Z)V

    if-nez p1, :cond_bf

    .line 591
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    if-eqz p2, :cond_b4

    .line 592
    invoke-static {p2}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->-$$Nest$munregister(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V

    const/4 p2, 0x0

    .line 593
    iput-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    goto :goto_bc

    .line 595
    :cond_b4
    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mReceiver is null!"

    invoke-static {p2, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_bc
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->forceKillProcessWhenExit()V

    .line 601
    :cond_bf
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    xor-int/2addr p1, v0

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyScheduleUpdateDesktopMode(Z)V

    .line 602
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const p2, 0x1040430

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const v0, 0x104042f

    .line 603
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 602
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/ModeChanger;->showDexMirroringTipsNotification(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p0, 0x80000

    const-string/jumbo p2, "loading screen"

    .line 604
    invoke-static {p0, p1, p2, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 210
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged(), config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1b
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 212
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_3d

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3d

    .line 214
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    return-void
.end method

.method public final scheduleStartLoadingScreen(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(ZI)V

    return-void
.end method

.method public final scheduleStartLoadingScreen(ZI)V
    .registers 4

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(ZII)V

    return-void
.end method

.method public final scheduleStartLoadingScreen(ZII)V
    .registers 8

    .line 413
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_23
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 418
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    int-to-long v1, p3

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 420
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 422
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 421
    invoke-virtual {p2, p3, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 423
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x3a98

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleStopLoadingScreenIfPossible()V
    .registers 6

    .line 525
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 526
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_71

    sget-object v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleStopLoadingScreenIfPossible()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", mWallpaperShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    :cond_33
    const-string v3, ""

    :goto_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", desktopModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mStandaloneModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", internal overlay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v4, 0x66

    .line 530
    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", external overlay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v4, 0x67

    .line 532
    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_71
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v1, :cond_79

    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    if-eqz v1, :cond_be

    :cond_79
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_be

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x71

    const/16 v2, 0x65

    .line 536
    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(II)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-nez v0, :cond_b1

    :cond_8f
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x72

    .line 538
    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(II)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-eqz v0, :cond_b1

    :cond_9d
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x75

    .line 540
    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(II)Z

    move-result v0

    if-nez v0, :cond_b1

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x74

    .line 542
    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(II)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 544
    :cond_b1
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_be
    return-void
.end method

.method public final setCustomConfigurations(Z)V
    .registers 3

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setDesktopMode(Z)V

    .line 511
    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p1, 0x20

    goto :goto_12

    :cond_10
    const/16 p1, 0x10

    .line 513
    :goto_12
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    .line 515
    sget-object p1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set custom configurations"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .registers 7

    .line 340
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), desktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-eqz p2, :cond_20

    .line 342
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->cancelKillProcessWhenExit()V

    :cond_20
    const/4 v0, 0x1

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setModeChangeLock(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_2a

    const/16 v2, 0x65

    goto :goto_2b

    :cond_2a
    move v2, v1

    .line 345
    :goto_2b
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/ModeChanger;->saveDisplayType(I)V

    .line 346
    iput-object p3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p3, :cond_3f

    .line 349
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v2

    if-ne v2, v0, :cond_3f

    .line 350
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getTopTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    goto :goto_4c

    .line 352
    :cond_3f
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    if-eqz p3, :cond_4c

    .line 354
    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->setTopTaskId(I)V

    .line 358
    :cond_4c
    :goto_4c
    new-instance v0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->storeDefaultHomePackageName(ZLjava/util/function/Consumer;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_5b

    .line 366
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 369
    :cond_5b
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifySetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    return-object p3
.end method

.method public final setDesktopModeInternal(Z)V
    .registers 9

    .line 474
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v3

    :goto_11
    const/16 v5, 0x14

    const/16 v6, 0x65

    .line 477
    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v1

    if-nez v1, :cond_1c

    return-void

    .line 482
    :cond_1c
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_37

    sget-object v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDesktopModeInternal(), enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_37
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    new-array v1, v3, [I

    const/4 v4, 0x0

    aput v4, v1, v4

    .line 486
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/ModeChanger;->dismissDialog([I)V

    .line 487
    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->cancelToasts()V

    if-eqz p1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v2, v3

    :goto_4b
    const/16 v1, 0x1e

    .line 489
    invoke-virtual {p0, v2, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 492
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/ModeChanger;->backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/State;)V

    if-eqz p1, :cond_62

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/ModeChanger;->switchKnoxToFolderMode(Lcom/android/server/desktopmode/State;)V

    .line 496
    :try_start_58
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopSystemLockTaskMode()V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception v0

    .line 498
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 502
    :cond_62
    :goto_62
    iput-boolean v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setCustomConfigurations(Z)V

    .line 504
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifySetDesktopModeInternal(Z)V

    return-void
.end method

.method public setDesktopModeState(II)V
    .registers 5

    .line 169
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    if-nez p2, :cond_9

    const/4 v1, 0x0

    goto :goto_b

    :cond_9
    const/16 v1, 0x65

    .line 171
    :goto_b
    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>(III)V

    .line 172
    sget-object p1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDesktopModeState(), newState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 174
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, v0}, Lcom/android/server/desktopmode/IStateManager;->setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 175
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_3f
    return-void
.end method

.method public final setModeChangeLock(Z)V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setModeChangeLocked(Z)V

    .line 470
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->setChangingStandaloneMode(Z)V

    return-void
.end method

.method public startHome(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 292
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startHome()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 297
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 298
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final storeDefaultHomePackageName(ZLjava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    const-string v8, "default_home_package"

    if-eqz p1, :cond_2d

    const/4 v4, 0x0

    .line 379
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    const-string v2, "android.app.role.HOME"

    const-string v3, "com.sec.android.app.desktoplauncher"

    move-object v1, v0

    move-object v7, p2

    .line 377
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 380
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getDefaultHomePackageName(Landroid/app/role/RoleManager;)Ljava/lang/String;

    move-result-object p0

    .line 380
    invoke-static {p1, v8, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 384
    :cond_2d
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {p1, v8, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4e

    const/4 v4, 0x0

    .line 388
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    const-string v2, "android.app.role.HOME"

    move-object v1, v0

    move-object v7, p2

    .line 387
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 389
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v8}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_5b

    .line 392
    :cond_4e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 393
    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "storeDefaultHomePackageName(), packageName is null"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    return-void
.end method

.method public final usingNativeInCallUi()Z
    .registers 6

    .line 180
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "skt_phone20_settings"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_25

    .line 183
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_24

    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "usingNativeInCallUi()=false, using T Phone"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v2

    .line 187
    :cond_25
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    const-string v1, "com.samsung.android.contacts"

    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.telecom.InCallService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v4, 0x20000

    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 194
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_4c

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 197
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_70

    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "usingNativeInCallUi()=false"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return v2

    .line 203
    :cond_71
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_7d

    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "usingNativeInCallUi()=true"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v3
.end method

.method public final verifyCurrentState()Z
    .registers 9

    .line 302
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_20

    .line 305
    iget-boolean v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-eqz v5, :cond_33

    :cond_20
    if-nez v2, :cond_26

    iget-boolean v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-nez v5, :cond_33

    :cond_26
    const/4 v5, -0x1

    if-eq v2, v5, :cond_33

    iget v5, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v5, v3, :cond_2f

    if-eqz v2, :cond_33

    :cond_2f
    if-ne v5, v4, :cond_9e

    if-ne v2, v4, :cond_9e

    .line 310
    :cond_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCurrentState(), Something is wrong! config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mStandaloneModeEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", desktopModeDensity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 313
    invoke-virtual {v6}, Lcom/android/server/desktopmode/MultiResolutionManager;->getStandaloneModeDensity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", desktopModeState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_70

    iget-object v6, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const/16 v7, 0x3e8

    invoke-static {v6, v5, v7}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 316
    :cond_70
    sget-object v6, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v7, 0x0

    if-ne v1, v3, :cond_7c

    if-eq v2, v4, :cond_80

    :cond_7c
    if-ne v1, v4, :cond_95

    if-nez v2, :cond_95

    :cond_80
    const-string v1, "Configuration is changed correctly, but was too late. Calling onConfigurationChanged() directly..."

    .line 320
    invoke-static {v6, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 323
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v7

    .line 328
    :cond_95
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-nez v0, :cond_9f

    .line 331
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v7}, Lcom/android/server/desktopmode/IStateManager;->notifyScheduleUpdateDesktopMode(Z)V

    :cond_9e
    return v4

    .line 329
    :cond_9f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
