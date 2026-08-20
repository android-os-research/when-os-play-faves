.class public Lcom/android/server/wm/BoundsUtils;
.super Ljava/lang/Object;
.source "BoundsCompatController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsUtils$LazyHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsUtils-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/BoundsUtils;-><init>()V

    return-void
.end method

.method public static getBoundsUtils()Lcom/android/server/wm/BoundsUtils;
    .registers 1

    .line 64
    sget-object v0, Lcom/android/server/wm/BoundsUtils$LazyHolder;->sBoundsUtils:Lcom/android/server/wm/BoundsUtils;

    return-object v0
.end method


# virtual methods
.method public adjustBoundsAsMaxAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 7

    .line 71
    iget-object p0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 72
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 73
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 74
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 75
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 76
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    move p1, v2

    .line 78
    :goto_25
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 77
    invoke-static {p2, v3}, Lcom/android/server/wm/BoundsCompatAlignment;->getVerticalCenterOffset(II)I

    move-result p2

    if-nez p1, :cond_36

    .line 80
    invoke-virtual {v1, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 83
    :cond_36
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_43

    .line 86
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 87
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_43
    return-void
.end method

.method public adjustBoundsAsMinAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 9

    .line 92
    iget-object p0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 93
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 94
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 95
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 96
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 97
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    move v0, v3

    .line 99
    :goto_25
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getGlobalBoundsCompatAlignmentLocked()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object v4

    if-eqz v0, :cond_57

    .line 101
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 102
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 103
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT:Z

    if-eqz v0, :cond_3e

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v5, v5, Lcom/android/server/wm/BoundsCompatRecord;->mRestrictedBounds:Z

    if-eqz v5, :cond_3e

    return-void

    :cond_3e
    if-eqz v0, :cond_47

    .line 110
    invoke-virtual {v4}, Lcom/android/server/wm/BoundsCompatAlignment;->isCenterVertical()Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_48

    :cond_47
    move-object p0, p2

    .line 114
    :goto_48
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, p0, v2, p1}, Lcom/android/server/wm/BoundsCompatAlignment;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I

    move-result p0

    if-eqz p0, :cond_71

    .line 117
    invoke-virtual {v1, v3, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 118
    invoke-virtual {v2, v3, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_71

    .line 121
    :cond_57
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 122
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 123
    invoke-virtual {v4, p2, v2}, Lcom/android/server/wm/BoundsCompatAlignment;->getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    .line 124
    iget p1, v2, Landroid/graphics/Rect;->left:I

    if-eq p1, p0, :cond_71

    .line 125
    iget p1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 126
    iget p1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_71
    :goto_71
    return-void
.end method

.method public restrictToBoundsForMinAspectRatioIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z
    .registers 6

    .line 132
    invoke-static {p1}, Lcom/android/server/wm/AspectRatioController;->canMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5f

    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_5f

    .line 134
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt p0, v1, :cond_1d

    goto :goto_5f

    .line 137
    :cond_1d
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 138
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 139
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 140
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    return v0

    .line 144
    :cond_3c
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/lit8 v1, p1, 0x2

    sub-int/2addr p0, v1

    .line 148
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v1, p0, :cond_58

    return v0

    .line 151
    :cond_58
    iput p1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p0

    .line 152
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    const/4 p0, 0x1

    return p0

    :cond_5f
    :goto_5f
    return v0
.end method
