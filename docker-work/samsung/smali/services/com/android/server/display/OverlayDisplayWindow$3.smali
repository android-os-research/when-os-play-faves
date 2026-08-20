.class public Lcom/android/server/display/OverlayDisplayWindow$3;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 356
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 357
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 358
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 360
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fgetmGestureDetector(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 361
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fgetmScaleGestureDetector(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/ScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    const/4 v3, 0x3

    if-eq v1, v3, :cond_30

    goto :goto_35

    .line 366
    :cond_30
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {p0}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$msaveWindowParams(Lcom/android/server/display/OverlayDisplayWindow;)V

    .line 371
    :goto_35
    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    return v2
.end method
