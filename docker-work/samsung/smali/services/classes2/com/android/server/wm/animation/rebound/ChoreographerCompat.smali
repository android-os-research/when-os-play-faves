.class public Lcom/android/server/wm/animation/rebound/ChoreographerCompat;
.super Ljava/lang/Object;
.source "ChoreographerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/wm/animation/rebound/ChoreographerCompat;

.field public static final IS_JELLYBEAN_OR_HIGHER:Z

.field public static final ONE_FRAME_MILLIS:J = 0x11L


# instance fields
.field public mChoreographer:Landroid/view/Choreographer;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    .line 28
    new-instance v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;

    invoke-direct {v0}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;-><init>()V

    sput-object v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->INSTANCE:Lcom/android/server/wm/animation/rebound/ChoreographerCompat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-boolean v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    goto :goto_19

    .line 41
    :cond_e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->mHandler:Landroid/os/Handler;

    :goto_19
    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/animation/rebound/ChoreographerCompat;
    .registers 1

    .line 34
    sget-object v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->INSTANCE:Lcom/android/server/wm/animation/rebound/ChoreographerCompat;

    return-object v0
.end method


# virtual methods
.method public final choreographerPostFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final choreographerPostFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 83
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final choreographerRemoveFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0, p1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final getChoreographer()Landroid/view/Choreographer;
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 71
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    return-object p0
.end method

.method public postFrameCallback(Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;)V
    .registers 4

    .line 46
    sget-boolean v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    if-eqz v0, :cond_c

    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->getFrameCallback()Landroid/view/Choreographer$FrameCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->choreographerPostFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_17

    .line 49
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->getRunnable()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_17
    return-void
.end method

.method public postFrameCallbackDelayed(Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;J)V
    .registers 6

    .line 54
    sget-boolean v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    if-eqz v0, :cond_c

    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->getFrameCallback()Landroid/view/Choreographer$FrameCallback;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->choreographerPostFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    goto :goto_18

    .line 57
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->getRunnable()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x11

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_18
    return-void
.end method

.method public removeFrameCallback(Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;)V
    .registers 3

    .line 62
    sget-boolean v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    if-eqz v0, :cond_c

    .line 63
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->getFrameCallback()Landroid/view/Choreographer$FrameCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->choreographerRemoveFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_15

    .line 65
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->getRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_15
    return-void
.end method
