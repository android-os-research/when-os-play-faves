.class public Lcom/android/server/wm/DexCompatBoundsProvider;
.super Ljava/lang/Object;
.source "DexCompatBoundsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DexCompatBoundsProvider$FullscreenDexCompatBoundsProvider;,
        Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;
    }
.end annotation


# static fields
.field public static final DEX_COMPAT_HEIGHT_PX:I = 0x2db

.field public static final DEX_COMPAT_STANDALONE_DEFAULT_HEIGHT_PX:I = 0x41a

.field public static final DEX_COMPAT_STANDALONE_DEFAULT_WIDTH_PX:I = 0x578

.field public static final DEX_COMPAT_STANDALONE_EXTRA_HEIGHT_PX:I = 0x2f5

.field public static final DEX_COMPAT_STANDALONE_EXTRA_WIDTH_PX:I = 0x3f2

.field public static final DEX_COMPAT_TABLET_HEIGHT_PX:I = 0x258

.field public static final DEX_COMPAT_TABLET_WIDTH_PX:I = 0x320

.field public static final DEX_COMPAT_WIDTH_PX:I = 0x19b

.field public static final INVALID_SIZE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "DexCompatBoundsProvider"


# instance fields
.field public mIsPortrait:Z

.field public final mStableBounds:Landroid/graphics/Rect;

.field public mTask:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mStableBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public static getDefaultHeight(II)I
    .registers 3
    .param p0    # I
        .annotation build Lcom/android/server/wm/DexController$DexMode;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    .line 128
    invoke-static {p1}, Lcom/android/server/wm/DexCompatBoundsProvider;->isDefaultSizeCompatible(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x41a

    goto :goto_e

    :cond_c
    const/16 p0, 0x2f5

    :goto_e
    return p0

    :cond_f
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1e

    .line 133
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0x258

    goto :goto_1d

    :cond_1b
    const/16 p0, 0x2db

    :goto_1d
    return p0

    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public static getDefaultWidth(II)I
    .registers 3
    .param p0    # I
        .annotation build Lcom/android/server/wm/DexController$DexMode;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    .line 115
    invoke-static {p1}, Lcom/android/server/wm/DexCompatBoundsProvider;->isDefaultSizeCompatible(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x578

    goto :goto_e

    :cond_c
    const/16 p0, 0x3f2

    :goto_e
    return p0

    :cond_f
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1e

    .line 120
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0x320

    goto :goto_1d

    :cond_1b
    const/16 p0, 0x19b

    :goto_1d
    return p0

    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public static isDefaultSizeCompatible(I)Z
    .registers 2

    if-lez p0, :cond_9

    const/16 v0, 0x578

    if-le p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method


# virtual methods
.method public final convertToConfigurationOrientation(I)I
    .registers 4

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1c

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1b

    packed-switch p1, :pswitch_data_1e

    .line 84
    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DexCompatController;->getOrientationFromTaskBounds(Lcom/android/server/wm/Task;)I

    move-result p0

    return p0

    :cond_1b
    :pswitch_1b
    return v0

    :cond_1c
    :pswitch_1c
    const/4 p0, 0x2

    return p0

    :pswitch_data_1e
    .packed-switch 0x6
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 5

    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDexMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDisplayShortSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultWidth(II)I

    move-result v0

    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDexMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDisplayShortSize()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultHeight(II)I

    move-result v1

    if-lez v0, :cond_3a

    if-gtz v1, :cond_1d

    goto :goto_3a

    .line 101
    :cond_1d
    iget-boolean p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_2e

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 102
    invoke-virtual {p1, v2, v2, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_39

    .line 105
    :cond_2e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 105
    invoke-virtual {p1, v2, v2, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_39
    return-void

    .line 97
    :cond_3a
    :goto_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBounds: Invalid default size, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexCompatBoundsProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDecorCaptionHeight()I
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    .line 155
    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/DexCompatController;->getDecorCaptionHeight(II)I

    move-result p0

    return p0
.end method

.method public final getDefaultOrientation()I
    .registers 1

    .line 88
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public getDexMode()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lcom/android/server/wm/DexController$DexMode;
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result p0

    return p0
.end method

.method public getDisplayShortSize()I
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public isPortrait(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexCompatBoundsProvider;->convertToConfigurationOrientation(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public setInitialState(Lcom/android/server/wm/Task;I)Z
    .registers 4

    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_8
    iput-object p1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexCompatBoundsProvider;->isPortrait(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    .line 62
    iget-object p1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0
.end method
