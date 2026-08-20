.class public Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;
.super Lcom/android/server/wm/animation/rebound/SpringLooper;
.source "AndroidSpringLooperFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoreographerAndroidSpringLooper"
.end annotation


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field public mLastTime:J

.field public mStarted:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmChoreographer(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrameCallback(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer$FrameCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastTime(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmStarted(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastTime(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    return-void
.end method

.method public constructor <init>(Landroid/view/Choreographer;)V
    .registers 2

    .line 107
    invoke-direct {p0}, Lcom/android/server/wm/animation/rebound/SpringLooper;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    .line 109
    new-instance p1, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;-><init>(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)V

    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method public static create()Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;
    .registers 2

    .line 104
    new-instance v0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method


# virtual methods
.method public start()V
    .registers 3

    .line 125
    iget-boolean v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
