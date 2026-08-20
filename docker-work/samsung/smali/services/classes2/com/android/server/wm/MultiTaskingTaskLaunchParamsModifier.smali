.class public Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "MultiTaskingTaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field public static final BOUNDS_CONFLICT_THRESHOLD:I = 0x4

.field public static final CASCADING_OFFSET_DP:I = 0x4b

.field public static final DEBUG:Z = true

.field public static final DEFAULT_PORTRAIT_PHONE_HEIGHT_DP:I = 0x2dc

.field public static final DEFAULT_PORTRAIT_PHONE_WIDTH_DP:I = 0x19c

.field public static final DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

.field public static final DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

.field public static final EPSILON:I = 0x2

.field public static final MINIMAL_STEP:I = 0x1

.field public static final STEP_DENOMINATOR:I = 0x10

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mDefaultFreeformStepHorizontal:I

.field public mDefaultFreeformStepVertical:I

.field public mLogBuilder:Ljava/lang/StringBuilder;

.field public final mSnappingBounds:Landroid/graphics/Rect;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpBounds2:Landroid/graphics/Rect;

.field public final mTmpDirections:[I

.field public mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

.field public final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$TuRRmHjEYcKLKJZyEM3QdVLDy10(Lcom/android/server/wm/Task;Ljava/lang/String;Landroid/graphics/Rect;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->filterCheckBounds(Lcom/android/server/wm/Task;Ljava/lang/String;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dgq-BO3ziWIsKDPDvxkbQPwDhqU(Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;IILcom/android/server/wm/TaskDisplayArea;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->lambda$calculate$0(IILcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vN6FxqZOl7nKRuqNNFxTmmT-Uko(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;Lcom/android/server/wm/Task;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->lambda$adjustBoundsToAvoidConflictInDisplayArea$1(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 131
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3ed70a3d    # 0.42f

    const v2, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    .line 132
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 118
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSnappingBounds:Landroid/graphics/Rect;

    .line 144
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 145
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static filterCheckBounds(Lcom/android/server/wm/Task;Ljava/lang/String;Landroid/graphics/Rect;)Z
    .registers 5

    .line 1801
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    :cond_8
    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1808
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1809
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    return v1

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$adjustBoundsToAvoidConflictInDisplayArea$1(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;Lcom/android/server/wm/Task;)V
    .registers 7

    .line 1399
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1404
    :cond_7
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->isUnderHomeRootTask()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p4}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_3c

    .line 1407
    :cond_14
    new-instance v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>()V

    const-class v1, Lcom/android/server/wm/Task;

    .line 1409
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 1407
    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p0

    .line 1410
    invoke-virtual {p4, p0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p1

    .line 1411
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz p1, :cond_3c

    if-eqz p2, :cond_35

    .line 1412
    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_3c

    .line 1415
    :cond_35
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method private synthetic lambda$calculate$0(IILcom/android/server/wm/TaskDisplayArea;)Z
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move v1, p1

    move v2, p2

    .line 593
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 599
    :cond_e
    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 p0, 0x1

    return p0
.end method

.method public static orientationFromBounds(Landroid/graphics/Rect;)I
    .registers 2

    .line 1636
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_c

    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

    .line 1641
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    .line 1642
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method


# virtual methods
.method public adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            "Z)V"
        }
    .end annotation

    .line 1448
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1454
    :cond_7
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 1460
    :cond_e
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1462
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_d9

    aget v4, v0, v3

    if-nez v4, :cond_1e

    goto/16 :goto_d9

    .line 1468
    :cond_1e
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v5, v2

    .line 1472
    :goto_24
    iget-object v6, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_ab

    iget-object v6, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 1473
    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_36

    if-eqz p4, :cond_ab

    .line 1479
    :cond_36
    iget-object v6, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->shiftFreeformBounds(ILandroid/graphics/Rect;)V

    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0xc8

    if-le v5, v7, :cond_a8

    .line 1485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, inOutBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mTmpBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", displayBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mDefaultFreeformStepHorizontal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mDefaultFreeformStepVertical="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    .line 1491
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    .line 1485
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, adjusted proposal="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", break!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    :cond_a8
    move v5, v6

    goto/16 :goto_24

    .line 1503
    :cond_ab
    :goto_ab
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_d5

    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 1504
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 1506
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "avoid-bounds-conflict="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_d5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    :cond_d9
    :goto_d9
    return-void
.end method

.method public final adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1390
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V
    .registers 8

    .line 1397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1398
    new-instance v1, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p4, p5, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;)V

    const/4 p3, 0x0

    invoke-virtual {p1, v1, p3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 1423
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public final adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 6

    .line 1325
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 1333
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 1336
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt p1, v1, :cond_40

    .line 1337
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge p1, v1, :cond_1a

    goto :goto_40

    .line 1350
    :cond_1a
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    if-le p0, p1, :cond_23

    :goto_21
    sub-int/2addr p1, p0

    goto :goto_2b

    .line 1353
    :cond_23
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    if-ge p0, p1, :cond_2a

    goto :goto_21

    :cond_2a
    move p1, v1

    .line 1362
    :goto_2b
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge p0, v2, :cond_34

    sub-int v1, v2, p0

    goto :goto_3c

    .line 1365
    :cond_34
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_3c

    sub-int v1, v0, p0

    .line 1372
    :cond_3c
    :goto_3c
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void

    .line 1340
    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_58

    .line 1343
    iget p0, v0, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    goto :goto_5a

    .line 1344
    :cond_58
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 1345
    :goto_5a
    iget p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method public final adjustPersistFreeformBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V
    .registers 9

    .line 1866
    iget-object p2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 1867
    iget-object v0, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1869
    iget v0, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 1870
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 1872
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1873
    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->getBaseDisplayRect(Landroid/graphics/Rect;)V

    .line 1874
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->rotateDisplayRect(Landroid/graphics/Rect;II)V

    .line 1875
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    iget-object v3, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p0, v3

    .line 1876
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object p2, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v3, p0, p2

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_4c

    .line 1878
    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 1879
    iget v3, p3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v3, v4

    float-to-int p0, v3

    iput p0, p3, Landroid/graphics/Rect;->right:I

    :cond_4c
    cmpl-float p0, v2, p2

    if-eqz p0, :cond_60

    .line 1882
    iget p0, p3, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->top:I

    .line 1883
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_60
    if-eq v0, v1, :cond_65

    .line 1887
    invoke-virtual {p1, v0, v1, p3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    :cond_65
    return-void
.end method

.method public final appendLog(Ljava/lang/String;)V
    .registers 3

    .line 1628
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 1571
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 1572
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v0

    .line 1574
    :goto_21
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v2, :cond_2e

    move v4, v3

    goto :goto_2f

    :cond_2e
    move v4, v0

    .line 1576
    :goto_2f
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_3c

    move v5, v3

    goto :goto_3d

    :cond_3c
    move v5, v0

    .line 1578
    :goto_3d
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v2, :cond_49

    move v0, v3

    :cond_49
    if-eqz v1, :cond_4d

    if-nez v4, :cond_59

    :cond_4d
    if-eqz v1, :cond_51

    if-nez v0, :cond_59

    :cond_51
    if-eqz v5, :cond_55

    if-nez v4, :cond_59

    :cond_55
    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    :cond_59
    return v3

    :cond_5a
    return v0
.end method

.method public final calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 35

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v7, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    if-eqz v9, :cond_22

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1c

    move-object v0, v7

    goto :goto_20

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_20
    move-object v6, v0

    goto :goto_23

    :cond_22
    move-object v6, v7

    :goto_23
    const/4 v5, 0x0

    if-nez v6, :cond_27

    return v5

    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move v14, v5

    move-object/from16 v5, p3

    move-object/from16 v16, v6

    move-object/from16 v6, p6

    .line 181
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 183
    iput-object v6, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 184
    iget-object v5, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " display-windowing-mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " suggested-display-area="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v7, :cond_cc

    .line 193
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_cc

    .line 194
    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_cc

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8d

    .line 197
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_8d

    .line 198
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_95

    .line 200
    :cond_8d
    iget-object v2, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0, v14}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_95
    if-eqz v0, :cond_9c

    .line 203
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    goto :goto_9d

    :cond_9c
    move-object v0, v4

    :goto_9d
    if-eqz v0, :cond_cc

    .line 209
    iput-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tda-from-lott="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_cc
    const/4 v3, 0x2

    if-nez v13, :cond_d0

    return v3

    .line 226
    :cond_d0
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105030d

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    const v1, 0x105030c

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 252
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v0

    if-eqz v0, :cond_fa

    const/4 v0, 0x1

    goto :goto_10f

    :cond_fa
    if-eqz v12, :cond_107

    .line 256
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    if-eqz v0, :cond_107

    .line 257
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    goto :goto_10f

    :cond_107
    if-eqz v12, :cond_10e

    .line 260
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_10f

    :cond_10e
    move v0, v14

    :goto_10f
    if-nez v0, :cond_133

    .line 267
    invoke-virtual {v8, v5, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 268
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inherit-from-source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v8, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_133
    move v1, v0

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object v1, v5

    const/4 v14, 0x1

    move/from16 v2, v17

    move v14, v3

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    move-object/from16 v19, v5

    move-object/from16 v5, p4

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    .line 290
    iget-object v1, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    move/from16 v1, v17

    if-nez v0, :cond_15b

    .line 291
    invoke-virtual {v8, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_1bb

    :cond_15b
    if-eq v1, v14, :cond_15f

    :goto_15d
    const/4 v1, 0x5

    goto :goto_162

    :cond_15f
    if-nez v1, :cond_162

    goto :goto_15d

    .line 307
    :cond_162
    :goto_162
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v0, :cond_18c

    if-eqz v2, :cond_18c

    .line 314
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v4, v19

    .line 315
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 316
    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v7, v3, :cond_186

    .line 317
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 318
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    add-int/2addr v3, v5

    .line 317
    invoke-virtual {v2, v7, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_186
    if-eqz v9, :cond_18e

    .line 322
    invoke-virtual {v9, v2}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    goto :goto_18e

    :cond_18c
    move-object/from16 v4, v19

    .line 326
    :cond_18e
    :goto_18e
    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity-options-bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v5, p8

    move-object/from16 v7, v16

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto/16 :goto_295

    :cond_1b9
    move/from16 v1, v17

    :cond_1bb
    move-object/from16 v4, v19

    if-ne v1, v14, :cond_1cc

    const-string v2, "empty-window-layout-for-pip"

    .line 330
    invoke-virtual {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_1c4
    move-object/from16 v5, p8

    move-object/from16 v7, v16

    const/16 v18, 0x0

    goto/16 :goto_291

    :cond_1cc
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e6

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity-options-fullscreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_1c4

    :cond_1e6
    if-eqz v10, :cond_231

    if-eqz v0, :cond_231

    .line 371
    iget-object v2, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move-object/from16 v5, p8

    const/16 v18, 0x0

    iget-object v3, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 374
    invoke-virtual {v8, v6, v10, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->recalculateLayout(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v2

    .line 376
    iget-object v3, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move-object/from16 v7, v16

    invoke-virtual {v8, v6, v7, v2, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 381
    iget-object v2, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22b

    .line 383
    iget-object v1, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v2, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounds-from-layout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v1, 0x5

    const/16 v16, 0x1

    const/16 v19, 0x1

    goto :goto_295

    :cond_22b
    const-string v2, "empty-window-layout"

    .line 388
    invoke-virtual {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_291

    :cond_231
    move-object/from16 v5, p8

    move-object/from16 v7, v16

    const/16 v18, 0x0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_262

    if-eqz v12, :cond_262

    .line 391
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_262

    .line 392
    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multiwindow-activity-options-bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_285

    :cond_262
    if-eqz v0, :cond_28a

    .line 397
    invoke-virtual {v8, v4, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canApplyFreeformPersistentBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 398
    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v5, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustPersistFreeformBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeform-persistent-bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_285
    move/from16 v19, v18

    const/16 v16, 0x1

    goto :goto_295

    :cond_28a
    if-eqz v0, :cond_291

    const/4 v2, 0x5

    if-ne v1, v2, :cond_291

    .line 405
    iput v2, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :cond_291
    :goto_291
    move/from16 v16, v18

    move/from16 v19, v16

    .line 431
    :goto_295
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_322

    if-nez v16, :cond_322

    iget-object v2, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_2ab

    .line 433
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 434
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_322

    .line 437
    :cond_2ab
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2df

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2df

    if-eqz v0, :cond_2bd

    const/4 v0, 0x5

    if-ne v1, v0, :cond_2be

    goto :goto_2c0

    :cond_2bd
    const/4 v0, 0x5

    .line 444
    :cond_2be
    iget v1, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :goto_2c0
    if-eq v1, v0, :cond_2c4

    const/4 v0, 0x1

    goto :goto_2c6

    :cond_2c4
    move/from16 v0, v18

    .line 448
    :goto_2c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inherit-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_2e6

    .line 455
    :cond_2df
    iget-object v0, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move/from16 v0, v18

    .line 459
    :goto_2e6
    iget-object v2, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31d

    .line 465
    iget v2, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 466
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_2f9

    goto :goto_31d

    .line 470
    :cond_2f9
    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, 0x5

    if-ne v1, v3, :cond_31e

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inherit-bounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v2, v1

    const/16 v17, 0x1

    goto :goto_326

    :cond_31d
    :goto_31d
    const/4 v3, 0x5

    :cond_31e
    move/from16 v17, v0

    move v2, v1

    goto :goto_326

    :cond_322
    const/4 v3, 0x5

    move v2, v1

    move/from16 v17, v18

    .line 490
    :goto_326
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_39c

    if-ne v2, v14, :cond_336

    const-string/jumbo v0, "picture-in-picture"

    .line 492
    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_394

    .line 493
    :cond_336
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_394

    .line 497
    invoke-virtual {v8, v7, v6, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_37e

    const/16 v20, 0x5

    .line 499
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36c

    .line 500
    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v22, v2

    move-object v2, v6

    move/from16 v23, v3

    move-object/from16 v3, p2

    move-object/from16 p3, v4

    move/from16 v4, v20

    move/from16 v5, v16

    move-object v14, v6

    move-object/from16 v6, v22

    move-object/from16 v22, v7

    move-object/from16 v7, v21

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V

    const/4 v5, 0x1

    goto :goto_375

    :cond_36c
    move/from16 v23, v3

    move-object/from16 p3, v4

    move-object v14, v6

    move-object/from16 v22, v7

    move/from16 v5, v18

    :goto_375
    const-string/jumbo v0, "unresizable-freeform"

    .line 505
    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v2, v20

    goto :goto_3aa

    :cond_37e
    move/from16 v23, v3

    move-object/from16 p3, v4

    move-object v14, v6

    move-object/from16 v22, v7

    .line 508
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const-string/jumbo v0, "unresizable-forced-maximize"

    .line 509
    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v5, v18

    const/4 v2, 0x1

    goto :goto_3aa

    :cond_394
    :goto_394
    move/from16 v23, v3

    move-object/from16 p3, v4

    move-object v14, v6

    move-object/from16 v22, v7

    goto :goto_3a8

    :cond_39c
    move/from16 v23, v3

    move-object/from16 p3, v4

    move-object v14, v6

    move-object/from16 v22, v7

    const-string v0, "non-freeform-display"

    .line 513
    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_3a8
    move/from16 v5, v18

    :goto_3aa
    if-nez v2, :cond_40c

    .line 517
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_40c

    .line 518
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_40c

    .line 519
    invoke-virtual {v14, v0}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_3e4

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v1

    if-nez v1, :cond_3e4

    .line 520
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notMinimizedFreeform-to-display-windowing-mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-virtual {v8, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v7, p3

    move v4, v0

    goto :goto_40f

    .line 525
    :cond_3e4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    move-object/from16 v7, p3

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40e

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freeform-task"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-static/range {v23 .. v23}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v4, v23

    move v6, v4

    goto :goto_411

    :cond_40c
    move-object/from16 v7, p3

    :cond_40e
    move v4, v2

    :goto_40f
    move/from16 v6, v23

    :goto_411
    if-ne v4, v6, :cond_417

    .line 535
    iput v4, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :goto_415
    const/4 v0, 0x1

    goto :goto_424

    .line 539
    :cond_417
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-ne v4, v0, :cond_420

    move/from16 v0, v18

    goto :goto_421

    :cond_420
    move v0, v4

    .line 540
    :goto_421
    iput v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_415

    :goto_424
    if-ne v13, v0, :cond_428

    const/4 v0, 0x2

    return v0

    :cond_428
    if-eqz v4, :cond_42c

    move v3, v4

    goto :goto_431

    .line 585
    :cond_42c
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    move v3, v0

    :goto_431
    if-eqz v12, :cond_447

    .line 589
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_43a

    goto :goto_447

    :cond_43a
    move/from16 p3, v3

    move v10, v6

    move-object/from16 v24, v7

    move-object v2, v14

    move/from16 v5, v16

    move-object/from16 v21, v22

    const/4 v7, 0x0

    goto/16 :goto_4e4

    .line 590
    :cond_447
    :goto_447
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v2, v22

    .line 591
    invoke-virtual {v0, v2, v12, v9}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v1

    .line 592
    new-instance v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;

    invoke-direct {v0, v8, v3, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;II)V

    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    .line 604
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_476

    if-eq v0, v14, :cond_476

    if-eqz v19, :cond_480

    .line 606
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 607
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v4, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2, v10, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 608
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    xor-int/lit8 v16, v0, 0x1

    :cond_476
    move/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 p3, v3

    move v10, v6

    move-object/from16 v24, v7

    goto :goto_4a8

    :cond_480
    if-eqz v5, :cond_476

    .line 610
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 611
    iget-object v5, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/16 v18, 0x0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object v1, v2

    move-object/from16 v21, v2

    move-object v2, v5

    move v5, v3

    move-object/from16 v3, p2

    move/from16 p3, v5

    move/from16 v5, v16

    move v10, v6

    move-object/from16 v6, v19

    move-object/from16 v24, v7

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V

    .line 617
    :goto_4a8
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v7, 0x0

    if-eqz v0, :cond_4e1

    .line 619
    iput-object v7, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overridden-display-area=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-static/range {v20 .. v20}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static/range {p3 .. p3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-virtual {v8, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_4e2

    :cond_4e1
    move-object v2, v14

    :goto_4e2
    move/from16 v5, v16

    .line 626
    :goto_4e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display-area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 627
    iput-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v0, 0x2

    if-ne v13, v0, :cond_4fe

    return v0

    :cond_4fe
    if-eqz v17, :cond_517

    move/from16 v13, p3

    if-ne v13, v10, :cond_514

    move-object/from16 v0, p8

    .line 642
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v0, v2, :cond_50f

    .line 643
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 647
    :cond_50f
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    :cond_514
    :goto_514
    const/4 v0, 0x2

    goto/16 :goto_603

    :cond_517
    move/from16 v13, p3

    .line 651
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_55e

    if-eqz v12, :cond_55e

    .line 652
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->isApplyBigFreeformSize()Z

    move-result v0

    if-eqz v0, :cond_55e

    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 653
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55e

    .line 654
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v12, v24

    .line 655
    invoke-virtual {v12, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 656
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_542

    const v1, 0x3f733333    # 0.95f

    .line 657
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 659
    :cond_542
    iget-object v1, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "big-freeform-bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_514

    :cond_55e
    move-object/from16 v12, v24

    .line 662
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_56c

    .line 665
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_514

    :cond_56c
    if-eqz v11, :cond_597

    .line 666
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_597

    if-ne v13, v10, :cond_597

    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 668
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_597

    .line 669
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-ne v0, v2, :cond_597

    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v0, :cond_597

    .line 675
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 681
    :cond_597
    iget-object v6, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v3, p2

    move v4, v13

    move-object v14, v7

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V

    if-eqz v9, :cond_514

    .line 689
    iget-boolean v0, v12, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_514

    .line 690
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_514

    if-ne v13, v10, :cond_514

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v0

    if-eqz v0, :cond_5c1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5c1

    goto :goto_5d9

    .line 694
    :cond_5c1
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5cc

    .line 695
    iget-object v4, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    goto :goto_5da

    .line 696
    :cond_5cc
    iget-object v0, v9, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5d9

    .line 697
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d9

    .line 698
    iget-object v4, v9, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_5da

    :cond_5d9
    :goto_5d9
    move-object v4, v14

    :goto_5da
    if-eqz v4, :cond_514

    .line 701
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 702
    iget-object v1, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 703
    iget-object v1, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 704
    invoke-virtual {v1}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object v1

    .line 706
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getFreeformStashState()I

    move-result v2

    .line 707
    iget-object v3, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v0, v3, v4}, Lcom/android/server/wm/TaskMotionController;->computeStashState(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    if-eq v2, v0, :cond_514

    .line 710
    invoke-virtual {v9, v0}, Lcom/android/server/wm/Task;->setFreeformStashState(I)V

    .line 711
    invoke-virtual {v9, v0}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskStashing(I)V

    goto/16 :goto_514

    :goto_603
    return v0
.end method

.method public final calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 9

    const/4 p3, 0x0

    move v0, p3

    .line 1528
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v2, v1

    if-ge v0, v2, :cond_c

    .line 1529
    aput p3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1539
    :cond_c
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v0, 0x2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    const/4 v3, 0x3

    div-int/2addr v1, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 1540
    div-int/2addr v0, v3

    .line 1541
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v1, :cond_25

    .line 1544
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    aput v4, p0, p3

    return-void

    :cond_25
    if-le v2, v0, :cond_2c

    .line 1548
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    aput v3, p0, p3

    return-void

    .line 1552
    :cond_2c
    iget v0, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v0, 0x2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    div-int/2addr v1, v3

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 1553
    div-int/2addr v0, v3

    .line 1554
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, v1, :cond_4d

    if-le p1, v0, :cond_42

    goto :goto_4d

    .line 1565
    :cond_42
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 p1, 0x55

    aput p1, p0, p3

    const/16 p1, 0x33

    .line 1566
    aput p1, p0, p2

    return-void

    .line 1558
    :cond_4d
    :goto_4d
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    aput v4, p0, p3

    .line 1559
    aput v3, p0, p2

    return-void
.end method

.method public final canApplyDexPolicy(Lcom/android/server/wm/DisplayContent;I)Z
    .registers 3

    .line 1963
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p0

    if-eqz p0, :cond_d

    if-eqz p2, :cond_b

    const/4 p0, 0x5

    if-ne p2, p0, :cond_d

    :cond_b
    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final canApplyFreeformPersistentBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .registers 3

    .line 1900
    iget-boolean p0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p0

    if-nez p0, :cond_12

    .line 1904
    invoke-virtual {p2}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasValidFreeformPersistBounds()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6

    const/4 p3, 0x1

    if-eqz p4, :cond_1d

    .line 943
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p5

    if-eqz p5, :cond_1d

    const/4 p5, 0x6

    if-eq p2, p5, :cond_1d

    .line 945
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1d

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result p4

    if-nez p4, :cond_1d

    return p3

    .line 949
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p0, :cond_2f

    .line 950
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_30

    const/4 p0, 0x5

    if-ne p2, p0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 p3, 0x0

    :cond_30
    :goto_30
    return p3
.end method

.method public final canApplyPipWindowPolicy(I)Z
    .registers 2

    .line 954
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz p0, :cond_d

    const/4 p0, 0x2

    if-ne p1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    .line 915
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_b

    return p0

    .line 919
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v2, 0x5

    if-eq v0, v2, :cond_16

    return p0

    .line 928
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p2

    if-ne p1, p2, :cond_21

    move p0, v1

    :cond_21
    return p0
.end method

.method public final cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 6

    .line 1099
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1100
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1103
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 1106
    iget p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1107
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1106
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1108
    iget v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    .line 1109
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1108
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 1110
    invoke-virtual {p3, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V
    .registers 6

    .line 1315
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1316
    invoke-virtual {p1, p4}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 1318
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    div-int/lit8 p1, p2, 0x2

    sub-int/2addr p0, p1

    .line 1319
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p1, v0

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    .line 1320
    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final convertOrientationToScreenOrientation(I)I
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_9

    const/4 p0, 0x2

    if-eq p1, p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    :cond_9
    return p0
.end method

.method public final getCustomFreeformSize(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 4

    .line 1781
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1783
    invoke-static {v0, p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1788
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 1789
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 1791
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 1792
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 1794
    :cond_1c
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge p1, v0, :cond_2c

    .line 1795
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_2c
    return-void
.end method

.method public final getDefaultFreeformSize(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V
    .registers 6

    .line 1241
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getCustomFreeformSize(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getDexMetaDataBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z
    .registers 15

    if-eqz p2, :cond_7

    .line 1913
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getDexMetadataLaunchSize()Landroid/graphics/Point;

    move-result-object p2

    goto :goto_21

    .line 1915
    :cond_7
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1917
    invoke-static {v0}, Lcom/android/server/wm/DexController;->parseDexMetadata(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/DexController$DexMetaDataInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    iget-boolean v2, p3, Lcom/android/server/wm/ActivityRecord;->mIsDexCompatEnabled:Z

    .line 1918
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    .line 1916
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/server/wm/DexController;->getDexMetadataLaunchSizeLocked(Lcom/android/server/wm/DexController$DexMetaDataInfo;IZI)Landroid/graphics/Point;

    move-result-object p2

    :goto_21
    const/4 v0, 0x0

    if-eqz p2, :cond_65

    .line 1921
    iget v1, p2, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_35

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_35

    .line 1922
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    const-string p1, "dex-fullscreen-metadata-bounds"

    .line 1923
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_63

    .line 1925
    :cond_35
    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1926
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_4a

    iget v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_4a

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_5e

    .line 1929
    :cond_4a
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v3, p2, Landroid/graphics/Point;->x:I

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p2, Landroid/graphics/Point;->y:I

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v7, 0x11

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1932
    :cond_5e
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    :goto_63
    const/4 p0, 0x1

    return p0

    :cond_65
    return v0
.end method

.method public final getDexPreferredLaunchDisplay(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/TaskDisplayArea;
    .registers 6

    .line 1697
    iget-object p1, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz p1, :cond_9

    .line 1698
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, -0x1

    .line 1700
    :goto_a
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1701
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_19

    .line 1704
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    :cond_19
    return-object p1
.end method

.method public final getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 6

    .line 878
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 879
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    move-object v0, v1

    goto :goto_15

    .line 882
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_18

    return-object v0

    .line 887
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 888
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p1

    .line 887
    invoke-virtual {v0, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    if-nez p1, :cond_2c

    move-object p1, v1

    goto :goto_30

    .line 890
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    :goto_30
    if-eqz p1, :cond_33

    return-object p1

    :cond_33
    if-nez p2, :cond_37

    move-object p1, v1

    goto :goto_43

    .line 896
    :cond_37
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    :goto_43
    if-nez p1, :cond_46

    goto :goto_4a

    .line 898
    :cond_46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_4a
    if-eqz v1, :cond_4d

    return-object v1

    .line 903
    :cond_4d
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public final getInitialDexBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .registers 14

    .line 1943
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1944
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1945
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    int-to-float v0, v0

    .line 1946
    sget-object v2, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    .line 1947
    iget v2, v2, Landroid/graphics/PointF;->y:F

    goto :goto_32

    :cond_28
    int-to-float v0, v0

    .line 1949
    sget-object v2, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    .line 1950
    iget v2, v2, Landroid/graphics/PointF;->y:F

    :goto_32
    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v3, v0

    move v5, v1

    const-string v0, "from-default-size"

    .line 1952
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_47

    iget v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ne v1, v3, :cond_47

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-eq v0, v5, :cond_57

    .line 1956
    :cond_47
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v7, 0x11

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1959
    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 21

    move-object/from16 v3, p3

    move-object/from16 v8, p4

    .line 960
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v9, v0, 0x70

    and-int/lit8 v10, v0, 0x7

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_18

    if-nez v9, :cond_18

    if-nez v10, :cond_18

    .line 963
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_18
    move-object/from16 v0, p0

    .line 969
    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    .line 970
    invoke-virtual {v2, v11}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 971
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 972
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v1

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    if-nez v1, :cond_5a

    .line 977
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 980
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 981
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_86

    :cond_41
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    .line 983
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V

    .line 986
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 987
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_86

    .line 991
    :cond_5a
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v0, :cond_61

    if-ge v0, v12, :cond_61

    goto :goto_70

    .line 993
    :cond_61
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v1, v0, v15

    if-lez v1, :cond_6f

    cmpg-float v1, v0, v14

    if-gez v1, :cond_6f

    int-to-float v1, v12

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_70

    :cond_6f
    move v0, v12

    .line 998
    :goto_70
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_77

    if-ge v1, v13, :cond_77

    goto :goto_86

    .line 1000
    :cond_77
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v2, v1, v15

    if-lez v2, :cond_85

    cmpg-float v2, v1, v14

    if-gez v2, :cond_85

    int-to-float v2, v13

    mul-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_86

    :cond_85
    move v1, v13

    :goto_86
    const/4 v2, 0x3

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v10, v2, :cond_92

    const/4 v2, 0x5

    if-eq v10, v2, :cond_90

    move v2, v3

    goto :goto_93

    :cond_90
    move v2, v14

    goto :goto_93

    :cond_92
    move v2, v15

    :goto_93
    const/16 v4, 0x30

    if-eq v9, v4, :cond_9d

    const/16 v4, 0x50

    if-eq v9, v4, :cond_9e

    move v14, v3

    goto :goto_9e

    :cond_9d
    move v14, v15

    :cond_9e
    :goto_9e
    const/4 v3, 0x0

    .line 1029
    invoke-virtual {v8, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1030
    iget v3, v11, Landroid/graphics/Rect;->left:I

    iget v4, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    sub-int/2addr v12, v0

    int-to-float v0, v12

    mul-float/2addr v2, v0

    float-to-int v0, v2

    sub-int/2addr v13, v1

    int-to-float v1, v13

    mul-float/2addr v14, v1

    float-to-int v1, v14

    .line 1033
    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final getPersistentDexBounds(IILcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)Z
    .registers 6

    .line 1971
    iget p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexWindowingMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    .line 1972
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    return v0

    :cond_9
    const/4 p0, 0x2

    if-ne p1, p0, :cond_14

    if-ne p2, p0, :cond_11

    .line 1978
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexDualBounds:Landroid/graphics/Rect;

    goto :goto_16

    :cond_11
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    goto :goto_16

    .line 1980
    :cond_14
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexStandAloneBounds:Landroid/graphics/Rect;

    .line 1982
    :goto_16
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_20

    .line 1983
    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 12

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 727
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_2a

    .line 730
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 729
    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea;

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display-area-from-option="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    move-object v1, v0

    :goto_2b
    if-nez v1, :cond_5a

    const/4 v2, -0x1

    if-eqz p2, :cond_35

    .line 737
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    goto :goto_36

    :cond_35
    move v3, v2

    :goto_36
    if-eq v3, v2, :cond_5a

    .line 739
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 740
    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 742
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-from-option="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_5a
    if-nez v1, :cond_9f

    if-eqz p3, :cond_9f

    .line 750
    iget-boolean v2, p3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v2, :cond_9f

    .line 752
    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_7b

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display-area-from-no-display-source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_9f

    .line 757
    :cond_7b
    iget v2, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 758
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 759
    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 761
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-from-no-display-source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    if-eqz p1, :cond_ab

    .line 769
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_a8

    goto :goto_ab

    :cond_a8
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    :cond_ab
    :goto_ab
    if-nez v1, :cond_c7

    if-eqz p3, :cond_c7

    .line 803
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 804
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display-area-from-source="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_c7
    if-nez v1, :cond_cf

    if-eqz p1, :cond_cf

    .line 809
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_cf
    if-eqz v0, :cond_ed

    .line 811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "display-from-task="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_ed
    if-nez v1, :cond_117

    if-eqz p2, :cond_117

    .line 816
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result p1

    .line 817
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 818
    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-eqz p2, :cond_117

    .line 820
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 821
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "display-from-caller="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_117
    if-nez v1, :cond_11b

    .line 826
    iget-object v1, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_11b
    if-eqz v1, :cond_133

    .line 830
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez p1, :cond_133

    .line 831
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p1

    if-eqz p1, :cond_133

    .line 832
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_133
    if-eqz v1, :cond_152

    if-eqz p5, :cond_152

    .line 837
    invoke-virtual {p5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-eqz p1, :cond_152

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p2, p5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 p3, 0x0

    .line 838
    invoke-virtual {p1, p2, v1, p3}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p1

    if-nez p1, :cond_152

    .line 840
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_152
    if-eqz v1, :cond_155

    return-object v1

    .line 851
    :cond_155
    invoke-virtual {p0, p5, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    .line 852
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    .line 853
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ExtraDisplayController;->canHaveCoverHomeDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_174

    .line 854
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0

    :cond_174
    return-object p1
.end method

.method public final getPreferredLaunchTaskDisplayAreaForRemoteApp(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 1715
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    goto :goto_9

    :cond_8
    move-object p2, v0

    :goto_9
    if-nez p2, :cond_19

    .line 1718
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1720
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    :cond_19
    if-eqz p2, :cond_5b

    .line 1724
    iget-object v1, p2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    .line 1725
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_29

    move v4, v2

    goto :goto_2a

    :cond_29
    move v4, v3

    :goto_2a
    if-eqz v1, :cond_34

    .line 1726
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v5

    if-eqz v5, :cond_34

    move v5, v2

    goto :goto_35

    :cond_34
    move v5, v3

    :goto_35
    if-nez v4, :cond_41

    if-eqz v5, :cond_40

    .line 1728
    invoke-static {p1}, Lcom/android/server/wm/RemoteAppController;->isValidActivityTypeLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    :cond_41
    :goto_41
    if-eqz v2, :cond_5c

    .line 1730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "display-from-remote-app-policy="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_5b
    move-object v0, p2

    :cond_5c
    return-object v0
.end method

.method public final getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V
    .registers 14

    const/4 v0, 0x1

    if-ne p4, v0, :cond_c

    .line 1128
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    const-string p1, "maximized-bounds"

    .line 1129
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x5

    if-eq p4, v1, :cond_29

    .line 1136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "skip-bounds-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return-void

    .line 1141
    :cond_29
    invoke-virtual {p0, p1, p2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result p4

    if-eq p4, v0, :cond_4d

    if-nez p4, :cond_32

    goto :goto_4d

    .line 1144
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-static {p4}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1150
    :cond_4d
    :goto_4d
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getDefaultFreeformSize(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V

    if-nez p5, :cond_8a

    .line 1151
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_63

    goto :goto_8a

    .line 1177
    :cond_63
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p0, p2, p3, p4, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 1179
    invoke-virtual {p0, p2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 1180
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "freeform-size-mismatch="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_fc

    .line 1156
    :cond_8a
    :goto_8a
    invoke-static {p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p3

    if-ne p4, p3, :cond_a5

    .line 1157
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "freeform-size-orientation-match="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_fc

    .line 1159
    :cond_a5
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_dd

    .line 1160
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 1161
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget-object p5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 1162
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {p6, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1163
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "freeform-orientation-ignore="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_fc

    .line 1167
    :cond_dd
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p0, p2, p3, p4, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 1169
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "freeform-orientation-mismatch="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_fc
    if-eqz p7, :cond_118

    .line 1185
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinityWithoutUid:Ljava/lang/String;

    if-eqz p3, :cond_118

    iget-object p4, p7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1187
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_118

    .line 1190
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinityWithoutUid:Ljava/lang/String;

    .line 1191
    invoke-virtual {p7}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p6

    .line 1190
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    goto :goto_11b

    .line 1194
    :cond_118
    invoke-virtual {p0, p2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    :goto_11b
    return-void
.end method

.method public final initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskLaunchParamsModifier:task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " activity="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final offsetTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .line 1849
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 1850
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1852
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_15

    .line 1853
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    .line 1854
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1856
    :cond_15
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_22

    .line 1857
    iget p2, p2, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p0

    .line 1858
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_22
    return-void
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 10

    .line 153
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 154
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result p1

    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->outputLog()V

    return p1
.end method

.method public final outputLog()V
    .registers 2

    .line 1632
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final recalculateLayout(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;)Landroid/content/pm/ActivityInfo$WindowLayout;
    .registers 13

    .line 1742
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p2

    .line 1748
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    .line 1749
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_19

    return-object p2

    :cond_19
    if-eqz p3, :cond_28

    .line 1756
    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v0, "android.server.wm.app"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_28

    .line 1757
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    goto :goto_2e

    .line 1759
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    :goto_2e
    int-to-float p1, p1

    div-float/2addr p1, p0

    .line 1764
    iget p0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/4 p3, -0x1

    const/high16 v0, 0x3f000000    # 0.5f

    if-gez p0, :cond_39

    move v2, p3

    goto :goto_3e

    :cond_39
    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-int p0, p0

    move v2, p0

    .line 1765
    :goto_3e
    iget p0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-gez p0, :cond_44

    move v4, p3

    goto :goto_49

    :cond_44
    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-int p0, p0

    move v4, p0

    .line 1766
    :goto_49
    iget p0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    if-gez p0, :cond_4f

    move v7, p3

    goto :goto_54

    :cond_4f
    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-int p0, p0

    move v7, p0

    .line 1767
    :goto_54
    iget p0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    if-gez p0, :cond_59

    goto :goto_5d

    :cond_59
    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-int p3, p0

    :goto_5d
    move v8, p3

    .line 1768
    new-instance p0, Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v3, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    iget v5, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    iget v6, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    return-object p0
.end method

.method public final resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 5

    .line 1070
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v0, 0xe

    const/4 v1, 0x1

    if-eqz p1, :cond_21

    if-eq p1, v1, :cond_1a

    const/16 v2, 0xb

    if-eq p1, v2, :cond_21

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1a

    if-eq p1, v0, :cond_27

    packed-switch p1, :pswitch_data_28

    const/4 v0, -0x1

    goto :goto_27

    :cond_1a
    :pswitch_1a
    const-string p1, "activity-requested-portrait"

    .line 1087
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_27

    :cond_21
    :pswitch_21
    const-string p1, "activity-requested-landscape"

    .line 1080
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_27
    :goto_27
    :pswitch_27
    return v0

    :pswitch_data_28
    .packed-switch 0x5
        :pswitch_27
        :pswitch_21
        :pswitch_1a
        :pswitch_21
        :pswitch_1a
    .end packed-switch
.end method

.method public final resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I
    .registers 5

    .line 1211
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    const/16 v0, 0xe

    if-ne p1, v0, :cond_49

    .line 1214
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1216
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 1215
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result p1

    goto :goto_1d

    .line 1217
    :cond_19
    invoke-static {p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 1219
    :goto_1d
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_35

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "locked-orientation-from-display="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_46

    .line 1220
    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "locked-orientation-from-bounds="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1219
    :goto_46
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_49
    const/4 p2, -0x1

    if-ne p1, p2, :cond_76

    .line 1225
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_54

    const/4 p1, 0x1

    goto :goto_58

    .line 1226
    :cond_54
    invoke-static {p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 1228
    :goto_58
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_61

    const-string p2, "default-portrait"

    goto :goto_73

    .line 1229
    :cond_61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "orientation-from-bounds="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1228
    :goto_73
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_76
    return p1
.end method

.method public final rotateDisplayRect(Landroid/graphics/Rect;II)V
    .registers 4

    .line 1892
    invoke-static {p2, p3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_a

    const/4 p2, 0x3

    if-ne p0, p2, :cond_16

    .line 1894
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_16
    return-void
.end method

.method public final shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    and-int/lit8 p0, p1, 0x7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    move p0, v1

    goto :goto_22

    .line 1599
    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_22

    .line 1596
    :cond_17
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    .line 1595
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    neg-int p0, p0

    :goto_22
    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x30

    if-eq p1, v0, :cond_38

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2d

    goto :goto_43

    .line 1611
    :cond_2d
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_43

    .line 1608
    :cond_38
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    neg-int v1, p1

    .line 1617
    :goto_43
    invoke-virtual {p3, p0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final shiftFreeformBounds(ILandroid/graphics/Rect;)V
    .registers 6

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    move v0, v2

    goto :goto_11

    .line 1826
    :cond_b
    iget v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    goto :goto_11

    .line 1823
    :cond_e
    iget v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    neg-int v0, v0

    :goto_11
    and-int/lit8 p1, p1, 0x70

    const/16 v1, 0x30

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x50

    if-eq p1, v1, :cond_1c

    goto :goto_22

    .line 1838
    :cond_1c
    iget v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    goto :goto_22

    .line 1835
    :cond_1f
    iget p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    neg-int v2, p0

    .line 1843
    :goto_22
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_b

    .line 1038
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p3

    if-ne p3, v0, :cond_b

    return v1

    .line 1042
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p3

    if-eqz p3, :cond_32

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_32

    .line 1046
    :cond_18
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p3

    .line 1048
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1047
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result p0

    .line 1049
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_32

    if-eq p3, p0, :cond_32

    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public final updateSnappingBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 9

    .line 1994
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    .line 1995
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v0, v1, p4, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getPersistentDexBounds(IILcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)Z

    .line 1996
    invoke-virtual {p6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_18

    return-void

    .line 1999
    :cond_18
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getDexMetaDataBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z

    .line 2000
    invoke-virtual {p6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_22

    return-void

    :cond_22
    if-eqz p5, :cond_2b

    .line 2004
    invoke-virtual {p0, p1, p5, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->recalculateLayout(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p2

    .line 2005
    invoke-virtual {p0, p1, p3, p2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 2007
    :cond_2b
    invoke-virtual {p6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_32

    return-void

    .line 2010
    :cond_32
    invoke-virtual {p0, p1, p3, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getInitialDexBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    return-void
.end method
