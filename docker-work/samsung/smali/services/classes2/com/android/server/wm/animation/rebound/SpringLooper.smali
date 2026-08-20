.class public abstract Lcom/android/server/wm/animation/rebound/SpringLooper;
.super Ljava/lang/Object;
.source "SpringLooper.java"


# instance fields
.field public mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSpringSystem(Lcom/android/server/wm/animation/rebound/BaseSpringSystem;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/SpringLooper;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
