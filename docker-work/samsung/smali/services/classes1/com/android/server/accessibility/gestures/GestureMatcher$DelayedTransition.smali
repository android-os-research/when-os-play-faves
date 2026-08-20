.class public final Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;
.super Ljava/lang/Object;
.source "GestureMatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/GestureMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DelayedTransition"
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GestureMatcher.DelayedTransition"


# instance fields
.field public mEvent:Landroid/view/MotionEvent;

.field public mPolicyFlags:I

.field public mRawEvent:Landroid/view/MotionEvent;

.field public mTargetState:I

.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/GestureMatcher;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->-$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .line 354
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 355
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->run()V

    .line 356
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    :cond_c
    return-void
.end method

.method public isPending()Z
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->-$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    .line 335
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mTargetState:I

    .line 336
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mEvent:Landroid/view/MotionEvent;

    .line 337
    iput-object p5, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    .line 338
    iput p6, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mPolicyFlags:I

    .line 339
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->-$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 5

    .line 369
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mTargetState:I

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    iget p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mPolicyFlags:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->-$$Nest$msetState(Lcom/android/server/accessibility/gestures/GestureMatcher;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method
