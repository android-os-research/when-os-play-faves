.class public interface abstract Lcom/android/server/wm/SurfaceAnimator$Animatable;
.super Ljava/lang/Object;
.source "SurfaceAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Animatable"
.end annotation


# virtual methods
.method public abstract commitPendingTransaction()V
.end method

.method public getAnimationLeash()Landroid/view/SurfaceControl;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getAnimationLeashParent()Landroid/view/SurfaceControl;
.end method

.method public abstract getParentSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract getSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getSurfaceHeight()I
.end method

.method public abstract getSurfaceWidth()I
.end method

.method public abstract getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
.end method

.method public abstract onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public abstract onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    return-void
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
