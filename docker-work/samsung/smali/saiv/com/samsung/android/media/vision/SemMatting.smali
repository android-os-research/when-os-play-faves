.class public Lcom/samsung/android/media/vision/SemMatting;
.super Ljava/lang/Object;
.source "SemMatting.java"


# static fields
.field private static final STRIPWIDTH:I = 0x6

.field private static final SUCCESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-string v0, "InteractiveSegmentation.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doMatting(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "inputImage"    # Landroid/graphics/Bitmap;
    .param p1, "maskImage"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 31
    return-object v0

    .line 34
    :cond_4
    if-nez p1, :cond_7

    .line 35
    return-object v0

    .line 38
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_92

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_8a

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_82

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_82

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 52
    .local v1, "size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 53
    .local v2, "inbuf":Ljava/nio/ByteBuffer;
    div-int/lit8 v3, v1, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 55
    .local v3, "maskbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 56
    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 58
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 59
    .local v10, "maskByteArray":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 60
    .local v11, "inputByteArray":[B
    div-int/lit8 v4, v1, 0x4

    new-array v12, v4, [B

    .line 62
    .local v12, "matteByteArray":[B
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 64
    .local v13, "matte":Landroid/graphics/Bitmap;
    const/4 v7, 0x6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v4, v11

    move-object v5, v10

    move-object v6, v12

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/media/vision/SemMatting;->nativeDoMatting([B[B[BIII)I

    move-result v4

    .line 65
    .local v4, "val":I
    const/4 v5, 0x1

    if-ne v5, v4, :cond_81

    .line 66
    div-int/lit8 v0, v1, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    .local v0, "mattebuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 69
    invoke-virtual {v13, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 70
    return-object v13

    .line 72
    .end local v0    # "mattebuf":Ljava/nio/ByteBuffer;
    :cond_81
    return-object v0

    .line 47
    .end local v1    # "size":I
    .end local v2    # "inbuf":Ljava/nio/ByteBuffer;
    .end local v3    # "maskbuf":Ljava/nio/ByteBuffer;
    .end local v4    # "val":I
    .end local v10    # "maskByteArray":[B
    .end local v11    # "inputByteArray":[B
    .end local v12    # "matteByteArray":[B
    .end local v13    # "matte":Landroid/graphics/Bitmap;
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "images size don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FormatMismatch:: MaskImage ALPHA_8 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FormatMismatch:: InputImage ARGB_8888 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeDoMatting([B[B[BIII)I
.end method
