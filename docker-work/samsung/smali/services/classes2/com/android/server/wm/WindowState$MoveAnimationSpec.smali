.class public final Lcom/android/server/wm/WindowState$MoveAnimationSpec;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MoveAnimationSpec"
.end annotation


# instance fields
.field public final mDuration:J

.field public mFrom:Landroid/graphics/Point;

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mTo:Landroid/graphics/Point;

.field public final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;IIII)V
    .registers 9

    .line 7080
    iput-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7077
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    .line 7078
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    .line 7081
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 7084
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_IMPROVED_MOVED_ANIMATION_FOR_IME:Z

    if-nez v1, :cond_22

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    if-eqz v1, :cond_1e

    goto :goto_22

    :cond_1e
    const v1, 0x10a0175

    goto :goto_26

    .line 7085
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->getSamsungAnimResId()I

    move-result v1

    .line 7081
    :goto_26
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 7089
    invoke-virtual {v0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result p1

    mul-float/2addr v1, p1

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    .line 7090
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7091
    iget-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 7092
    iget-object p0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    invoke-virtual {p0, p4, p5}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;IIIILcom/android/server/wm/WindowState$MoveAnimationSpec-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIII)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 8

    long-to-float p3, p3

    .line 7119
    invoke-interface {p0, p3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getFraction(F)F

    move-result p3

    .line 7120
    iget-object p4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p4, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 7121
    iget-object p4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    iget v0, p4, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object p0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p3

    add-float/2addr v1, v0

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float v0, p4

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p4

    int-to-float p0, p0

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 7127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "from="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " duration="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9

    const-wide v0, 0x10b00000002L

    .line 7134
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7135
    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    const-wide v5, 0x10b00000001L

    invoke-static {v4, p1, v5, v6}, Landroid/graphics/GraphicsProtos;->dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V

    .line 7136
    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    invoke-static {v4, p1, v0, v1}, Landroid/graphics/GraphicsProtos;->dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V

    .line 7137
    iget-wide v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7138
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 7114
    iget-wide v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    return-wide v0
.end method

.method public final getSamsungAnimResId()I
    .registers 3

    .line 7097
    iget-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->this$0:Lcom/android/server/wm/WindowState;

    .line 7098
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    if-eqz v1, :cond_10

    .line 7099
    invoke-static {v0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_10

    const p0, 0x10a00e4

    return p0

    .line 7102
    :cond_10
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_IMPROVED_MOVED_ANIMATION_FOR_IME:Z

    if-eqz v1, :cond_3a

    iget-object p0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 7103
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_36

    .line 7104
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoveAnimationSpec is set to improvedMoveAnim, win="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const p0, 0x10a00e3

    return p0

    :cond_3a
    const p0, 0x10a0175

    return p0
.end method
