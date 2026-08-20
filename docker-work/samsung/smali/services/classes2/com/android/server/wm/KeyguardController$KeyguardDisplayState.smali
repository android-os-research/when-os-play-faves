.class public Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyguardDisplayState"
.end annotation


# instance fields
.field public mAodShowing:Z

.field public mDismissalRequested:Z

.field public mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mDisplayId:I

.field public mKeyguardGoingAway:Z

.field public mKeyguardShowing:Z

.field public mOccluded:Z

.field public mRequestDismissKeyguard:Z

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mShowingDream:Z

.field public final mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field public mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

.field public mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

.field public mWakeAndUnlock:Z


# direct methods
.method public static synthetic $r8$lambda$7D6Vf0BnuQPZ0-EfbzNrErvE-BE(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->lambda$getRootTaskForControllingOccluding$0(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDismissingKeyguardActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestDismissKeyguard(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowingDream(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mShowingDream:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSleepTokenAcquirer(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopOccludesActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeAndUnlock(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mWakeAndUnlock:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWakeAndUnlock(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mWakeAndUnlock:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;)V
    .registers 4

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 715
    iput p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 716
    iput-object p3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    return-void
.end method

.method public static synthetic lambda$getRootTaskForControllingOccluding$0(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z
    .registers 3

    if-eqz p1, :cond_1c

    .line 834
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 836
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 837
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 864
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 865
    iget v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 866
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 867
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 868
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const-wide v0, 0x10800000004L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 869
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " KeyguardShowing="

    .line 844
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 845
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " AodShowing="

    .line 846
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 847
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " KeyguardGoingAway="

    .line 848
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 849
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " DismissalRequested="

    .line 850
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    .line 851
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  Occluded="

    .line 852
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 853
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " DismissingKeyguardActivity="

    .line 854
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 855
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " TurnScreenOnActivity="

    .line 856
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 857
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " at display="

    .line 858
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 859
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getRootTaskForControllingOccluding(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;
    .registers 2

    .line 833
    new-instance p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public onRemoved()V
    .registers 2

    const/4 v0, 0x0

    .line 720
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 721
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 722
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 723
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    iget p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-interface {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    return-void
.end method

.method public updateVisibility(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V
    .registers 14

    .line 732
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 733
    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 735
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 736
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    .line 738
    iput-boolean v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 739
    iput-boolean v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 740
    iput-boolean v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mShowingDream:Z

    const/4 v5, 0x0

    .line 742
    iput-object v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 743
    iput-object v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 744
    iput-object v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 747
    invoke-virtual {p0, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->getRootTaskForControllingOccluding(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 748
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    goto :goto_22

    :cond_21
    move-object v7, v5

    :goto_22
    const/4 v8, 0x1

    if-eqz v7, :cond_8f

    .line 750
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 751
    iput-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 753
    :cond_2d
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 754
    iput-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 757
    :cond_3b
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v9

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->-$$Nest$fgetmService(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v10

    .line 758
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v10

    .line 757
    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v9

    .line 759
    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    if-eqz v10, :cond_58

    iget-boolean v10, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    if-eqz v10, :cond_58

    if-nez v9, :cond_58

    .line 760
    iput-boolean v8, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    goto :goto_60

    .line 761
    :cond_58
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v9

    if-eqz v9, :cond_60

    .line 762
    iput-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 767
    :cond_60
    :goto_60
    iget-object v9, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v9, :cond_79

    iget-object v9, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_77

    .line 769
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v6, v9, :cond_77

    .line 770
    invoke-virtual {p1, v8, v4}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v6

    if-eqz v6, :cond_77

    goto :goto_79

    :cond_77
    move v6, v4

    goto :goto_7a

    :cond_79
    :goto_79
    move v6, v8

    .line 773
    :goto_7a
    iget v9, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-eqz v9, :cond_90

    .line 774
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->canShowWithInsecureKeyguard()Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 775
    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v9

    if-eqz v9, :cond_8c

    move v9, v8

    goto :goto_8d

    :cond_8c
    move v9, v4

    :goto_8d
    or-int/2addr v6, v9

    goto :goto_90

    :cond_8f
    move v6, v4

    .line 779
    :cond_90
    :goto_90
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isShowingDreamLw()Z

    move-result v9

    if-eqz v9, :cond_a5

    if-eqz v7, :cond_a5

    .line 780
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v9, :cond_a5

    move v7, v8

    goto :goto_a6

    :cond_a5
    move v7, v4

    :goto_a6
    iput-boolean v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mShowingDream:Z

    if-nez v7, :cond_af

    if-eqz v6, :cond_ad

    goto :goto_af

    :cond_ad
    move v7, v4

    goto :goto_b0

    :cond_af
    :goto_af
    move v7, v8

    .line 781
    :goto_b0
    iput-boolean v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 782
    iget-object v9, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, v9, :cond_bf

    if-nez v7, :cond_bf

    iget-boolean v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    if-nez v7, :cond_bf

    if-eqz v9, :cond_bf

    goto :goto_c0

    :cond_bf
    move v8, v4

    :goto_c0
    iput-boolean v8, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 786
    iget-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v7, v3, :cond_100

    if-eqz v7, :cond_100

    iget-object v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 788
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_100

    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    if-nez v3, :cond_da

    if-eqz v6, :cond_100

    .line 790
    :cond_da
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->-$$Nest$fgetmTaskSupervisor(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTurnScreenOn"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 793
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    .line 798
    :cond_100
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, v3, :cond_11c

    if-eqz v3, :cond_114

    .line 800
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/app/ActivityManagerInternal;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    goto :goto_11c

    .line 802
    :cond_114
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v3, -0x1

    invoke-virtual {v2, v5, v3}, Landroid/app/ActivityManagerInternal;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    .line 808
    :cond_11c
    :goto_11c
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eq v0, v2, :cond_165

    .line 809
    iget p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/KeyguardController;->-$$Nest$mhandleOccludedChanged(Lcom/android/server/wm/KeyguardController;ILcom/android/server/wm/ActivityRecord;)V

    .line 811
    iget p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-nez p1, :cond_16e

    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz p1, :cond_16e

    iget-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 812
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isPrepareOccluding()Z

    move-result p1

    if-nez p1, :cond_16e

    iget-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isOccluding()Z

    move-result p1

    if-eqz p1, :cond_16e

    .line 813
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_15f

    .line 814
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "visibilitiesUpdated, mOccluding is set to false, caller="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    .line 815
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    .line 814
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_15f
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->setOccluding(Z)V

    goto :goto_16e

    :cond_165
    if-nez v1, :cond_16e

    .line 820
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    if-eqz p0, :cond_16e

    .line 821
    invoke-static {p1, p2}, Lcom/android/server/wm/KeyguardController;->-$$Nest$mhandleKeyguardGoingAwayChanged(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V

    :cond_16e
    :goto_16e
    return-void
.end method
