.class public Lcom/android/server/accessibility/magnification/PanningScalingHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PanningScalingHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "PanningScalingHandler"


# instance fields
.field public final mBlockScroll:Z

.field public final mDisplayId:I

.field public mEnable:Z

.field public mInitialScaleFactor:F

.field public final mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

.field public final mMaxScale:F

.field public final mMinScale:F

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public mScaling:Z

.field public final mScalingThreshold:F

.field public final mScrollGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "PanningScalingHandler"

    const/4 v1, 0x3

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFZLcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;)V
    .registers 7

    .line 68
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 59
    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    .line 70
    iput p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    .line 71
    iput p3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    .line 72
    iput-boolean p4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    .line 73
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p3

    invoke-direct {p2, p1, p0, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 74
    new-instance p3, Landroid/view/GestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p4

    invoke-direct {p3, p1, p0, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScrollGestureDetector:Landroid/view/GestureDetector;

    const/4 p3, 0x0

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 76
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    .line 77
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x10500d9

    invoke-virtual {p1, p4, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 81
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 153
    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    .line 105
    sget-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    const-string v1, "PanningScalingHandler"

    if-eqz v0, :cond_c

    const-string/jumbo v2, "onScale: triggered "

    .line 106
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    const/4 v3, 0x1

    if-nez v2, :cond_36

    .line 109
    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_20

    .line 110
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    return v1

    .line 113
    :cond_20
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    sub-float/2addr p1, v0

    .line 114
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_32

    goto :goto_33

    :cond_32
    move v3, v1

    :goto_33
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    return v3

    .line 121
    :cond_36
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    invoke-interface {v2, v4}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->getScale(I)F

    move-result v2

    .line 122
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr p1, v2

    .line 124
    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    cmpl-float v5, p1, v4

    if-lez v5, :cond_4f

    cmpl-float v5, p1, v2

    if-lez v5, :cond_4f

    :goto_4d
    move p1, v4

    goto :goto_5a

    .line 127
    :cond_4f
    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_5a

    cmpg-float v2, p1, v2

    if-gez v2, :cond_5a

    goto :goto_4d

    :cond_5a
    :goto_5a
    if-eqz v0, :cond_76

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scaled content to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_76
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    iget p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->setScale(IF)V

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 144
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    .line 149
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->clear()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 97
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    if-eqz p1, :cond_d

    goto :goto_16

    .line 100
    :cond_d
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    iget p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    invoke-interface {p1, p0, p3, p4}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->processScroll(IFF)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 91
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScrollGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->clear()V

    .line 86
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanningScalingHandler{mInitialScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
