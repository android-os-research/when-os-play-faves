.class public interface abstract Lcom/android/server/wm/BoundsCompatController;
.super Ljava/lang/Object;
.source "BoundsCompatController.java"


# virtual methods
.method public adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 3

    return-void
.end method

.method public getBoundsCompatAlignment()Lcom/android/server/wm/BoundsCompatAlignment;
    .registers 1

    .line 51
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getGlobalBoundsCompatAlignmentLocked()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object p0

    return-object p0
.end method

.method public isBoundsCompatEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isCustomLetterboxEnabled()Z
    .registers 1

    .line 43
    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->isBoundsCompatEnabled()Z

    move-result p0

    return p0
.end method

.method public isFixedAspectRatioModeEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
