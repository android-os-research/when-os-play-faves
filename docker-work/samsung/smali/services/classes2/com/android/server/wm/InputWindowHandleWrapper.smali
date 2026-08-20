.class public Lcom/android/server/wm/InputWindowHandleWrapper;
.super Ljava/lang/Object;
.source "InputWindowHandleWrapper.java"


# instance fields
.field public mChanged:Z

.field public final mHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Landroid/view/InputWindowHandle;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    return-void
.end method


# virtual methods
.method public applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public clearPointerTouchableRegion()V
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 180
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public clearTouchableRegion()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 163
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public forceChange()V
    .registers 2

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public getDisplayId()I
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->displayId:I

    return p0
.end method

.method public getInputApplicationHandle()Landroid/view/InputApplicationHandle;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object p0, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    return-object p0
.end method

.method public hasWallpaper()Z
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isChanged()Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return p0
.end method

.method public isFocusable()Z
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPaused()Z
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isTrustedOverlay()Z
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public setDispatchingTimeoutMillis(J)V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-wide v1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_9

    return-void

    .line 147
    :cond_9
    iput-wide p1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setDisplayId(I)V
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->displayId:I

    if-ne v1, p1, :cond_7

    return-void

    .line 254
    :cond_7
    iput p1, v0, Landroid/view/InputWindowHandle;->displayId:I

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setFocusable(Z)V
    .registers 5

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isFocusable()Z

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/4 v1, 0x4

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 190
    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setFrame(IIII)V
    .registers 7

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->frameLeft:I

    if-ne v1, p1, :cond_13

    iget v1, v0, Landroid/view/InputWindowHandle;->frameTop:I

    if-ne v1, p2, :cond_13

    iget v1, v0, Landroid/view/InputWindowHandle;->frameRight:I

    if-ne v1, p3, :cond_13

    iget v1, v0, Landroid/view/InputWindowHandle;->frameBottom:I

    if-ne v1, p4, :cond_13

    return-void

    .line 263
    :cond_13
    iput p1, v0, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 264
    iput p2, v0, Landroid/view/InputWindowHandle;->frameTop:I

    .line 265
    iput p3, v0, Landroid/view/InputWindowHandle;->frameRight:I

    .line 266
    iput p4, v0, Landroid/view/InputWindowHandle;->frameBottom:I

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setHasWallpaper(Z)V
    .registers 4

    .line 202
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->hasWallpaper()Z

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setInputApplicationHandle(Landroid/view/InputApplicationHandle;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-ne v1, p1, :cond_7

    return-void

    .line 97
    :cond_7
    iput-object p1, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setInputConfigMasked(II)V
    .registers 6

    and-int/2addr p1, p2

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int v2, v1, p2

    if-ne p1, v2, :cond_a

    return-void

    :cond_a
    not-int p2, p2

    and-int/2addr p2, v1

    or-int/2addr p1, p2

    .line 316
    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setLayoutParamsFlags(I)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    if-ne v1, p1, :cond_7

    return-void

    .line 121
    :cond_7
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setLayoutParamsSamsungFlags(I)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->layoutParamsSamsungFlags:I

    if-ne v1, p1, :cond_7

    return-void

    .line 130
    :cond_7
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsSamsungFlags:I

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setLayoutParamsType(I)V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    if-ne v1, p1, :cond_7

    return-void

    .line 139
    :cond_7
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 113
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setOneHandSpecs(FFF)V
    .registers 6

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetX:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_15

    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetY:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_15

    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandScale:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_15

    return-void

    .line 326
    :cond_15
    iput p1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetX:F

    .line 327
    iput p2, v0, Landroid/view/InputWindowHandle;->oneHandOffsetY:F

    .line 328
    iput p3, v0, Landroid/view/InputWindowHandle;->oneHandScale:F

    const/4 p1, 0x1

    .line 329
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setOwnerPid(I)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    if-ne v1, p1, :cond_7

    return-void

    .line 230
    :cond_7
    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setOwnerUid(I)V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    if-ne v1, p1, :cond_7

    return-void

    .line 238
    :cond_7
    iput p1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 246
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setPaused(Z)V
    .registers 4

    .line 211
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isPaused()Z

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setPointerTouchableRegion(Landroid/graphics/Region;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 172
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setReplaceTouchableRegionWithCrop(Z)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-boolean v1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    if-ne v1, p1, :cond_7

    return-void

    .line 298
    :cond_7
    iput-boolean p1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setScaleFactor(F)V
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_9

    return-void

    .line 282
    :cond_9
    iput p1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const/4 p1, 0x1

    .line 283
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setSurfaceInset(I)V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->surfaceInset:I

    if-ne v1, p1, :cond_7

    return-void

    .line 274
    :cond_7
    iput p1, v0, Landroid/view/InputWindowHandle;->surfaceInset:I

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setToken(Landroid/os/IBinder;)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_7

    return-void

    .line 105
    :cond_7
    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTouchOcclusionMode(I)V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    if-ne v1, p1, :cond_7

    return-void

    .line 197
    :cond_7
    iput p1, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTouchableRegion(Landroid/graphics/Region;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 155
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTouchableRegionCrop(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_b

    return-void

    .line 290
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTrustedOverlay(Z)V
    .registers 4

    .line 219
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isTrustedOverlay()Z

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 222
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setWindowToken(Landroid/view/IWindow;)V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    if-ne v0, p1, :cond_9

    return-void

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p1}, Landroid/view/InputWindowHandle;->setWindowToken(Landroid/view/IWindow;)V

    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
