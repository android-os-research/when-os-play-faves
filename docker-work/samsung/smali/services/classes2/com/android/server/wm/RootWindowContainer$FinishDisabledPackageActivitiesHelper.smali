.class public Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinishDisabledPackageActivitiesHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCollectedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mDoit:Z

.field public mEvenPersistent:Z

.field public mFilterByClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastTask:Lcom/android/server/wm/Task;

.field public mOnlyRemoveNoProcess:Z

.field public mPackageName:Ljava/lang/String;

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 2

    .line 3676
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3684
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZIZ)Z"
        }
    .end annotation

    .line 3699
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->reset(Ljava/lang/String;Ljava/util/Set;ZZIZ)V

    .line 3700
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 3703
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    move p4, p3

    :goto_11
    if-ge p3, p1, :cond_60

    .line 3706
    iget-object p5, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/wm/ActivityRecord;

    .line 3707
    iget-boolean p6, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mOnlyRemoveNoProcess:Z

    const-string v0, "force-stop"

    const-string v1, "WindowManager"

    const/4 v2, 0x1

    if-eqz p6, :cond_45

    .line 3708
    invoke-virtual {p5}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result p6

    if-nez p6, :cond_5d

    .line 3710
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "  Force removing "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    invoke-virtual {p5, p2, p2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 3712
    invoke-virtual {p5, v0}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    goto :goto_5c

    .line 3716
    :cond_45
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "  Force finishing "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    invoke-virtual {p5, v0, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :goto_5c
    move p4, v2

    :cond_5d
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    .line 3720
    :cond_60
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return p4
.end method

.method public final reset(Ljava/lang/String;Ljava/util/Set;ZZIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZIZ)V"
        }
    .end annotation

    .line 3688
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mPackageName:Ljava/lang/String;

    .line 3689
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mFilterByClasses:Ljava/util/Set;

    .line 3690
    iput-boolean p3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mDoit:Z

    .line 3691
    iput-boolean p4, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mEvenPersistent:Z

    .line 3692
    iput p5, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    .line 3693
    iput-boolean p6, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mOnlyRemoveNoProcess:Z

    const/4 p1, 0x0

    .line 3694
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mLastTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8

    .line 3727
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mPackageName:Ljava/lang/String;

    .line 3728
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mFilterByClasses:Ljava/util/Set;

    if-eqz v0, :cond_26

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3729
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_28

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    if-ne v0, v3, :cond_28

    :cond_26
    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    .line 3731
    :goto_29
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 3732
    iget v4, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_37

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v5, v4, :cond_64

    :cond_37
    if-nez v0, :cond_41

    .line 3733
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mLastTask:Lcom/android/server/wm/Task;

    if-ne v0, v4, :cond_64

    :cond_41
    if-nez v3, :cond_4f

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mEvenPersistent:Z

    if-nez v0, :cond_4f

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3734
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_64

    .line 3735
    :cond_4f
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mDoit:Z

    if-nez v0, :cond_59

    .line 3736
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p0, :cond_58

    return v2

    :cond_58
    return v1

    .line 3743
    :cond_59
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3744
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mLastTask:Lcom/android/server/wm/Task;

    :cond_64
    return v2
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 3676
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
