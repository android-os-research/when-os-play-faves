.class public Landroid/hardware/camera2/MultiResolutionImageReader;
.super Ljava/lang/Object;
.source "MultiResolutionImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiResolutionImageReader"


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mMaxImages:I

.field private final blacklist mReaders:[Landroid/media/ImageReader;

.field private final blacklist mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;


# direct methods
.method public constructor whitelist <init>(Ljava/util/Collection;II)V
    .registers 11
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;II)V"
        }
    .end annotation

    .line 137
    .local p1, "streams":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mFormat:I

    .line 139
    iput p3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    .line 141
    if-eqz p1, :cond_5c

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5c

    .line 145
    if-lt p3, v1, :cond_54

    .line 150
    const/16 v0, 0x11

    if-eq p2, v0, :cond_4c

    .line 155
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 156
    .local v0, "numImageReaders":I
    new-array v1, v0, [Landroid/media/ImageReader;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    .line 157
    new-array v1, v0, [Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 160
    .local v3, "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v5

    .line 161
    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v6

    .line 160
    invoke-static {v5, v6, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    aput-object v5, v4, v1

    .line 162
    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aput-object v3, v4, v1

    .line 163
    nop

    .end local v3    # "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    add-int/lit8 v1, v1, 0x1

    .line 164
    goto :goto_27

    .line 165
    :cond_4b
    return-void

    .line 151
    .end local v0    # "numImageReaders":I
    .end local v1    # "index":I
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The streams info collection must contain at least 2 entries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 194
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flush()V

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 197
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 199
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 203
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->close()V

    .line 204
    return-void
.end method

.method public whitelist flush()V
    .registers 2

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    .line 215
    return-void
.end method

.method public blacklist flushOther(Landroid/media/ImageReader;)V
    .registers 5
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 229
    if-eqz p1, :cond_d

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_d

    .line 230
    goto :goto_18

    .line 234
    :cond_d
    :goto_d
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1

    .line 235
    .local v1, "image":Landroid/media/Image;
    if-nez v1, :cond_1b

    .line 236
    nop

    .line 228
    .end local v1    # "image":Landroid/media/Image;
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    .restart local v1    # "image":Landroid/media/Image;
    :cond_1b
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 240
    .end local v1    # "image":Landroid/media/Image;
    goto :goto_d

    .line 242
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public blacklist getReaders()[Landroid/media/ImageReader;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    return-object v0
.end method

.method public whitelist getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    .registers 5
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 296
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_f

    .line 297
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    return-object v1

    .line 295
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    .end local v0    # "i":I
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageReader doesn\'t belong to this multi-resolution imagereader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 6

    .line 270
    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 271
    .local v0, "minReaderSize":I
    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 272
    .local v1, "candidateSurface":Landroid/view/Surface;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1b
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v4, v3

    if-ge v2, v4, :cond_3d

    .line 273
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 274
    .local v3, "readerSize":I
    if-ge v3, v0, :cond_3a

    .line 275
    move v0, v3

    .line 276
    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 272
    .end local v3    # "readerSize":I
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 279
    .end local v2    # "i":I
    :cond_3d
    return-object v1
.end method

.method public whitelist setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 188
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "i":I
    :cond_e
    return-void
.end method
