.class public Lcom/android/server/wm/Letterbox;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Letterbox$LetterboxSurface;,
        Lcom/android/server/wm/Letterbox$InputInterceptor;,
        Lcom/android/server/wm/Letterbox$DoubleTapListener;,
        Lcom/android/server/wm/Letterbox$TapEventReceiver;
    }
.end annotation


# static fields
.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final ZERO_POINT:Landroid/graphics/Point;


# instance fields
.field public final mAreCornersRounded:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mBlurRadiusSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public mCanHaveLetterboxSurfaceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mColorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field public final mDarkScrimAlphaSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final mDoubleTapCallback:Ljava/util/function/IntConsumer;

.field public final mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mInner:Landroid/graphics/Rect;

.field public final mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mOuter:Landroid/graphics/Rect;

.field public final mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mSurfaceControlFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public mUseFullWindowSurface:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlurRadiusSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mBlurRadiusSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mColorSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDarkScrimAlphaSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mDarkScrimAlphaSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDoubleTapCallback(Lcom/android/server/wm/Letterbox;)Ljava/util/function/IntConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mDoubleTapCallback:Ljava/util/function/IntConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasWallpaperBackgroundSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSurfaceControlFactory(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransactionFactory(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/IntConsumer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Color;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v1, "top"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 70
    new-instance v1, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v2, "left"

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 71
    new-instance v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v3, "bottom"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 72
    new-instance v3, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v4, "right"

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 78
    new-instance v4, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v5, "fullWindow"

    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    .line 79
    iput-object v4, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 96
    iput-object p1, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    .line 97
    iput-object p2, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 98
    iput-object p3, p0, Lcom/android/server/wm/Letterbox;->mAreCornersRounded:Ljava/util/function/Supplier;

    .line 99
    iput-object p4, p0, Lcom/android/server/wm/Letterbox;->mColorSupplier:Ljava/util/function/Supplier;

    .line 100
    iput-object p5, p0, Lcom/android/server/wm/Letterbox;->mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;

    .line 101
    iput-object p6, p0, Lcom/android/server/wm/Letterbox;->mBlurRadiusSupplier:Ljava/util/function/Supplier;

    .line 102
    iput-object p7, p0, Lcom/android/server/wm/Letterbox;->mDarkScrimAlphaSupplier:Ljava/util/function/Supplier;

    .line 103
    iput-object p8, p0, Lcom/android/server/wm/Letterbox;->mDoubleTapCallback:Ljava/util/function/IntConsumer;

    .line 106
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Letterbox;->mUseFullWindowSurface:Z

    return-void
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 211
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 214
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length p1, p0

    :goto_f
    if-ge v1, p1, :cond_2b

    aget-object v0, p0, v1

    .line 215
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 218
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v2, v0

    :goto_1c
    if-ge v1, v2, :cond_26

    aget-object v3, v0, v1

    .line 219
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 222
    :cond_26
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    :cond_2b
    return-void
.end method

.method public attachInput(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 228
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 229
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    goto :goto_1a

    .line 231
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 232
    invoke-virtual {v2, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    :goto_1a
    return-void
.end method

.method public clearSurfaceFrame()V
    .registers 4

    .line 499
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 500
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-static {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmSurfaceFrameRelative(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_22

    .line 502
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_22

    aget-object v2, p0, v1

    .line 503
    invoke-static {v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmSurfaceFrameRelative(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_22
    :goto_22
    return-void
.end method

.method public destroy()V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 192
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 194
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    return-void
.end method

.method public getDirection(II)I
    .registers 4

    if-lez p1, :cond_18

    .line 482
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmSurfaceFrameRelative(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 483
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    if-lez p2, :cond_30

    .line 485
    iget-object p1, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-static {p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmSurfaceFrameRelative(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 486
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result p0

    if-ne p2, p0, :cond_30

    const/4 p0, 0x2

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public getInnerFrame()Landroid/graphics/Rect;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 5

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 139
    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 140
    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 141
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 181
    sget-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method public isUseFullWindowSurfaceChanged()Z
    .registers 2

    .line 476
    iget-boolean v0, p0, Lcom/android/server/wm/Letterbox;->mUseFullWindowSurface:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result p0

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 123
    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 124
    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    iget-object v4, v0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 127
    iget-object v9, v0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v14, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 128
    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 129
    iget-object v8, v0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 130
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .registers 5

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result p0

    return p0

    .line 202
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_21

    aget-object v3, p0, v2

    .line 203
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_21
    return v1
.end method

.method public notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z
    .registers 11

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_7
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2c

    aget-object v7, v0, v3

    .line 160
    invoke-static {v7}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmLayoutFrameGlobal(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object v7

    .line 161
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_19

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 164
    :cond_19
    invoke-static {v7, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_22

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 167
    :cond_22
    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_29

    return v6

    :cond_29
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_2c
    add-int/2addr v4, v5

    .line 172
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length p0, p0

    if-ne v4, p0, :cond_33

    move v2, v6

    :cond_33
    return v2
.end method

.method public onMovedToDisplay(I)V
    .registers 7

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 239
    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 240
    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/Letterbox$InputInterceptor;->-$$Nest$fgetmWindowHandle(Lcom/android/server/wm/Letterbox$InputInterceptor;)Landroid/view/InputWindowHandle;

    move-result-object v3

    iput p1, v3, Landroid/view/InputWindowHandle;->displayId:I

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 243
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 244
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-static {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/Letterbox$InputInterceptor;->-$$Nest$fgetmWindowHandle(Lcom/android/server/wm/Letterbox$InputInterceptor;)Landroid/view/InputWindowHandle;

    move-result-object p0

    iput p1, p0, Landroid/view/InputWindowHandle;->displayId:I

    :cond_2f
    return-void
.end method

.method public final useFullWindowSurface()Z
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mAreCornersRounded:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method
