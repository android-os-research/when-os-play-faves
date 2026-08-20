.class public final Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field public mOverscroller:Landroid/widget/OverScroller;

.field public final synthetic this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V
    .registers 3

    .line 418
    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 419
    new-instance v0, Landroid/widget/OverScroller;

    invoke-static {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->-$$Nest$fgetmContext(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16

    .line 432
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->-$$Nest$fgetmLastFlingTime(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->-$$Nest$fgetmLastFlingTime(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-lez v0, :cond_28

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 438
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, p3

    float-to-int v6, p4

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 440
    iget-object p3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->getDuration()I

    move-result p3

    const/16 p4, 0x1388

    if-le p3, p4, :cond_46

    move p3, p4

    .line 444
    :cond_46
    iget-object p4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {p4, p1, p2}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->-$$Nest$fputmLastFlingTime(Lcom/android/server/wm/SystemGesturesPointerEventListener;J)V

    .line 447
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 450
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onFling(I)V

    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 424
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_e

    .line 425
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_e
    return v0
.end method
