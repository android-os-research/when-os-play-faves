.class public interface abstract Lcom/android/server/wm/AspectRatioController;
.super Ljava/lang/Object;
.source "BoundsCompatController.java"

# interfaces
.implements Lcom/android/server/wm/BoundsCompatController;


# direct methods
.method public static canMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 190
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 193
    :cond_6
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_15

    const v1, 0x3fee147b    # 1.86f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method


# virtual methods
.method public adjustBoundsAsMaxAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 3

    .line 182
    invoke-static {}, Lcom/android/server/wm/BoundsUtils;->getBoundsUtils()Lcom/android/server/wm/BoundsUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BoundsUtils;->adjustBoundsAsMaxAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public adjustBoundsAsMinAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 3

    .line 186
    invoke-static {}, Lcom/android/server/wm/BoundsUtils;->getBoundsUtils()Lcom/android/server/wm/BoundsUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BoundsUtils;->adjustBoundsAsMinAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onAspectRatioApplied(Lcom/android/server/wm/ActivityRecord;FF)V
    .registers 4

    .line 168
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/wm/AspectRatioController;->setControllerAndAspectRatio(Lcom/android/server/wm/BoundsCompatRecord;FF)V

    return-void
.end method

.method public restrictToBoundsForMinAspectRatioIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z
    .registers 3

    .line 178
    invoke-static {}, Lcom/android/server/wm/BoundsUtils;->getBoundsUtils()Lcom/android/server/wm/BoundsUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BoundsUtils;->restrictToBoundsForMinAspectRatioIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public setControllerAndAspectRatio(Lcom/android/server/wm/BoundsCompatRecord;FF)V
    .registers 4

    .line 173
    invoke-virtual {p1, p0}, Lcom/android/server/wm/BoundsCompatRecord;->setController(Lcom/android/server/wm/BoundsCompatController;)V

    .line 174
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/BoundsCompatRecord;->setAspectRatio(FF)V

    return-void
.end method
