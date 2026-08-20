.class public Lcom/android/server/wm/DexSnappingGuideWindow;
.super Landroid/widget/FrameLayout;
.source "DexSnappingGuideWindow.java"


# static fields
.field public static final BOTTOM:I = 0x8

.field public static final INVALID:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final LEFT_BOTTOM:I = 0x9

.field public static final LEFT_TOP:I = 0x3

.field public static final RIGHT:I = 0x4

.field public static final RIGHT_BOTTOM:I = 0xc

.field public static final RIGHT_TOP:I = 0x6

.field public static final TOP:I = 0x2


# instance fields
.field public mAttached:Z

.field public final mBoundaryFinger:I

.field public final mBoundaryMouse:I

.field public final mBounds:Landroid/graphics/Rect;

.field public mColorView:Landroid/widget/ImageView;

.field public final mMargin:I

.field public mPointerAlpha:I

.field public mPointerPosition:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_b

    .line 66
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object p1

    .line 65
    :goto_b
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mAttached:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    .line 61
    iput p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerPosition:I

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 68
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050138

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    .line 70
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050136

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBoundaryMouse:I

    .line 72
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBoundaryFinger:I

    return-void
.end method


# virtual methods
.method public calculateGuideSize(FFILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 249
    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerPosition:I

    if-nez v0, :cond_7

    .line 250
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DexSnappingGuideWindow;->initPointerPosition(FI)V

    .line 253
    :cond_7
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 254
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 255
    iput p2, p5, Landroid/graphics/Rect;->top:I

    .line 256
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p5, Landroid/graphics/Rect;->bottom:I

    .line 258
    iget p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerAlpha:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    if-lt p2, p3, :cond_33

    .line 259
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p1, p0

    iput p1, p5, Landroid/graphics/Rect;->left:I

    .line 260
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p1, p0

    iput p1, p5, Landroid/graphics/Rect;->right:I

    goto :goto_54

    .line 261
    :cond_33
    iget p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerPosition:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_45

    .line 262
    iget p0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerAlpha:I

    sub-int/2addr p1, p0

    iput p1, p5, Landroid/graphics/Rect;->left:I

    .line 263
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p1, p0

    iput p1, p5, Landroid/graphics/Rect;->right:I

    goto :goto_54

    :cond_45
    const/4 p3, 0x4

    if-ne p2, p3, :cond_54

    .line 265
    iget p0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerAlpha:I

    add-int/2addr p1, p0

    iput p1, p5, Landroid/graphics/Rect;->right:I

    .line 266
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, p5, Landroid/graphics/Rect;->left:I

    :cond_54
    :goto_54
    return-void
.end method

.method public calculateGuideSize(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    .line 218
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 219
    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/4 v0, 0x2

    div-int/2addr p0, v0

    .line 222
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/2addr p2, v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1d

    .line 225
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p0, v1

    iput v1, p3, Landroid/graphics/Rect;->right:I

    :cond_1d
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_27

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2f

    .line 228
    :cond_27
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    :cond_2f
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3a

    .line 231
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, p0

    iput v1, p3, Landroid/graphics/Rect;->left:I

    :cond_3a
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_45

    .line 234
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr p2, v1

    iput p2, p3, Landroid/graphics/Rect;->top:I

    :cond_45
    const/4 p2, 0x1

    if-ne p1, p2, :cond_50

    .line 238
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->left:I

    goto :goto_64

    :cond_50
    if-ne p1, v0, :cond_56

    .line 240
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_64

    :cond_56
    const/4 p2, 0x4

    if-ne p1, p2, :cond_61

    .line 242
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p0, p1

    iput p0, p4, Landroid/graphics/Rect;->right:I

    goto :goto_64

    .line 244
    :cond_61
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    :goto_64
    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 173
    iget-boolean v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mAttached:Z

    if-eqz v0, :cond_12

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mAttached:Z

    :cond_12
    return-void
.end method

.method public getSnapType(FFLandroid/graphics/Rect;Z)I
    .registers 8

    .line 182
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 183
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    .line 184
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 185
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-eqz p4, :cond_15

    .line 186
    iget p0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBoundaryFinger:I

    goto :goto_17

    :cond_15
    iget p0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBoundaryMouse:I

    :goto_17
    const/4 p4, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_1f

    if-gt p1, p0, :cond_1f

    move v2, v1

    goto :goto_20

    :cond_1f
    move v2, p4

    :goto_20
    if-ltz p2, :cond_26

    if-gt p2, p0, :cond_26

    or-int/lit8 v2, v2, 0x2

    :cond_26
    sub-int/2addr v0, p0

    if-lt p1, v0, :cond_2b

    or-int/lit8 v2, v2, 0x4

    :cond_2b
    sub-int/2addr p3, p0

    if-lt p2, p3, :cond_30

    or-int/lit8 v2, v2, 0x8

    :cond_30
    const/16 p0, 0x8

    if-ne v2, p0, :cond_35

    goto :goto_36

    :cond_35
    move p4, v2

    .line 205
    :goto_36
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_CORNER_SNAPPING_WINDOW:Z

    if-nez p0, :cond_45

    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_3f

    goto :goto_46

    :cond_3f
    and-int/lit8 p0, p4, 0x4

    if-eqz p0, :cond_45

    const/4 v1, 0x4

    goto :goto_46

    :cond_45
    move v1, p4

    :goto_46
    return v1
.end method

.method public initPointerPosition(FI)V
    .registers 3

    .line 271
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p2, p1

    if-le p1, p2, :cond_d

    .line 273
    iput p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerAlpha:I

    const/4 p1, 0x4

    .line 274
    iput p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerPosition:I

    goto :goto_12

    .line 276
    :cond_d
    iput p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerAlpha:I

    const/4 p1, 0x1

    .line 277
    iput p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerPosition:I

    :goto_12
    return-void
.end method

.method public final initialize()V
    .registers 4

    .line 77
    iget-boolean v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mAttached:Z

    if-nez v0, :cond_56

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mAttached:Z

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    if-nez v0, :cond_26

    .line 80
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    .line 81
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x108029e

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "DexSnappingGuideWindow"

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    .line 88
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 89
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x2

    .line 91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x7f6

    .line 92
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x10318

    .line 93
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 95
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 96
    iget-object v1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_56
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .registers 5

    .line 101
    invoke-virtual {p0}, Lcom/android/server/wm/DexSnappingGuideWindow;->initialize()V

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 106
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 110
    iget-object p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 112
    iget-object p0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public show(Landroid/graphics/Rect;I)V
    .registers 5

    .line 116
    invoke-virtual {p0}, Lcom/android/server/wm/DexSnappingGuideWindow;->initialize()V

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 119
    iget-object p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_18

    .line 122
    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_18
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_20

    .line 125
    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_20
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2c

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_2c
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_34

    .line 131
    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_34
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p2, v0, :cond_57

    .line 135
    iget p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 136
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 137
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 138
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_11c

    :cond_57
    if-ne p2, v1, :cond_79

    .line 140
    iget p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 141
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 142
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 143
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_11c

    :cond_79
    const/4 v0, 0x4

    if-ne p2, v0, :cond_9b

    .line 145
    iget p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 146
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 147
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 148
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_11c

    :cond_9b
    const/4 v0, 0x3

    if-ne p2, v0, :cond_b9

    .line 150
    iget p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 151
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 152
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_11c

    :cond_b9
    const/16 v0, 0x9

    if-ne p2, v0, :cond_dc

    .line 154
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 155
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 156
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_11c

    :cond_dc
    const/4 v0, 0x6

    if-ne p2, v0, :cond_fa

    .line 158
    iget p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 159
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 160
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_11c

    :cond_fa
    const/16 v0, 0xc

    if-ne p2, v0, :cond_11c

    .line 162
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 163
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 164
    iget-object p2, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 167
    :cond_11c
    :goto_11c
    iget-object p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 169
    iget-object p0, p0, Lcom/android/server/wm/DexSnappingGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
