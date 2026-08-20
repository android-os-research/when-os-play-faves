.class public Lcom/android/server/wm/animation/rebound/SpringSystem;
.super Lcom/android/server/wm/animation/rebound/BaseSpringSystem;
.source "SpringSystem.java"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/animation/rebound/SpringLooper;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;-><init>(Lcom/android/server/wm/animation/rebound/SpringLooper;)V

    return-void
.end method

.method public static create()Lcom/android/server/wm/animation/rebound/SpringSystem;
    .registers 2

    .line 28
    new-instance v0, Lcom/android/server/wm/animation/rebound/SpringSystem;

    invoke-static {}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory;->createSpringLooper()Lcom/android/server/wm/animation/rebound/SpringLooper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/animation/rebound/SpringSystem;-><init>(Lcom/android/server/wm/animation/rebound/SpringLooper;)V

    return-object v0
.end method
