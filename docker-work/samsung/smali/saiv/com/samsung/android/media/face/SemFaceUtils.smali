.class public Lcom/samsung/android/media/face/SemFaceUtils;
.super Ljava/lang/Object;
.source "SemFaceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/samsung/android/media/face/SemFaceUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceUtils;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "FacePreProcessing_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static native customConvertBitmapToNV21(Landroid/graphics/Bitmap;)[B
.end method

.method public static decodeImageFileToNV21Format(Ljava/lang/String;[I)[B
    .registers 10
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "dimensionWidthHeight"    # [I

    .line 30
    if-eqz p1, :cond_63

    .line 34
    if-eqz p0, :cond_5b

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "imgFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1e

    .line 43
    sget-object v1, Lcom/samsung/android/media/face/SemFaceUtils;->TAG:Ljava/lang/String;

    const-string v5, "This filepath is not a file"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    aput v4, p1, v4

    .line 45
    aput v4, p1, v3

    .line 46
    return-object v2

    .line 49
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 50
    .local v1, "data":Landroid/graphics/Bitmap;
    if-nez v1, :cond_34

    .line 52
    sget-object v5, Lcom/samsung/android/media/face/SemFaceUtils;->TAG:Ljava/lang/String;

    const-string v6, "This file cannot be decoded"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    aput v4, p1, v4

    .line 54
    aput v4, p1, v3

    .line 55
    return-object v2

    .line 58
    :cond_34
    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceUtils;->customConvertBitmapToNV21(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    .line 59
    .local v5, "outputBuffer":[B
    if-eqz v5, :cond_4f

    array-length v6, v5

    if-nez v6, :cond_3e

    goto :goto_4f

    .line 66
    :cond_3e
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    aput v2, p1, v4

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    aput v2, p1, v3

    .line 68
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    const/4 v1, 0x0

    .line 71
    return-object v5

    .line 61
    :cond_4f
    :goto_4f
    sget-object v6, Lcom/samsung/android/media/face/SemFaceUtils;->TAG:Ljava/lang/String;

    const-string v7, "This picture cannot be converted to byte array"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    aput v4, p1, v4

    .line 63
    aput v4, p1, v3

    .line 64
    return-object v2

    .line 36
    .end local v0    # "imgFile":Ljava/io/File;
    .end local v1    # "data":Landroid/graphics/Bitmap;
    .end local v5    # "outputBuffer":[B
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No input filepath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid int[] for saving dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
