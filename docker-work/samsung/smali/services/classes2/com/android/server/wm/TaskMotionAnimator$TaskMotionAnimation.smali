.class public interface abstract Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;
.super Ljava/lang/Object;
.source "TaskMotionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskMotionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskMotionAnimation"
.end annotation


# virtual methods
.method public abstract cancel(Z)V
.end method

.method public getDragBounds(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract start()V
.end method
