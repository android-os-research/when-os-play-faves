.class public abstract Landroid/media/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Image$Plane;
    }
.end annotation


# instance fields
.field private greylist-max-o mCropRect:Landroid/graphics/Rect;

.field private blacklist mDataSpace:I

.field protected greylist-max-o mIsImageValid:Z


# direct methods
.method protected constructor greylist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    .line 305
    iput v0, p0, Landroid/media/Image;->mDataSpace:I

    .line 70
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public whitelist getCropRect()Landroid/graphics/Rect;
    .registers 5

    .line 339
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 341
    iget-object v0, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_16

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 344
    :cond_16
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public whitelist getDataSpace()I
    .registers 2

    .line 312
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 313
    iget v0, p0, Landroid/media/Image;->mDataSpace:I

    return v0
.end method

.method public whitelist getFence()Landroid/hardware/SyncFence;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-static {}, Landroid/hardware/SyncFence;->createEmpty()Landroid/hardware/SyncFence;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getFormat()I
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 264
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getHeight()I
.end method

.method greylist-max-o getNativeContext()J
    .registers 3

    .line 446
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 448
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method greylist-max-o getOwner()Ljava/lang/Object;
    .registers 2

    .line 429
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPlaneCount()I
    .registers 2

    .line 248
    const/4 v0, -0x1

    return v0
.end method

.method public abstract whitelist getPlanes()[Landroid/media/Image$Plane;
.end method

.method public abstract greylist-max-o getScalingMode()I
.end method

.method public abstract whitelist getTimestamp()J
.end method

.method public abstract greylist-max-o getTransform()I
.end method

.method public abstract whitelist getWidth()I
.end method

.method public greylist-max-o isAttachable()Z
    .registers 2

    .line 408
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setCropRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .line 355
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 357
    if-eqz p1, :cond_1d

    .line 358
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 359
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 363
    :cond_1d
    iput-object p1, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    .line 364
    return-void
.end method

.method public whitelist setDataSpace(I)V
    .registers 2
    .param p1, "dataSpace"    # I

    .line 326
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 327
    iput p1, p0, Landroid/media/Image;->mDataSpace:I

    .line 328
    return-void
.end method

.method public whitelist setFence(Landroid/hardware/SyncFence;)V
    .registers 2
    .param p1, "fence"    # Landroid/hardware/SyncFence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 302
    return-void
.end method

.method public whitelist setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 290
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    .line 291
    return-void
.end method

.method protected greylist-max-o throwISEIfImageIsInvalid()V
    .registers 3

    .line 78
    iget-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    if-eqz v0, :cond_5

    .line 81
    return-void

    .line 79
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
