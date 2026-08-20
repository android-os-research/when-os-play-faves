.class public Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowMagnifier"
.end annotation


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mDisplayId:I

.field public mEnabled:Z

.field public mIdOfLastServiceToControl:I

.field public final mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

.field public mScale:F

.field public final mSourceBounds:Landroid/graphics/Rect;

.field public mTrackingTypingFocusEnabled:Z

.field public final mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor <init>(ILcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .registers 5

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 999
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    .line 1004
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 1006
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 1008
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1010
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 1012
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 1015
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    .line 1016
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    return-void
.end method


# virtual methods
.method public disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 5

    .line 1054
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1057
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1059
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 p1, -0x1

    .line 1060
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1061
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .registers 15

    .line 1023
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getScale()F

    move-result p1

    .line 1026
    :cond_a
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result p1

    .line 1027
    invoke-virtual {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setMagnificationFrameOffsetRatioByWindowPosition(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    iget-object p5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    iget v5, p5, Landroid/graphics/PointF;->x:F

    iget v6, p5, Landroid/graphics/PointF;->y:F

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 1031
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    const/4 p1, 0x1

    .line 1032
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    .line 1033
    iput p6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p1

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1086
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCenterX()F
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1149
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p0

    return p0
.end method

.method public getCenterY()F
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1154
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p0

    return p0
.end method

.method public getIdOfLastServiceToControl()I
    .registers 1

    .line 1098
    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p0
.end method

.method public getScale()F
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1081
    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 1127
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return p0
.end method

.method public isPositionInSourceBounds(FF)Z
    .registers 3

    .line 1115
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isTrackingTypingFocusEnabled()Z
    .registers 1

    .line 1123
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    return p0
.end method

.method public move(FF)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFF)Z

    return-void
.end method

.method public onSourceBoundsChanged(Landroid/graphics/Rect;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1144
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public pointersInWindow(Landroid/view/MotionEvent;)I
    .registers 8

    .line 1103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_1f

    .line 1105
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1106
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1107
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1c

    add-int/lit8 v2, v2, 0x1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1f
    return v2
.end method

.method public reset()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1137
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v0, -0x1

    .line 1138
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1139
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public setMagnificationFrameOffsetRatioByWindowPosition(I)V
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_14

    .line 1046
    :cond_6
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_14

    .line 1042
    :cond_e
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_14
    return-void
.end method

.method public setMagnifierLocation(Landroid/graphics/Rect;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1091
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setScale(F)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1069
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1072
    :cond_5
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v0

    .line 1073
    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    .line 1074
    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$msetScaleInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IF)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1075
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    :cond_1d
    return-void
.end method

.method public setTrackingTypingFocusEnabled(Z)V
    .registers 2

    .line 1119
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    return-void
.end method
