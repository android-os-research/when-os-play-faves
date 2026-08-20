.class public Lcom/android/server/wm/animation/rebound/AnimationQueue;
.super Ljava/lang/Object;
.source "AnimationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/animation/rebound/AnimationQueue$Callback;
    }
.end annotation


# instance fields
.field public final mAnimationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/animation/rebound/AnimationQueue$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final mChoreographer:Lcom/android/server/wm/animation/rebound/ChoreographerCompat;

.field public final mChoreographerCallback:Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;

.field public final mPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public mRunning:Z

.field public final mTempValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$monFrame(Lcom/android/server/wm/animation/rebound/AnimationQueue;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/animation/rebound/AnimationQueue;->onFrame(J)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    .line 46
    invoke-static {}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->getInstance()Lcom/android/server/wm/animation/rebound/ChoreographerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mChoreographer:Lcom/android/server/wm/animation/rebound/ChoreographerCompat;

    .line 47
    new-instance v0, Lcom/android/server/wm/animation/rebound/AnimationQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/animation/rebound/AnimationQueue$1;-><init>(Lcom/android/server/wm/animation/rebound/AnimationQueue;)V

    iput-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mChoreographerCallback:Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;

    return-void
.end method


# virtual methods
.method public addAllValues(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/AnimationQueue;->runIfIdle()V

    return-void
.end method

.method public addCallback(Lcom/android/server/wm/animation/rebound/AnimationQueue$Callback;)V
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addValue(Ljava/lang/Double;)V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/AnimationQueue;->runIfIdle()V

    return-void
.end method

.method public clearCallbacks()V
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearValues()V
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final onFrame(J)V
    .registers 7

    .line 132
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move p1, p2

    goto :goto_23

    .line 139
    :cond_12
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 143
    :goto_23
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_32
    const/4 v1, -0x1

    if-le v0, v1, :cond_5d

    .line 145
    iget-object v1, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 146
    iget-object v2, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    add-int/2addr v2, p1

    .line 147
    iget-object v3, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_5a

    .line 148
    iget-object v3, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/animation/rebound/AnimationQueue$Callback;

    invoke-interface {v2, v1}, Lcom/android/server/wm/animation/rebound/AnimationQueue$Callback;->onFrame(Ljava/lang/Double;)V

    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 151
    :cond_5d
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    :goto_62
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_77

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_62

    .line 157
    :cond_77
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 158
    iput-boolean p2, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mRunning:Z

    goto :goto_91

    .line 160
    :cond_8a
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mChoreographer:Lcom/android/server/wm/animation/rebound/ChoreographerCompat;

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mChoreographerCallback:Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->postFrameCallback(Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;)V

    :goto_91
    return-void
.end method

.method public removeCallback(Lcom/android/server/wm/animation/rebound/AnimationQueue$Callback;)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final runIfIdle()V
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mRunning:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mRunning:Z

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mChoreographer:Lcom/android/server/wm/animation/rebound/ChoreographerCompat;

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue;->mChoreographerCallback:Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat;->postFrameCallback(Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;)V

    :cond_e
    return-void
.end method
