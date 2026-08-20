.class public Lcom/android/server/wm/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field public static final BOUNDS_CONFLICT_THRESHOLD:I = 0x4

.field public static final CASCADING_OFFSET_DP:I = 0x4b

.field public static final DEBUG:Z = false

.field public static final DEFAULT_PORTRAIT_PHONE_HEIGHT_DP:I = 0x2dc

.field public static final DEFAULT_PORTRAIT_PHONE_WIDTH_DP:I = 0x19c

.field public static final EPSILON:I = 0x2

.field public static final MINIMAL_STEP:I = 0x1

.field public static final STEP_DENOMINATOR:I = 0x10

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public mLogBuilder:Ljava/lang/StringBuilder;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpDirections:[I

.field public mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$mbyXowA3eJ3iIe6rP-kr8TZZteU(Ljava/util/List;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->lambda$adjustBoundsToAvoidConflictInDisplayArea$1(Ljava/util/List;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqKHBQzADctRabQcTg1QrlZrh3o(Lcom/android/server/wm/TaskLaunchParamsModifier;IILcom/android/server/wm/TaskDisplayArea;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->lambda$calculate$0(IILcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 91
    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-void
.end method

.method public static synthetic lambda$adjustBoundsToAvoidConflictInDisplayArea$1(Ljava/util/List;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 943
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 947
    :goto_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 948
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
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

    .line 314
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 320
    :cond_e
    iput-object p3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 p0, 0x1

    return p0
.end method

.method public static orientationFromBounds(Landroid/graphics/Rect;)I
    .registers 2

    .line 1118
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

    .line 1123
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    .line 1124
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
.method public adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V
    .registers 9
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
            ")V"
        }
    .end annotation

    .line 970
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 976
    :cond_7
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 982
    :cond_e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_50

    aget v3, v0, v2

    if-nez v3, :cond_1c

    goto :goto_50

    .line 989
    :cond_1c
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 990
    :goto_21
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 991
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 992
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_21

    .line 995
    :cond_37
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 996
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 998
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_50
    :goto_50
    return-void
.end method

.method public final adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 6

    .line 941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 942
    new-instance v1, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 951
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 6

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 886
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 888
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt p1, v1, :cond_40

    .line 889
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge p1, v1, :cond_1a

    goto :goto_40

    .line 902
    :cond_1a
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    if-le p0, p1, :cond_23

    :goto_21
    sub-int/2addr p1, p0

    goto :goto_2b

    .line 905
    :cond_23
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    if-ge p0, p1, :cond_2a

    goto :goto_21

    :cond_2a
    move p1, v1

    .line 914
    :goto_2b
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge p0, v2, :cond_34

    sub-int v1, v2, p0

    goto :goto_3c

    .line 917
    :cond_34
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_3c

    sub-int v1, v0, p0

    .line 924
    :cond_3c
    :goto_3c
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void

    .line 892
    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 893
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_58

    .line 895
    iget p0, v0, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    goto :goto_5a

    .line 896
    :cond_58
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 897
    :goto_5a
    iget p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method public final appendLog(Ljava/lang/String;)V
    .registers 2

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

    .line 1053
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

    .line 1054
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

    .line 1056
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

    .line 1058
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

    .line 1060
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
    .registers 33

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    if-eqz v8, :cond_21

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1b

    move-object/from16 v0, p3

    goto :goto_1f

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_1f
    move-object v15, v0

    goto :goto_23

    :cond_21
    move-object/from16 v15, p3

    :goto_23
    const/16 v16, 0x0

    if-nez v15, :cond_28

    return v16

    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 136
    iput-object v6, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 137
    iget-object v5, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x2

    if-nez v12, :cond_42

    return v4

    :cond_42
    if-eqz v11, :cond_49

    .line 153
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_4b

    :cond_49
    move/from16 v0, v16

    :goto_4b
    if-nez v0, :cond_5b

    .line 159
    invoke-virtual {v7, v5, v10}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 163
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    :cond_5b
    if-nez v0, :cond_69

    if-eqz v8, :cond_69

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-ne v1, v6, :cond_69

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 187
    :cond_69
    invoke-virtual {v7, v5, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;I)Z

    move-result v1

    .line 188
    iget-object v2, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8f

    if-nez v1, :cond_7e

    .line 189
    invoke-virtual {v7, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_8f

    :cond_7e
    if-nez v0, :cond_81

    const/4 v0, 0x5

    .line 194
    :cond_81
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_8a
    move/from16 v17, v3

    move/from16 v18, v16

    goto :goto_d3

    :cond_8f
    if-ne v0, v4, :cond_92

    goto :goto_cf

    :cond_92
    if-ne v0, v3, :cond_95

    goto :goto_cf

    :cond_95
    if-eqz v9, :cond_ba

    if-eqz v1, :cond_ba

    .line 202
    iget-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    iget-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v15, v9, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 204
    iget-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cf

    .line 206
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v17, v3

    move/from16 v18, v17

    const/4 v0, 0x5

    goto :goto_d3

    :cond_ba
    const/4 v1, 0x6

    if-ne v0, v1, :cond_cf

    if-eqz v11, :cond_cf

    .line 214
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_cf

    .line 215
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8a

    :cond_cf
    :goto_cf
    move/from16 v17, v16

    move/from16 v18, v17

    .line 236
    :goto_d3
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_117

    if-nez v17, :cond_117

    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_e9

    .line 238
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    .line 239
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_117

    .line 242
    :cond_e9
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 243
    iget v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_fc

    move v1, v3

    goto :goto_fe

    :cond_fc
    move/from16 v1, v16

    .line 250
    :goto_fe
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_113

    .line 255
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, 0x5

    if-ne v0, v3, :cond_114

    const/16 v19, 0x1

    goto :goto_11a

    :cond_113
    const/4 v3, 0x5

    :cond_114
    move/from16 v19, v1

    goto :goto_11a

    :cond_117
    const/4 v3, 0x5

    move/from16 v19, v16

    .line 274
    :goto_11a
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_169

    if-ne v0, v4, :cond_123

    goto :goto_169

    .line 277
    :cond_123
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_169

    .line 278
    invoke-virtual {v7, v15, v6, v11}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_15d

    const/16 v20, 0x5

    .line 280
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_153

    .line 281
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v21, v2

    move-object v2, v6

    const/4 v10, 0x1

    move-object/from16 v3, p2

    move/from16 v4, v20

    move-object/from16 p3, v5

    move/from16 v5, v17

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    move v3, v10

    goto :goto_171

    :cond_153
    move-object/from16 p3, v5

    move-object/from16 v22, v6

    const/4 v10, 0x1

    move/from16 v3, v16

    move/from16 v4, v20

    goto :goto_171

    :cond_15d
    move-object/from16 p3, v5

    move-object/from16 v22, v6

    const/4 v10, 0x1

    .line 288
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v4, v10

    goto :goto_16f

    :cond_169
    :goto_169
    move-object/from16 p3, v5

    move-object/from16 v22, v6

    const/4 v10, 0x1

    move v4, v0

    :goto_16f
    move/from16 v3, v16

    .line 296
    :goto_171
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-ne v4, v0, :cond_17a

    move/from16 v0, v16

    goto :goto_17b

    :cond_17a
    move v0, v4

    .line 297
    :goto_17b
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-ne v12, v10, :cond_181

    const/4 v6, 0x2

    return v6

    :cond_181
    const/4 v6, 0x2

    if-eqz v4, :cond_186

    move v5, v4

    goto :goto_18b

    .line 306
    :cond_186
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    move v5, v0

    :goto_18b
    if-eqz v11, :cond_19b

    .line 310
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_194

    goto :goto_19b

    :cond_194
    move/from16 p1, v5

    move v9, v6

    move-object/from16 v11, v22

    goto/16 :goto_226

    .line 311
    :cond_19b
    :goto_19b
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 312
    invoke-virtual {v0, v15, v11, v8}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v8

    .line 313
    new-instance v0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7, v5, v8}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskLaunchParamsModifier;II)V

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    .line 325
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_1e9

    move-object/from16 v11, v22

    if-eq v0, v11, :cond_1cb

    if-eqz v18, :cond_1cf

    .line 327
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 328
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v0, v15, v9, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 329
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v17, v0, 0x1

    :cond_1cb
    move/from16 p1, v5

    move v9, v6

    goto :goto_1ee

    :cond_1cf
    if-eqz v3, :cond_1cb

    .line 331
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 332
    iget-object v2, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v10, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v3, p2

    move/from16 p1, v5

    move/from16 v5, v17

    move v9, v6

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_1ee

    :cond_1e9
    move/from16 p1, v5

    move v9, v6

    move-object/from16 v11, v22

    .line 337
    :goto_1ee
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_226

    const/4 v1, 0x0

    .line 339
    iput-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overridden-display-area=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-static {v8}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-static/range {p1 .. p1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v7, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object v11, v0

    .line 346
    :cond_226
    :goto_226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display-area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 347
    iput-object v11, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v12, v9, :cond_23f

    return v9

    :cond_23f
    if-eqz v19, :cond_255

    move/from16 v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_298

    .line 362
    iget-object v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v0, v11, :cond_24f

    .line 363
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v11, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 367
    :cond_24f
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v11, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    goto :goto_298

    :cond_255
    move/from16 v0, p1

    const/4 v1, 0x5

    .line 369
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_298

    if-eqz p4, :cond_285

    .line 370
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_285

    if-ne v0, v1, :cond_285

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 372
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_285

    .line 373
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-ne v1, v11, :cond_285

    .line 375
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v11, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 378
    :cond_285
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 p3, p0

    move-object/from16 p4, v15

    move-object/from16 p5, v11

    move-object/from16 p6, p2

    move/from16 p7, v0

    move/from16 p8, v17

    move-object/from16 p9, v1

    invoke-virtual/range {p3 .. p9}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    :cond_298
    :goto_298
    return v9
.end method

.method public final calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 1017
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 1018
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1021
    :cond_c
    iget v1, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v2, v1, 0x2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    const/4 v4, 0x3

    div-int/2addr v2, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 1022
    div-int/2addr v1, v4

    .line 1023
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    const/4 v5, 0x5

    if-ge v3, v2, :cond_25

    .line 1026
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, p0, v0

    return-void

    :cond_25
    if-le v3, v1, :cond_2c

    .line 1030
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v4, p0, v0

    return-void

    .line 1034
    :cond_2c
    iget v1, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v2, v1, 0x2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p1

    div-int/2addr v2, v4

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 1035
    div-int/2addr v1, v4

    .line 1036
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, v2, :cond_4d

    if-le p1, v1, :cond_42

    goto :goto_4d

    .line 1047
    :cond_42
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 p1, 0x55

    aput p1, p0, v0

    const/16 p1, 0x33

    .line 1048
    aput p1, p0, p2

    return-void

    .line 1040
    :cond_4d
    :goto_4d
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, p0, v0

    .line 1041
    aput v4, p0, p2

    return-void
.end method

.method public final canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;I)Z
    .registers 3

    .line 547
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p0, :cond_13

    .line 548
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x5

    if-ne p2, p0, :cond_13

    :cond_11
    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final canApplyPipWindowPolicy(I)Z
    .registers 2

    .line 552
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

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

    .line 530
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_b

    return p0

    .line 534
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v2, 0x5

    if-eq v0, v2, :cond_16

    return p0

    .line 543
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

    .line 696
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 697
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42960000    # 75.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 700
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 701
    iget-object p2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 702
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 703
    invoke-virtual {p3, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V
    .registers 6

    .line 875
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 876
    invoke-virtual {p1, p4}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 878
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    div-int/lit8 p1, p2, 0x2

    sub-int/2addr p0, p1

    .line 879
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p1, v0

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    .line 880
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

.method public final getDefaultFreeformSize(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V
    .registers 12

    .line 810
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 811
    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 812
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 813
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v2, v0, v0

    .line 814
    div-int/2addr v2, v1

    if-nez p4, :cond_24

    move v1, v0

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    if-nez p4, :cond_28

    move v0, v2

    .line 822
    :cond_28
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p2, p2

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr p2, v2

    const/high16 v2, 0x43ce0000    # 412.0f

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v4, 0x44370000    # 732.0f

    mul-float/2addr p2, v4

    add-float/2addr p2, v3

    float-to-int p2, p2

    if-nez p4, :cond_42

    move v4, p2

    goto :goto_43

    :cond_42
    move v4, v2

    :goto_43
    if-nez p4, :cond_46

    goto :goto_47

    :cond_46
    move v2, p2

    :goto_47
    const/4 p2, -0x1

    if-nez p3, :cond_4c

    move v5, p2

    goto :goto_4e

    .line 831
    :cond_4c
    iget v5, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    :goto_4e
    if-nez p3, :cond_51

    goto :goto_53

    .line 832
    :cond_51
    iget p2, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 835
    :goto_53
    invoke-virtual {p1, p4}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio(I)F

    move-result p3

    .line 836
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result p1

    .line 838
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 839
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 840
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, p3, v2

    if-ltz v4, :cond_8c

    cmpg-float v4, v0, p3

    if-gez v4, :cond_8c

    if-nez p4, :cond_87

    int-to-float p1, v1

    div-float/2addr p1, p3

    add-float/2addr p1, v3

    float-to-int p2, p1

    goto :goto_9f

    :cond_87
    int-to-float p1, p2

    div-float/2addr p1, p3

    add-float/2addr p1, v3

    float-to-int v1, p1

    goto :goto_9f

    :cond_8c
    cmpl-float p3, p1, v2

    if-ltz p3, :cond_9f

    cmpl-float p3, v0, p1

    if-lez p3, :cond_9f

    if-nez p4, :cond_9b

    int-to-float p2, v1

    div-float/2addr p2, p1

    add-float/2addr p2, v3

    float-to-int p2, p2

    goto :goto_9f

    :cond_9b
    int-to-float p3, p2

    div-float/2addr p3, p1

    add-float/2addr p3, v3

    float-to-int v1, p3

    :cond_9f
    :goto_9f
    const/4 p1, 0x0

    .line 865
    invoke-virtual {p5, p1, p1, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 866
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 6

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 494
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    move-object v0, v1

    goto :goto_15

    .line 497
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_18

    return-object v0

    .line 502
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 503
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p1

    .line 502
    invoke-virtual {v0, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    if-nez p1, :cond_2c

    move-object p1, v1

    goto :goto_30

    .line 505
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

    .line 511
    :cond_37
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    :goto_43
    if-nez p1, :cond_46

    goto :goto_4a

    .line 513
    :cond_46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_4a
    if-eqz v1, :cond_4d

    return-object v1

    .line 518
    :cond_4d
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 20

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    .line 558
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v8, v0, 0x70

    and-int/lit8 v9, v0, 0x7

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_18

    if-nez v8, :cond_18

    if-nez v9, :cond_18

    .line 561
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_18
    move-object v0, p0

    .line 567
    iget-object v10, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    .line 568
    invoke-virtual {v2, v10}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 569
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 570
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v1

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-nez v1, :cond_57

    .line 575
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 578
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 579
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_83

    :cond_40
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    .line 581
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 583
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 584
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_83

    .line 588
    :cond_57
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v0, :cond_5e

    if-ge v0, v11, :cond_5e

    goto :goto_6d

    .line 590
    :cond_5e
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v1, v0, v14

    if-lez v1, :cond_6c

    cmpg-float v1, v0, v13

    if-gez v1, :cond_6c

    int-to-float v1, v11

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_6d

    :cond_6c
    move v0, v11

    .line 595
    :goto_6d
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_74

    if-ge v1, v12, :cond_74

    goto :goto_83

    .line 597
    :cond_74
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v2, v1, v14

    if-lez v2, :cond_82

    cmpg-float v2, v1, v13

    if-gez v2, :cond_82

    int-to-float v2, v12

    mul-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_83

    :cond_82
    move v1, v12

    :goto_83
    const/4 v2, 0x3

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v9, v2, :cond_8f

    const/4 v2, 0x5

    if-eq v9, v2, :cond_8d

    move v2, v3

    goto :goto_90

    :cond_8d
    move v2, v13

    goto :goto_90

    :cond_8f
    move v2, v14

    :goto_90
    const/16 v4, 0x30

    if-eq v8, v4, :cond_9a

    const/16 v4, 0x50

    if-eq v8, v4, :cond_9b

    move v13, v3

    goto :goto_9b

    :cond_9a
    move v13, v14

    :cond_9b
    :goto_9b
    const/4 v3, 0x0

    .line 626
    invoke-virtual {v7, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 627
    iget v3, v10, Landroid/graphics/Rect;->left:I

    iget v4, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    sub-int/2addr v11, v0

    int-to-float v0, v11

    mul-float/2addr v2, v0

    float-to-int v0, v2

    sub-int/2addr v12, v1

    int-to-float v1, v12

    mul-float/2addr v13, v1

    float-to-int v1, v13

    .line 630
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 390
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_16

    .line 393
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 392
    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    if-nez v1, :cond_32

    const/4 v2, -0x1

    if-eqz p2, :cond_21

    .line 400
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    goto :goto_22

    :cond_21
    move v3, v2

    :goto_22
    if-eq v3, v2, :cond_32

    .line 402
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 403
    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 405
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_32
    if-nez v1, :cond_4f

    if-eqz p3, :cond_4f

    .line 413
    iget-boolean v2, p3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v2, :cond_4f

    .line 415
    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_3f

    goto :goto_4f

    .line 420
    :cond_3f
    iget v2, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 421
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 422
    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 424
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_4f
    :goto_4f
    if-nez v1, :cond_57

    if-eqz p3, :cond_57

    .line 431
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_57
    if-nez v1, :cond_5f

    if-eqz p1, :cond_5f

    .line 437
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_5f
    if-eqz v0, :cond_65

    .line 440
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_65
    if-nez v1, :cond_7b

    if-eqz p2, :cond_7b

    .line 444
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result p1

    .line 445
    iget-object p2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 446
    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_7b

    .line 448
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_7b
    if-nez v1, :cond_7f

    .line 454
    iget-object v1, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_7f
    if-eqz v1, :cond_97

    .line 458
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez p1, :cond_97

    .line 459
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p1

    if-eqz p1, :cond_97

    .line 460
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_97
    if-eqz v1, :cond_b4

    .line 464
    invoke-virtual {p5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-eqz p1, :cond_b4

    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p2, p5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 p3, 0x0

    .line 465
    invoke-virtual {p1, p2, v1, p3}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 467
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_b4
    if-eqz v1, :cond_b7

    goto :goto_bb

    .line 472
    :cond_b7
    invoke-virtual {p0, p5, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_bb
    return-object v1
.end method

.method public final getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .registers 15

    const/4 v0, 0x1

    if-ne p4, v0, :cond_7

    .line 712
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_7
    const/4 v1, 0x5

    if-eq p4, v1, :cond_b

    return-void

    .line 725
    :cond_b
    invoke-virtual {p0, p1, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result p4

    if-eq p4, v0, :cond_2f

    if-nez p4, :cond_14

    goto :goto_2f

    .line 728
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {p4}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 734
    :cond_2f
    :goto_2f
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getDefaultFreeformSize(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V

    if-nez p5, :cond_58

    .line 735
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_58

    .line 754
    :cond_45
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 756
    invoke-virtual {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    goto :goto_6a

    .line 740
    :cond_58
    :goto_58
    invoke-static {p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p1

    if-ne p4, p1, :cond_5f

    goto :goto_6a

    .line 744
    :cond_5f
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 761
    :goto_6a
    invoke-virtual {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    return-void
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 10

    .line 106
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 107
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result p1

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->outputLog()V

    return p1
.end method

.method public final outputLog()V
    .registers 1

    return-void
.end method

.method public final resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 4

    .line 667
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 p1, 0xe

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    if-eq p0, v0, :cond_1a

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1c

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1a

    if-eq p0, p1, :cond_1d

    packed-switch p0, :pswitch_data_1e

    const/4 p1, -0x1

    goto :goto_1d

    :cond_1a
    :pswitch_1a
    move p1, v0

    goto :goto_1d

    :cond_1c
    :pswitch_1c
    const/4 p1, 0x0

    :cond_1d
    :goto_1d
    :pswitch_1d
    return p1

    :pswitch_data_1e
    .packed-switch 0x5
        :pswitch_1d
        :pswitch_1c
        :pswitch_1a
        :pswitch_1c
        :pswitch_1a
    .end packed-switch
.end method

.method public final resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I
    .registers 5

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1e

    .line 780
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 782
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result p0

    goto :goto_1d

    .line 783
    :cond_19
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p0

    :goto_1d
    move p1, p0

    :cond_1e
    const/4 p0, -0x1

    if-ne p1, p0, :cond_2e

    .line 791
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2d

    .line 792
    :cond_29
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p0

    :goto_2d
    move p1, p0

    :cond_2e
    return p1
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

    .line 1081
    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_22

    .line 1078
    :cond_17
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    .line 1077
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

    .line 1093
    :cond_2d
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_43

    .line 1090
    :cond_38
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    neg-int v1, p1

    .line 1099
    :goto_43
    invoke-virtual {p3, p0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_b

    .line 635
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p3

    if-ne p3, v0, :cond_b

    return v1

    .line 639
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p3

    if-eqz p3, :cond_32

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_32

    .line 643
    :cond_18
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p3

    .line 645
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 644
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result p0

    .line 646
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
