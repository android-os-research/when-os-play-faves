.class public Lcom/android/server/wm/Letterbox$LetterboxSurface;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LetterboxSurface"
.end annotation


# instance fields
.field public mColor:Landroid/graphics/Color;

.field public mHasWallpaperBackground:Z

.field public mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

.field public final mLayoutFrameGlobal:Landroid/graphics/Rect;

.field public final mLayoutFrameRelative:Landroid/graphics/Rect;

.field public mSurface:Landroid/view/SurfaceControl;

.field public final mSurfaceFrameRelative:Landroid/graphics/Rect;

.field public final mType:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLayoutFrameGlobal(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSurfaceFrameRelative(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V
    .registers 3

    .line 346
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 341
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 342
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    .line 347
    iput-object p2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 398
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mCanHaveLetterboxSurfaceSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_2c

    .line 407
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 409
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_33

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->createSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 413
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmColorSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getRgbColorArray()[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 415
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 417
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 416
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmHasWallpaperBackgroundSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mHasWallpaperBackground:Z

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->updateAlphaAndBlur(Landroid/view/SurfaceControl$Transaction;)V

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8a

    .line 423
    :cond_83
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8a

    .line 424
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 426
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz v0, :cond_a2

    .line 427
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Letterbox$InputInterceptor;->updateTouchableRegion(Landroid/graphics/Rect;)V

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    invoke-static {p0}, Lcom/android/server/wm/Letterbox$InputInterceptor;->-$$Nest$fgetmWindowHandle(Lcom/android/server/wm/Letterbox$InputInterceptor;)Landroid/view/InputWindowHandle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    :cond_a2
    return-void
.end method

.method public attachInput(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz v0, :cond_7

    .line 369
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$InputInterceptor;->dispose()V

    .line 371
    :cond_7
    new-instance v0, Lcom/android/server/wm/Letterbox$InputInterceptor;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Letterbox_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wm/Letterbox$InputInterceptor;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;Lcom/android/server/wm/WindowState;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    return-void
.end method

.method public final createSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmSurfaceControlFactory(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Letterbox - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "LetterboxSurface.createSurface"

    .line 361
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v1, -0x1

    .line 364
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 394
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getRgbColorArray()[F
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 455
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    invoke-virtual {v1}, Landroid/graphics/Color;->red()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 456
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    invoke-virtual {v1}, Landroid/graphics/Color;->green()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 457
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    const/4 v1, 0x2

    aput p0, v0, v1

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 390
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public isRemoved()Z
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public layout(IIIILandroid/graphics/Point;)V
    .registers 7

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 353
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    iget p1, p5, Landroid/graphics/Point;->x:I

    neg-int p1, p1

    iget p2, p5, Landroid/graphics/Point;->y:I

    neg-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 466
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmHasWallpaperBackgroundSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mHasWallpaperBackground:Z

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmColorSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    .line 468
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    invoke-virtual {v0, p0}, Landroid/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p0, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    :goto_3e
    return p0
.end method

.method public remove()V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmTransactionFactory(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 381
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 383
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz v0, :cond_25

    .line 384
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$InputInterceptor;->dispose()V

    .line 385
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    :cond_25
    return-void
.end method

.method public final updateAlphaAndBlur(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 433
    iget-boolean v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mHasWallpaperBackground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 437
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 440
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmDarkScrimAlphaSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 441
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 444
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmBlurRadiusSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_3f

    .line 446
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 450
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {p0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmBlurRadiusSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
