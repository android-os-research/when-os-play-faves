.class public Lcom/android/server/wm/SeamlessRotator;
.super Ljava/lang/Object;
.source "SeamlessRotator.java"


# instance fields
.field public final mApplyFixedTransformHint:Z

.field public final mFixedTransformHint:I

.field public final mFloat9:[F

.field public final mNewRotation:I

.field public final mOldRotation:I

.field public final mTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(IILandroid/view/DisplayInfo;Z)V
    .registers 7

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 41
    iput-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    .line 56
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    .line 57
    iput p2, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    .line 58
    iput-boolean p4, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    .line 59
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mFixedTransformHint:I

    .line 60
    iget p0, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 p4, 0x1

    if-eq p0, p4, :cond_22

    const/4 v1, 0x3

    if-ne p0, v1, :cond_21

    goto :goto_22

    :cond_21
    const/4 p4, 0x0

    :cond_22
    :goto_22
    if-eqz p4, :cond_27

    .line 61
    iget p0, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_29

    :cond_27
    iget p0, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_29
    if-eqz p4, :cond_2e

    .line 62
    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_30

    :cond_2e
    iget p3, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 64
    :goto_30
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    invoke-static {p1, p3, p0, v0}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 66
    invoke-static {p2, p3, p0, p4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 67
    invoke-virtual {v0, p4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method


# virtual methods
.method public applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {p1, p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string/jumbo v0, "{old="

    .line 124
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", new="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo p0, "}"

    .line 125
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 6

    .line 108
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_26

    .line 112
    :cond_b
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SeamlessRotator;->setIdentityMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 113
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 114
    iget-boolean p0, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    if-eqz p0, :cond_26

    .line 115
    iget-object p0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_26
    :goto_26
    return-void
.end method

.method public getOldRotation()I
    .registers 1

    .line 96
    iget p0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    return p0
.end method

.method public setIdentityMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 120
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {p1, p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 131
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForcedSeamlessRotator"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 7

    .line 75
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SeamlessRotator;->applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 77
    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 78
    iget-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 79
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    aget v3, v0, v3

    aget v0, v0, v2

    invoke-virtual {p1, v1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    if-eqz v0, :cond_33

    .line 81
    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/server/wm/SeamlessRotator;->mFixedTransformHint:I

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_33
    return-void
.end method
