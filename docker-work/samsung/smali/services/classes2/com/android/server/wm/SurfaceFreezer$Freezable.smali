.class public interface abstract Lcom/android/server/wm/SurfaceFreezer$Freezable;
.super Ljava/lang/Object;
.source "SurfaceFreezer.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceFreezer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Freezable"
.end annotation


# virtual methods
.method public getFreezeSnapshotExcludeLayers()[Landroid/view/SurfaceControl;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFreezeSnapshotOffset()Landroid/graphics/Point;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
.end method

.method public abstract onUnfrozen()V
.end method
