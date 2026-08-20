.class public Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedRotationTransitionListener"
.end annotation


# instance fields
.field public mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

.field public mRecentsWillBeTop:Z

.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 7777
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyRecentsWillBeTop()V
    .registers 2

    const/4 v0, 0x1

    .line 7857
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    return-void
.end method

.method public onAppTransitionCancelledLocked(Z)V
    .registers 2

    .line 7935
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 7936
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 7884
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 7889
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_d

    goto :goto_58

    :cond_d
    if-eqz v0, :cond_14

    .line 7892
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    if-eqz v0, :cond_14

    return-void

    .line 7900
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_20

    .line 7904
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    return-void

    .line 7907
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 7908
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasAnimatingFixedRotationTransition()Z

    move-result p1

    if-eqz p1, :cond_53

    return-void

    .line 7918
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 7919
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq p1, v0, :cond_4c

    goto :goto_58

    .line 7923
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    move-result p1

    if-eqz p1, :cond_53

    return-void

    .line 7929
    :cond_53
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    :cond_58
    :goto_58
    return-void
.end method

.method public onAppTransitionTimeoutLocked()V
    .registers 1

    .line 7941
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    return-void
.end method

.method public onFinishRecentsAnimation()V
    .registers 6

    .line 7821
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 7822
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    const/4 v2, 0x0

    .line 7823
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 7827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFinishRecentsAnimation, animatingRecents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 7831
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    if-eqz v1, :cond_24

    return-void

    :cond_24
    if-eqz v0, :cond_42

    .line 7838
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v0, v1, :cond_42

    .line 7839
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq v0, v1, :cond_42

    .line 7846
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_47

    .line 7852
    :cond_42
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    :goto_47
    return-void
.end method

.method public onStartRecentsAnimation(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 7797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartRecentsAnimation, r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7801
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 7802
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_2c

    return-void

    .line 7808
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->rotateInDifferentOrientationIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 7809
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 7812
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    :cond_44
    return-void
.end method

.method public shouldDeferRotation()Z
    .registers 4

    .line 7866
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 7867
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 7868
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object v1, v0

    goto :goto_2d

    .line 7871
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 7872
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    if-eqz v1, :cond_43

    const/4 v2, 0x1

    .line 7874
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(Z)I

    move-result v1

    if-nez v1, :cond_38

    goto :goto_43

    .line 7879
    :cond_38
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result p0

    return p0

    :cond_43
    :goto_43
    return v0
.end method
