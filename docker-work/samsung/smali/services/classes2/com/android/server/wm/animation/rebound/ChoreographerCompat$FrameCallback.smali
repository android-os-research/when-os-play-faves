.class public abstract Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;
.super Ljava/lang/Object;
.source "ChoreographerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/animation/rebound/ChoreographerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FrameCallback"
.end annotation


# instance fields
.field public mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field public mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFrame(J)V
.end method

.method public getFrameCallback()Landroid/view/Choreographer$FrameCallback;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_b

    .line 105
    new-instance v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$1;-><init>(Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;)V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 112
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 117
    new-instance v0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$2;-><init>(Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;)V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->mRunnable:Ljava/lang/Runnable;

    .line 124
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method
