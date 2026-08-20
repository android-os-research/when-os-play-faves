.class public Lcom/android/server/wm/NaturalSwitchingChanger$FreeformToSplitChanger;
.super Lcom/android/server/wm/NaturalSwitchingChanger;
.source "NaturalSwitchingChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaturalSwitchingChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FreeformToSplitChanger"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/wm/NaturalSwitchingChanger;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public changeLayout()V
    .registers 3

    .line 108
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_SA_LOGGING:Z

    if-eqz v0, :cond_12

    const-string v0, "1041"

    const-string v1, "Freeform -> Split"

    .line 109
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1000"

    const-string v1, "From Popup view_HandleGesture"

    .line 111
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mTask:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/MultiTaskingController;->moveFreeformTaskToSplitLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public isExitAnimationNeeded()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
