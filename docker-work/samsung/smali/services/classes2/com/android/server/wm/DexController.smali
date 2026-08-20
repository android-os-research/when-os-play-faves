.class public Lcom/android/server/wm/DexController;
.super Ljava/lang/Object;
.source "DexController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DexController$DexMetaDataInfo;,
        Lcom/android/server/wm/DexController$Utils;,
        Lcom/android/server/wm/DexController$H;,
        Lcom/android/server/wm/DexController$FindTaskResult;,
        Lcom/android/server/wm/DexController$PendingActivityInfo;,
        Lcom/android/server/wm/DexController$DexMode;
    }
.end annotation


# static fields
.field public static final CONFIG_CHANGES:I = 0x1c80

.field public static final DEFAULT_ALLOW_HOME_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEX_DEFAULT_TASK_HEIGHT:I = 0x2d0

.field public static final DEX_DEFAULT_TASK_WIDTH:I = 0x3c0

.field public static final DEX_MODE_DUAL:I = 0x2

.field public static final DEX_MODE_NONE:I = 0x0

.field public static final DEX_MODE_STANDALONE:I = 0x1

.field public static final DEX_POLICY_COMPATIBILITY:I = 0x1

.field public static final DEX_POLICY_GAME:I = 0x8

.field public static final DEX_POLICY_NOT_SUPPORTED_HOME:I = 0x4

.field public static final DEX_POLICY_NOT_SUPPORTED_LISTED:I = 0x2

.field public static final DEX_POLICY_UNDEFINED:I = 0x0

.field public static final KILL_PROCESS_REASON_DEX_DISPLAY_DISABLED:Ljava/lang/String; = "proc_dex_display_disabled"

.field public static final KILL_PROCESS_REASON_DEX_DISPLAY_ENABLED:Ljava/lang/String; = "proc_dex_display_enabled"

.field public static final KILL_PROCESS_REASON_DISPLAY_CHANGED:Ljava/lang/String; = "proc_display_changed"

.field public static final LAUNCH_POLICY_DECLARED_NOT_SUPPORTED_METADATA:Ljava/lang/String; = "com.samsung.android.dex.launchpolicy.notsupported"

.field public static final SAFE_DEBUG:Z

.field public static final SETTING_DEX_ON_PC_STATE_DISABLED:I = 0x0

.field public static final SETTING_DEX_ON_PC_STATE_ENABLED:I = 0x3

.field public static final TAG:Ljava/lang/String; = "DexController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCheckDexPrimayProcess:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field public final mCheckDexProcess:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field public mDeactivateDexSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field public mDexDisplay:Landroid/hardware/display/VirtualDisplay;

.field public mDexDisplayActivated:Z

.field public final mDexDisplaySize:Landroid/graphics/Point;

.field public mDexFontScale:F

.field public mDexImeWindowVisibleInDefaultDisplay:Z

.field public final mDexInterceptor:Lcom/android/server/wm/DexActivityStartInterceptor;

.field public mDexMetaKeyPolicy:Lcom/android/server/wm/DexMetaKeyPolicy;

.field public mDexOnPcState:I

.field public final mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/IDexSnappingCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mDexStandaloneRotationEnabled:Z

.field public mDexStarShowingDelayTime:I

.field public mDexTouchPadEnabled:Z

.field public final mDisplayContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayFreeformMaxCount:I

.field public mGlobalFontScaleForRestore:F

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/DexController$H;

.field public mIsDexDeveloperMode:Z

.field public mIsDexForceImmersiveModeEnabled:Z

.field public mIsInDexForceImmersiveMode:Z

.field public mLastDexMode:I

.field public mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

.field public mLastReportedDexDisplayState:Z

.field public final mMinimizedToggleTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

.field public mRequestedDexDisplayEnabled:Z

.field public final mSCPMLaunchBlockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSourceDisplayId:I

.field public mStartFromRecentInfo:Z

.field public mTargetDisplayId:I

.field public mUpdatedFontScaleForDexDual:Z

