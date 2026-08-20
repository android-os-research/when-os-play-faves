.class public Lcom/android/server/wm/animation/rebound/SteppingLooper;
.super Lcom/android/server/wm/animation/rebound/SpringLooper;
.source "SteppingLooper.java"


# instance fields
.field public mLastTime:J

.field public mStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/android/server/wm/animation/rebound/SpringLooper;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .registers 3

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/SteppingLooper;->mStarted:Z

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/SteppingLooper;->mLastTime:J

    return-void
.end method

.method public step(J)Z
    .registers 6

    .line 25
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/SpringLooper;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    if-eqz v0, :cond_19

    iget-boolean v1, p0, Lcom/android/server/wm/animation/rebound/SteppingLooper;->mStarted:Z

    if-nez v1, :cond_9

    goto :goto_19

    .line 28
    :cond_9
    iget-wide v1, p0, Lcom/android/server/wm/animation/rebound/SteppingLooper;->mLastTime:J

    add-long/2addr v1, p1

    long-to-double p1, v1

    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->loop(D)V

    .line 30
    iput-wide v1, p0, Lcom/android/server/wm/animation/rebound/SteppingLooper;->mLastTime:J

    .line 31
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/SpringLooper;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->getIsIdle()Z

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/SteppingLooper;->mStarted:Z

    return-void
.end method
