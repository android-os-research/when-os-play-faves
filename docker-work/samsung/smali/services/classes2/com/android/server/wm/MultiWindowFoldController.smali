.class public Lcom/android/server/wm/MultiWindowFoldController;
.super Ljava/lang/Object;
.source "MultiWindowFoldController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowFoldController$FoldingState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final FOLDING_STATE_HOLD_SPLIT_SCREEN:I = 0x1

.field public static final FOLDING_STATE_NONE:I = 0x0

.field public static final SAMSUNG_INCALL_UI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.incallui"

.field public static final TAG:Ljava/lang/String; = "MultiWindowFoldController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCoverDisplayBounds:[Landroid/graphics/Rect;

.field public mFoldingState:I
    .annotation build Lcom/android/server/wm/MultiWindowFoldController$FoldingState;
    .end annotation
.end field

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mIsLidOpened:Z

.field public final mMainDisplayBounds:[Landroid/graphics/Rect;

.field public mNeedToResumeAfterLidChanged:Z

.field public mPrevDisplayDeviceType:I


# direct methods
.method public static synthetic $r8$lambda$Rlm3pk_anhw2RML6vXC5_o3CZiM(Ljava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->lambda$findDialerTaskLocked$1(Ljava/lang/String;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$msUGRZBYDk19QLqI1Tppd0XN4bc(Lcom/android/server/wm/Task;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/MultiWindowFoldController;->lambda$moveDialerTaskToFullscreenIfNeededLocked$0(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 36
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/MultiWindowFoldController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 7

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    const/4 v2, -0x1

    .line 60
    iput v2, p0, Lcom/android/server/wm/MultiWindowFoldController;->mPrevDisplayDeviceType:I

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/Rect;

    .line 63
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v3, v0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v3, v1

    iput-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    new-array v2, v2, [Landroid/graphics/Rect;

    .line 64
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 71
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static synthetic lambda$findDialerTaskLocked$1(Ljava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 240
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 241
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.incallui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    if-eqz p0, :cond_22

    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 243
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$moveDialerTaskToFullscreenIfNeededLocked$0(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 221
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 223
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;)V

    .line 225
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 227
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :cond_1d
    const-string v0, "moveInCallTask"

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public final applyFoldingPolicy()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 120
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_22

    const/4 v0, 0x0

    const-string/jumbo v1, "reset"

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    goto :goto_28

    :cond_22
    const/4 v0, 0x1

    const-string v1, "apply_folding_policy"

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    :goto_28
    return-void
.end method

.method public final findDialerTaskLocked(Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 3

    .line 237
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 238
    new-instance v0, Lcom/android/server/wm/MultiWindowFoldController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiWindowFoldController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getCoverDisplayBounds(Z)Landroid/graphics/Rect;
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 184
    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    .line 186
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    if-eqz p1, :cond_16

    aget-object p0, p0, v1

    goto :goto_18

    :cond_16
    aget-object p0, p0, v2

    :goto_18
    return-object p0
.end method

.method public getMainDisplayBounds(Z)Landroid/graphics/Rect;
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    .line 179
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    if-eqz p1, :cond_15

    aget-object p0, p0, v1

    goto :goto_18

    :cond_15
    const/4 p1, 0x1

    aget-object p0, p0, p1

    :goto_18
    return-object p0
.end method

.method public handleDialerTaskInFoldingActionFlagsLocked(Ljava/lang/String;)V
    .registers 2

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->moveDialerTaskToFullscreenIfNeededLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mNeedToResumeAfterLidChanged:Z

    :cond_9
    return-void
.end method

.method public final initDisplayBounds(Z)V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const-string v1, "MultiWindowFoldController"

    if-nez v0, :cond_15

    const-string p0, "initDisplayBounds: cannot find display!"

    .line 193
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_15
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 198
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    if-eqz p1, :cond_27

    .line 200
    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/MultiWindowFoldController;->updateCoverDisplayBounds(II)V

    goto :goto_2e

    .line 202
    :cond_27
    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/MultiWindowFoldController;->updateMainDisplayBounds(II)V

    .line 204
    :goto_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initDisplayBounds: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isCoverDisplay="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initialize()V
    .registers 1

    return-void
.end method

.method public isHoldingSplitScreen()Z
    .registers 2

    .line 139
    iget p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLidOpened()Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    return p0
.end method

.method public final isSplitScreenActivated()Z
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p0

    return p0
.end method

.method public final moveDialerTaskToFullscreenIfNeededLocked(Ljava/lang/String;)Z
    .registers 4

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->findDialerTaskLocked(Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 216
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 217
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_21

    .line 220
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/MultiWindowFoldController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiWindowFoldController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return v1

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public notifyLidStateChanged(Z)V
    .registers 3

    .line 84
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    if-eq v0, p1, :cond_6

    .line 85
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    .line 87
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->postLidStateChanged(Z)V

    return-void
.end method

.method public onDisplayDeviceTypeChanged(I)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 107
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayDeviceTypeChanged opened : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiWindowFoldController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_21

    const/4 v2, 0x5

    goto :goto_22

    :cond_21
    move v2, v0

    .line 109
    :goto_22
    iput v2, p0, Lcom/android/server/wm/MultiWindowFoldController;->mPrevDisplayDeviceType:I

    if-eqz v1, :cond_40

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDevice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    goto :goto_49

    .line 112
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->isSplitScreenActivated()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->applyFoldingPolicy()V

    :cond_49
    :goto_49
    return-void
.end method

.method public onKeyguardGoingAway()V
    .registers 5

    .line 129
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    if-nez v0, :cond_24

    .line 130
    iget v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->isSplitScreenActivated()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    const-string v3, "MultiWindowFoldController:keyguard_going_away"

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    :cond_1f
    const-string v0, "keyguard_going_away"

    .line 134
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    :cond_24
    return-void
.end method

.method public postLidStateChanged(Z)V
    .registers 3

    if-nez p1, :cond_c

    .line 100
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mPrevDisplayDeviceType:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZI)V

    :cond_c
    return-void
.end method

.method public final setFoldingState(ILjava/lang/String;)V
    .registers 5
    .param p1    # I
        .annotation build Lcom/android/server/wm/MultiWindowFoldController$FoldingState;
        .end annotation
    .end param

    .line 143
    iget v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    if-eq v0, p1, :cond_2f

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFoldingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MultiWindowFoldController"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    :cond_2f
    return-void
.end method

.method public updateCoverDisplayBounds(II)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 167
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-eqz v2, :cond_f

    move v4, p1

    goto :goto_10

    :cond_f
    move v4, p2

    :goto_10
    if-eqz v2, :cond_14

    move v5, p2

    goto :goto_15

    :cond_14
    move v5, p1

    :goto_15
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, v0

    if-eqz v2, :cond_20

    move v0, p2

    goto :goto_21

    :cond_20
    move v0, p1

    :goto_21
    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    move p1, p2

    :goto_25
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public updateMainDisplayBounds(II)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 157
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-eqz v2, :cond_f

    move v4, p1

    goto :goto_10

    :cond_f
    move v4, p2

    :goto_10
    if-eqz v2, :cond_14

    move v5, p2

    goto :goto_15

    :cond_14
    move v5, p1

    :goto_15
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, v0

    if-eqz v2, :cond_20

    move v0, p2

    goto :goto_21

    :cond_20
    move v0, p1

    :goto_21
    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    move p1, p2

    :goto_25
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
