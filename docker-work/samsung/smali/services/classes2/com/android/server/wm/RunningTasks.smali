.class public Lcom/android/server/wm/RunningTasks;
.super Ljava/lang/Object;
.source "RunningTasks.java"


# static fields
.field public static final FLAG_ALLOWED:I = 0x2

.field public static final FLAG_CROSS_USERS:I = 0x4

.field public static final FLAG_FILTER_ONLY_VISIBLE_RECENTS:I = 0x1

.field public static final FLAG_KEEP_INTENT_EXTRA:I = 0x8

.field public static final LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAllowed:Z

.field public mCallingUid:I

.field public mCrossUser:Z

.field public mFilterOnlyVisibleRecents:Z

.field public mKeepIntentExtra:Z

.field public mProfileIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public mTmpLastActiveTime:J

.field public final mTmpSortedSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I


# direct methods
.method public static synthetic $r8$lambda$B-cYKGGJt1O3p9QNbYkyuf7SfPA(Lcom/android/server/wm/RunningTasks;Lcom/android/server/wm/Task;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RunningTasks;->processTask(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$aFBbfqyz8Q9KhX3puvL-WHTqL88(Lcom/android/server/wm/RunningTasks;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RunningTasks;->processTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wq4k8UkeXfhaTfItYBOyypUdqO8(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RunningTasks;->lambda$static$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/wm/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/server/wm/RunningTasks;->LAST_ACTIVE_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 8

    .line 57
    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iget-wide v2, p1, Lcom/android/server/wm/Task;->lastActiveTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3d

    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v3

    :goto_19
    int-to-long v0, v0

    .line 62
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    iget-object v5, p1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayId()I

    move-result v5

    if-ne v4, v5, :cond_27

    goto :goto_28

    :cond_27
    move v2, v3

    :goto_28
    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_37

    .line 65
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    goto :goto_3c

    :cond_37
    sub-long/2addr v2, v0

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    move-result p0

    :goto_3c
    return p0

    :cond_3d
    cmp-long v4, v0, v2

    if-nez v4, :cond_4b

    .line 70
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    goto :goto_50

    :cond_4b
    sub-long/2addr v2, v0

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    move-result p0

    :goto_50
    return p0
.end method


# virtual methods
.method public final createRunningTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 4

    .line 215
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 216
    iget-boolean v1, p0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 218
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 220
    iget-boolean p0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    if-nez p0, :cond_17

    .line 221
    invoke-static {p1, v0}, Lcom/android/server/wm/Task;->trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V

    :cond_17
    return-object v0
.end method

.method public getTasks(ILjava/util/List;ILcom/android/server/wm/RootWindowContainer;ILandroid/util/ArraySet;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I",
            "Lcom/android/server/wm/RootWindowContainer;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 92
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;ILcom/android/server/wm/RootWindowContainer;ILandroid/util/ArraySet;Z)V

    return-void
.end method

.method public getTasks(ILjava/util/List;ILcom/android/server/wm/RootWindowContainer;ILandroid/util/ArraySet;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I",
            "Lcom/android/server/wm/RootWindowContainer;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-gtz p1, :cond_3

    return-void

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 106
    iput p5, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    .line 107
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p5

    iput p5, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    and-int/lit8 p5, p3, 0x4

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p5, v0, :cond_19

    move p5, v2

    goto :goto_1a

    :cond_19
    move p5, v1

    .line 108
    :goto_1a
    iput-boolean p5, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    .line 109
    iput-object p6, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    and-int/lit8 p5, p3, 0x2

    const/4 p6, 0x2

    if-ne p5, p6, :cond_25

    move p5, v2

    goto :goto_26

    :cond_25
    move p5, v1

    .line 110
    :goto_26
    iput-boolean p5, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    and-int/lit8 p5, p3, 0x1

    if-ne p5, v2, :cond_2e

    move p5, v2

    goto :goto_2f

    :cond_2e
    move p5, v1

    .line 111
    :goto_2f
    iput-boolean p5, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    .line 113
    iget-object p5, p4, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p5}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p5

    iput-object p5, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    const/16 p5, 0x8

    and-int/2addr p3, p5

    if-ne p3, p5, :cond_40

    move p3, v2

    goto :goto_41

    :cond_40
    move p3, v1

    .line 114
    :goto_41
    iput-boolean p3, p0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    if-eqz p7, :cond_63

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p5

    iput-wide p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpLastActiveTime:J

    .line 119
    new-instance p3, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;-><init>()V

    const-class p5, Lcom/android/server/wm/Task;

    .line 120
    invoke-static {p5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object p5

    sget-object p6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    invoke-static {p3, p0, p5, p6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p3

    .line 121
    invoke-virtual {p4, p3, v2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 122
    invoke-interface {p3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    goto :goto_78

    .line 125
    :cond_63
    new-instance p3, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;-><init>()V

    const-class p5, Lcom/android/server/wm/Task;

    .line 126
    invoke-static {p5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object p5

    .line 125
    invoke-static {p3, p0, p5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p3

    .line 127
    invoke-virtual {p4, p3, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 128
    invoke-interface {p3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 132
    :goto_78
    iget-object p3, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {p3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 133
    :goto_7e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a0

    if-nez p1, :cond_87

    goto :goto_a0

    .line 138
    :cond_87
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/Task;

    if-eqz p7, :cond_96

    .line 140
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p5

    if-nez p5, :cond_96

    goto :goto_7e

    .line 144
    :cond_96
    invoke-virtual {p0, p4}, Lcom/android/server/wm/RunningTasks;->createRunningTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_7e

    :cond_a0
    :goto_a0
    return-void
.end method

.method public final processTask(Lcom/android/server/wm/Task;)V
    .registers 3

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RunningTasks;->processTask(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public final processTask(Lcom/android/server/wm/Task;Z)V
    .registers 7

    .line 156
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 160
    :cond_7
    iget v0, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    if-eq v0, v1, :cond_29

    .line 161
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    if-eq v0, v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    .line 166
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    if-nez v0, :cond_29

    return-void

    .line 171
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    if-eqz v0, :cond_44

    .line 172
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_44

    .line 173
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 174
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_44

    return-void

    .line 180
    :cond_44
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_50

    .line 184
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_50
    if-eqz p2, :cond_57

    .line 190
    iget-wide v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpLastActiveTime:J

    iput-wide v0, p1, Lcom/android/server/wm/Task;->lastActiveTime:J

    goto :goto_5a

    .line 193
    :cond_57
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 195
    :goto_5a
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result p2

    if-nez p2, :cond_6e

    .line 202
    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastActiveTime:J

    iget-object p2, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 210
    :cond_6e
    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedSet:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
