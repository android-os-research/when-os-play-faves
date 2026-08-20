.class public Lcom/android/server/wm/NaturalSwitchingChanger$SplitToFreeformChanger;
.super Lcom/android/server/wm/NaturalSwitchingChanger;
.source "NaturalSwitchingChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaturalSwitchingChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitToFreeformChanger"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/wm/NaturalSwitchingChanger;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public changeLayout()V
    .registers 5

    .line 175
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_SA_LOGGING:Z

    if-eqz v0, :cond_12

    const-string v0, "1041"

    const-string v1, "Split -> Freeform"

    .line 176
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2004"

    const-string v1, "From Split view_HandleGesture"

    .line 178
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v2, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/MultiTaskingController;->moveSplitTaskToFreeformLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingChanger$SplitToFreeformChanger;->shouldDismissSplitScreen()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 187
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingController;->dismissSplitTaskLocked(Lcom/android/server/wm/Task;)V

    :cond_30
    return-void
.end method

.method public isExitAnimationNeeded()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final shouldDismissSplitScreen()Z
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p0

    return p0
.end method
