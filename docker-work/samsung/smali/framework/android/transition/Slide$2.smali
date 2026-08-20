.class Landroid/transition/Slide$2;
.super Landroid/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Slide$CalculateSlideHorizontal;-><init>(Landroid/transition/Slide$CalculateSlideHorizontal-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fraction"    # F

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move v0, v1

    .line 95
    .local v0, "isRtl":Z
    if-eqz v0, :cond_18

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    .local v1, "x":F
    goto :goto_23

    .line 98
    .end local v1    # "x":F
    :cond_18
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    .line 100
    .restart local v1    # "x":F
    :goto_23
    return v1
.end method
