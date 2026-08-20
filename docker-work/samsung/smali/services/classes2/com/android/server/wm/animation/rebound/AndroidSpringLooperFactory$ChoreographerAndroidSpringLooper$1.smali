.class public Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 7

    .line 112
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {p1}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->-$$Nest$fgetmStarted(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-object p1, p1, Lcom/android/server/wm/animation/rebound/SpringLooper;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    if-nez p1, :cond_f

    goto :goto_35

    .line 115
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-object v1, v0, Lcom/android/server/wm/animation/rebound/SpringLooper;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    invoke-static {v0}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->-$$Nest$fgetmLastTime(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)J

    move-result-wide v2

    sub-long v2, p1, v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->loop(D)V

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->-$$Nest$fputmLastTime(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;J)V

    .line 118
    iget-object p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {p1}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->-$$Nest$fgetmChoreographer(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {p0}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->-$$Nest$fgetmFrameCallback(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer$FrameCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_35
    :goto_35
    return-void
.end method
