.class public Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "MultiWindowEnableController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowEnableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransitionListener"
.end annotation


# instance fields
.field public final mDisplayId:I

.field public final synthetic this$0:Lcom/android/server/wm/MultiWindowEnableController;


# direct methods
.method public static synthetic $r8$lambda$qqzrmYV9NnTGnBj6OB6oNMhxGEU(Lcom/android/server/wm/Task;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->lambda$dismissFreeformTasksIfNeeded$0(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/MultiWindowEnableController;I)V
    .registers 3

    .line 825
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->this$0:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    .line 826
    iput p2, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mDisplayId:I

    return-void
.end method

.method public static synthetic lambda$dismissFreeformTasksIfNeeded$0(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 861
    invoke-static {}, Lcom/android/server/wm/MultiWindowEnableController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 863
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    return-void
.end method


# virtual methods
.method public final dismissFreeformTasksIfNeeded(Ljava/lang/String;)V
    .registers 6

    .line 845
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->this$0:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-static {v0}, Lcom/android/server/wm/MultiWindowEnableController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiWindowEnableController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 847
    invoke-static {}, Lcom/android/server/wm/MultiWindowEnableController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissFreeformTasksIfNeeded: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  dc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_31

    return-void

    .line 852
    :cond_31
    iget-object p1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/AppTransition;->unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 854
    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eqz p0, :cond_3b

    return-void

    :cond_3b
    const/4 p0, 0x5

    const/4 p1, 0x1

    .line 858
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayContent;->getRootTasks(II)Ljava/util/List;

    move-result-object p0

    .line 859
    new-instance p1, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAppTransitionCancelledLocked(Z)V
    .registers 2

    const-string p1, "Cancelled"

    .line 836
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->dismissFreeformTasksIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 2

    const-string p1, "Finished"

    .line 831
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->dismissFreeformTasksIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method public onAppTransitionTimeoutLocked()V
    .registers 2

    const-string v0, "Timeout"

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->dismissFreeformTasksIfNeeded(Ljava/lang/String;)V

    return-void
.end method
