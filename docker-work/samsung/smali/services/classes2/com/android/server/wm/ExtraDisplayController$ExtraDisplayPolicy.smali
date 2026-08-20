.class public interface abstract Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
.super Ljava/lang/Object;
.source "ExtraDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ExtraDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtraDisplayPolicy"
.end annotation


# virtual methods
.method public canHaveCoverHomeDisplay(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getExtraDisplayId()I
.end method

.method public getOtherDisplayBelowTargetDisplay(I)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public shouldNotHandleForcedResizableTaskIfNeeded(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public shouldNotPositionToTopDisplay(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
