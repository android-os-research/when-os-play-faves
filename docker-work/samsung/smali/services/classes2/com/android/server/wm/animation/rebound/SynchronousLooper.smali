.class public Lcom/android/server/wm/animation/rebound/SynchronousLooper;
.super Lcom/android/server/wm/animation/rebound/SpringLooper;
.source "SynchronousLooper.java"


# static fields
.field public static final SIXTY_FPS:D = 16.6667


# instance fields
.field public mRunning:Z

.field public mTimeStep:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Lcom/android/server/wm/animation/rebound/SpringLooper;-><init>()V

    const-wide v0, 0x4030aaacd9e83e42L    # 16.6667

    .line 20
    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/SynchronousLooper;->mTimeStep:D

    return-void
.end method


# virtual methods
.method public getTimeStep()D
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/SynchronousLooper;->mTimeStep:D

    return-wide v0
.end method

.method public setTimeStep(D)V
    .registers 3

    .line 28
    iput-wide p1, p0, Lcom/android/server/wm/animation/rebound/SynchronousLooper;->mTimeStep:D

    return-void
.end method

.method public start()V
    .registers 4

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/SynchronousLooper;->mRunning:Z

    .line 34
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/SpringLooper;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    invoke-virtual {v0}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->getIsIdle()Z

    move-result v0

    if-nez v0, :cond_18

    .line 35
    iget-boolean v0, p0, Lcom/android/server/wm/animation/rebound/SynchronousLooper;->mRunning:Z

    if-nez v0, :cond_10

    goto :goto_18

    .line 38
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/SpringLooper;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    iget-wide v1, p0, Lcom/android/server/wm/animation/rebound/SynchronousLooper;->mTimeStep:D

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->loop(D)V

    goto :goto_3

    :cond_18
    :goto_18
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/SynchronousLooper;->mRunning:Z

    return-void
.end method
