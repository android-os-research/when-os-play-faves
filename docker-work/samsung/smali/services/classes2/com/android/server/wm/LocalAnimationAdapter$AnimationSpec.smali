.class public interface abstract Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
.super Ljava/lang/Object;
.source "LocalAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LocalAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimationSpec"
.end annotation


# virtual methods
.method public abstract apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
.end method

.method public asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 3

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    .line 171
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 172
    invoke-interface {p0, p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V

    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public abstract dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public getBackgroundColor()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getDuration()J
.end method

.method public getFraction(F)F
    .registers 4

    .line 164
    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v0

    long-to-float p0, v0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_c

    div-float/2addr p1, p0

    goto :goto_e

    :cond_c
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_e
    return p1
.end method

.method public getShowBackground()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getShowWallpaper()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needsEarlyWakeup()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
