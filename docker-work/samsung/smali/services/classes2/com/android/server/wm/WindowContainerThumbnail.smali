.class public Lcom/android/server/wm/WindowContainerThumbnail;
.super Ljava/lang/Object;
.source "WindowContainerThumbnail.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mHeight:I

.field public final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mWidth:I

.field public final mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public static synthetic $r8$lambda$cfodjp8l-6gFU64S2MK8vZcEs8g(Lcom/android/server/wm/WindowContainerThumbnail;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainerThumbnail;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;)V
    .registers 5

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;Lcom/android/server/wm/SurfaceAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;Lcom/android/server/wm/SurfaceAnimator;)V
    .registers 9

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz p4, :cond_a

    .line 74
    iput-object p4, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    goto :goto_18

    .line 78
    :cond_a
    new-instance p4, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v0, Lcom/android/server/wm/WindowContainerThumbnail$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainerThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowContainerThumbnail;)V

    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p4, p0, v0, v1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    iput-object p4, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 82
    :goto_18
    invoke-virtual {p3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p4

    iput p4, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    .line 83
    invoke-virtual {p3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    .line 89
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thumbnail anim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    .line 91
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    const/4 v0, -0x3

    .line 92
    invoke-virtual {p4, v0}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    const/4 v0, 0x2

    .line 93
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    invoke-virtual {p4, v0, p2}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 94
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p4

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p4}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string p4, "WindowContainerThumbnail"

    .line 95
    invoke-virtual {p2, p4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 96
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 98
    sget-boolean p4, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz p4, :cond_83

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x1faa1efa

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    invoke-static {p4, v1, v3, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_83
    invoke-static {p3}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object p2

    .line 101
    iget-object p3, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 102
    iget-object p2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object p3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 103
    iget-object p2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 107
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    const p2, 0x7fffffff

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainerThumbnail;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 160
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 161
    iget v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 162
    iget v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 164
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v0, 0x10b00000003L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/SurfaceAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 166
    :cond_2a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSurfaceHeight()I
    .registers 1

    .line 224
    iget p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    return p0
.end method

.method public getSurfaceWidth()I
    .registers 1

    .line 219
    iget p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    return p0
.end method

.method public getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    const p0, 0x7fffffff

    .line 186
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setShowing(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 3

    if-eqz p2, :cond_8

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_d

    .line 140
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_d
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V
    .registers 4

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainerThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V
    .registers 9

    const-wide/16 v0, 0x2710

    .line 115
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 119
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 120
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v4

    invoke-direct {v2, p2, p3, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const/4 p0, 0x0

    const/16 p2, 0x8

    .line 117
    invoke-virtual {v0, p1, v1, p0, p2}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V
    .registers 5

    .line 129
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-void
.end method
