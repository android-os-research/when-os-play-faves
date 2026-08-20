.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$SeekState;,
        Landroid/animation/AnimatorSet$AnimationEvent;,
        Landroid/animation/AnimatorSet$Node;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AnimatorSet"


# instance fields
.field private blacklist mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private greylist-max-o mChildrenInitialized:Z

.field private greylist-max-o mDelayAnim:Landroid/animation/ValueAnimator;

.field private greylist-max-o mDependencyDirty:Z

.field private greylist-max-o mDuration:J

.field private final greylist-max-o mEndCanBeCalled:Z

.field private greylist-max-o mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstFrame:J

.field private greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mLastEventId:I

.field private greylist-max-o mLastFrameTime:J

.field private greylist-max-o mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPauseTime:J

.field private greylist-max-o mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReversing:Z

.field private greylist-max-o mRootNode:Landroid/animation/AnimatorSet$Node;

.field private greylist-max-o mSeekState:Landroid/animation/AnimatorSet$SeekState;

.field private greylist-max-o mSelfPulse:Z

.field private final greylist-max-o mShouldIgnoreEndWithoutStart:Z

.field private final greylist-max-o mShouldResetValuesAtStart:Z

.field private greylist-max-o mStartDelay:J

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mTotalDuration:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNodeMap(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReversing(Landroid/animation/AnimatorSet;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartDelay(Landroid/animation/AnimatorSet;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDependencyDirty(Landroid/animation/AnimatorSet;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNodeForAnimation(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .registers 2

    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 7

    .line 198
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 106
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 109
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 112
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_b0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 118
    new-instance v4, Landroid/animation/AnimatorSet$Node;

    invoke-direct {v4, v3}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iput-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 123
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 127
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 130
    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 153
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 158
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 162
    const/4 v1, -0x1

    iput v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 165
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 172
    new-instance v2, Landroid/animation/AnimatorSet$SeekState;

    invoke-direct {v2, p0, v5}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState-IA;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 175
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 182
    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 186
    new-instance v2, Landroid/animation/AnimatorSet$1;

    invoke-direct {v2, p0}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 199
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 204
    .local v2, "app":Landroid/app/Application;
    if-eqz v2, :cond_a0

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_83

    goto :goto_a0

    .line 208
    :cond_83
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_90

    .line 209
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    goto :goto_92

    .line 211
    :cond_90
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 214
    :goto_92
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_9e

    move v3, v1

    goto :goto_9f

    :cond_9e
    move v3, v0

    .local v3, "isPreO":Z
    :goto_9f
    goto :goto_a3

    .line 205
    .end local v3    # "isPreO":Z
    :cond_a0
    :goto_a0
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 206
    const/4 v3, 0x1

    .line 216
    .restart local v3    # "isPreO":Z
    :goto_a3
    if-nez v3, :cond_a7

    move v4, v1

    goto :goto_a8

    :cond_a7
    move v4, v0

    :goto_a8
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    .line 217
    if-nez v3, :cond_ad

    move v0, v1

    :cond_ad
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    .line 218
    return-void

    :array_b0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private greylist-max-o addAnimationCallback(J)V
    .registers 4
    .param p1, "delay"    # J

    .line 1318
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1319
    return-void

    .line 1321
    :cond_5
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    .line 1322
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 1323
    return-void
.end method

.method private blacklist addAnimationEndListener()V
    .registers 4

    .line 1247
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1248
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1250
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private greylist-max-o createDependencyGraph()V
    .registers 9

    .line 1470
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v0, :cond_32

    .line 1472
    const/4 v0, 0x0

    .line 1473
    .local v0, "durationChanged":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 1474
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1475
    .local v2, "anim":Landroid/animation/Animator;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-wide v3, v3, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {v2}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2c

    .line 1476
    const/4 v0, 0x1

    .line 1477
    goto :goto_2f

    .line 1473
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1480
    .end local v1    # "i":I
    :cond_2f
    :goto_2f
    if-nez v0, :cond_32

    .line 1481
    return-void

    .line 1485
    .end local v0    # "durationChanged":Z
    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 1487
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1488
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    if-ge v2, v1, :cond_4b

    .line 1489
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iput-boolean v0, v3, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1488
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1491
    .end local v2    # "i":I
    :cond_4b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4c
    const/4 v2, 0x1

    if-ge v0, v1, :cond_9e

    .line 1492
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 1493
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-boolean v4, v3, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    if-eqz v4, :cond_5c

    .line 1494
    goto :goto_9b

    .line 1497
    :cond_5c
    iput-boolean v2, v3, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1498
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v4, :cond_63

    .line 1499
    goto :goto_9b

    .line 1503
    :cond_63
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1504
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1507
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1508
    .local v4, "siblingSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_74
    if-ge v5, v4, :cond_86

    .line 1509
    iget-object v6, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iget-object v6, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 1508
    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    .line 1513
    .end local v5    # "j":I
    :cond_86
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_87
    if-ge v5, v4, :cond_9b

    .line 1514
    iget-object v6, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 1515
    .local v6, "sibling":Landroid/animation/AnimatorSet$Node;
    iget-object v7, v3, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 1516
    iput-boolean v2, v6, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1513
    .end local v6    # "sibling":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    .line 1491
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v4    # "siblingSize":I
    .end local v5    # "j":I
    :cond_9b
    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 1520
    .end local v0    # "i":I
    :cond_9e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9f
    if-ge v0, v1, :cond_b9

    .line 1521
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 1522
    .restart local v3    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_b6

    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v4, :cond_b6

    .line 1523
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 1520
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 1528
    .end local v0    # "i":I
    :cond_b9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1530
    .local v0, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1531
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1532
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v3, v0}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1534
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortAnimationEvents()V

    .line 1535
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 1536
    return-void
.end method

.method private greylist-max-o endAnimation()V
    .registers 7

    .line 1284
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 1285
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 1286
    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1287
    const/4 v3, -0x1

    iput v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1288
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 1289
    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1290
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 1291
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1294
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    .line 1296
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3e

    .line 1297
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    .line 1298
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1299
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1300
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v2, :cond_3e

    .line 1301
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-interface {v4, p0, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 1300
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1304
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_3e
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationEndListener()V

    .line 1305
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 1306
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 1307
    return-void
.end method

.method private greylist-max-o findLatestEventIdForTime(J)I
    .registers 11
    .param p1, "currentPlayTime"    # J

    .line 1259
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1260
    .local v0, "size":I
    iget v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1262
    .local v1, "latestId":I
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_33

    .line 1263
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    sub-long p1, v2, p1

    .line 1264
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    move v2, v0

    :cond_18
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1265
    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1c
    if-ltz v2, :cond_32

    .line 1266
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1267
    .local v3, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_2f

    .line 1268
    move v1, v2

    .line 1265
    .end local v3    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .end local v2    # "j":I
    :cond_32
    goto :goto_57

    .line 1272
    :cond_33
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_37
    if-ge v2, v0, :cond_57

    .line 1273
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1275
    .restart local v3    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_54

    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gtz v4, :cond_54

    .line 1276
    move v1, v2

    .line 1272
    .end local v3    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1280
    .end local v2    # "i":I
    :cond_57
    :goto_57
    return v1
.end method

.method private greylist-max-o findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .line 1717
    .local p2, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1718
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1720
    return-void

    .line 1722
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1723
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v1, p2}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1722
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1726
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method private greylist-max-o forceToEnd()V
    .registers 5

    .line 435
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    if-eqz v0, :cond_8

    .line 436
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 437
    return-void

    .line 443
    :cond_8
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_17

    .line 444
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    goto :goto_31

    .line 446
    :cond_17
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    .line 447
    .local v0, "zeroScalePlayTime":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_24

    .line 449
    const-wide/32 v0, 0x7fffffff

    .line 451
    :cond_24
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 453
    .end local v0    # "zeroScalePlayTime":J
    :goto_31
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 454
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 455
    return-void
.end method

.method private greylist-max-o getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .registers 4
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 1750
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 1751
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v0, :cond_1a

    .line 1752
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {v1, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    move-object v0, v1

    .line 1753
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    :cond_1a
    return-object v0
.end method

.method private greylist-max-o getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J
    .registers 6
    .param p1, "overallPlayTime"    # J
    .param p3, "node"    # Landroid/animation/AnimatorSet$Node;

    .line 1176
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J
    .registers 7
    .param p1, "overallPlayTime"    # J
    .param p3, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p4, "inReverse"    # Z

    .line 1180
    if-eqz p4, :cond_b

    .line 1181
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 1182
    .end local p1    # "overallPlayTime":J
    .local v0, "overallPlayTime":J
    iget-wide p1, p3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 1184
    .end local v0    # "overallPlayTime":J
    .restart local p1    # "overallPlayTime":J
    :cond_b
    iget-wide v0, p3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private greylist-max-o handleAnimationEvents(IIJ)V
    .registers 15
    .param p1, "startId"    # I
    .param p2, "latestId"    # I
    .param p3, "playTime"    # J

    .line 1113
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_59

    .line 1114
    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_13

    :cond_12
    move v0, p1

    :goto_13
    move p1, v0

    .line 1115
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_16
    if-lt v0, p2, :cond_58

    .line 1116
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1117
    .local v5, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 1118
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x1

    if-ne v7, v3, :cond_46

    .line 1119
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1124
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 1126
    :cond_34
    iput-boolean v4, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1127
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    .line 1129
    invoke-direct {p0, v6, v1, v2}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_55

    .line 1130
    :cond_46
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v7, v8, :cond_55

    iget-boolean v7, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v7, :cond_55

    .line 1132
    invoke-direct {p0, p3, p4, v6}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1115
    .end local v5    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_55
    :goto_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .end local v0    # "i":I
    :cond_58
    goto :goto_9c

    .line 1136
    :cond_59
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "i":I
    :goto_5b
    if-gt v0, p2, :cond_9c

    .line 1137
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1138
    .restart local v5    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 1139
    .restart local v6    # "node":Landroid/animation/AnimatorSet$Node;
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v7, :cond_8a

    .line 1140
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v8, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1146
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 1148
    :cond_7f
    iput-boolean v4, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1149
    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    .line 1150
    invoke-direct {p0, v6, v1, v2}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_99

    .line 1151
    :cond_8a
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v7, v3, :cond_99

    iget-boolean v7, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v7, :cond_99

    .line 1153
    invoke-direct {p0, p3, p4, v6}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1136
    .end local v5    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_99
    :goto_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 1157
    .end local v0    # "i":I
    :cond_9c
    :goto_9c
    return-void
.end method

.method private greylist-max-o initAnimation()V
    .registers 5

    .line 693
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_1f

    .line 694
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 695
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 696
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 694
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 699
    .end local v0    # "i":I
    :cond_1f
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 700
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 701
    return-void
.end method

.method private greylist-max-o initChildren()V
    .registers 2

    .line 982
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 987
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 989
    :cond_d
    return-void
.end method

.method private static greylist-max-o isEmptySet(Landroid/animation/AnimatorSet;)Z
    .registers 5
    .param p0, "set"    # Landroid/animation/AnimatorSet;

    .line 749
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_c

    .line 750
    return v1

    .line 752
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 753
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 754
    .local v2, "anim":Landroid/animation/Animator;
    instance-of v3, v2, Landroid/animation/AnimatorSet;

    if-nez v3, :cond_26

    .line 756
    return v1

    .line 758
    :cond_26
    move-object v3, v2

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-static {v3}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 759
    return v1

    .line 752
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 763
    .end local v0    # "i":I
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o printChildCount()V
    .registers 11

    .line 1443
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1444
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    const-string v1, "AnimatorSet"

    const-string v2, "Current tree: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v2, 0x0

    .line 1447
    .local v2, "index":I
    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_64

    .line 1448
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1449
    .local v3, "listSize":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1450
    .local v4, "builder":Ljava/lang/StringBuilder;
    :goto_27
    if-ge v2, v3, :cond_5c

    .line 1451
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 1452
    .local v5, "node":Landroid/animation/AnimatorSet$Node;
    const/4 v6, 0x0

    .line 1453
    .local v6, "num":I
    iget-object v7, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v7, :cond_51

    .line 1454
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35
    iget-object v8, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_51

    .line 1455
    iget-object v8, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 1456
    .local v8, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v9, v8, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-ne v9, v5, :cond_4e

    .line 1457
    add-int/lit8 v6, v6, 0x1

    .line 1458
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    .end local v8    # "child":Landroid/animation/AnimatorSet$Node;
    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 1462
    .end local v7    # "i":I
    :cond_51
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1450
    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v6    # "num":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1465
    :cond_5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    .end local v3    # "listSize":I
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    goto :goto_18

    .line 1467
    :cond_64
    return-void
.end method

.method private greylist-max-o pulseFrame(Landroid/animation/AnimatorSet$Node;J)V
    .registers 8
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p2, "animPlayTime"    # J

    .line 1167
    iget-boolean v0, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v0, :cond_1d

    .line 1168
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    .line 1169
    .local v0, "durationScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_10

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_10
    move v1, v0

    :goto_11
    move v0, v1

    .line 1170
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    long-to-float v2, p2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->pulseAnimationFrame(J)Z

    move-result v1

    iput-boolean v1, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1173
    .end local v0    # "durationScale":F
    :cond_1d
    return-void
.end method

.method private greylist-max-o removeAnimationCallback()V
    .registers 2

    .line 1310
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1311
    return-void

    .line 1313
    :cond_5
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    .line 1314
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1315
    return-void
.end method

.method private blacklist removeAnimationEndListener()V
    .registers 4

    .line 1253
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1254
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1253
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1256
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private greylist-max-o skipToStartValue(Z)V
    .registers 3
    .param p1, "inReverse"    # Z

    .line 903
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 904
    return-void
.end method

.method private greylist-max-o sortAnimationEvents()V
    .registers 13

    .line 1541
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1542
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v0, v1, :cond_3a

    .line 1543
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 1544
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v6, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v6, v1, v2}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1545
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v5, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v5, v1, v4}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v4, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v4, v1, v3}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1548
    .end local v0    # "i":I
    :cond_3a
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v1, Landroid/animation/AnimatorSet$3;

    invoke-direct {v1, p0}, Landroid/animation/AnimatorSet$3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1575
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1577
    .local v0, "eventSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4b
    if-ge v1, v0, :cond_100

    .line 1578
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1579
    .local v5, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v6, v3, :cond_fc

    .line 1581
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v6, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v8, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_67

    .line 1582
    const/4 v6, 0x1

    .local v6, "needToSwapStart":Z
    goto :goto_7d

    .line 1583
    .end local v6    # "needToSwapStart":Z
    :cond_67
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v6, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-object v8, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v10, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v10, v10, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1584
    invoke-virtual {v10}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_f8

    .line 1586
    const/4 v6, 0x0

    .line 1592
    .restart local v6    # "needToSwapStart":Z
    :goto_7d
    move v7, v0

    .line 1593
    .local v7, "startEventId":I
    move v8, v0

    .line 1594
    .local v8, "startDelayEndId":I
    add-int/lit8 v9, v1, 0x1

    .local v9, "j":I
    :goto_81
    if-ge v9, v0, :cond_b4

    .line 1595
    if-ge v7, v0, :cond_88

    if-ge v8, v0, :cond_88

    .line 1596
    goto :goto_b4

    .line 1598
    :cond_88
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v10, v10, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v11, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    if-ne v10, v11, :cond_b1

    .line 1599
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v10, v10, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v10, :cond_a4

    .line 1601
    move v7, v9

    goto :goto_b1

    .line 1602
    :cond_a4
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v10, v10, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v10, v4, :cond_b1

    .line 1603
    move v8, v9

    .line 1594
    :cond_b1
    :goto_b1
    add-int/lit8 v9, v9, 0x1

    goto :goto_81

    .line 1608
    .end local v9    # "j":I
    :cond_b4
    :goto_b4
    if-eqz v6, :cond_c7

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v7, v9, :cond_bf

    goto :goto_c7

    .line 1609
    :cond_bf
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1614
    :cond_c7
    :goto_c7
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_f0

    .line 1623
    if-eqz v6, :cond_e0

    .line 1624
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1625
    .local v9, "startEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1626
    add-int/lit8 v1, v1, 0x1

    .line 1629
    .end local v9    # "startEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_e0
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 1630
    .local v9, "startDelayEndEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1631
    nop

    .end local v6    # "needToSwapStart":Z
    .end local v7    # "startEventId":I
    .end local v8    # "startDelayEndId":I
    .end local v9    # "startDelayEndEvent":Landroid/animation/AnimatorSet$AnimationEvent;
    add-int/2addr v1, v3

    .line 1632
    goto :goto_fe

    .line 1615
    .restart local v6    # "needToSwapStart":Z
    .restart local v7    # "startEventId":I
    .restart local v8    # "startDelayEndId":I
    :cond_f0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Something went wrong, no startdelay end is found after stop for an animation"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1588
    .end local v6    # "needToSwapStart":Z
    .end local v7    # "startEventId":I
    .end local v8    # "startDelayEndId":I
    :cond_f8
    add-int/lit8 v1, v1, 0x1

    .line 1589
    goto/16 :goto_4b

    .line 1633
    :cond_fc
    add-int/lit8 v1, v1, 0x1

    .line 1635
    .end local v5    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :goto_fe
    goto/16 :goto_4b

    .line 1637
    .end local v1    # "i":I
    :cond_100
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11d

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v1, :cond_115

    goto :goto_11d

    .line 1638
    :cond_115
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sorting went bad, the start event should always be at index 0"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1643
    :cond_11d
    :goto_11d
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {v5, v6, v2}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1644
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {v2, v5, v4}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1645
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {v2, v5, v3}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1647
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v1, :cond_164

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 1648
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eq v1, v4, :cond_164

    .line 1652
    return-void

    .line 1649
    :cond_164
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Something went wrong, the last event is not an end event"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o start(ZZ)V
    .registers 9
    .param p1, "inReverse"    # Z
    .param p2, "selfPulse"    # Z

    .line 704
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 708
    iput-boolean p2, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 710
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 712
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 713
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_2d

    .line 714
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 715
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iput-boolean v0, v3, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 716
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    .line 713
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 719
    .end local v2    # "i":I
    :cond_2d
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 720
    if-eqz p1, :cond_41

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_41

    .line 721
    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot reverse infinite AnimatorSet"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_41
    :goto_41
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 727
    invoke-static {p0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v0

    .line 728
    .local v0, "isEmptySet":Z
    if-nez v0, :cond_4c

    .line 729
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->startAnimation()V

    .line 732
    :cond_4c
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_6b

    .line 733
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    .line 734
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 735
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 736
    .local v3, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5d
    if-ge v4, v3, :cond_6b

    .line 737
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 736
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 740
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_6b
    if-eqz v0, :cond_70

    .line 743
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 745
    :cond_70
    return-void

    .line 705
    .end local v0    # "isEmptySet":Z
    .end local v1    # "size":I
    :cond_71
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o startAnimation()V
    .registers 7

    .line 1189
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->addAnimationEndListener()V

    .line 1192
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    .line 1194
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->getPlayTimeNormalized()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_1b

    .line 1197
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 1200
    :cond_1b
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_68

    .line 1201
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1202
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_68

    .line 1203
    :cond_2d
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_3b

    .line 1205
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    .line 1206
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_68

    .line 1209
    :cond_3b
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_42
    if-ltz v2, :cond_68

    .line 1210
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v4, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v4, v3, :cond_65

    .line 1211
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v4, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1215
    .local v4, "anim":Landroid/animation/Animator;
    invoke-virtual {v4}, Landroid/animation/Animator;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1216
    invoke-virtual {v4, v3}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 1209
    .end local v4    # "anim":Landroid/animation/Animator;
    :cond_65
    add-int/lit8 v2, v2, -0x1

    goto :goto_42

    .line 1223
    .end local v2    # "i":I
    :cond_68
    :goto_68
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v2, :cond_7a

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1227
    :cond_7a
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1228
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 1229
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v0

    .local v0, "playTime":J
    goto :goto_92

    .line 1231
    .end local v0    # "playTime":J
    :cond_90
    const-wide/16 v0, 0x0

    .line 1233
    .restart local v0    # "playTime":J
    :goto_92
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v2

    .line 1234
    .local v2, "toId":I
    const/4 v4, -0x1

    invoke-direct {p0, v4, v2, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 1235
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_a1
    if-ltz v4, :cond_b7

    .line 1236
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-boolean v3, v3, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v3, :cond_b4

    .line 1237
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1235
    :cond_b4
    add-int/lit8 v4, v4, -0x1

    goto :goto_a1

    .line 1240
    .end local v4    # "i":I
    :cond_b7
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1242
    .end local v0    # "playTime":J
    .end local v2    # "toId":I
    :cond_b9
    return-void
.end method

.method private greylist-max-o updateAnimatorsDuration()V
    .registers 7

    .line 767
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    .line 769
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 770
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_23

    .line 771
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 774
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 770
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 777
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_23
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 778
    return-void
.end method

.method private greylist-max-o updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .registers 13
    .param p1, "parent"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .line 1660
    .local p2, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_27

    .line 1661
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne p1, v0, :cond_26

    .line 1663
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 1664
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 1665
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_23

    .line 1666
    iput-wide v1, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1667
    iput-wide v1, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1663
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1671
    .end local v0    # "i":I
    :cond_26
    return-void

    .line 1674
    :cond_27
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1676
    .local v0, "childrenSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v0, :cond_c2

    .line 1677
    iget-object v4, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 1678
    .local v4, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v5, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 1680
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1681
    .local v5, "index":I
    if-ltz v5, :cond_8b

    .line 1683
    move v6, v5

    .local v6, "j":I
    :goto_4a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_6c

    .line 1684
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iput-object v8, v7, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1685
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iput-wide v1, v7, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1686
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iput-wide v1, v7, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1683
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 1688
    .end local v6    # "j":I
    :cond_6c
    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1689
    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1690
    iput-object v8, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cycle found in AnimatorSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AnimatorSet"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    goto :goto_be

    .line 1695
    :cond_8b
    iget-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v1

    if-eqz v6, :cond_bb

    .line 1696
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v6, v6, v1

    if-nez v6, :cond_9e

    .line 1697
    iput-object p1, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1698
    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1699
    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_bb

    .line 1701
    :cond_9e
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-wide v8, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_ac

    .line 1702
    iput-object p1, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1703
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1706
    :cond_ac
    iget-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v6, v6, v1

    if-nez v6, :cond_b4

    .line 1707
    move-wide v6, v1

    goto :goto_b9

    :cond_b4
    iget-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v8, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    add-long/2addr v6, v8

    :goto_b9
    iput-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1710
    :cond_bb
    :goto_bb
    invoke-direct {p0, v4, p2}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1676
    .end local v4    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v5    # "index":I
    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 1712
    .end local v3    # "i":I
    :cond_c2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1713
    return-void
.end method


# virtual methods
.method greylist-max-o animateBasedOnPlayTime(JJZ)V
    .registers 24
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J
    .param p5, "inReverse"    # Z

    .line 819
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_de

    cmp-long v3, p3, v3

    if-ltz v3, :cond_de

    .line 828
    const-wide/16 v3, -0x1

    if-eqz p5, :cond_35

    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_2d

    .line 833
    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v5

    iget-wide v7, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v5, v7

    .line 834
    .local v5, "duration":J
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 835
    .end local p1    # "currentPlayTime":J
    .local v1, "currentPlayTime":J
    sub-long v1, v5, v1

    .line 836
    sub-long v7, v5, p3

    .line 837
    .end local p3    # "lastPlayTime":J
    .local v7, "lastPlayTime":J
    const/4 v9, 0x0

    move-wide v11, v7

    move v13, v9

    .end local p5    # "inReverse":Z
    .local v9, "inReverse":Z
    goto :goto_39

    .line 830
    .end local v1    # "currentPlayTime":J
    .end local v5    # "duration":J
    .end local v7    # "lastPlayTime":J
    .end local v9    # "inReverse":Z
    .restart local p1    # "currentPlayTime":J
    .restart local p3    # "lastPlayTime":J
    .restart local p5    # "inReverse":Z
    :cond_2d
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Cannot reverse AnimatorSet with infinite duration"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 828
    :cond_35
    move-wide/from16 v11, p3

    move/from16 v13, p5

    .line 840
    .end local p1    # "currentPlayTime":J
    .end local p3    # "lastPlayTime":J
    .end local p5    # "inReverse":Z
    .restart local v1    # "currentPlayTime":J
    .local v11, "lastPlayTime":J
    .local v13, "inReverse":Z
    :goto_39
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    .line 842
    .local v14, "unfinishedNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_40
    iget-object v6, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v15, 0x1

    if-ge v5, v6, :cond_8b

    .line 843
    iget-object v6, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 844
    .local v6, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    invoke-virtual {v6}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gtz v7, :cond_8b

    invoke-virtual {v6}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_62

    .line 845
    goto :goto_8b

    .line 850
    :cond_62
    iget v7, v6, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v7, v15, :cond_7b

    .line 851
    iget-object v7, v6, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v7, v7, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_76

    iget-object v7, v6, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v7, v7, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v7, v7, v1

    if-lez v7, :cond_7b

    .line 853
    :cond_76
    iget-object v7, v6, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_7b
    iget v7, v6, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_88

    .line 860
    iget-object v7, v6, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v7, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 842
    .end local v6    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 865
    .end local v5    # "i":I
    :cond_8b
    :goto_8b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b6

    .line 866
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    .line 867
    .local v4, "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v0, v1, v2, v4, v13}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v5

    .line 868
    .local v5, "playTime":J
    if-nez v13, :cond_a8

    .line 869
    iget-object v7, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    sub-long/2addr v5, v7

    move-wide/from16 v16, v5

    goto :goto_aa

    .line 868
    :cond_a8
    move-wide/from16 v16, v5

    .line 871
    .end local v5    # "playTime":J
    .local v16, "playTime":J
    :goto_aa
    iget-object v5, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    move-wide/from16 v6, v16

    move-wide v8, v11

    move v10, v13

    invoke-virtual/range {v5 .. v10}, Landroid/animation/Animator;->animateBasedOnPlayTime(JJZ)V

    .line 865
    .end local v4    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v16    # "playTime":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    .line 875
    .end local v3    # "i":I
    :cond_b6
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b7
    iget-object v4, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_dd

    .line 876
    iget-object v4, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 877
    .local v4, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    invoke-virtual {v4}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-lez v5, :cond_da

    iget v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v5, v15, :cond_da

    .line 879
    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5, v15}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 875
    .end local v4    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    :cond_da
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 883
    .end local v3    # "i":I
    :cond_dd
    return-void

    .line 820
    .end local v1    # "currentPlayTime":J
    .end local v11    # "lastPlayTime":J
    .end local v13    # "inReverse":Z
    .end local v14    # "unfinishedNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    .restart local p1    # "currentPlayTime":J
    .restart local p3    # "lastPlayTime":J
    .restart local p5    # "inReverse":Z
    :cond_de
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Error: Play time should never be negative."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public greylist-max-o canReverse()Z
    .registers 5

    .line 1413
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist cancel()V
    .registers 6

    .line 411
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 414
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2d

    .line 417
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 418
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 419
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v1, :cond_2d

    .line 420
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 423
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 424
    .local v1, "playingSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 425
    .local v2, "setSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    if-ge v3, v2, :cond_49

    .line 426
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 428
    .end local v3    # "i":I
    :cond_49
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 429
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 431
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v1    # "playingSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    .end local v2    # "setSize":I
    :cond_51
    return-void

    .line 412
    :cond_52
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Animator;
    .registers 2

    .line 60
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/animation/AnimatorSet;
    .registers 13

    .line 1327
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1336
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1337
    .local v1, "nodeCount":I
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 1338
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 1339
    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1340
    const/4 v5, -0x1

    iput v5, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1341
    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 1342
    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1343
    new-instance v3, Landroid/animation/AnimatorSet$SeekState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState-IA;)V

    iput-object v3, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    .line 1344
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    .line 1345
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 1346
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 1347
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 1348
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 1349
    new-instance v5, Landroid/animation/AnimatorSet$2;

    invoke-direct {v5, p0, v0}, Landroid/animation/AnimatorSet$2;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 1360
    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    .line 1361
    iput-boolean v3, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 1367
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1368
    .local v3, "clonesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;>;"
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_54
    if-ge v5, v1, :cond_7b

    .line 1369
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 1370
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v6}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v7

    .line 1372
    .local v7, "nodeClone":Landroid/animation/AnimatorSet$Node;
    iget-object v8, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1373
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    iget-object v8, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    iget-object v8, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v9, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v7    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 1378
    .end local v5    # "n":I
    :cond_7b
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 1379
    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    check-cast v5, Landroid/animation/ValueAnimator;

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 1383
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8c
    if-ge v5, v1, :cond_11b

    .line 1384
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 1386
    .restart local v6    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    .line 1387
    .restart local v7    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-nez v8, :cond_a2

    .line 1388
    move-object v8, v4

    goto :goto_aa

    :cond_a2
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    :goto_aa
    iput-object v8, v7, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1389
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v8, :cond_b2

    move v8, v2

    goto :goto_b8

    :cond_b2
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1390
    .local v8, "size":I
    :goto_b8
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_b9
    if-ge v9, v8, :cond_cf

    .line 1391
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1390
    add-int/lit8 v9, v9, 0x1

    goto :goto_b9

    .line 1393
    .end local v9    # "j":I
    :cond_cf
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v9, :cond_d5

    move v9, v2

    goto :goto_db

    :cond_d5
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_db
    move v8, v9

    .line 1394
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_dd
    if-ge v9, v8, :cond_f3

    .line 1395
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1394
    add-int/lit8 v9, v9, 0x1

    goto :goto_dd

    .line 1397
    .end local v9    # "j":I
    :cond_f3
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v9, :cond_f9

    move v9, v2

    goto :goto_ff

    :cond_f9
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_ff
    move v8, v9

    .line 1398
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_101
    if-ge v9, v8, :cond_117

    .line 1399
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1398
    add-int/lit8 v9, v9, 0x1

    goto :goto_101

    .line 1383
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v7    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    .end local v8    # "size":I
    .end local v9    # "j":I
    :cond_117
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8c

    .line 1402
    .end local v5    # "i":I
    :cond_11b
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o commitAnimationFrame(J)V
    .registers 3
    .param p1, "frameTime"    # J

    .line 1098
    return-void
.end method

.method public greylist-max-o doAnimationFrame(J)Z
    .registers 14
    .param p1, "frameTime"    # J

    .line 999
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    .line 1000
    .local v0, "durationScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 1002
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->forceToEnd()V

    .line 1003
    return v2

    .line 1008
    :cond_e
    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_18

    .line 1009
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1013
    :cond_18
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    .line 1017
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1018
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    .line 1019
    return v3

    .line 1020
    :cond_23
    iget-wide v7, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_34

    .line 1022
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long v6, p1, v7

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1023
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 1027
    :cond_34
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1028
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 1029
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v1, :cond_55

    .line 1030
    long-to-float v1, p1

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v1, v4

    float-to-long v4, v1

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    goto :goto_65

    .line 1032
    :cond_55
    long-to-float v1, p1

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    add-long/2addr v4, v6

    long-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v1, v4

    float-to-long v4, v1

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    .line 1035
    :goto_65
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    .line 1038
    :cond_6a
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v1, :cond_7c

    long-to-float v1, p1

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    long-to-float v4, v4

    iget-wide v5, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    long-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7c

    .line 1040
    return v3

    .line 1045
    :cond_7c
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long v4, p1, v4

    long-to-float v1, v4

    div-float/2addr v1, v0

    float-to-long v4, v1

    .line 1046
    .local v4, "unscaledPlayTime":J
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    .line 1050
    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v1

    .line 1051
    .local v1, "latestId":I
    iget v6, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1053
    .local v6, "startId":I
    invoke-direct {p0, v6, v1, v4, v5}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 1055
    iput v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 1058
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_91
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_af

    .line 1059
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 1060
    .local v8, "node":Landroid/animation/AnimatorSet$Node;
    iget-boolean v9, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v9, :cond_ac

    .line 1061
    invoke-direct {p0, v4, v5, v8}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v9

    invoke-direct {p0, v8, v9, v10}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    .line 1058
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_91

    .line 1066
    .end local v7    # "i":I
    :cond_af
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    .restart local v7    # "i":I
    :goto_b6
    if-ltz v7, :cond_cc

    .line 1067
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-boolean v8, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v8, :cond_c9

    .line 1068
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1066
    :cond_c9
    add-int/lit8 v7, v7, -0x1

    goto :goto_b6

    .line 1072
    .end local v7    # "i":I
    :cond_cc
    const/4 v7, 0x0

    .line 1073
    .local v7, "finished":Z
    iget-boolean v8, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v8, :cond_f4

    .line 1074
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v2, :cond_e5

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v8, v9, :cond_e5

    .line 1076
    const/4 v7, 0x1

    goto :goto_10b

    .line 1077
    :cond_e5
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10b

    iget v8, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_10b

    .line 1079
    const/4 v7, 0x1

    goto :goto_10b

    .line 1082
    :cond_f4
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_109

    iget v8, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    if-ne v8, v9, :cond_109

    move v8, v2

    goto :goto_10a

    :cond_109
    move v8, v3

    :goto_10a
    move v7, v8

    .line 1085
    :cond_10b
    :goto_10b
    if-eqz v7, :cond_111

    .line 1086
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 1087
    return v2

    .line 1089
    :cond_111
    return v3
.end method

.method public whitelist end()V
    .registers 6

    .line 465
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 468
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 469
    return-void

    .line 471
    :cond_11
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 473
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_61

    .line 475
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_28
    iput v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 476
    :goto_2a
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    if-lez v0, :cond_a0

    .line 477
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 478
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 479
    .local v0, "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 480
    .local v3, "anim":Landroid/animation/Animator;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-boolean v4, v4, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v4, :cond_4b

    .line 481
    goto :goto_2a

    .line 483
    :cond_4b
    iget v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v4, v1, :cond_53

    .line 484
    invoke-virtual {v3}, Landroid/animation/Animator;->reverse()V

    goto :goto_60

    .line 485
    :cond_53
    iget v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v4, v2, :cond_60

    .line 486
    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 490
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 492
    .end local v0    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v3    # "anim":Landroid/animation/Animator;
    :cond_60
    :goto_60
    goto :goto_2a

    .line 494
    :cond_61
    :goto_61
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_a0

    .line 497
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    .line 498
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    .line 499
    .restart local v0    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    iget-object v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 500
    .restart local v3    # "anim":Landroid/animation/Animator;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-boolean v4, v4, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v4, :cond_8a

    .line 501
    goto :goto_61

    .line 503
    :cond_8a
    iget v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v4, :cond_92

    .line 504
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_9f

    .line 505
    :cond_92
    iget v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v4, v1, :cond_9f

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 509
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 511
    .end local v0    # "event":Landroid/animation/AnimatorSet$AnimationEvent;
    .end local v3    # "anim":Landroid/animation/Animator;
    :cond_9f
    :goto_9f
    goto :goto_61

    .line 513
    :cond_a0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    :cond_a5
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    .line 516
    return-void

    .line 466
    :cond_a9
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getChangingConfigurations()I
    .registers 5

    .line 340
    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    .line 341
    .local v0, "conf":I
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 342
    .local v1, "nodeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1f

    .line 343
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v0, v3

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 345
    .end local v2    # "i":I
    :cond_1f
    return v0
.end method

.method public whitelist getChildAnimations()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 305
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_22

    .line 306
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 307
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_1f

    .line 308
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 311
    .end local v2    # "i":I
    :cond_22
    return-object v0
.end method

.method public whitelist getCurrentPlayTime()J
    .registers 6

    .line 965
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 966
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v0

    return-wide v0

    .line 968
    :cond_f
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 970
    const-wide/16 v0, 0x0

    return-wide v0

    .line 972
    :cond_1a
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    .line 973
    .local v0, "durationScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_26

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_27

    :cond_26
    move v1, v0

    :goto_27
    move v0, v1

    .line 974
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v1, :cond_35

    .line 975
    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1

    .line 977
    :cond_35
    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 600
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 364
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public whitelist getStartDelay()J
    .registers 3

    .line 547
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public whitelist getTotalDuration()J
    .registers 3

    .line 1744
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 1745
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 1746
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-wide v0
.end method

.method greylist-max-o isInitialized()Z
    .registers 4

    .line 887
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    if-eqz v0, :cond_6

    .line 888
    const/4 v0, 0x1

    return v0

    .line 891
    :cond_6
    const/4 v0, 0x1

    .line 892
    .local v0, "allInitialized":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 893
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 894
    const/4 v0, 0x0

    .line 895
    goto :goto_25

    .line 892
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 898
    .end local v1    # "i":I
    :cond_25
    :goto_25
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 899
    return v0
.end method

.method public whitelist isRunning()Z
    .registers 5

    .line 528
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 529
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0

    .line 531
    :cond_b
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist isStarted()Z
    .registers 2

    .line 536
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public whitelist pause()V
    .registers 4

    .line 646
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 649
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 650
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 651
    if-nez v0, :cond_15

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v1, :cond_15

    .line 652
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    .line 654
    :cond_15
    return-void

    .line 647
    .end local v0    # "previouslyPaused":Z
    :cond_16
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .registers 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 396
    if-eqz p1, :cond_8

    .line 397
    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    .line 399
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist playSequentially(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 283
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_3a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3a

    .line 284
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 285
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3a

    .line 287
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_3a

    .line 288
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 292
    .end local v0    # "i":I
    :cond_3a
    :goto_3a
    return-void
.end method

.method public varargs whitelist playSequentially([Landroid/animation/Animator;)V
    .registers 6
    .param p1, "items"    # [Landroid/animation/Animator;

    .line 265
    if-eqz p1, :cond_22

    .line 266
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 267
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_22

    .line 269
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v2, p1

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_22

    .line 270
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 274
    .end local v0    # "i":I
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist playTogether(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 249
    .local v2, "anim":Landroid/animation/Animator;
    if-nez v0, :cond_20

    .line 250
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    goto :goto_23

    .line 252
    :cond_20
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 254
    .end local v2    # "anim":Landroid/animation/Animator;
    :goto_23
    goto :goto_d

    .line 256
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_24
    return-void
.end method

.method public varargs whitelist playTogether([Landroid/animation/Animator;)V
    .registers 5
    .param p1, "items"    # [Landroid/animation/Animator;

    .line 232
    if-eqz p1, :cond_15

    .line 233
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 234
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 235
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 238
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method greylist-max-o pulseAnimationFrame(J)Z
    .registers 4
    .param p1, "frameTime"    # J

    .line 1102
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public whitelist resume()V
    .registers 6

    .line 658
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 661
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 662
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 663
    if-eqz v0, :cond_1c

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-nez v1, :cond_1c

    .line 664
    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1c

    .line 665
    invoke-direct {p0, v3, v4}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    .line 668
    :cond_1c
    return-void

    .line 659
    .end local v0    # "previouslyPaused":Z
    :cond_1d
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reverse()V
    .registers 2

    .line 1427
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    .line 1428
    return-void
.end method

.method public whitelist setCurrentPlayTime(J)V
    .registers 13
    .param p1, "playTime"    # J

    .line 920
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    goto :goto_17

    .line 922
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Cannot seek in reverse in an infinite AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7a

    :cond_2a
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_7a

    .line 932
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 934
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_48

    .line 950
    :cond_40
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    goto :goto_71

    .line 935
    :cond_48
    :goto_48
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v2, :cond_72

    .line 939
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v2

    if-nez v2, :cond_61

    .line 940
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    .line 942
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    .line 943
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v2, v0, v1, v3}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    .line 945
    :cond_61
    const-wide/16 v7, 0x0

    iget-boolean v9, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    move-object v4, p0

    move-wide v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/animation/AnimatorSet;->animateBasedOnPlayTime(JJZ)V

    .line 946
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    .line 952
    :goto_71
    return-void

    .line 936
    :cond_72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Something went wrong. mReversing should not be set when AnimatorSet is not started."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_7a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Play time should always be in between0 and duration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/animation/Animator;
    .registers 3

    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDuration(J)Landroid/animation/AnimatorSet;
    .registers 5
    .param p1, "duration"    # J

    .line 613
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 618
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 619
    return-object p0

    .line 614
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 359
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 360
    return-void
.end method

.method public whitelist setStartDelay(J)V
    .registers 12
    .param p1, "startDelay"    # J

    .line 560
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_f

    .line 561
    const-string v2, "AnimatorSet"

    const-string v3, "Start delay should always be non-negative"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-wide/16 p1, 0x0

    .line 564
    :cond_f
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long v2, p1, v2

    .line 565
    .local v2, "delta":J
    cmp-long v0, v2, v0

    if-nez v0, :cond_18

    .line 566
    return-void

    .line 568
    :cond_18
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 569
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v0, :cond_5f

    .line 571
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 572
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    const-wide/16 v4, -0x1

    if-ge v1, v0, :cond_56

    .line 573
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 574
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v6, v7, :cond_3a

    .line 575
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iput-wide v4, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_53

    .line 577
    :cond_3a
    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_42

    .line 578
    move-wide v7, v4

    goto :goto_45

    :cond_42
    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v7, v2

    :goto_45
    iput-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 579
    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_4e

    .line 580
    goto :goto_51

    :cond_4e
    iget-wide v4, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-long/2addr v4, v2

    :goto_51
    iput-wide v4, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 572
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 584
    .end local v1    # "i":I
    :cond_56
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_5f

    .line 585
    add-long/2addr v6, v2

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 588
    .end local v0    # "size":I
    :cond_5f
    return-void
.end method

.method public whitelist setTarget(Ljava/lang/Object;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 325
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 326
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 327
    .local v3, "animation":Landroid/animation/Animator;
    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1e

    .line 328
    move-object v4, v3

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_28

    .line 329
    :cond_1e
    instance-of v4, v3, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_28

    .line 330
    move-object v4, v3

    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 324
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v3    # "animation":Landroid/animation/Animator;
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 333
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method

.method public whitelist setupEndValues()V
    .registers 5

    .line 635
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 636
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 637
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 638
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v3, :cond_1a

    .line 639
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupEndValues()V

    .line 636
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 642
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public whitelist setupStartValues()V
    .registers 5

    .line 624
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 625
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 626
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 627
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v3, :cond_1a

    .line 628
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupStartValues()V

    .line 625
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 631
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public greylist-max-o shouldPlayTogether()Z
    .registers 4

    .line 1736
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 1737
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 1739
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_20
    return v1
.end method

.method greylist-max-o skipToEndValue(Z)V
    .registers 5
    .param p1, "inReverse"    # Z

    .line 782
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 787
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    .line 792
    if-eqz p1, :cond_34

    .line 793
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_33

    .line 794
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v2, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v2, v1, :cond_30

    .line 795
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v2, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 793
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .end local v0    # "i":I
    :cond_33
    goto :goto_5d

    .line 799
    :cond_34
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_35
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 800
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5a

    .line 801
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->skipToEndValue(Z)V

    .line 799
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 805
    .end local v0    # "i":I
    :cond_5d
    :goto_5d
    return-void

    .line 783
    :cond_5e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Children must be initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist start()V
    .registers 3

    .line 684
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->start(ZZ)V

    .line 685
    return-void
.end method

.method greylist-max-o startWithoutPulsing(Z)V
    .registers 3
    .param p1, "inReverse"    # Z

    .line 689
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    .line 690
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatorSet@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1433
    .local v0, "returnVal":Ljava/lang/String;
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1434
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v1, :cond_53

    .line 1435
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 1436
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1434
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1438
    .end local v2    # "i":I
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
