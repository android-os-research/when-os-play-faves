.class Landroid/service/wallpaper/WallpaperService$Engine$2;
.super Lcom/android/internal/view/BaseSurfaceHolder;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 3
    .param p1, "this$1"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .line 376
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    .line 378
    const/4 v0, 0x2

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->mRequestedFormat:I

    .line 379
    return-void
.end method

.method private blacklist prepareToDraw()V
    .registers 3

    .line 420
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 423
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 426
    goto :goto_1f

    .line 424
    :catch_1e
    move-exception v0

    .line 428
    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public whitelist isCreating()Z
    .registers 2

    .line 399
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    return v0
.end method

.method public whitelist lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 432
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;->prepareToDraw()V

    .line 433
    invoke-super {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 438
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;->prepareToDraw()V

    .line 439
    invoke-super {p0, p1}, Lcom/android/internal/view/BaseSurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 444
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;->prepareToDraw()V

    .line 445
    invoke-super {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onAllowLockCanvas()Z
    .registers 2

    .line 383
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    return v0
.end method

.method public blacklist onRelayoutContainer()V
    .registers 3

    .line 388
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 389
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 390
    return-void
.end method

.method public blacklist onUpdateSurface()V
    .registers 3

    .line 394
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 395
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 396
    return-void
.end method

.method public whitelist setFixedSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 404
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    if-eqz v0, :cond_a

    .line 411
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFixedSize(II)V

    .line 412
    return-void

    .line 408
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wallpapers currently only support sizing from layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setKeepScreenOn(Z)V
    .registers 4
    .param p1, "screenOn"    # Z

    .line 415
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wallpapers do not support keep screen on"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
