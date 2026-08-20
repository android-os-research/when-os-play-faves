.class public Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;
    }
.end annotation


# static fields
.field public static final SNAPSHOT_MODE_APP_THEME:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SNAPSHOT_MODE_NONE:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SNAPSHOT_MODE_REAL:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field public final mHandler:Landroid/os/Handler;

.field public final mHighResTaskSnapshotScale:F

.field public final mIsRunningOnIoT:Z

.field public final mIsRunningOnTv:Z

.field public final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskSnapshotEnabled:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1W8lCIrR8JunCBCcmwSrcjpQdsw(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskSnapshotController;->lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OFFcEEajJ0qGl6rUIxeXzis5W7U(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskSnapshotController;->lambda$findAppTokenForSnapshot$1(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OuXkBnO52RuPiF6bdr2yQ-2Pa3A(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->lambda$snapshotForSleeping$5(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SOMFFw7eXBsfHv_qe1r5LdgicWQ(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->lambda$createTaskSnapshot$3(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-HdRPf5L-A9t_jQzRZCTIxrWjg(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskSnapshotController;->lambda$createTaskSnapshot$2(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fon4-choMUTwDaJJkJBhPdNSW9w(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$screenTurningOff$4(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 123
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 145
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 146
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 147
    new-instance v1, Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 148
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 149
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 151
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 153
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    .line 155
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110111

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTaskSnapshotEnabled:Z

    return-void
.end method

.method public static getCutoutInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .registers 4

    .line 863
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    const/4 v1, 0x1

    .line 862
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    .line 863
    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .registers 4

    .line 857
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    const/4 v1, 0x0

    .line 856
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    .line 857
    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static isInvalidHardwareBuffer(Landroid/hardware/HardwareBuffer;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_17

    .line 594
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_17

    .line 595
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_17

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    if-gt p0, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_17
    return v0
.end method

.method public static synthetic lambda$createTaskSnapshot$2(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    .line 501
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$createTaskSnapshot$3(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 511
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 512
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method public static synthetic lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static synthetic lambda$findAppTokenForSnapshot$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    if-eqz p0, :cond_22

    .line 309
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSurfaceShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 312
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_22

    .line 316
    :cond_17
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$screenTurningOff$4(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_19

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 807
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 808
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_19

    .line 810
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    return-void

    :catchall_13
    move-exception p0

    .line 808
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p0

    .line 810
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 811
    throw p0
.end method

.method private synthetic lambda$snapshotForSleeping$5(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 829
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->isAnimatingByRecents(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 830
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method


# virtual methods
.method public addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 220
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public captureTaskSnapshot(Lcom/android/server/wm/Task;Z)Landroid/window/TaskSnapshot;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v0

    goto :goto_1f

    .line 239
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result p2

    if-eqz p2, :cond_1b

    const/4 v1, 0x1

    if-eq p2, v1, :cond_16

    const/4 p0, 0x2

    if-eq p2, p0, :cond_15

    goto :goto_1f

    :cond_15
    return-object v0

    .line 243
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v0

    goto :goto_1f

    .line 246
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v0

    :goto_1f
    return-object v0
.end method

.method public checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn(I)Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 399
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_17

    const-string p0, "Attempted to take screenshot while display was off."

    .line 400
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-object v2

    .line 404
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_37

    .line 406
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_36

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to take screenshot. No visible windows for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-object v2

    .line 411
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasCommittedReparentToAnimationLeash()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 412
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p1, :cond_55

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to take screenshot. App is animating "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-object v2

    .line 418
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_71

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to take screenshot. No main window for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 423
    :cond_71
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 424
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p1, :cond_8f

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip taking screenshot. App has fixed rotation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    return-object v2

    .line 430
    :cond_90
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public clearSnapshotCache()V
    .registers 1

    .line 299
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotCache;->clearRunningCache()V

    return-void
.end method

.method public final createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 5

    .line 446
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_22

    .line 447
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_21

    .line 448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to take screenshot. No surface control for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-object v0

    .line 452
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_42

    .line 454
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 455
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v1, 0x0

    .line 456
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 457
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v1, p2, v0}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    :cond_42
    return-object v0
.end method

.method public createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 15

    .line 486
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 487
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_21

    .line 488
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to take screenshot. No surface control for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-object v1

    .line 492
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    new-instance v3, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 503
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 505
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_46
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_55

    .line 510
    new-instance v3, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 520
    :cond_55
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_ab

    .line 521
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_75

    .line 523
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_75

    .line 524
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v5

    if-nez v5, :cond_75

    move v5, v4

    goto :goto_76

    :cond_75
    move v5, v2

    .line 526
    :goto_76
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-eqz v6, :cond_86

    move v7, v4

    goto :goto_87

    :cond_86
    move v7, v2

    :goto_87
    if-eqz v5, :cond_92

    .line 533
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    if-eqz v8, :cond_92

    .line 535
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_92
    if-eqz v7, :cond_9d

    .line 539
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_9d

    .line 541
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9d
    if-nez v5, :cond_a8

    if-eqz v3, :cond_a8

    .line 544
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_a8

    move v2, v4

    :cond_a8
    invoke-virtual {p5, v2}, Landroid/window/TaskSnapshot$Builder;->setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;

    .line 547
    :cond_ab
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p5

    new-array p5, p5, [Landroid/view/SurfaceControl;

    .line 548
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 549
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 579
    :cond_ba
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 578
    invoke-static {p1, v0, p2, p3, p5}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p1

    if-eqz p4, :cond_d6

    .line 582
    iget-object p2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p4, Landroid/graphics/Point;->x:I

    .line 583
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p4, Landroid/graphics/Point;->y:I

    :cond_d6
    if-nez p1, :cond_da

    move-object p0, v1

    goto :goto_de

    .line 586
    :cond_da
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    .line 587
    :goto_de
    invoke-static {p0}, Lcom/android/server/wm/TaskSnapshotController;->isInvalidHardwareBuffer(Landroid/hardware/HardwareBuffer;)Z

    move-result p0

    if-eqz p0, :cond_e5

    return-object v1

    :cond_e5
    return-object p1
.end method

.method public createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 10

    .line 436
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 437
    iget v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    .line 438
    invoke-virtual {p2}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p2

    .line 437
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    .line 439
    invoke-virtual {p2, v6}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    return-object p0
.end method

.method public final drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    .registers 36

    move-object/from16 v0, p0

    .line 681
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 685
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_11

    return-object v2

    .line 690
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    const/16 v5, 0xff

    .line 689
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 691
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 693
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v14

    .line 694
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v7, v14}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v15

    .line 695
    new-instance v13, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v10, v5, Landroid/view/InsetsFlags;->appearance:I

    .line 696
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v11

    iget v12, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    move-object v7, v13

    move-object v5, v13

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    .line 698
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 699
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v8, v7

    .line 700
    iget v9, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v10, v6

    mul-float/2addr v10, v9

    float-to-int v9, v10

    const-string v10, "TaskSnapshotController"

    .line 703
    invoke-static {v10, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v10

    const/4 v11, 0x0

    .line 704
    invoke-virtual {v10, v11, v11, v8, v9}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 705
    invoke-virtual {v10, v11}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 706
    invoke-virtual {v10, v8, v9}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v11

    .line 707
    invoke-virtual {v11, v4}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 708
    invoke-virtual {v5, v15}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 709
    invoke-virtual {v5, v11}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;)V

    .line 710
    invoke-virtual {v10, v11}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 711
    invoke-static {v10, v8, v9}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_7d

    return-object v2

    .line 715
    :cond_7d
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v25, v2

    invoke-direct {v2, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 716
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v26, v5

    .line 717
    invoke-static {v2, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 721
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/android/server/wm/TaskSnapshotController;->getCutoutInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v33

    .line 727
    new-instance v2, Landroid/window/TaskSnapshot;

    move-object/from16 v16, v2

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    move-object/from16 v19, v1

    .line 729
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v20

    .line 730
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v21

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v1

    .line 731
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v23

    new-instance v1, Landroid/graphics/Point;

    move-object/from16 v24, v1

    invoke-direct {v1, v7, v6}, Landroid/graphics/Point;-><init>(II)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 733
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v29

    .line 734
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getAppearance(Lcom/android/server/wm/Task;)I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v16 .. v33}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;)V

    return-object v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHighResTaskSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTaskSnapshotEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTaskSnapshotEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 308
    new-instance p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public forceTaskSnapshotInFoldingAction()V
    .registers 4

    .line 898
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 899
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    .line 900
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotByForce(Lcom/android/server/wm/Task;Z)V

    .line 901
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getAppearance(Lcom/android/server/wm/Task;)I
    .registers 2

    .line 845
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 847
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_15

    .line 850
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p0, p0, Landroid/view/InsetsFlags;->appearance:I

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 637
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 638
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_37

    .line 639
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 640
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_34

    .line 646
    :cond_18
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->isAnimatingByRecents(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 647
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 659
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_37
    return-void
.end method

.method public getSnapshot(IIZZ)Landroid/window/TaskSnapshot;
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p4, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 292
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister;->enableLowResSnapshots()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 291
    :goto_f
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshotMode(Lcom/android/server/wm/Task;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 666
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 667
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    if-eqz p0, :cond_1c

    .line 669
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseAppThemeSnapshot()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final handleClosingApps(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;Z)V

    return-void
.end method

.method public final handleClosingApps(Landroid/util/ArraySet;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    if-eqz p2, :cond_2d

    .line 200
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_19
    if-ltz p2, :cond_32

    .line 201
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    .line 206
    :cond_2d
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    :cond_32
    return-void
.end method

.method public final isAnimatingByRecents(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 868
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 869
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->inRecentsTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 892
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 5

    if-nez p2, :cond_f

    const/4 p2, 0x1

    new-array v0, p2, [Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 176
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;Z)V

    :cond_f
    return-void
.end method

.method public notifyTaskRemovedFromRecents(II)V
    .registers 5

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 761
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 765
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 766
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    if-eqz v0, :cond_20

    .line 769
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecentsBuffer(Landroid/hardware/HardwareBuffer;)V

    :cond_20
    return-void
.end method

.method public onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 751
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 744
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 166
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    return-void
.end method

.method public prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/window/TaskSnapshot$Builder;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 343
    :cond_8
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 344
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 345
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 346
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v4

    .line 345
    invoke-static {v3, v4}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v3

    .line 347
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v4

    .line 348
    invoke-static {v3, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 352
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    .line 353
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v6

    .line 352
    invoke-static {v5, v6}, Lcom/android/server/wm/TaskSnapshotController;->getCutoutInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v5

    .line 354
    invoke-virtual {p3, v5}, Landroid/window/TaskSnapshot$Builder;->setCutoutInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    const/4 v5, 0x1

    .line 358
    invoke-virtual {p3, v5}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3, v6, v7}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    .line 360
    invoke-virtual {p3, v3}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 361
    invoke-virtual {p3, v4}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 363
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4e

    move v3, v5

    goto :goto_4f

    :cond_4e
    move v3, v1

    .line 364
    :goto_4f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v0

    if-nez p2, :cond_6a

    .line 368
    iget-object p2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 367
    invoke-virtual {p2}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result p2

    if-eqz p2, :cond_69

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result p2

    if-eqz p2, :cond_69

    if-eqz v3, :cond_67

    if-nez v0, :cond_69

    :cond_67
    const/4 p2, 0x4

    goto :goto_6a

    :cond_69
    move p2, v5

    .line 373
    :cond_6a
    :goto_6a
    invoke-static {p2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 374
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_78

    if-eqz v3, :cond_79

    :cond_78
    move v1, v5

    .line 376
    :cond_79
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v0}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    .line 377
    invoke-virtual {p3, p2}, Landroid/window/TaskSnapshot$Builder;->setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;

    .line 378
    invoke-virtual {p3, v1}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    .line 379
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p3, p2}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 380
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 381
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getAppearance(Lcom/android/server/wm/Task;)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    return v5
.end method

.method public recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V
    .registers 6

    if-eqz p2, :cond_a

    .line 257
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    .line 258
    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->captureTaskSnapshot(Lcom/android/server/wm/Task;Z)Landroid/window/TaskSnapshot;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 263
    :cond_12
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    if-nez v2, :cond_23

    goto :goto_37

    .line 269
    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    if-nez p2, :cond_61

    .line 272
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget p2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 273
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/window/TaskSnapshot;)V

    goto :goto_61

    .line 265
    :cond_37
    :goto_37
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid task snapshot dimensions "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    .line 266
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :goto_61
    return-void
.end method

.method public removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 782
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    return-void
.end method

.method public removeSnapshotCache(I)V
    .registers 2

    .line 775
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    return-void
.end method

.method public screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5

    .line 798
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 799
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    return-void

    .line 804
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPersisterPaused(Z)V
    .registers 2

    .line 791
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    return-void
.end method

.method public setTaskSnapshotEnabled(Z)V
    .registers 2

    .line 625
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTaskSnapshotEnabled:Z

    return-void
.end method

.method public shouldDisableSnapshots()Z
    .registers 2

    .line 629
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTaskSnapshotEnabled:Z

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public snapshotForSleeping(I)V
    .registers 4

    .line 817
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v1, :cond_d

    goto :goto_39

    .line 820
    :cond_d
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    .line 824
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 825
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    if-nez p1, :cond_33

    .line 835
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p1, p1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 836
    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    .line 837
    :goto_34
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    :cond_39
    :goto_39
    return-void
.end method

.method public snapshotImeFromAttachedTask(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 3

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 476
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 474
    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    const/4 v0, 0x1

    .line 480
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    .registers 3

    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;I)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public snapshotTask(Lcom/android/server/wm/Task;I)Landroid/window/TaskSnapshot;
    .registers 5

    .line 605
    new-instance v0, Landroid/window/TaskSnapshot$Builder;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    .line 607
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/window/TaskSnapshot$Builder;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_d

    return-object v1

    .line 613
    :cond_d
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_14

    return-object v1

    .line 619
    :cond_14
    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    .line 620
    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    .line 621
    invoke-virtual {v0}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public snapshotTasks(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    return-void
.end method

.method public final snapshotTasks(Landroid/util/ArraySet;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 279
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 280
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    return-void
.end method

.method public takeSnapshotByForce(Lcom/android/server/wm/Task;)V
    .registers 3

    const/4 v0, 0x0

    .line 874
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotByForce(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public takeSnapshotByForce(Lcom/android/server/wm/Task;Z)V
    .registers 4

    .line 878
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_25

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_25

    .line 881
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    if-eqz p2, :cond_25

    .line 885
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    :cond_25
    :goto_25
    return-void
.end method
