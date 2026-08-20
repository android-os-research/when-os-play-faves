.class public Lcom/android/server/wm/animation/rebound/AnimationQueue$1;
.super Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;
.source "AnimationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/animation/rebound/AnimationQueue;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/animation/rebound/AnimationQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/animation/rebound/AnimationQueue;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue$1;->this$0:Lcom/android/server/wm/animation/rebound/AnimationQueue;

    invoke-direct {p0}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 3

    .line 50
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AnimationQueue$1;->this$0:Lcom/android/server/wm/animation/rebound/AnimationQueue;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/animation/rebound/AnimationQueue;->-$$Nest$monFrame(Lcom/android/server/wm/animation/rebound/AnimationQueue;J)V

    return-void
.end method
