.class public Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;
.super Ljava/lang/Object;
.source "Dimmer.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Dimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaAnimationSpec"
.end annotation


# instance fields
.field public final mDuration:J

.field public final mFromAlpha:F

.field public final mToAlpha:F


# direct methods
.method public constructor <init>(FFJ)V
    .registers 5

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput p1, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    .line 420
    iput p2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    .line 421
    iput-wide p3, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 5

    long-to-float p3, p3

    .line 431
    invoke-interface {p0, p3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getFraction(F)F

    move-result p3

    .line 432
    iget p4, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    iget p0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    sub-float/2addr p4, p0

    mul-float/2addr p3, p4

    add-float/2addr p3, p0

    .line 433
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 438
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "from="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    const-string p2, " to="

    .line 439
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    const-string p2, " duration="

    .line 440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    const-wide v0, 0x10b00000003L

    .line 445
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 446
    iget v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    const-wide v3, 0x10200000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 447
    iget v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 448
    iget-wide v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 449
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 426
    iget-wide v0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    return-wide v0
.end method
