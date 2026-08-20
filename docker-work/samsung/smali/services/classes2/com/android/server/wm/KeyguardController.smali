.class public Lcom/android/server/wm/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    }
.end annotation


# static fields
.field public static final KEYGUARD_SLEEP_TOKEN_TAG:Ljava/lang/String; = "keyguard"

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public final mDisplayStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;",
            ">;"
        }
    .end annotation
.end field

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskSupervisor(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskSupervisor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleKeyguardGoingAwayChanged(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->handleKeyguardGoingAwayChanged(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOccludedChanged(Lcom/android/server/wm/KeyguardController;ILcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->handleOccludedChanged(ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 100
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 101
    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 102
    new-instance p2, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "keyguard"

    invoke-direct {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    return-void
.end method


# virtual methods
.method public canDismissKeyguard()Z
    .registers 2

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardTrustedLw()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 595
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 413
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 414
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 416
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissingKeyguardActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eq p0, p1, :cond_2e

    :cond_2c
    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method public canShowWhileOccluded(ZZ)Z
    .registers 3

    if-nez p2, :cond_15

    if-eqz p1, :cond_13

    .line 423
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 424
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 433
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->canShowWithInsecureKeyguard()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 437
    :cond_10
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    .line 441
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 442
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result p0

    return p0

    :cond_38
    return v1
.end method

.method public final convertTransitFlags(I)I
    .registers 3

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_7

    const/16 p0, 0x101

    goto :goto_9

    :cond_7
    const/16 p0, 0x100

    :goto_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_f

    or-int/lit8 p0, p0, 0x2

    :cond_f
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_15

    or-int/lit8 p0, p0, 0x4

    :cond_15
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1b

    or-int/lit8 p0, p0, 0x8

    :cond_1b
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_21

    or-int/lit8 p0, p0, 0x16

    :cond_21
    return p0
.end method

.method public dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 7

    .line 358
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 359
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_b

    goto :goto_50

    .line 363
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissKeyguard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 373
    :cond_4a
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    .line 360
    :cond_50
    :goto_50
    invoke-virtual {p0, p2}, Lcom/android/server/wm/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    return-void
.end method

.method public final dismissMultiWindowModeForTaskIfNeeded(ILcom/android/server/wm/Task;)V
    .registers 5

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_60

    :cond_12
    if-nez p1, :cond_53

    .line 613
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 614
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_53

    if-nez p2, :cond_37

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmTopOccludesActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 617
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 618
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    move-object p2, p1

    :cond_37
    if-eqz p2, :cond_49

    .line 622
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 623
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;)V

    goto :goto_53

    .line 626
    :cond_49
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;ZZ)V

    :cond_53
    :goto_53
    if-nez p2, :cond_56

    return-void

    .line 636
    :cond_56
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_60

    const/4 p0, 0x1

    .line 637
    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :cond_60
    :goto_60
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 874
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KeyguardController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mKeyguardShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mAodShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mKeyguardGoingAway="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 880
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  mDismissalRequested="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    const/4 v0, 0x0

    .line 885
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 886
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 887
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    const-wide v2, 0x10800000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 888
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x20b00000004L

    .line 889
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/KeyguardController;->writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 890
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 894
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 895
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 3

    .line 378
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "ActivityTaskManager"

    const-string v0, "Failed to call callback"

    .line 380
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public final getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    .registers 5

    .line 659
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    if-nez v0, :cond_18

    .line 661
    new-instance v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;)V

    .line 662
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_18
    return-object v0
.end method

.method public handleDexDisplayDisabled()V
    .registers 3

    .line 677
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ActivityTaskManager"

    const-string v1, "handleDexDisplayDisabled: release a SleepToken of Dex Display"

    .line 678
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x2

    .line 680
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmSleepTokenAcquirer(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    return-void
.end method

.method public final handleDismissKeyguard(I)V
    .registers 4

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 573
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p1

    const/4 v0, 0x1

    .line 575
    invoke-static {p1, v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 580
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v0, 0x9

    .line 581
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 582
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :cond_3e
    return-void
.end method

.method public final handleKeyguardGoingAwayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 549
    :try_start_7
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 553
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 555
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 556
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_25

    .line 558
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_25
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 559
    throw p1
.end method

.method public final handleOccludedChanged(ILcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/EventLogTags;->writeWmOccludedChanged(II)V

    if-eqz p1, :cond_d

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    return-void

    .line 495
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->onKeyguardOccludedChangedLw(ZI)Z

    move-result v0

    if-nez v0, :cond_23

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 504
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 508
    :try_start_28
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-eqz v1, :cond_37

    const/16 v1, 0x8

    goto :goto_39

    :cond_37
    const/16 v1, 0x9

    .line 508
    :goto_39
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_6c

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_49
    if-eqz p2, :cond_60

    .line 529
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 530
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 531
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    goto :goto_68

    :cond_60
    if-eqz p2, :cond_67

    .line 533
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    goto :goto_68

    :cond_67
    const/4 p2, 0x0

    .line 535
    :goto_68
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dismissMultiWindowModeForTaskIfNeeded(ILcom/android/server/wm/Task;)V

    return-void

    :catchall_6c
    move-exception p1

    .line 523
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 524
    throw p1
.end method

.method public isAodShowing(I)Z
    .registers 2

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    return p0
.end method

.method public isDisplayOccluded(I)Z
    .registers 2

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    return p0
.end method

.method public isKeyguardGoingAway(I)Z
    .registers 2

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    .line 170
    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isKeyguardLocked(I)Z
    .registers 2

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    .line 153
    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isKeyguardOrAodShowing(I)Z
    .registers 4

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_10
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public isKeyguardShowing(I)Z
    .registers 4

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isKeyguardUnoccludedOrAodShowing(I)Z
    .registers 4

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    if-nez p1, :cond_13

    .line 132
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 133
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 135
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result p0

    return p0
.end method

.method public isShowingDream()Z
    .registers 2

    const/4 v0, 0x0

    .line 602
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmShowingDream(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    return p0
.end method

.method public isWakeAndUnlock(I)Z
    .registers 2

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    .line 687
    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmWakeAndUnlock(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p0

    return p0
.end method

.method public keyguardGoingAway(II)V
    .registers 13

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_f4

    :cond_12
    const-wide/16 v1, 0x20

    const-string v3, "keyguardGoingAway"

    .line 276
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardGoingAway, fl=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v4, p2, 0x100

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_3b

    move v4, v6

    goto :goto_3c

    :cond_3b
    move v4, v7

    .line 290
    :goto_3c
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    if-eqz v8, :cond_4f

    if-nez v4, :cond_43

    goto :goto_4f

    .line 291
    :cond_43
    iget-object v9, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v8, :cond_4b

    if-eqz v4, :cond_4b

    move v8, v7

    goto :goto_4c

    :cond_4b
    move v8, v6

    :goto_4c
    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowManagerService;->keyguardGoingAwayWithFingerprintUnlock(Z)V

    .line 298
    :cond_4f
    :goto_4f
    invoke-static {v0, v4}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmWakeAndUnlock(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 302
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 303
    invoke-static {v0, v7}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 308
    :try_start_5a
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v7

    goto :goto_63

    :cond_62
    move v0, v6

    .line 305
    :goto_63
    invoke-static {p1, v7, v0, v7, v3}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIILjava/lang/String;)V

    .line 311
    invoke-virtual {p0, p2}, Lcom/android/server/wm/KeyguardController;->convertTransitFlags(I)I

    move-result p2

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz p1, :cond_74

    goto :goto_82

    :cond_74
    const/4 v4, 0x7

    .line 318
    invoke-virtual {v0, v4, p2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 322
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v4

    const/4 v8, 0x4

    invoke-virtual {v4, v8, p2, v3, v0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 325
    :goto_82
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 328
    iget-object p2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 329
    iget-object p2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, v3, v6, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 330
    iget-object p2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->addStartingWindowsForVisibleActivities()V

    .line 333
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz p2, :cond_d9

    .line 334
    iget-object p2, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2, v7, v7}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_d9

    .line 337
    invoke-virtual {p2, v6, v7}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_d9

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->isTopResumedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_d9

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 339
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_be

    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_d9

    .line 340
    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applock Activity record "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->startAppLockActivity(Lcom/android/server/wm/ActivityRecord;)V

    :cond_d9
    if-eqz p1, :cond_dc

    goto :goto_e1

    .line 349
    :cond_dc
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_e1
    .catchall {:try_start_5a .. :try_end_e1} :catchall_ea

    .line 352
    :goto_e1
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 353
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_ea
    move-exception p1

    .line 352
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 353
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 354
    throw p1

    :cond_f4
    :goto_f4
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 668
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    if-eqz v0, :cond_12

    .line 670
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->onRemoved()V

    .line 671
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    return-void
.end method

.method public setKeyguardShown(IZZ)V
    .registers 10

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardAlwaysUnlocked()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setKeyguardShown ignoring always unlocked display "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmWakeAndUnlock(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    if-ne p2, p3, :cond_34

    .line 186
    invoke-static {v0, v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmWakeAndUnlock(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 190
    :cond_34
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    const/4 v3, 0x1

    if-eq p3, v1, :cond_3d

    move v1, v3

    goto :goto_3e

    :cond_3d
    move v1, v2

    .line 193
    :goto_3e
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    if-eq p2, v4, :cond_4a

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmWakeAndUnlock(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    if-eqz v4, :cond_56

    :cond_4a
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    if-eqz v4, :cond_55

    if-eqz p2, :cond_55

    if-nez v1, :cond_55

    goto :goto_56

    :cond_55
    move v3, v2

    :cond_56
    :goto_56
    if-nez v3, :cond_5e

    if-nez v1, :cond_5e

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    return-void

    .line 206
    :cond_5e
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    const-string/jumbo v5, "setKeyguardShown"

    .line 202
    invoke-static {p1, p2, p3, v4, v5}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIILjava/lang/String;)V

    xor-int v4, p3, p2

    if-nez v4, :cond_72

    if-eqz p3, :cond_91

    if-eqz v1, :cond_91

    if-eqz v3, :cond_91

    .line 218
    :cond_72
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    if-nez v4, :cond_91

    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 220
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->state:I

    .line 219
    invoke-static {v4}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 221
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 224
    :cond_91
    invoke-static {v0, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 225
    invoke-static {v0, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    const/4 p3, 0x0

    if-eqz v3, :cond_a5

    .line 237
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/KeyguardController;->dismissMultiWindowModeForTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 239
    invoke-static {v0, v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    if-eqz p2, :cond_a5

    .line 241
    invoke-static {v0, v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 247
    :cond_a5
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 248
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p3, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 249
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    if-eqz v1, :cond_c0

    .line 253
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_c0
    return-void
.end method

.method public final setWakeTransitionReady()V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_21

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 261
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 260
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    :cond_21
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 107
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    return-void
.end method

.method public topActivityOccludesKeyguard(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 161
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmTopOccludesActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final updateKeyguardSleepToken()V
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 644
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 645
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public final updateKeyguardSleepToken(I)V
    .registers 3

    .line 650
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 652
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmSleepTokenAcquirer(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->acquire(I)V

    goto :goto_19

    .line 654
    :cond_12
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmSleepTokenAcquirer(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    :goto_19
    return-void
.end method

.method public updateVisibility()V
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_38

    .line 456
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 457
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_35

    .line 458
    :cond_1f
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v2}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v2

    .line 459
    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->updateVisibility(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V

    .line 460
    invoke-static {v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmRequestDismissKeyguard(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 461
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->handleDismissKeyguard(I)V

    :cond_35
    :goto_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_38
    return-void
.end method

.method public final writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    const/4 v0, 0x0

    .line 900
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 901
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method
