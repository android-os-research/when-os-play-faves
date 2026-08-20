.class public Lcom/android/server/wm/NaturalSwitchingChanger$SplitToSplitChanger;
.super Lcom/android/server/wm/NaturalSwitchingChanger;
.source "NaturalSwitchingChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaturalSwitchingChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitToSplitChanger"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/wm/NaturalSwitchingChanger;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public final canSwitchSplitTasks()Z
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 254
    :cond_10
    iget v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mToPosition:I

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    iget p0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mToPosition:I

    if-eq v0, p0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public changeLayout()V
    .registers 5

    .line 222
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingChanger$SplitToSplitChanger;->canSwitchSplitTasks()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "NaturalSwitchingChanger"

    const-string v0, "changeLayout: failed"

    .line 223
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_SA_LOGGING:Z

    if-eqz v0, :cond_19

    const-string v0, "1041"

    const-string v1, "Layout changed"

    .line 227
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mToPosition:I

    if-eq v0, v1, :cond_36

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v2, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mTask:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v3, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mCreateMode:I

    iget-boolean p0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/android/server/wm/TaskOrganizerController;->handleSplitToSplitChange(IIIZ)V

    :cond_36
    return-void
.end method

.method public isExitAnimationNeeded()Z
    .registers 1

    .line 239
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingChanger$SplitToSplitChanger;->canSwitchSplitTasks()Z

    move-result p0

    return p0
.end method

.method public final reversePosition(I)I
    .registers 5

    const/16 p0, 0x20

    const/16 v0, 0x8

    if-eq p1, v0, :cond_15

    const/16 v1, 0x40

    const/16 v2, 0x10

    if-eq p1, v2, :cond_14

    if-eq p1, p0, :cond_13

    if-eq p1, v1, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    return v2

    :cond_13
    return v0

    :cond_14
    return v1

    :cond_15
    return p0
.end method

.method public shouldSyncTask()Z
    .registers 3

    .line 244
    iget v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mCurrentDockSide:I

    iget p0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mRequestedDockSide:I

    if-eq v0, p0, :cond_d

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-eq p0, v1, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method
