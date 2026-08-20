.class public Lcom/android/server/wm/animation/rebound/Spring;
.super Ljava/lang/Object;
.source "Spring.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;
    }
.end annotation


# static fields
.field public static ID:I = 0x0

.field public static final MAX_DELTA_TIME_SEC:D = 0.064

.field public static final SOLVER_TIMESTEP_SEC:D = 0.001


# instance fields
.field public final mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

.field public mDisplacementFromRestThreshold:D

.field public mEndValue:D

.field public final mId:Ljava/lang/String;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/android/server/wm/animation/rebound/SpringListener;",
            ">;"
        }
    .end annotation
.end field

.field public mOvershootClampingEnabled:Z

.field public final mPreviousState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

.field public mRestSpeedThreshold:D

.field public mSpringConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;

.field public final mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

.field public mStartValue:D

.field public final mTempState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

.field public mTimeAccumulator:D

.field public mWasAtRest:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/animation/rebound/BaseSpringSystem;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;-><init>(Lcom/android/server/wm/animation/rebound/Spring$PhysicsState-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    .line 40
    new-instance v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;-><init>(Lcom/android/server/wm/animation/rebound/Spring$PhysicsState-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mPreviousState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    .line 41
    new-instance v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;-><init>(Lcom/android/server/wm/animation/rebound/Spring$PhysicsState-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mTempState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mWasAtRest:Z

    const-wide v0, 0x3f747ae147ae147bL    # 0.005

    .line 46
    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mRestSpeedThreshold:D

    .line 47
    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mDisplacementFromRestThreshold:D

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mTimeAccumulator:D

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p1, :cond_52

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "spring:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->getUniqueId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mId:Ljava/lang/String;

    .line 70
    sget-object p1, Lcom/android/server/wm/animation/rebound/SpringConfig;->defaultConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/animation/rebound/Spring;->setSpringConfig(Lcom/android/server/wm/animation/rebound/SpringConfig;)Lcom/android/server/wm/animation/rebound/Spring;

    return-void

    .line 65
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addListener(Lcom/android/server/wm/animation/rebound/SpringListener;)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 3

    if-eqz p1, :cond_8

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 556
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newListener is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public advance(D)V
    .registers 33

    move-object/from16 v0, p0

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 330
    iget-boolean v2, v0, Lcom/android/server/wm/animation/rebound/Spring;->mWasAtRest:Z

    if-eqz v2, :cond_d

    return-void

    :cond_d
    const-wide v2, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v4, p1, v2

    if-lez v4, :cond_17

    goto :goto_19

    :cond_17
    move-wide/from16 v2, p1

    .line 349
    :goto_19
    iget-wide v4, v0, Lcom/android/server/wm/animation/rebound/Spring;->mTimeAccumulator:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/wm/animation/rebound/Spring;->mTimeAccumulator:D

    .line 351
    iget-object v2, v0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;

    iget-wide v3, v2, Lcom/android/server/wm/animation/rebound/SpringConfig;->tension:D

    .line 352
    iget-wide v5, v2, Lcom/android/server/wm/animation/rebound/SpringConfig;->friction:D

    .line 354
    iget-object v2, v0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v7, v2, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    .line 355
    iget-wide v9, v2, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    .line 356
    iget-object v2, v0, Lcom/android/server/wm/animation/rebound/Spring;->mTempState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v11, v2, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    .line 357
    iget-wide v13, v2, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    move v15, v1

    .line 367
    :goto_31
    iget-wide v1, v0, Lcom/android/server/wm/animation/rebound/Spring;->mTimeAccumulator:D

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v18, v1, v16

    if-ltz v18, :cond_ae

    sub-double v1, v1, v16

    .line 371
    iput-wide v1, v0, Lcom/android/server/wm/animation/rebound/Spring;->mTimeAccumulator:D

    cmpg-double v1, v1, v16

    if-gez v1, :cond_4a

    .line 376
    iget-object v1, v0, Lcom/android/server/wm/animation/rebound/Spring;->mPreviousState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iput-wide v7, v1, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    .line 377
    iput-wide v9, v1, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    .line 392
    :cond_4a
    iget-wide v1, v0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    sub-double v11, v1, v11

    mul-double/2addr v11, v3

    mul-double v13, v5, v9

    sub-double/2addr v11, v13

    mul-double v13, v9, v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v13, v13, v18

    add-double/2addr v13, v7

    mul-double v20, v11, v16

    mul-double v20, v20, v18

    add-double v20, v9, v20

    sub-double v13, v1, v13

    mul-double/2addr v13, v3

    mul-double v22, v5, v20

    sub-double v13, v13, v22

    mul-double v22, v20, v16

    mul-double v22, v22, v18

    add-double v22, v7, v22

    mul-double v24, v13, v16

    mul-double v24, v24, v18

    add-double v24, v9, v24

    sub-double v18, v1, v22

    mul-double v18, v18, v3

    mul-double v22, v5, v24

    sub-double v18, v18, v22

    mul-double v22, v24, v16

    add-double v22, v7, v22

    mul-double v26, v18, v16

    add-double v26, v9, v26

    sub-double v1, v1, v22

    mul-double/2addr v1, v3

    mul-double v28, v5, v26

    sub-double v1, v1, v28

    add-double v20, v20, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v24

    add-double v20, v9, v20

    add-double v20, v20, v26

    const-wide v28, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v20, v20, v28

    add-double v13, v13, v18

    mul-double v13, v13, v24

    add-double/2addr v11, v13

    add-double/2addr v11, v1

    mul-double v11, v11, v28

    mul-double v20, v20, v16

    add-double v7, v7, v20

    mul-double v11, v11, v16

    add-double/2addr v9, v11

    move-wide/from16 v11, v22

    move-wide/from16 v13, v26

    goto :goto_31

    .line 421
    :cond_ae
    iget-object v5, v0, Lcom/android/server/wm/animation/rebound/Spring;->mTempState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iput-wide v11, v5, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    .line 422
    iput-wide v13, v5, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    .line 424
    iget-object v5, v0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iput-wide v7, v5, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    .line 425
    iput-wide v9, v5, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_c5

    div-double v1, v1, v16

    .line 428
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/animation/rebound/Spring;->interpolate(D)V

    .line 434
    :cond_c5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_d9

    iget-boolean v1, v0, Lcom/android/server/wm/animation/rebound/Spring;->mOvershootClampingEnabled:Z

    if-eqz v1, :cond_d7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/animation/rebound/Spring;->isOvershooting()Z

    move-result v1

    if-eqz v1, :cond_d7

    goto :goto_d9

    :cond_d7
    move v1, v15

    goto :goto_f2

    :cond_d9
    :goto_d9
    cmpl-double v1, v3, v5

    if-lez v1, :cond_e6

    .line 437
    iget-wide v3, v0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    iput-wide v3, v0, Lcom/android/server/wm/animation/rebound/Spring;->mStartValue:D

    .line 438
    iget-object v1, v0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iput-wide v3, v1, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    goto :goto_ee

    .line 440
    :cond_e6
    iget-object v1, v0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v3, v1, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    iput-wide v3, v0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    .line 441
    iput-wide v3, v0, Lcom/android/server/wm/animation/rebound/Spring;->mStartValue:D

    .line 443
    :goto_ee
    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/animation/rebound/Spring;->setVelocity(D)Lcom/android/server/wm/animation/rebound/Spring;

    move v1, v2

    .line 464
    :goto_f2
    iget-boolean v3, v0, Lcom/android/server/wm/animation/rebound/Spring;->mWasAtRest:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_fb

    .line 465
    iput-boolean v4, v0, Lcom/android/server/wm/animation/rebound/Spring;->mWasAtRest:Z

    move v3, v2

    goto :goto_fc

    :cond_fb
    move v3, v4

    :goto_fc
    if-eqz v1, :cond_101

    .line 470
    iput-boolean v2, v0, Lcom/android/server/wm/animation/rebound/Spring;->mWasAtRest:Z

    goto :goto_102

    :cond_101
    move v2, v4

    .line 473
    :goto_102
    iget-object v1, v0, Lcom/android/server/wm/animation/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_108
    :goto_108
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_122

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/animation/rebound/SpringListener;

    if-eqz v3, :cond_119

    .line 476
    invoke-interface {v4, v0}, Lcom/android/server/wm/animation/rebound/SpringListener;->onSpringActivate(Lcom/android/server/wm/animation/rebound/Spring;)V

    .line 480
    :cond_119
    invoke-interface {v4, v0}, Lcom/android/server/wm/animation/rebound/SpringListener;->onSpringUpdate(Lcom/android/server/wm/animation/rebound/Spring;)V

    if-eqz v2, :cond_108

    .line 484
    invoke-interface {v4, v0}, Lcom/android/server/wm/animation/rebound/SpringListener;->onSpringAtRest(Lcom/android/server/wm/animation/rebound/Spring;)V

    goto :goto_108

    :cond_122
    return-void
.end method

.method public currentValueIsApproximately(D)Z
    .registers 5

    .line 595
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->getRestDisplacementThreshold()D

    move-result-wide v0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public destroy()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->deregisterSpring(Lcom/android/server/wm/animation/rebound/Spring;)V

    return-void
.end method

.method public getCurrentDisplacementDistance()D
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/animation/rebound/Spring;->getDisplacementDistanceForState(Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentValue()D
    .registers 3

    .line 171
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    return-wide v0
.end method

.method public final getDisplacementDistanceForState(Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;)D
    .registers 4

    .line 190
    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    iget-wide p0, p1, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getEndValue()D
    .registers 3

    .line 218
    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getRestDisplacementThreshold()D
    .registers 3

    .line 284
    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mDisplacementFromRestThreshold:D

    return-wide v0
.end method

.method public getRestSpeedThreshold()D
    .registers 3

    .line 262
    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mRestSpeedThreshold:D

    return-wide v0
.end method

.method public getSpringConfig()Lcom/android/server/wm/animation/rebound/SpringConfig;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;

    return-object p0
.end method

.method public getStartValue()D
    .registers 3

    .line 162
    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mStartValue:D

    return-wide v0
.end method

.method public final getUniqueId()I
    .registers 2

    .line 56
    sget p0, Lcom/android/server/wm/animation/rebound/Spring;->ID:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    sput p0, Lcom/android/server/wm/animation/rebound/Spring;->ID:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 v0, p0, 0x1

    .line 57
    sput v0, Lcom/android/server/wm/animation/rebound/Spring;->ID:I

    return p0
.end method

.method public getVelocity()D
    .registers 3

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    return-wide v0
.end method

.method public final interpolate(D)V
    .registers 10

    .line 540
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v1, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    mul-double/2addr v1, p1

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mPreviousState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v3, p0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    .line 542
    iget-wide v1, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    mul-double/2addr v1, p1

    iget-wide p0, p0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    mul-double/2addr p0, v5

    add-double/2addr v1, p0

    iput-wide v1, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    return-void
.end method

.method public isAtRest()Z
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/animation/rebound/Spring;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    .line 516
    invoke-virtual {p0, v0}, Lcom/android/server/wm/animation/rebound/Spring;->getDisplacementDistanceForState(Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/animation/rebound/Spring;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_24

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;

    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_26

    :cond_24
    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public isOvershootClampingEnabled()Z
    .registers 1

    .line 304
    iget-boolean p0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mOvershootClampingEnabled:Z

    return p0
.end method

.method public isOvershooting()Z
    .registers 5

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;

    iget-wide v0, v0, Lcom/android/server/wm/animation/rebound/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_30

    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mStartValue:D

    iget-wide v2, p0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    .line 314
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2e

    :cond_1c
    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mStartValue:D

    iget-wide v2, p0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_30

    .line 315
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    cmpg-double p0, v0, v2

    if-gez p0, :cond_30

    :cond_2e
    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method public removeAllListeners()Lcom/android/server/wm/animation/rebound/Spring;
    .registers 2

    .line 582
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-object p0
.end method

.method public removeListener(Lcom/android/server/wm/animation/rebound/SpringListener;)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 3

    if-eqz p1, :cond_8

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-object p0

    .line 570
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listenerToRemove is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAtRest()Lcom/android/server/wm/animation/rebound/Spring;
    .registers 5

    .line 527
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v1, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    iput-wide v1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    .line 528
    iget-object v3, p0, Lcom/android/server/wm/animation/rebound/Spring;->mTempState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iput-wide v1, v3, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    const-wide/16 v1, 0x0

    .line 529
    iput-wide v1, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    return-object p0
.end method

.method public setCurrentValue(D)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 4

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/animation/rebound/Spring;->setCurrentValue(DZ)Lcom/android/server/wm/animation/rebound/Spring;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentValue(DZ)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 5

    .line 144
    iput-wide p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mStartValue:D

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iput-wide p1, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->position:D

    .line 146
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/animation/rebound/SpringListener;

    .line 148
    invoke-interface {p2, p0}, Lcom/android/server/wm/animation/rebound/SpringListener;->onSpringUpdate(Lcom/android/server/wm/animation/rebound/Spring;)V

    goto :goto_15

    :cond_25
    if-eqz p3, :cond_2a

    .line 151
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->setAtRest()Lcom/android/server/wm/animation/rebound/Spring;

    :cond_2a
    return-object p0
.end method

.method public setEndValue(D)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 5

    .line 200
    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    .line 203
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mStartValue:D

    .line 204
    iput-wide p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mEndValue:D

    .line 205
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/animation/rebound/SpringListener;

    .line 207
    invoke-interface {p2, p0}, Lcom/android/server/wm/animation/rebound/SpringListener;->onSpringEndStateChange(Lcom/android/server/wm/animation/rebound/Spring;)V

    goto :goto_24

    :cond_34
    return-object p0
.end method

.method public setOvershootClampingEnabled(Z)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 2

    .line 294
    iput-boolean p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mOvershootClampingEnabled:Z

    return-object p0
.end method

.method public setRestDisplacementThreshold(D)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 3

    .line 273
    iput-wide p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mDisplacementFromRestThreshold:D

    return-object p0
.end method

.method public setRestSpeedThreshold(D)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 3

    .line 252
    iput-wide p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mRestSpeedThreshold:D

    return-object p0
.end method

.method public setSpringConfig(Lcom/android/server/wm/animation/rebound/SpringConfig;)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 2

    if-eqz p1, :cond_5

    .line 104
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;

    return-object p0

    .line 102
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVelocity(D)Lcom/android/server/wm/animation/rebound/Spring;
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    .line 231
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mCurrentState:Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;

    iput-wide p1, v0, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;->velocity:D

    .line 232
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/Spring;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    return-object p0
.end method

.method public systemShouldAdvance()Z
    .registers 2

    .line 496
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->wasAtRest()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public wasAtRest()Z
    .registers 1

    .line 506
    iget-boolean p0, p0, Lcom/android/server/wm/animation/rebound/Spring;->mWasAtRest:Z

    return p0
.end method
