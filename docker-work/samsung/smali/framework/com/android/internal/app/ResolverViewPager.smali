.class public Lcom/android/internal/app/ResolverViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "ResolverViewPager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResolverViewPager"


# instance fields
.field private blacklist mSwipingEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    if-eqz v0, :cond_12

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_c

    .line 59
    return-void

    .line 61
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->getMeasuredHeight()I

    move-result v0

    .line 63
    .local v0, "height":I
    const/4 v3, 0x0

    .line 64
    .local v3, "maxHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3b

    .line 65
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 66
    .local v5, "child":Landroid/view/View;
    nop

    .line 67
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 66
    invoke-virtual {v5, p1, v6}, Landroid/view/View;->measure(II)V

    .line 68
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v3, v6, :cond_38

    .line 69
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 64
    .end local v5    # "child":Landroid/view/View;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 72
    .end local v4    # "i":I
    :cond_3b
    if-lez v3, :cond_3e

    .line 73
    move v0, v3

    .line 75
    :cond_3e
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 78
    :try_start_42
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_45} :catch_46

    .line 81
    goto :goto_60

    .line 79
    :catch_46
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "warning - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ResolverViewPager"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_60
    return-void
.end method

.method blacklist setSwipingEnabled(Z)V
    .registers 2
    .param p1, "swipingEnabled"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 90
    return-void
.end method
