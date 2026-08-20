.class public final Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemPerformancePointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SystemPerformancePointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PerformaneGestureDetector"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 112
    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmContext(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    .line 114
    invoke-virtual {p3}, Landroid/view/Display;->getRefreshRate()F

    move-result p3

    const/high16 p4, 0x42b40000    # 90.0f

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_72

    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmScrollDvfsManager(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p3

    if-eqz p3, :cond_72

    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmLastAcquireTime(Lcom/android/server/wm/SystemPerformancePointerEventListener;)J

    move-result-wide p3

    sub-long p3, p1, p3

    const-wide/16 v0, 0x1f4

    cmp-long p3, p3, v0

    if-ltz p3, :cond_72

    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmScrollReleaseRunnable(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object p3

    if-eqz p3, :cond_72

    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmScrollAcquireRunnable(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object p3

    if-eqz p3, :cond_72

    .line 117
    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmHandler(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/os/Handler;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p4}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmScrollReleaseRunnable(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmHandler(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/os/Handler;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p4}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmScrollAcquireRunnable(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p3, p1, p2}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fputmLastAcquireTime(Lcom/android/server/wm/SystemPerformancePointerEventListener;J)V

    .line 120
    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p1}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmHandler(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-static {p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->-$$Nest$fgetmScrollReleaseRunnable(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_72
    const/4 p0, 0x1

    return p0
.end method