.field public final mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$09cgHQiv-WpB2siAw5tIuTYUbpo(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DexController;->lambda$moveTaskToDisplayBackLocked$9(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1XlQ66FcdrinUx_TfHF0cDeSVAU(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DexController;->lambda$new$8(Lcom/android/server/wm/WindowProcessController;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4EOwtpQThCiZlDOc4_n-309qg4o(Lcom/android/server/wm/DexController;Lcom/android/server/wm/WindowProcessController;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DexController;->lambda$new$7(Lcom/android/server/wm/WindowProcessController;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5DAKaIdyRFvpxOARPqX0Pyv7klY(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DexController;->lambda$setSkipToFinishActivityByProcessKillLocked$3(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7lwZj0Ws0VpkYQZPEfw13ezso3g(Lcom/android/server/wm/DexController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DexController;->lambda$updateForceImmersiveModeState$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$BnI76439dg3aOXKXI4Kg0re_eCY(Lcom/android/server/wm/DexController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DexController;->lambda$updateDexModeIfNeededLocked$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$BwTgxaRF2C5RQWqlISLHCYEmiY8(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DexController;->lambda$getTaskLocked$10(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IAqR3InsiBS9d4T6cQQhtDx9Faw(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DexController;->lambda$getTaskLocked$12(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IQy_Ws9JmiM1NH5ybfvZMN4E0sk(Lcom/android/server/wm/DexController;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DexController;->lambda$moveTasksToFreeformLocked$18(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mg3Zi-sE9xle6SvNnZ2zlVYzSIA(Lcom/android/server/wm/DexController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DexController;->lambda$updateForceImmersiveModeSetting$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$PwY6Z9tiYWm8QOwAQW6g4ol9Ojo(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DexController;->lambda$getTaskLocked$11(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QkFoHKCbgVO-2eZ8GiOswWX1dW8(Lcom/android/server/wm/DexController;Ljava/lang/String;ILandroid/util/SparseArray;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DexController;->lambda$collectShouldKillProcess$4(Ljava/lang/String;ILandroid/util/SparseArray;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tptwr1-I6-IysRhJRytRVrxPM6A(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DexController;->lambda$showWarningToastIfNeeded$13(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vty1SjKfvaWzdovGRUVZy9izDCE(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DexController;->lambda$getTaskHasActivityIsWaitingToRun$2(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bHt9CGvobWzRnlJY6u1p-OGInbk(Lcom/android/server/wm/DexController;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DexController;->lambda$changeAllRootTasksToFullscreenLocked$16(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cYfbhkztM-bk3kNwmhQ4vE9T190(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DexController;->lambda$isStoppedLocked$6(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tRku6wREBRvEYWSNWqput88B2EA(Lcom/android/server/wm/DexController;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DexController;->lambda$moveTasksToDisplayIfNeededLocked$15(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uz_X7NcVGMCtP5Sst2s2ZdXcLCo(Lcom/android/server/wm/DexController;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DexController;->lambda$preventFinishFullscreenActivity$17(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w1P0d6oxHJjMVjFAbU6PrdVpgKU(Lcom/android/server/wm/DexController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DexController;->lambda$updateDexStandaloneRotationEnabled$19(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wh60R6RwGFzKbzn4C6c-Rnt__xs(Lcom/android/server/wm/DexController;Lcom/android/server/wm/WindowProcessController;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DexController;->lambda$KillProcessAndWaitDisposed$5(Lcom/android/server/wm/WindowProcessController;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckDexPrimayProcess(Lcom/android/server/wm/DexController;)Lcom/android/internal/util/ToBooleanFunction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mCheckDexPrimayProcess:Lcom/android/internal/util/ToBooleanFunction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckDexProcess(Lcom/android/server/wm/DexController;)Lcom/android/internal/util/ToBooleanFunction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mCheckDexProcess:Lcom/android/internal/util/ToBooleanFunction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDexSnappingCallbacks(Lcom/android/server/wm/DexController;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingActivityInfo(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/DexController$PendingActivityInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mKillProcessAndStartActivity(Lcom/android/server/wm/DexController;Lcom/android/server/wm/DexRestartAppInfo;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DexController;->KillProcessAndStartActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mkillAllProcessIfNeeded(Lcom/android/server/wm/DexController;Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DexController;->killAllProcessIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmoveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexController;Lcom/android/server/wm/DexRestartAppInfo;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DexController;->moveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreparentToDisplayAndStartPendingActivity(Lcom/android/server/wm/DexController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->reparentToDisplayAndStartPendingActivity()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetSAFE_DEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 7

    .line 122
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    const-string v1, "TP+fe8M5uStQvlunzY6n5uiGTr6ReHrxNWA2QXUmsbo="

    const-string v2, "9jgH8FMKl5YrmkLKzhPt0BPyunVOn5QZd4RXlHG+m3U="

    const-string v3, "ntxM9ozBwRd3xqwAhxYRewH46bxRXjgtRewzTdBekgc="

    const-string v4, "5LmLdKeONhZxMkwo4Z8PX72qMPwRt7aEqQGAXXrBEYk="

    const-string v5, "SPlqtyOkQMcV+iLM67vecvg2Or3jcHS+/2TBTCIcX6Q="

    const-string v6, "5oo37SkHJlg9Fi08Q6gJjx2yE6xywWNxwerw09xkRcI="

    .line 159
    invoke-static/range {v1 .. v6}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/DexController;->DEFAULT_ALLOW_HOME_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 6

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mSCPMLaunchBlockList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 191
    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mLastReportedDexDisplayState:Z

    const/4 v1, 0x0

    .line 194
    iput-object v1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 195
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DexController;->mDisplayContexts:Landroid/util/SparseArray;

    .line 196
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    .line 200
    new-instance v2, Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DexController$PendingActivityInfo;-><init>(Lcom/android/server/wm/DexController;)V

    iput-object v2, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 208
    iput v0, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    const/4 v2, -0x1

    .line 209
    iput v2, p0, Lcom/android/server/wm/DexController;->mSourceDisplayId:I

    .line 210
    iput v2, p0, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    .line 214
    iput-object v1, p0, Lcom/android/server/wm/DexController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    .line 215
    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 219
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    .line 230
    iput v2, p0, Lcom/android/server/wm/DexController;->mDexStarShowingDelayTime:I

    .line 234
    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mIsDexDeveloperMode:Z

    .line 238
    iput-object v1, p0, Lcom/android/server/wm/DexController;->mDexMetaKeyPolicy:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 244
    iput v0, p0, Lcom/android/server/wm/DexController;->mDexOnPcState:I

    .line 248
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    .line 261
    iput v0, p0, Lcom/android/server/wm/DexController;->mDisplayFreeformMaxCount:I

    .line 1383
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/DexController;)V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mCheckDexPrimayProcess:Lcom/android/internal/util/ToBooleanFunction;

    .line 1394
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mCheckDexProcess:Lcom/android/internal/util/ToBooleanFunction;

    .line 1498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    .line 265
    iput-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 266
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 267
    new-instance v0, Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DexActivityStartInterceptor;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mDexInterceptor:Lcom/android/server/wm/DexActivityStartInterceptor;

    return-void
.end method

.method public static isDefaultOrDexDisplay(I)Z
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    const/4 p0, 0x1

    return p0
.end method

.method public static isDisplayFocusChangeExcludeWindow(I)Z
    .registers 2

    const/16 v0, 0x7db

    if-eq p0, v0, :cond_e

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_e

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static isPrimaryDefaultDisplay(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "default"

    .line 1688
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPrimaryDesktopDisplay(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "desktop"

    .line 1692
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$KillProcessAndWaitDisposed$5(Lcom/android/server/wm/WindowProcessController;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1278
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;IZ)Z

    return-void
.end method

.method private synthetic lambda$changeAllRootTasksToFullscreenLocked$16(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 2365
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 2369
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    .line 2370
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 2371
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2372
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    if-nez p0, :cond_26

    if-eqz v0, :cond_71

    .line 2374
    :cond_26
    sget-boolean p0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    const-string v0, "DexController"

    if-eqz p0, :cond_4c

    .line 2375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAllRootTasksToFullscreenLocked: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", overrideConfig=="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2375
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_4c
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 2379
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

    move-result p0

    if-eqz p0, :cond_71

    .line 2380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAllRootTasksToFullscreenLocked: resize to full, isResizeable:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2380
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 2382
    invoke-virtual {p1, p0, v2, v2}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    :cond_71
    return-void
.end method

.method private synthetic lambda$collectShouldKillProcess$4(Ljava/lang/String;ILandroid/util/SparseArray;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 1258
    iget-object v0, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1f

    iget-object v0, p4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1259
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DexController;->shouldKillProcess(Lcom/android/server/wm/WindowProcessController;I)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 1260
    iget-object p0, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p3, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public static synthetic lambda$getTaskHasActivityIsWaitingToRun$2(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 9

    const/4 v0, 0x0

    .line 817
    invoke-virtual {p2, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 818
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ", app="

    const-string v3, "DexController"

    if-eqz v0, :cond_43

    .line 819
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v4, :cond_43

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_43

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 821
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 822
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getTaskHasActivityIsWaitingToRun: r="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 825
    :cond_43
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz v0, :cond_90

    .line 826
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_90

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 827
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_90

    if-eqz p2, :cond_90

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_90

    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v4, :cond_90

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 828
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 830
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTaskHasActivityIsWaitingToRun: root="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_90
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$getTaskLocked$10(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 1599
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1600
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public static synthetic lambda$getTaskLocked$11(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1607
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static synthetic lambda$getTaskLocked$12(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1618
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static synthetic lambda$isStoppedLocked$6(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 1332
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$moveTaskToDisplayBackLocked$9(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1558
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode(ZZ)V

    return-void
.end method

.method private synthetic lambda$moveTasksToDisplayIfNeededLocked$15(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 9

    .line 2347
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_33

    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_11

    goto :goto_33

    .line 2351
    :cond_11
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2352
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 2353
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    :cond_33
    :goto_33
    return-void
.end method

.method private synthetic lambda$moveTasksToFreeformLocked$18(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 11

    .line 2410
    sget-boolean p1, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    const-string v0, "DexController"

    if-eqz p1, :cond_32

    .line 2411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTasksToFreeformLocked: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTasksToFreeformLocked: prev overrideConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2413
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2412
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_32
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_aa

    .line 2417
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 2418
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_aa

    .line 2423
    :cond_45
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexController;->isExcludedTaskOrNonRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 2432
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v7

    const/4 v1, 0x5

    .line 2433
    invoke-virtual {v7, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2437
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2443
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p0

    if-eq p0, v1, :cond_6b

    .line 2444
    invoke-virtual {p2, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :cond_6b
    if-eqz p1, :cond_c0

    .line 2450
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "moveTasksToFreeformLocked: new overrideConfig="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2450
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :cond_86
    if-eqz p1, :cond_9c

    .line 2427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTasksToFreeformLocked: remove task="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_9c
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const-string v1, "moveTasksToFreeformLocked"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    goto :goto_c0

    :cond_aa
    :goto_aa
    if-eqz p1, :cond_c0

    .line 2420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "moveTasksToFreeformLocked: skip move task="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    :goto_c0
    return-void
.end method

.method private synthetic lambda$new$7(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 3

    .line 1384
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPrimaryDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/DexController;->isPrimaryDesktopDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    .line 1385
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DexController;->shouldKillProcess(Lcom/android/server/wm/WindowProcessController;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 1386
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_2b

    .line 1387
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCheckDexPrimayProcess: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexController"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$new$8(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 4

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->allActivitiesStoppedAndInvisibleLocked()Z

    move-result v0

    .line 1398
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_3b

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "killAllProcessInDexDisplayLocked: allStoppedAndInvisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DexController"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return v0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$preventFinishFullscreenActivity$17(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 2393
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 2396
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-eqz p0, :cond_e

    return-void

    .line 2399
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    return-void
.end method

.method public static synthetic lambda$setSkipToFinishActivityByProcessKillLocked$3(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 985
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->skipToFinishActivities()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 988
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->setSkipToFinishActivities(Z)V

    :cond_11
    :goto_11
    return-void
.end method

.method public static synthetic lambda$showWarningToastIfNeeded$13(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1832
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$updateDexModeIfNeededLocked$14()V
    .registers 1

    .line 2246
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->readAllSettings()V

    return-void
.end method

.method private synthetic lambda$updateDexStandaloneRotationEnabled$19(Z)V
    .registers 3

    .line 2769
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2770
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mDexStandaloneRotationEnabled:Z

    .line 2771
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_f
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$updateForceImmersiveModeSetting$0()V
    .registers 5

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 420
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    .line 422
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_28

    :cond_1d
    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 424
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :cond_28
    :goto_28
    if-eqz v1, :cond_2d

    .line 427
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 429
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$updateForceImmersiveModeState$1()V
    .registers 5

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 442
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_10

    move v2, v3

    goto :goto_14

    :cond_10
    const/4 v3, 0x1

    if-ne v1, v3, :cond_14

    const/4 v2, 0x0

    .line 449
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 451
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 452
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 454
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static parseDexMetadata(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/DexController$DexMetaDataInfo;
    .registers 7

    .line 2653
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    move-object v0, v1

    .line 2654
    :goto_7
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_f

    :cond_e
    move-object p0, v1

    :goto_f
    if-nez v0, :cond_14

    if-nez p0, :cond_14

    return-object v1

    :cond_14
    const-string v2, "com.samsung.android.dex.launchheight"

    const-string v3, "com.samsung.android.dex.launchwidth"

    if-eqz v0, :cond_2f

    .line 2663
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 2664
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 2665
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2666
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4b

    :cond_2f
    if-eqz p0, :cond_49

    .line 2668
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 2669
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 2670
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2671
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_4b

    :cond_49
    move-object p0, v1

    move-object v0, p0

    :goto_4b
    if-eqz p0, :cond_7e

    if-eqz v0, :cond_7e

    .line 2678
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_5e

    .line 2679
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_66

    .line 2680
    :cond_5e
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_65

    .line 2681
    check-cast p0, Ljava/lang/String;

    goto :goto_66

    :cond_65
    move-object p0, v1

    .line 2683
    :goto_66
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_75

    .line 2684
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    .line 2685
    :cond_75
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_7c

    .line 2686
    check-cast v0, Ljava/lang/String;

    goto :goto_80

    :cond_7c
    move-object v0, v1

    goto :goto_80

    :cond_7e
    move-object p0, v1

    move-object v0, p0

    :goto_80
    if-eqz p0, :cond_89

    if-eqz v0, :cond_89

    .line 2690
    new-instance v1, Lcom/android/server/wm/DexController$DexMetaDataInfo;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DexController$DexMetaDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    return-object v1
.end method


# virtual methods
.method public final KillProcessAndStartActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V
    .registers 8

    if-nez p1, :cond_a

    const-string p0, "DexController"

    const-string p1, "DisplayChooserInfo is null. Abort to start pending activity"

    .line 1022
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1025
    :cond_a
    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "DexController"

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KILL_PROCESS_AND_START_ACTIVITY for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1031
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/DexRestartAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/DexRestartAppInfo;->getUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1032
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController$PendingActivityInfo;->reset()V

    .line 1034
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/DexRestartAppInfo;->getMovingTaskLocked(Lcom/android/server/wm/DexController;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1035
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget v4, p1, Lcom/android/server/wm/DexRestartAppInfo;->mPreferredDisplayId:I

    invoke-virtual {v3, p1, v2, v4}, Lcom/android/server/wm/DexController$PendingActivityInfo;->set(Lcom/android/server/wm/DexRestartAppInfo;Ljava/util/ArrayList;I)V

    const-string v2, "KillProcessAndStartActivity"

    .line 1036
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DexController;->performMovingTasksBeforeKillProcessLocked(Lcom/android/server/wm/DexRestartAppInfo;Ljava/lang/String;)V

    .line 1037
    iget-object v2, p1, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/DexRestartAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/wm/DexController;->collectShouldKillProcess(Lcom/android/server/wm/Task;Ljava/lang/String;I)Landroid/util/SparseArray;

    move-result-object v2

    .line 1038
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_27 .. :try_end_58} :catchall_96

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    if-eqz v1, :cond_61

    .line 1042
    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;IZ)Z

    .line 1044
    :cond_61
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 1045
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_6d
    if-ltz v1, :cond_7b

    .line 1046
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v3, p2, v0}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;IZ)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_6d

    .line 1050
    :cond_7b
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_7e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1054
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController$PendingActivityInfo;->reset()V

    .line 1055
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/DexRestartAppInfo;->startResult(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 1056
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_90

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_90
    move-exception p0

    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_96
    move-exception p0

    .line 1038
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public KillProcessAndWaitDisposed(Lcom/android/server/wm/DexRestartAppInfo;I)V
    .registers 7

    if-nez p1, :cond_a

    const-string p0, "DexController"

    const-string p1, "DisplayChooserInfo is null. Abort to kill and wait disposed"

    .line 1269
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1272
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/DexRestartAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/DexRestartAppInfo;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1274
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->reset()V

    .line 1276
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/DexRestartAppInfo;->getMovingTaskLocked(Lcom/android/server/wm/DexController;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1277
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget v3, p1, Lcom/android/server/wm/DexRestartAppInfo;->mPreferredDisplayId:I

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/server/wm/DexController$PendingActivityInfo;->set(Lcom/android/server/wm/DexRestartAppInfo;Ljava/util/ArrayList;I)V

    .line 1278
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    new-instance v1, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/WindowProcessController;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_34
    return-void
.end method

.method public activateDexDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 569
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    return-void

    .line 573
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activateDexDisplayLocked: currentDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexDisplayStateLocked()I

    move-result v1

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestedDexDisplayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 576
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, ""

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    .line 573
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    if-eqz v0, :cond_68

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->updateDexDisplayStateLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 579
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked()Z

    .line 580
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->notifyDexDisplayStateLocked(Z)V

    .line 581
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    :cond_68
    return-void
.end method

.method public activityStopped(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    .line 1337
    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "DexController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityStoppedLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, 0x0

    .line 1339
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1340
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_67

    .line 1341
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 1342
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DexController;->isStoppedLocked(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1343
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    const-string v5, "activityStopped"

    invoke-virtual {v4, v2, v5}, Lcom/android/server/wm/DexController$PendingActivityInfo;->removeWaitingStoppedTask(Lcom/android/server/wm/Task;Ljava/lang/String;)Z

    .line 1345
    :cond_3d
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v4}, Lcom/android/server/wm/DexController$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v4

    if-eqz v4, :cond_67

    iget-object v4, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 1346
    invoke-virtual {v4}, Lcom/android/server/wm/DexController$PendingActivityInfo;->isTransitionFinished()Z

    move-result v4

    if-eqz v4, :cond_67

    if-eqz v2, :cond_5c

    .line 1347
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v4}, Lcom/android/server/wm/DexController$PendingActivityInfo;->hasEmbeddedChild()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1348
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    goto :goto_67

    :cond_5c
    const-string v2, "DexController"

    const-string/jumbo v4, "reparentToDisplayAndStartPendingActivity from activityStopped"

    .line 1350
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DexController;->scheduleReparentToDisplayAndStartPendingActivity(Z)V

    .line 1356
    :cond_67
    :goto_67
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_7c

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getDisplayId()I

    move-result v2

    if-ne v2, v4, :cond_7c

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1357
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v2

    if-nez v2, :cond_7c

    goto :goto_7d

    :cond_7c
    move v3, v5

    .line 1358
    :goto_7d
    iget-boolean v2, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    if-nez v2, :cond_8d

    if-eqz v3, :cond_8d

    .line 1359
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->allActivitiesStoppedAndInvisibleLocked()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 1360
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1363
    :cond_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_1e .. :try_end_8e} :catchall_a1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_a0

    const-string p1, "DexController"

    const-string v1, "killprocess from activityStopped"

    .line 1366
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "proc_dex_display_disabled"

    .line 1367
    invoke-virtual {p0, v0, v4, p1, v5}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;Z)Z

    :cond_a0
    return-void

    :catchall_a1
    move-exception p0

    .line 1363
    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public addToggleTaskLocked(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 2513
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2514
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public adjustConfigurationForDexIfNeeded(Landroid/content/res/Configuration;ILcom/android/server/wm/WindowProcessController;)V
    .registers 5

    .line 2106
    iget-object p3, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p3

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1a

    .line 2108
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2124
    :cond_1a
    monitor-exit p3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit p3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public adjustDexConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .registers 10

    .line 2129
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-nez v0, :cond_12

    const-string p0, "DexController"

    const-string p1, "adjustDexConfigurationLocked: Cannot found DesktopModeService"

    .line 2132
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2135
    :cond_12
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 2136
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2138
    iget v2, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_22

    move v2, v4

    goto :goto_23

    :cond_22
    move v2, v3

    .line 2142
    :goto_23
    iget-boolean v5, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_2f

    const/16 v1, 0x65

    .line 2143
    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->isDesktopModeForPreparing(I)Z

    move-result v1

    goto :goto_34

    :cond_2f
    if-ne v1, v6, :cond_33

    move v1, v4

    goto :goto_34

    :cond_33
    move v1, v3

    :goto_34
    if-eqz v1, :cond_52

    .line 2150
    iput v4, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 2151
    iget-boolean p2, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p2, :cond_3d

    goto :goto_3e

    :cond_3d
    move v4, v6

    .line 2152
    :goto_3e
    iput v4, p1, Landroid/content/res/Configuration;->dexMode:I

    .line 2153
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, -0x10

    or-int/2addr p0, v6

    .line 2154
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_71

    .line 2163
    :cond_52
    iput v3, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 2164
    iput v3, p1, Landroid/content/res/Configuration;->dexMode:I

    .line 2165
    iget-boolean p2, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p2, :cond_71

    if-eqz v2, :cond_71

    .line 2168
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getCurrentUiMode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6f

    .line 2170
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2172
    :cond_6f
    iput p2, p1, Landroid/content/res/Configuration;->uiMode:I

    :cond_71
    :goto_71
    return-void
.end method

.method public bringTaskToForeground(III)V
    .registers 12

    .line 2550
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    const-string v1, "DexController"

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bringTaskToForeground(), taskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetDisplayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetWindowingMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_71

    .line 2555
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_71

    .line 2558
    :cond_3b
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 2559
    invoke-virtual {v6, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 2560
    invoke-virtual {v6, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2562
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-nez p3, :cond_5f

    const-string p2, "bringTaskToForeground(): rootActivity is null."

    .line 2564
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    :try_start_50
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 2568
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5e
    return-void

    .line 2572
    :cond_5f
    iget-object v2, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 2573
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move v7, p2

    .line 2572
    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DexRestartAppInfo;->createStartActivityFromRecentsType(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/DexRestartAppInfo;

    move-result-object p1

    .line 2575
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DexController;->scheduleMoveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V

    :cond_71
    :goto_71
    return-void
.end method

.method public final changeAllRootTasksToFullscreenLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 2364
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DexController;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public collectShouldKillProcess(Lcom/android/server/wm/Task;Ljava/lang/String;I)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation

    .line 1255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    if-eqz p1, :cond_10

    .line 1257
    new-instance v1, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/DexController;Ljava/lang/String;ILandroid/util/SparseArray;)V

    const/4 p0, 0x1

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    :cond_10
    return-object v0
.end method

.method public final createDexDisplayLocked(III)Z
    .registers 11

    .line 508
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 515
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    const-string v2, "Desktop"

    invoke-direct {v1, v2, p1, p2, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    const/16 p1, 0x4c09

    .line 516
    invoke-virtual {v1, p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v3

    .line 517
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;Landroid/content/Context;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez p1, :cond_2e

    const-string p0, "DexController"

    const-string p1, "enableDexDisplay: Failed to create a display for DeX"

    .line 521
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 527
    :cond_2e
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->createDisplayContextIfNeededLocked(Landroid/view/Display;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final createDisplayContextIfNeededLocked(Landroid/view/Display;)V
    .registers 4

    .line 675
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    return-void

    .line 679
    :cond_8
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 680
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 682
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_35

    .line 684
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createDisplayContext: #"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexController"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void
.end method

.method public deactivateDexDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 591
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    return-void

    .line 595
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deactivateDexDisplayLocked: currentDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexDisplayStateLocked()I

    move-result v1

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestedDexDisplayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 598
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, ""

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    .line 595
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    if-nez v0, :cond_6b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->updateDexDisplayStateLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 610
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->notifyDexDisplayStateLocked(Z)V

    .line 613
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object p0

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskMotionController;->onDisplayConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_6b
    return-void
.end method

.method public disableDexDisplay()I
    .registers 6

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 533
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexDisplayStateLocked()I

    move-result v1

    .line 534
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->updateDexDisplayState(Z)I

    move-result v2

    .line 535
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DexController;->setRequestedDexDisplayEnabledLocked(Z)V

    .line 537
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_2b

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2b

    .line 546
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DexController;->deactivateDexDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 547
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 550
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_30
    move-exception p0

    .line 551
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public doPendingStartRecent()V
    .registers 2

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mStartFromRecentInfo:Z

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    const-string p0, "[DexController]"

    .line 2025
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public embeddedDisposed(Lcom/android/server/wm/TaskFragment;)V
    .registers 4

    .line 1373
    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "DexController"

    const-string v1, "embeddedDisposed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1375
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->embeddedDisposed(Lcom/android/server/wm/TaskFragment;)V

    .line 1376
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {p1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->hasEmbeddedChild()Z

    move-result p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 1377
    invoke-virtual {p1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    .line 1378
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->scheduleReparentToDisplayAndStartPendingActivity(Z)V

    .line 1380
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public enableDexDisplay(III)I
    .registers 10

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x1

    .line 484
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DexController;->setRequestedDexDisplayEnabledLocked(Z)V

    .line 485
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v2, :cond_1a

    .line 486
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DexController;->createDexDisplayLocked(III)Z

    move-result p1

    if-nez p1, :cond_43

    const/4 p0, -0x1

    .line 488
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 491
    :cond_1a
    :try_start_1a
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 492
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    .line 493
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 494
    iget-object v5, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 495
    invoke-virtual {v3, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 497
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne p1, v3, :cond_40

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne p2, v3, :cond_40

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-eq p3, v2, :cond_43

    .line 499
    :cond_40
    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/android/server/wm/DexController;->setDisplaySizeAndDensityLocked(Lcom/android/server/wm/DisplayContent;III)V

    .line 502
    :cond_43
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManagerInternal;->updateDexDisplayState(Z)I

    .line 503
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_1a .. :try_end_55} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_59
    move-exception p0

    .line 504
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public finishPendingStartRecent()V
    .registers 2

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mStartFromRecentInfo:Z

    return-void
.end method

.method public forceShowSystemBars()Z
    .registers 1

    .line 341
    iget-boolean p0, p0, Lcom/android/server/wm/DexController;->mDexImeWindowVisibleInDefaultDisplay:Z

    return p0
.end method

.method public final getCandidateImeTargetForDexLocked()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 346
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 347
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 349
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    .line 350
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 351
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDexDisplaySizeLocked()Landroid/graphics/Point;
    .registers 1

    .line 842
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getDexDisplayStateLocked()I
    .registers 1

    .line 555
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p0, :cond_d

    .line 556
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getDexFontScale()F
    .registers 1

    .line 2055
    iget p0, p0, Lcom/android/server/wm/DexController;->mDexFontScale:F

    return p0
.end method

.method public getDexMetaKeyPolicy()Lcom/android/server/wm/DexMetaKeyPolicy;
    .registers 1

    .line 2728
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexMetaKeyPolicy:Lcom/android/server/wm/DexMetaKeyPolicy;

    return-object p0
.end method

.method public getDexMetadataLaunchSizeLocked(Lcom/android/server/wm/DexController$DexMetaDataInfo;IZI)Landroid/graphics/Point;
    .registers 7

    const/4 p3, 0x0

    if-eqz p1, :cond_68

    .line 2697
    iget-object p4, p1, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mWidthValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    if-eqz p4, :cond_68

    iget-object v0, p1, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mHeightValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    if-nez v0, :cond_c

    goto :goto_68

    .line 2700
    :cond_c
    invoke-static {p4, v0}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->isFullscreen(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;)Z

    move-result p4

    if-eqz p4, :cond_19

    .line 2701
    new-instance p0, Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2703
    :cond_19
    iget-object p4, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p4, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-nez p2, :cond_24

    return-object p3

    .line 2707
    :cond_24
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 2708
    iget-object p3, p1, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mWidthValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    iget p4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/16 v1, 0x3c0

    invoke-static {p3, p4, v0, v1}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->getDimensionPixelSize(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;III)I

    move-result p3

    .line 2710
    iget-object p1, p1, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mHeightValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    iget p4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    const/16 v0, 0x2d0

    invoke-static {p1, p4, p0, v0}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->getDimensionPixelSize(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;III)I

    move-result p0

    .line 2712
    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 2713
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 2714
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    if-ge p4, p3, :cond_59

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    :cond_59
    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 2715
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-ge p3, p0, :cond_65

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    :cond_65
    iput p0, p2, Landroid/graphics/Point;->y:I

    return-object p2

    :cond_68
    :goto_68
    return-object p3
.end method

.method public getDexModeLocked()I
    .registers 2
    .annotation build Lcom/android/server/wm/DexController$DexMode;
    .end annotation

    .line 717
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 719
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    return v0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public getDexPolicyFlags(Landroid/content/pm/ApplicationInfo;)I
    .registers 3

    .line 1743
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->isNotSupportApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x2

    return p0

    .line 1746
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->isNotSupportHomeApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1749
    :goto_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->isGameApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_19

    or-int/lit8 v0, v0, 0x8

    :cond_19
    return v0
.end method

.method public getDexStarShowingDelayTime()I
    .registers 1

    .line 466
    iget p0, p0, Lcom/android/server/wm/DexController;->mDexStarShowingDelayTime:I

    return p0
.end method

.method public getDexTaskInfoFlagsLocked(Lcom/android/server/wm/Task;)I
    .registers 3

    .line 2473
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    .line 2476
    iget v0, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-eqz v0, :cond_e

    or-int/lit8 p0, p0, 0x4

    .line 2479
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p1

    if-eqz p1, :cond_16

    or-int/lit8 p0, p0, 0x2

    :cond_16
    return p0
.end method

.method public getDisplayContext(I)Landroid/content/Context;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 691
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    :cond_c
    return-object v0
.end method

.method public getDisplayFreeformMaxCount()I
    .registers 1

    .line 2795
    iget p0, p0, Lcom/android/server/wm/DexController;->mDisplayFreeformMaxCount:I

    return p0
.end method

.method public getDisplayIdFromPrimaryMetaDataLocked(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p1, :cond_16

    .line 1697
    invoke-static {p1}, Lcom/android/server/wm/DexController;->isPrimaryDefaultDisplay(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 p0, 0x0

    return p0

    .line 1699
    :cond_b
    invoke-static {p1}, Lcom/android/server/wm/DexController;->isPrimaryDesktopDisplay(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1700
    iget-boolean p0, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    if-eqz p0, :cond_16

    const/4 v0, 0x2

    :cond_16
    return v0
.end method

.method public getGlobalFontScale()F
    .registers 1

    .line 2047
    iget p0, p0, Lcom/android/server/wm/DexController;->mGlobalFontScaleForRestore:F

    return p0
.end method

.method public getInitProcessDisplayId(Lcom/android/server/wm/WindowProcessController;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public getNonStartableActivityInDexMode(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 1809
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    .line 1810
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1811
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DexController;->shouldAbortStartActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageProcesses(Lcom/android/server/wm/WindowProcessController;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowProcessController;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object p0

    .line 802
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_3b

    .line 803
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 804
    iget-object v3, p1, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 805
    iget-object v5, v2, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 806
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_3b
    return-object v0
.end method

.method public final getTaskHasActivityIsWaitingToRun(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/Task;
    .registers 4

    .line 815
    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 816
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DexController$FindTaskResult;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 1577
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DexController;->getTaskLocked(Ljava/lang/String;IZZI)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getTaskLocked(Ljava/lang/String;IZZI)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DexController$FindTaskResult;",
            ">;"
        }
    .end annotation

    .line 1582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DexController"

    if-nez p1, :cond_22

    .line 1585
    sget-boolean p0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz p0, :cond_21

    .line 1586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getTaskLocked: processName="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-object v0

    .line 1591
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_2c
    if-ltz v2, :cond_b8

    .line 1593
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1594
    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v5, p5, :cond_3e

    goto/16 :goto_b4

    .line 1597
    :cond_3e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    new-instance v6, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;

    invoke-direct {v6, v5}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 1603
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_50
    if-ltz v4, :cond_b4

    .line 1604
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    const/4 v7, 0x0

    if-eqz p4, :cond_79

    .line 1605
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTaskFragments()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_79

    .line 1606
    new-instance v8, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;

    invoke-direct {v8, p1, p2}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_79

    .line 1609
    new-instance p1, Lcom/android/server/wm/DexController$FindTaskResult;

    invoke-direct {p1, p0, v8, p5}, Lcom/android/server/wm/DexController$FindTaskResult;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/ActivityRecord;I)V

    .line 1610
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_79
    if-eqz p3, :cond_86

    .line 1614
    invoke-virtual {v6, v7, v3}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v8

    if-nez v8, :cond_86

    goto :goto_b1

    .line 1617
    :cond_86
    new-instance v8, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda6;

    invoke-direct {v8, p1, p2}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_b1

    .line 1620
    new-instance v7, Lcom/android/server/wm/DexController$FindTaskResult;

    invoke-direct {v7, p0, v6, p5}, Lcom/android/server/wm/DexController$FindTaskResult;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/ActivityRecord;I)V

    .line 1621
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    sget-boolean v6, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v6, :cond_b1

    .line 1623
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTaskLocked: add "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    :goto_b1
    add-int/lit8 v4, v4, -0x1

    goto :goto_50

    :cond_b4
    :goto_b4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2c

    :cond_b8
    return-object v0
.end method

.method public getWarningStringFromDexPolicy(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 7

    .line 1836
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    .line 1837
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_24

    const v0, 0x1040820

    new-array v2, v4, [Ljava/lang/Object;

    .line 1842
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->loadLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 1840
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_38

    const v0, 0x1040821

    new-array v2, v4, [Ljava/lang/Object;

    .line 1846
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->loadLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 1844
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    and-int/lit8 p0, v0, 0x8

    if-eqz p0, :cond_44

    const p0, 0x1040822

    .line 1848
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public goodToChangeMode(II)Z
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_b3

    if-ne p2, v0, :cond_8

    goto/16 :goto_b3

    .line 2193
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2194
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 2195
    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/DisplayContent;->getRootTasks(II)Ljava/util/List;

    move-result-object p0

    .line 2198
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 2199
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_4a

    const-string v2, "DexController"

    .line 2201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goodToChangeMode: no topRunning. t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2204
    :cond_4a
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-eqz v3, :cond_65

    const-string v0, "DexController"

    .line 2205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goodToChangeMode: stateNotNeeded, r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2208
    :cond_65
    sget-object v3, Lcom/android/server/wm/DexController$1;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_bc

    .line 2219
    monitor-exit p1

    goto :goto_a4

    :pswitch_76
    const-string v3, "DexController"

    .line 2215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goodToChangeMode: t#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " haveState="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasSavedState()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", r="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2215
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_b .. :try_end_a2} :catchall_ad

    goto/16 :goto_1f

    .line 2219
    :goto_a4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p2

    .line 2223
    :cond_a8
    :try_start_a8
    monitor-exit p1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_ad

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_ad
    move-exception p0

    :try_start_ae
    monitor-exit p1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_b3
    :goto_b3
    const-string p0, "DexController"

    const-string p1, "goodToChangeMode: dual-mode is not need to wait stopped sate"

    .line 2189
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
    .end packed-switch
.end method

.method public handleDexMinimizeToggleLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 2505
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->hasMinimizedToggleTasksLocked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2506
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->restoreToggleTasksToFrontLocked(I)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public hasMinimizedToggleTasksLocked()Z
    .registers 1

    .line 2544
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hideDexImeOnDefaultDisplayLocked()Z
    .registers 5

    .line 378
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    const/4 v0, 0x2

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_43

    .line 383
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-interface {v0, v3, v1}, Lcom/android/server/wm/InsetsControlTarget;->hideInsets(IZ)V

    .line 385
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_44

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideDexImeOnDefaultDisplayLocked: Callers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DexController"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_43
    move v1, v2

    .line 389
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setImeShowing(Z)V

    return v1
.end method

.method public initialize()V
    .registers 3

    .line 278
    new-instance v0, Lcom/android/server/wm/DexController$H;

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DexController$H;-><init>(Lcom/android/server/wm/DexController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    return-void
.end method

.method public intercept(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIILandroid/app/ActivityOptions;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/Task;)Z
    .registers 10

    const/4 p0, 0x0

    return p0
.end method

.method public interceptPairApps(Landroid/window/WindowContainerTransaction;)Z
    .registers 3

    .line 1734
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1735
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexInterceptor:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexActivityStartInterceptor;->interceptPairApps(Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_13
    move-exception p0

    .line 1736
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;II)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public isDexDisplayActivated()Z
    .registers 1

    .line 727
    iget-boolean p0, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    return p0
.end method

.method public isDexForceImmersiveModeEnabled()Z
    .registers 1

    .line 408
    iget-boolean p0, p0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    return p0
.end method

.method public isDexStandaloneRotationEnabledLocked()Z
    .registers 1

    .line 2776
    iget-boolean p0, p0, Lcom/android/server/wm/DexController;->mDexStandaloneRotationEnabled:Z

    return p0
.end method

.method public isDexTouchPadEnabledLocked()Z
    .registers 1

    .line 2789
    iget-boolean p0, p0, Lcom/android/server/wm/DexController;->mDexTouchPadEnabled:Z

    return p0
.end method

.method public final isExcludedTaskOrNonRecentTask(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 2458
    iget-boolean p0, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz p0, :cond_14

    iget-object p0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_12

    .line 2459
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    .line 2460
    :cond_14
    :goto_14
    sget-boolean p0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz p0, :cond_2e

    .line 2461
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isExcludedTaskOrNonRecentTask(), Task ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public final isGameApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .line 1797
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 1796
    invoke-static {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    .line 1800
    :try_start_b
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_16

    const/4 p1, 0x1

    if-ne p0, p1, :cond_15

    move v0, p1

    :cond_15
    return v0

    :catch_16
    move-exception p0

    .line 1802
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_1a
    return v0
.end method

.method public isInDexForceImmersiveMode()Z
    .registers 1

    .line 404
    iget-boolean p0, p0, Lcom/android/server/wm/DexController;->mIsInDexForceImmersiveMode:Z

    return p0
.end method

.method public isInDexOnPc()Z
    .registers 2

    .line 2741
    iget p0, p0, Lcom/android/server/wm/DexController;->mDexOnPcState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isNotSupportApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 7

    .line 1757
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_17

    .line 1760
    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v3, 0x80

    .line 1761
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    .line 1760
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    const/4 v1, 0x1

    if-eqz v0, :cond_23

    const-string v2, "com.samsung.android.dex.launchpolicy.notsupported"

    .line 1765
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v1

    .line 1770
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mSCPMLaunchBlockList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1771
    :try_start_26
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mSCPMLaunchBlockList:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 1772
    monitor-exit v0

    return v1

    .line 1774
    :cond_32
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final isNotSupportHomeApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 6

    .line 1779
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    sget-object v2, Lcom/android/server/wm/DexController;->DEFAULT_ALLOW_HOME_SET:Ljava/util/Set;

    .line 1780
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->toHashText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1779
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_42

    .line 1783
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 1784
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1785
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1786
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v2, 0x10000

    .line 1787
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1788
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1786
    invoke-virtual {p0, v0, v2, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    :goto_42
    return v1
.end method

.method public isPendingStartRecent()Z
    .registers 1

    .line 302
    iget-boolean p0, p0, Lcom/android/server/wm/DexController;->mStartFromRecentInfo:Z

    return p0
.end method

.method public isPendingTaskAndTargetDisplayDifferent(Lcom/android/server/wm/Task;I)Z
    .registers 5

    .line 1632
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-static {v0}, Lcom/android/server/wm/DexController$PendingActivityInfo;->-$$Nest$fgetmIsValid(Lcom/android/server/wm/DexController$PendingActivityInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1633
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget-object v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    iget-object v0, v0, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    if-ne v0, p1, :cond_16

    iget p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mDisplayId:I

    if-eq p0, p2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public final isStoppedLocked(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 1332
    new-instance p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda13;

    invoke-direct {p0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final killAllProcessIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1410
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1411
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v2

    .line 1412
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_19
    if-ltz v3, :cond_2d

    .line 1413
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 1414
    invoke-interface {p1, v4}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1415
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1418
    :cond_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1421
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1422
    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;Z)Z

    goto :goto_35

    :cond_47
    return-void

    :catchall_48
    move-exception p0

    .line 1418
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;Z)Z
    .registers 6

    .line 1432
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DexController;->shouldKillProcess(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getDisplayId()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_4e

    .line 1435
    new-instance p4, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda20;

    invoke-direct {p4}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda20;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1437
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1435
    invoke-static {p4, v0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1438
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_59

    .line 1440
    :cond_4e
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManagerInternal;->killProcessForDex(IILjava/lang/String;)V

    :goto_59
    const/4 p0, 0x1

    return p0

    :cond_5b
    const/4 p0, 0x0

    return p0
.end method

.method public killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;IZ)Z
    .registers 5

    const-string/jumbo v0, "proc_display_changed"

    .line 1427
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final loadLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 2

    .line 1855
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1856
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_13
    const-string p0, ""

    :goto_15
    return-object p0
.end method

.method public moveTaskToDefaultDisplayAndLayoutTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .registers 5

    const/4 p2, 0x0

    const-string p3, "dex_disabled"

    .line 1000
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DexController;->moveTaskToDisplayBackLocked(Lcom/android/server/wm/Task;ILjava/lang/String;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public moveTaskToDisplayBackLocked(Lcom/android/server/wm/Task;ILjava/lang/String;Landroid/app/ActivityOptions;)V
    .registers 18

    move-object v0, p0

    move-object v9, p1

    move v10, p2

    .line 1543
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    if-ne v1, v10, :cond_a

    return-void

    .line 1546
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_15

    return-void

    .line 1550
    :cond_15
    iget-object v0, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    if-eqz p4, :cond_29

    move-object/from16 v2, p4

    goto :goto_2e

    .line 1553
    :cond_29
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    move-object v2, v0

    .line 1554
    :goto_2e
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1555
    invoke-virtual {p1, v11, v12}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1556
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p1

    .line 1555
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v7

    .line 1557
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1561
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_5f

    if-eq v7, v9, :cond_5f

    .line 1562
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_5f
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, v7

    move-object/from16 v6, p3

    .line 1564
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    .line 1565
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-ne v0, v10, :cond_71

    move v11, v12

    :cond_71
    if-nez v11, :cond_76

    .line 1567
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 1569
    :cond_76
    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_a7

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToDisplayBackLocked: to d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    return-void
.end method

.method public final moveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V
    .registers 16

    if-nez p1, :cond_a

    const-string p0, "DexController"

    const-string p1, "DisplayChooserInfo is null. Abort to start pending activity"

    .line 1066
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1069
    :cond_a
    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "DexController"

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOVE_TASKS_BACK_AND_WAIT_ACTIVITY_STOP for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, 0x0

    .line 1077
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1078
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/DexRestartAppInfo;->getMovingTaskLocked(Lcom/android/server/wm/DexController;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1079
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v3}, Lcom/android/server/wm/DexController$PendingActivityInfo;->reset()V

    .line 1080
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_166

    .line 1081
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/wm/DexController$PendingActivityInfo;->set(Lcom/android/server/wm/DexRestartAppInfo;Ljava/util/ArrayList;I)V

    .line 1083
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1084
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4a
    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_105

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DexController$FindTaskResult;

    .line 1085
    iget-object v7, v7, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 1086
    sget-boolean v8, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v8, :cond_8b

    const-string v8, "DexController"

    .line 1087
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "move task to bottom, task #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " affinity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to display #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " from DisplayChooser."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_8b
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-nez v8, :cond_92

    goto :goto_4a

    .line 1096
    :cond_92
    invoke-virtual {v7, v5, v4}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 1098
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    if-eqz v10, :cond_a7

    .line 1099
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getState()I

    move-result v10

    goto :goto_a8

    :cond_a7
    move v10, v5

    :goto_a8
    const/4 v11, 0x2

    if-eqz v9, :cond_c0

    .line 1101
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_c0

    if-ne v10, v11, :cond_c0

    .line 1102
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v10

    if-nez v10, :cond_c0

    .line 1103
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10, v11, v8}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(ILcom/android/server/wm/WindowContainer;)V

    .line 1107
    :cond_c0
    iget-boolean v10, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    if-nez v10, :cond_d7

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v10

    if-ne v10, v11, :cond_d7

    if-eqz v9, :cond_4a

    .line 1108
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 1109
    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    goto/16 :goto_4a

    .line 1113
    :cond_d7
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v9

    if-eqz v9, :cond_f2

    iget-object v9, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1114
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v9

    if-eqz v9, :cond_f2

    .line 1115
    iget-object v9, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationForDisplayChange()V

    .line 1117
    :cond_f2
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1118
    invoke-virtual {v7, v4}, Lcom/android/server/wm/Task;->setAvoidTrimDexPendingActivityTask(Z)V

    .line 1119
    invoke-virtual {v8, v7}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;)Z

    goto/16 :goto_4a

    .line 1123
    :cond_105
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_109
    :goto_109
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1124
    iget-object v7, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1125
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1124
    invoke-virtual {v7, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    if-eqz v7, :cond_109

    .line 1127
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_109

    .line 1129
    invoke-virtual {v7, v5, v4}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1130
    sget-boolean v8, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v8, :cond_14f

    const-string v8, "DexController"

    .line 1131
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ensure visibility for d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " next="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_14f
    iget-object v8, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v7, v6, v5, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    goto :goto_109

    .line 1140
    :cond_15b
    sget-boolean v3, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_166

    const-string v3, "DexController"

    const-string v6, "Wait until activity stopped."

    .line 1141
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_166
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v3}, Lcom/android/server/wm/DexController$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v3

    if-eqz v3, :cond_190

    iget-object v3, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 1145
    invoke-virtual {v3}, Lcom/android/server/wm/DexController$PendingActivityInfo;->hasEmbeddedChild()Z

    move-result v3

    if-nez v3, :cond_190

    .line 1147
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18a

    .line 1148
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/DexRestartAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/DexRestartAppInfo;->getUid()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 1150
    :cond_18a
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController$PendingActivityInfo;->reset()V

    goto :goto_191

    :cond_190
    move v4, v5

    .line 1152
    :goto_191
    monitor-exit v1
    :try_end_192
    .catchall {:try_start_28 .. :try_end_192} :catchall_20e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v4, :cond_202

    if-eqz v0, :cond_19d

    .line 1157
    invoke-virtual {p0, v0, p2, v5}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;IZ)Z

    goto :goto_1d1

    .line 1158
    :cond_19d
    instance-of v0, p1, Lcom/android/server/wm/PendingPairAppsLaunchInfo;

    if-eqz v0, :cond_1d1

    .line 1159
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;

    move v1, v5

    .line 1160
    :goto_1a5
    iget-object v2, v0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d1

    .line 1161
    iget-object v2, v0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1ce

    .line 1163
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mUids:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    if-eqz v2, :cond_1ce

    .line 1165
    invoke-virtual {p0, v2, p2, v5}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;IZ)Z

    :cond_1ce
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a5

    .line 1170
    :cond_1d1
    :goto_1d1
    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1ec

    const-string v0, "DexController"

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start DisplayChooser result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_1ec
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1ef
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1174
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/DexRestartAppInfo;->startResult(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 1175
    monitor-exit v0
    :try_end_1f8
    .catchall {:try_start_1ef .. :try_end_1f8} :catchall_1fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_20d

    :catchall_1fc
    move-exception p0

    :try_start_1fd
    monitor-exit v0
    :try_end_1fe
    .catchall {:try_start_1fd .. :try_end_1fe} :catchall_1fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1177
    :cond_202
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 p2, 0x3

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1179
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DexController;->scheduleReparentToDisplayAndStartPendingActivity(Z)V

    :goto_20d
    return-void

    :catchall_20e
    move-exception p0

    .line 1152
    :try_start_20f
    monitor-exit v1
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_20e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public moveTasksToDisplayIfNeededLocked(I)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2b

    .line 2342
    iget v1, p0, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    if-ne v1, p1, :cond_2b

    .line 2343
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/DexController;->mSourceDisplayId:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 2344
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz p1, :cond_2b

    if-eqz v1, :cond_2b

    .line 2346
    new-instance v2, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 2357
    iput v0, p0, Lcom/android/server/wm/DexController;->mSourceDisplayId:I

    .line 2358
    iput v0, p0, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    :cond_2b
    return-void
.end method

.method public final moveTasksToFreeformLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 2409
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyAppTransitionFinished()V
    .registers 5

    .line 1526
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "DexController"

    .line 1527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAppTransitionFinished. isTransitionFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 1528
    invoke-virtual {v3}, Lcom/android/server/wm/DexController$PendingActivityInfo;->isTransitionFinished()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1527
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->isTransitionFinished()Z

    move-result v1

    if-nez v1, :cond_49

    .line 1530
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->transitionFinished()V

    .line 1531
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1533
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 1534
    invoke-virtual {v1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->hasEmbeddedChild()Z

    move-result v1

    if-nez v1, :cond_49

    const/4 v1, 0x1

    .line 1535
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DexController;->scheduleReparentToDisplayAndStartPendingActivity(Z)V

    .line 1538
    :cond_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4e
    move-exception p0

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public notifyAppTransitionFinishedIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 1501
    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_27

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppTransitionFinishedIfNeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 1503
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    .line 1502
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1506
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1507
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3a
    return-void
.end method

.method public final notifyDexDisplayStateLocked(Z)V
    .registers 6

    .line 642
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    const-string v1, "DexController"

    if-nez v0, :cond_12

    const-string p0, "notifyDexDisplayStateLocked: failed, dexService is null"

    .line 645
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 649
    :cond_12
    iget-boolean v2, p0, Lcom/android/server/wm/DexController;->mLastReportedDexDisplayState:Z

    if-eq v2, p1, :cond_2f

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDexDisplayStateLocked: dexDisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mLastReportedDexDisplayState:Z

    .line 652
    invoke-virtual {v0, p1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->onDesktopDisplayConfigured(Z)V

    :cond_2f
    return-void
.end method

.method public onTaskRemoved(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 974
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    const-string/jumbo v1, "taskRemoved"

    .line 975
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->removeWaitingStoppedTask(Lcom/android/server/wm/Task;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 976
    invoke-virtual {p1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 977
    invoke-virtual {p1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->hasEmbeddedChild()Z

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x1

    .line 978
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->scheduleReparentToDisplayAndStartPendingActivity(Z)V

    :cond_26
    return-void
.end method

.method public performDisplayOverrideConfigUpdate(II)V
    .registers 3

    and-int/lit16 p1, p1, 0x1c80

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x2

    if-ne p2, p1, :cond_27

    .line 662
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez p1, :cond_15

    const-string p0, "DexController"

    const-string/jumbo p1, "performDisplayOverrideConfigUpdate: mDexDisplay is null"

    .line 663
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 665
    :cond_15
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->createDisplayContextIfNeededLocked(Landroid/view/Display;)V

    .line 666
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public final performMovingTasksAfterKillProcessLocked()V
    .registers 1

    return-void
.end method

.method public final performMovingTasksBeforeKillProcessLocked(Lcom/android/server/wm/DexRestartAppInfo;Ljava/lang/String;)V
    .registers 5

    .line 1284
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/DexController$FindTaskResult;

    .line 1285
    iget-object v0, p1, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_34

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": skip handle task, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexController"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1296
    :cond_34
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DexController$FindTaskResult;->execute(Ljava/lang/String;)V

    .line 1319
    iget-object p1, p1, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setAvoidTrimDexPendingActivityTask(Z)V

    goto :goto_8

    :cond_3e
    return-void
.end method

.method public final preventFinishFullscreenActivity(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 2392
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DexController;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .registers 3

    .line 2754
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2755
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2756
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeToggleTaskLocked(Lcom/android/server/wm/Task;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 2519
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2520
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public final reparentToDisplayAndStartPendingActivity()V
    .registers 10

    .line 1202
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1203
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget-object v1, v1, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    if-nez v1, :cond_18

    const-string p0, "DexController"

    const-string v1, "PendingActivityLaunch is null. Abort to start pending activity"

    .line 1205
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1208
    :cond_18
    :try_start_18
    sget-boolean v2, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v2, :cond_32

    const-string v2, "DexController"

    .line 1209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REPARENT_TO_DISPLAY_AND_START_PENDING_ACTIVITY for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const-string/jumbo v2, "reparentToDisplayAndStartPendingActivity"

    .line 1213
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DexController;->performMovingTasksBeforeKillProcessLocked(Lcom/android/server/wm/DexRestartAppInfo;Ljava/lang/String;)V

    .line 1215
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget v2, v2, Lcom/android/server/wm/DexController$PendingActivityInfo;->mDisplayId:I

    .line 1216
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/DexRestartAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/wm/DexRestartAppInfo;->getUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 1217
    iget-object v4, v1, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/DexRestartAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/wm/DexController;->collectShouldKillProcess(Lcom/android/server/wm/Task;Ljava/lang/String;I)Landroid/util/SparseArray;

    move-result-object v4

    .line 1218
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_18 .. :try_end_55} :catchall_e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    if-eqz v3, :cond_5f

    .line 1222
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;IZ)Z

    goto :goto_93

    .line 1223
    :cond_5f
    instance-of v3, v1, Lcom/android/server/wm/PendingPairAppsLaunchInfo;

    if-eqz v3, :cond_93

    .line 1224
    move-object v3, v1

    check-cast v3, Lcom/android/server/wm/PendingPairAppsLaunchInfo;

    move v5, v0

    .line 1225
    :goto_67
    iget-object v6, v3, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_93

    .line 1226
    iget-object v6, v3, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_90

    .line 1228
    iget-object v7, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v3, Lcom/android/server/wm/PendingPairAppsLaunchInfo;->mUids:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v6

    if-eqz v6, :cond_90

    .line 1230
    invoke-virtual {p0, v6, v2, v0}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;IZ)Z

    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 1235
    :cond_93
    :goto_93
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_ad

    .line 1236
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_9f
    if-ltz v3, :cond_ad

    .line 1237
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v5, v2, v0}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;IZ)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_9f

    .line 1241
    :cond_ad
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_b0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1242
    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_ce

    const-string v0, "DexController"

    .line 1243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start DisplayChooser result for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_ce
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DexRestartAppInfo;->startResult(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 1249
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController$PendingActivityInfo;->reset()V

    .line 1250
    monitor-exit v3
    :try_end_d9
    .catchall {:try_start_b0 .. :try_end_d9} :catchall_dd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_dd
    move-exception p0

    :try_start_de
    monitor-exit v3
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_e3
    move-exception p0

    .line 1218
    :try_start_e4
    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public resetToggleTasksLocked()V
    .registers 1

    .line 2540
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public restoreToggleTasksToFrontLocked(I)V
    .registers 10

    .line 2525
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2526
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->resetToggleTasksLocked()V

    const/4 p0, 0x0

    .line 2528
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_3a

    .line 2529
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/wm/Task;

    .line 2530
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 2531
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_37

    .line 2532
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2f

    .line 2533
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    move-object v6, v1

    const-string/jumbo v7, "restoreToggleTasksToFrontLocked"

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    :cond_37
    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method public scheduleKillProcessAndStartActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V
    .registers 4

    .line 1016
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 v0, 0x0

    .line 1017
    invoke-virtual {p0, v0, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1016
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleMoveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V
    .registers 5

    .line 1060
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V
    .registers 4

    .line 2747
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2748
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2749
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2750
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleReparentToDisplayAndStartPendingActivity(Z)V
    .registers 4

    .line 1184
    sget-boolean v0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_28

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reparentToDisplayAndStartPendingActivity: immediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 1186
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    .line 1185
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_3a

    .line 1190
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_45

    .line 1192
    :cond_3a
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_45
    return-void
.end method

.method public final setDexForceImmersiveModeEnabled(Z)V
    .registers 2

    .line 400
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    return-void
.end method

.method public final setDexForceImmersiveModeIn(Z)V
    .registers 2

    .line 396
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mIsInDexForceImmersiveMode:Z

    return-void
.end method

.method public setDexStarShowingDelayTime(I)V
    .registers 2

    .line 462
    iput p1, p0, Lcom/android/server/wm/DexController;->mDexStarShowingDelayTime:I

    return-void
.end method

.method public setDexTouchPadEnabledLocked(Z)V
    .registers 2

    return-void
.end method

.method public setDisplayFreeformMaxCount(I)V
    .registers 2

    .line 2799
    iput p1, p0, Lcom/android/server/wm/DexController;->mDisplayFreeformMaxCount:I

    return-void
.end method

.method public setDisplaySizeAndDensityLocked(Lcom/android/server/wm/DisplayContent;III)V
    .registers 12

    .line 695
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    const-string v0, "DexController"

    if-eqz p0, :cond_21

    const/4 v1, 0x2

    if-eq p0, v1, :cond_21

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setDisplaySizeAndDensityLocked: failed, invalid id #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 700
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplaySizeAndDensityLocked: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "dpi, Callers="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x4

    .line 701
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 700
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget p0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne p0, p2, :cond_6a

    iget p0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne p0, p3, :cond_6a

    iget p0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-ne p0, p4, :cond_6a

    .line 707
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    goto :goto_74

    :cond_6a
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    .line 709
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZZI)V

    .line 712
    :goto_74
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    return-void
.end method

.method public setDoNotShowAgainChecked(Z)V
    .registers 2

    .line 1730
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexInterceptor:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexActivityStartInterceptor;->setDoNotShowAgainChecked(Z)V

    return-void
.end method

.method public setGlobalFontScale(F)V
    .registers 2

    .line 2051
    iput p1, p0, Lcom/android/server/wm/DexController;->mGlobalFontScaleForRestore:F

    return-void
.end method

.method public setInputMethodInputTargetLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_6

    .line 308
    iput-object p1, p0, Lcom/android/server/wm/DexController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    :cond_6
    return-void
.end method

.method public final setRequestedDexDisplayEnabledLocked(Z)V
    .registers 3

    .line 562
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    if-eq v0, p1, :cond_1d

    .line 563
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 564
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRequestedDexDisplayEnabledLocked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexController"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public final setSkipToFinishActivityByProcessKillLocked(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 984
    new-instance p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda14;

    invoke-direct {p0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setTasksToDisplayLocked(II)V
    .registers 5

    .line 2320
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const-string v1, "DexController"

    if-nez v0, :cond_21

    .line 2322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "moveTasksToDisplayLocked: no source display #"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2326
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_40

    .line 2328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "moveTasksToDisplayLocked: no target display #"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4d

    .line 2332
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    if-nez v0, :cond_4d

    const-string p0, "moveTasksToDisplayLocked: no dex dual mode"

    .line 2333
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2337
    :cond_4d
    iput p1, p0, Lcom/android/server/wm/DexController;->mSourceDisplayId:I

    .line 2338
    iput p2, p0, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    return-void
.end method

.method public setWaitingTransitionFinished(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1512
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_8

    return-void

    .line 1514
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1515
    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1517
    sget-boolean v2, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz v2, :cond_39

    .line 1518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWaitingTransitionFinished: add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexController"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_3f
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public shouldAbortStartActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 2

    .line 1819
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    and-int/lit8 p0, p0, 0x6

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public shouldKillProcess(Lcom/android/server/wm/WindowProcessController;I)Z
    .registers 4

    const-string/jumbo v0, "proc_display_changed"

    .line 1451
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DexController;->shouldKillProcess(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldKillProcess(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;)Z
    .registers 9

    .line 1456
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1457
    invoke-static {p2}, Lcom/android/server/wm/DexController;->isDefaultOrDexDisplay(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 1458
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1461
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-eq v1, p1, :cond_3d

    .line 1465
    sget-boolean p0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz p0, :cond_38

    const-string p0, "DexController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring remove of inactive process: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_3d
    :try_start_3d
    const-string/jumbo v1, "proc_display_changed"

    .line 1467
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x2

    if-eqz p3, :cond_c3

    .line 1468
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getDisplayId()I

    move-result p3

    if-ne p3, p2, :cond_6c

    .line 1469
    sget-boolean p0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz p0, :cond_67

    const-string p0, "DexController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "already in same display: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3d .. :try_end_68} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_6c
    if-ne p2, v1, :cond_91

    .line 1472
    :try_start_6e
    iget-boolean p0, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    if-nez p0, :cond_91

    .line 1473
    sget-boolean p0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz p0, :cond_8c

    const-string p0, "DexController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dex display is not activated: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_6e .. :try_end_8d} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1476
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getDisplayId()I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_c3

    .line 1477
    sget-boolean p0, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    if-eqz p0, :cond_be

    const-string p0, "DexController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No matter: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " d"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_91 .. :try_end_bf} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1487
    :cond_c3
    :try_start_c3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    sget p2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p0, p2, :cond_f6

    .line 1488
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_f1

    const-string p0, "DexController"

    .line 1489
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Do not kill system process, app="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " callers="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1489
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_c3 .. :try_end_f2} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1494
    :cond_f6
    :try_start_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x1

    return p0

    :catchall_fc
    move-exception p0

    :try_start_fd
    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shouldShowDexImeInDefaultDisplayLocked()Z
    .registers 5

    .line 315
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 317
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/wm/DexController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_28

    .line 319
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    if-ne v3, v1, :cond_28

    .line 320
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    move v0, v2

    .line 324
    :goto_29
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DexController;->updateDexImeWindowStateIfNeededLocked(Z)V

    return v0
.end method

.method public showCanNotSwitchUserToast()V
    .registers 2

    .line 2589
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showDexImeOnDefaultDisplayLocked()Z
    .registers 3

    .line 358
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getCandidateImeTargetForDexLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 360
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 361
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 363
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;)V

    if-eqz v1, :cond_39

    .line 364
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-nez p0, :cond_39

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result p0

    if-eqz p0, :cond_39

    .line 365
    iget-object p0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 366
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    .line 368
    :cond_39
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_54

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDexImeOnDefaultDisplayLocked: imeTarget="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DexController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const/4 p0, 0x1

    return p0

    :cond_56
    const/4 p0, 0x0

    return p0
.end method

.method public showWarningToastIfNeeded(Landroid/content/pm/ActivityInfo;)V
    .registers 5

    .line 1825
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->getWarningStringFromDexPolicy(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 1830
    :cond_7
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1832
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    new-instance v1, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda17;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startDexHomeLocked(I)V
    .registers 3

    .line 1709
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1710
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1711
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 p1, 0x7

    .line 1712
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1711
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final toHashText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string p0, "SHA-256"

    .line 1861
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 1862
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1863
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .registers 3

    .line 2760
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2761
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2762
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public updateDexDeveloperMode(Z)V
    .registers 4

    .line 2581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDexDeveloperMode prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mIsDexDeveloperMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mIsDexDeveloperMode:Z

    return-void
.end method

.method public final updateDexDisplayStateLocked(Z)Z
    .registers 4

    .line 623
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 627
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDexDisplayStateLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    if-eqz p1, :cond_2e

    .line 629
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_2e

    .line 630
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public updateDexFontScaleIfNeeded(F)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2059
    iget-object v2, v0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2060
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_15

    move v7, v4

    goto :goto_16

    :cond_15
    move v7, v5

    .line 2063
    :goto_16
    iget v8, v0, Lcom/android/server/wm/DexController;->mDexFontScale:F

    cmpl-float v8, v8, v1

    if-nez v8, :cond_3e

    if-eqz v7, :cond_22

    iget-boolean v8, v0, Lcom/android/server/wm/DexController;->mUpdatedFontScaleForDexDual:Z

    if-eqz v8, :cond_3e

    :cond_22
    const-string v0, "DexController"

    .line 2064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDexFontScaleIfNeeded: DexFontScale is same as scaleFactor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2068
    :cond_3e
    :try_start_3e
    iput v1, v0, Lcom/android/server/wm/DexController;->mDexFontScale:F

    if-eqz v7, :cond_44

    move v8, v6

    goto :goto_45

    :cond_44
    move v8, v5

    :goto_45
    if-nez v3, :cond_4c

    .line 2073
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2076
    :cond_4c
    :try_start_4c
    iput-boolean v7, v0, Lcom/android/server/wm/DexController;->mUpdatedFontScaleForDexDual:Z

    if-ne v8, v6, :cond_5c

    .line 2084
    iget-object v0, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2085
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    goto :goto_83

    .line 2087
    :cond_5c
    iget-object v6, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v10

    if-nez v10, :cond_6b

    .line 2090
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_4c .. :try_end_67} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2092
    :cond_6b
    :try_start_6b
    iput v1, v10, Landroid/content/res/Configuration;->fontScale:F

    if-ne v3, v4, :cond_76

    .line 2094
    iget-object v1, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v5, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(II)V

    .line 2096
    :cond_76
    iget-object v9, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, -0x2710

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 2099
    :goto_83
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public updateDexImeWindowStateIfNeededLocked(Z)V
    .registers 3

    .line 329
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexImeWindowVisibleInDefaultDisplay:Z

    if-eq v0, p1, :cond_f

    .line 330
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 336
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setDexImePolicy(Z)V

    :cond_f
    return-void
.end method

.method public updateDexModeIfNeededLocked(Ljava/lang/String;)V
    .registers 9

    .line 2228
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    .line 2229
    iget v1, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    if-eq v1, v0, :cond_127

    .line 2230
    sget-boolean v1, Lcom/android/server/wm/DexController;->SAFE_DEBUG:Z

    const-string v2, "DexController"

    if-eqz v1, :cond_3a

    .line 2231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDesktopModeIfNeededLocked, lastDexMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentDexMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (reason:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 p1, 0x1

    if-ne v0, p1, :cond_47

    .line 2237
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string v3, "dex_standalone_on"

    invoke-virtual {v1, v3}, Lcom/android/server/wm/FreeformController;->unbindFreeformContainerService(Ljava/lang/String;)V

    goto :goto_50

    .line 2239
    :cond_47
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string v3, "dex_standalone_off"

    invoke-virtual {v1, v3}, Lcom/android/server/wm/FreeformController;->bindFreeformContainerService(Ljava/lang/String;)V

    :goto_50
    if-eqz v0, :cond_5c

    .line 2246
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    new-instance v3, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/DexController;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5c
    const/4 v1, 0x0

    if-eqz v0, :cond_61

    move v3, p1

    goto :goto_62

    :cond_61
    move v3, v1

    .line 2250
    :goto_62
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    if-eqz v3, :cond_6b

    const-string v5, "Desktop On"

    goto :goto_6d

    :cond_6b
    const-string v5, "Desktop Off"

    :goto_6d
    const/4 v6, -0x1

    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowForceEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2259
    :try_start_71
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2261
    const-class v3, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 2264
    iget v4, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_89

    if-ne v0, p1, :cond_89

    .line 2265
    invoke-virtual {p0, v5, v1}, Lcom/android/server/wm/DexController;->setTasksToDisplayLocked(II)V

    goto :goto_96

    :cond_89
    if-ne v4, p1, :cond_8d

    if-eq v0, v5, :cond_93

    .line 2267
    :cond_8d
    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getModeToModeChangeType()I

    move-result v3

    if-ne v3, v5, :cond_96

    .line 2269
    :cond_93
    invoke-virtual {p0, v1, v5}, Lcom/android/server/wm/DexController;->setTasksToDisplayLocked(II)V

    .line 2273
    :cond_96
    :goto_96
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2274
    iget v4, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    if-ne v4, p1, :cond_ab

    if-nez v0, :cond_ab

    .line 2275
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DexController;->preventFinishFullscreenActivity(Lcom/android/server/wm/DisplayContent;)V

    .line 2276
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DexController;->changeAllRootTasksToFullscreenLocked(Lcom/android/server/wm/DisplayContent;)V

    goto :goto_dd

    :cond_ab
    if-nez v4, :cond_dd

    if-ne v0, p1, :cond_dd

    .line 2278
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 2280
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2281
    iget-object v6, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 2283
    :cond_c8
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v4

    if-eqz v4, :cond_da

    .line 2285
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;)V

    .line 2288
    :cond_da
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DexController;->moveTasksToFreeformLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_dd
    :goto_dd
    if-ne v0, p1, :cond_f1

    .line 2293
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 2294
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    const-string v1, "dex standalone activated"

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    goto :goto_10d

    :cond_f1
    if-ne v0, v5, :cond_10d

    .line 2297
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_107

    .line 2299
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    const-string v1, "dex dual activated"

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    goto :goto_10d

    :cond_107
    const-string/jumbo p1, "updateDexModeIfNeededLocked() dexDc is null"

    .line 2302
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_71 .. :try_end_10d} :catchall_120

    .line 2306
    :cond_10d
    :goto_10d
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2309
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->onDexModeChangedLw(I)V

    .line 2315
    iput v0, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    goto :goto_127

    :catchall_120
    move-exception p1

    .line 2306
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2307
    throw p1

    :cond_127
    :goto_127
    return-void
.end method

.method public updateDexOnPcState(I)V
    .registers 3

    .line 2734
    iget v0, p0, Lcom/android/server/wm/DexController;->mDexOnPcState:I

    if-eq p1, v0, :cond_1e

    .line 2735
    iput p1, p0, Lcom/android/server/wm/DexController;->mDexOnPcState:I

    .line 2736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDexOnPcState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DexController;->mDexOnPcState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public updateDexStandaloneRotationEnabled(Z)V
    .registers 4

    .line 2768
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/DexController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateDexStarShowingDelayTime(I)V
    .registers 11

    .line 470
    iget v0, p0, Lcom/android/server/wm/DexController;->mDexStarShowingDelayTime:I

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_3a

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->setDexStarShowingDelayTime(I)V

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 474
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v3, "mouse_immersive_time_control"

    .line 473
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update: mDexStarShowingDelayTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DexController;->mDexStarShowingDelayTime:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method public updateForceImmersiveModeSetting(Z)V
    .registers 3

    .line 412
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_2f

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->setDexForceImmersiveModeEnabled(Z)V

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateForceImmersiveModeSetting: mIsDexForceImmersiveModeEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/DexController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2f
    return-void
.end method

.method public updateForceImmersiveModeState(Z)V
    .registers 3

    .line 435
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mIsInDexForceImmersiveMode:Z

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_2f

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->setDexForceImmersiveModeIn(Z)V

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateForceImmersiveModeSkip: mIsInDexForceImmersiveMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mIsInDexForceImmersiveMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DexController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2f
    return-void
.end method

.method public final updateSleepTokenLocked(Z)V
    .registers 4

    const-string v0, "DexController"

    const/4 v1, 0x2

    if-eqz p1, :cond_11

    .line 1719
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDeactivateDexSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    invoke-interface {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    const-string/jumbo p0, "updateSleepTokenLocked: sleepToken is released"

    .line 1720
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1722
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDeactivateDexSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    invoke-interface {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->acquire(I)V

    const-string/jumbo p0, "updateSleepTokenLocked: sleepToken is acquired"

    .line 1723
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    return-void
.end method
