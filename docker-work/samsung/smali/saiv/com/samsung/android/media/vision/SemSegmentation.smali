.class public Lcom/samsung/android/media/vision/SemSegmentation;
.super Ljava/lang/Object;
.source "SemSegmentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vision/SemSegmentation$Result;,
        Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    }
.end annotation


# static fields
.field private static volatile trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;


# instance fields
.field private blendArr:[B

.field private imheight:I

.field private imwidth:I

.field private volatile isReleased:Z

.field private maskArr:[B

.field private outputBuf:Ljava/nio/ByteBuffer;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-string v0, "InteractiveSegmentation.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "inputImage"    # Landroid/graphics/Bitmap;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/media/vision/SemSegmentation;->create(Landroid/graphics/Bitmap;)Z

    .line 73
    return-void
.end method

.method private _getBitmap([BILandroid/graphics/Bitmap$Config;)V
    .registers 6
    .param p1, "byteArr"    # [B
    .param p2, "size"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 203
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 204
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 207
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_1b

    .line 208
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_22

    .line 210
    :cond_1b
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 212
    :goto_22
    return-void
.end method

.method private create(Landroid/graphics/Bitmap;)Z
    .registers 6
    .param p1, "inputImage"    # Landroid/graphics/Bitmap;

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    .line 121
    iget v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 125
    .local v0, "inputBuf":[B
    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v2, v1, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    .line 126
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    .line 128
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 129
    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    .line 130
    iget v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCreate([BII)Z

    move-result v1

    return v1
.end method

.method public static getInstance(Landroid/graphics/Bitmap;)Lcom/samsung/android/media/vision/SemSegmentation;
    .registers 3
    .param p0, "inputImage"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_22

    .line 106
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-nez v0, :cond_1f

    .line 107
    const-class v0, Lcom/samsung/android/media/vision/SemSegmentation;

    monitor-enter v0

    .line 108
    :try_start_f
    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-nez v1, :cond_1a

    .line 109
    new-instance v1, Lcom/samsung/android/media/vision/SemSegmentation;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/vision/SemSegmentation;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    .line 111
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw v1

    .line 113
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    return-object v0

    .line 102
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ARGB_8888 format expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeCanRedo()Z
.end method

.method private native nativeCanUndo()Z
.end method

.method private native nativeCancel(Z)V
.end method

.method private static native nativeCreate([BII)Z
.end method

.method private native nativeProcess([B[BI[I)[I
.end method

.method private native nativeRedo([B[B)[I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeReset()V
.end method

.method private native nativeUndo([B[B)[I
.end method

.method private ptArr2PathList([I)Ljava/util/ArrayList;
    .registers 13
    .param p1, "contour"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "segmentContour":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Path;>;"
    const/4 v1, 0x0

    .line 138
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget v1, p1, v1

    .line 139
    .local v1, "numContours":I
    if-lez v1, :cond_4d

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 142
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_4d

    .line 143
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    aget v2, p1, v2

    .line 144
    .local v2, "numPoint":I
    if-lez v2, :cond_47

    .line 145
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 146
    .local v5, "p":Landroid/graphics/Path;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "index":I
    .local v6, "index":I
    aget v4, p1, v4

    .line 148
    .local v4, "x":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    aget v6, p1, v6

    .line 149
    .local v6, "y":I
    int-to-float v8, v4

    int-to-float v9, v6

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 151
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_2d
    if-ge v8, v2, :cond_3f

    .line 152
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "index":I
    .local v9, "index":I
    aget v4, p1, v7

    .line 153
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "index":I
    .restart local v7    # "index":I
    aget v6, p1, v9

    .line 154
    int-to-float v9, v4

    int-to-float v10, v6

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 157
    .end local v8    # "j":I
    :cond_3f
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 158
    nop

    .end local v5    # "p":Landroid/graphics/Path;
    add-int/lit8 v7, v7, 0x1

    .line 159
    move v2, v7

    goto :goto_4a

    .line 160
    .end local v6    # "y":I
    .end local v7    # "index":I
    .local v4, "index":I
    :cond_47
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 142
    .end local v4    # "index":I
    .local v2, "index":I
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 165
    .end local v3    # "i":I
    :cond_4d
    return-object v0
.end method


# virtual methods
.method public canRedo()Z
    .registers 3

    .line 257
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_9

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCanRedo()Z

    move-result v0

    return v0

    .line 258
    :cond_9
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canUndo()Z
    .registers 3

    .line 221
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_9

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCanUndo()Z

    move-result v0

    return v0

    .line 222
    :cond_9
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel(Z)V
    .registers 2
    .param p1, "exit"    # Z

    .line 290
    invoke-direct {p0, p1}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeCancel(Z)V

    .line 291
    return-void
.end method

.method protected finalize()V
    .registers 2

    .line 346
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-eqz v0, :cond_7

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->release()V

    .line 349
    :cond_7
    return-void
.end method

.method public process(Lcom/samsung/android/media/vision/SemSegmentation$Mode;[I)Z
    .registers 8
    .param p1, "mode"    # Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .param p2, "points"    # [I

    .line 176
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_5c

    .line 180
    const/4 v0, 0x0

    if-eqz p2, :cond_5b

    array-length v1, p2

    if-nez v1, :cond_b

    goto :goto_5b

    .line 184
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v1

    sget-object v2, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-virtual {p1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v1

    sget-object v2, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_24

    .line 185
    return v0

    .line 188
    :cond_24
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 189
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 191
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget-object v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-virtual {p1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->ordinal()I

    move-result v3

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeProcess([B[BI[I)[I

    move-result-object v1

    .line 192
    .local v1, "contour":[I
    iget-object v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v3, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v3, v3, 0x4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 193
    iget-object v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v3, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 194
    invoke-direct {p0, v1}, Lcom/samsung/android/media/vision/SemSegmentation;->ptArr2PathList([I)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 195
    sget-object v2, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-eqz v2, :cond_5a

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_5a
    return v0

    .line 181
    .end local v1    # "contour":[I
    :cond_5b
    :goto_5b
    return v0

    .line 177
    :cond_5c
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public redo()V
    .registers 5

    .line 268
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_36

    .line 272
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeRedo([B[B)[I

    move-result-object v0

    .line 276
    .local v0, "contour":[I
    invoke-direct {p0, v0}, Lcom/samsung/android/media/vision/SemSegmentation;->ptArr2PathList([I)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 277
    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-eqz v1, :cond_35

    .line 278
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v2, v2, 0x4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 282
    :cond_35
    return-void

    .line 269
    .end local v0    # "contour":[I
    :cond_36
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 3

    .line 319
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_2a

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeRelease()V

    .line 321
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 322
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    .line 323
    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 324
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    .line 325
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 327
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    .line 328
    iput v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    .line 329
    iput v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    .line 330
    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    .line 331
    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    .line 332
    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    .line 334
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    .line 338
    :cond_2a
    return-void
.end method

.method public reset()V
    .registers 3

    .line 297
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_2b

    .line 301
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 302
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 305
    :cond_d
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 306
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeReset()V

    .line 313
    return-void

    .line 298
    :cond_2b
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public undo()V
    .registers 5

    .line 232
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_40

    .line 236
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeUndo([B[B)[I

    move-result-object v0

    .line 240
    .local v0, "contour":[I
    invoke-direct {p0, v0}, Lcom/samsung/android/media/vision/SemSegmentation;->ptArr2PathList([I)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    .line 242
    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    if-eqz v1, :cond_36

    .line 243
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    div-int/lit8 v2, v2, 0x4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 244
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    goto :goto_3f

    .line 246
    :cond_36
    iget-object v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    iget v2, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/media/vision/SemSegmentation;->_getBitmap([BILandroid/graphics/Bitmap$Config;)V

    .line 248
    :goto_3f
    return-void

    .line 233
    .end local v0    # "contour":[I
    :cond_40
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unintialised: call getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
