.class public final Landroid/hardware/camera2/impl/CameraExtensionUtils;
.super Ljava/lang/Object;
.source "CameraExtensionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;,
        Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    }
.end annotation


# static fields
.field public static final blacklist JPEG_DEFAULT_QUALITY:I = 0x64

.field public static final blacklist JPEG_DEFAULT_ROTATION:I = 0x0

.field public static final blacklist SUPPORTED_CAPTURE_OUTPUT_FORMATS:[I

.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtensionUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x23
        0x100
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBurstCaptureSurface(Ljava/util/List;Ljava/util/HashMap;)Landroid/view/Surface;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Landroid/view/Surface;"
        }
    .end annotation

    .line 100
    .local p0, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local p1, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 101
    .local v1, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v2

    .line 102
    .local v2, "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    sget-object v3, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_5e

    aget v6, v3, v5

    .line 103
    .local v6, "supportedFormat":I
    iget v7, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    if-ne v7, v6, :cond_5b

    .line 104
    new-instance v0, Landroid/util/Size;

    iget v3, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 105
    .local v0, "captureSize":Landroid/util/Size;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 106
    iget v3, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 107
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    return-object v3

    .line 109
    :cond_4e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Capture size not supported!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_56
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    return-object v3

    .line 102
    .end local v0    # "captureSize":Landroid/util/Size;
    .end local v6    # "supportedFormat":I
    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 115
    .end local v1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v2    # "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :cond_5e
    goto :goto_4

    .line 117
    :cond_5f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getRepeatingRequestSurface(Ljava/util/List;Ljava/util/List;)Landroid/view/Surface;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/view/Surface;"
        }
    .end annotation

    .line 123
    .local p0, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local p1, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 124
    .local v1, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v2

    .line 125
    .local v2, "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget v3, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    const/16 v4, 0x22

    if-eq v3, v4, :cond_25

    iget v3, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    goto :goto_25

    .line 141
    .end local v1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v2    # "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :cond_24
    goto :goto_4

    .line 131
    .restart local v1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v2    # "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :cond_25
    :goto_25
    new-instance v0, Landroid/util/Size;

    iget v3, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 133
    .local v0, "repeatingRequestSurfaceSize":Landroid/util/Size;
    if-eqz p1, :cond_3b

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 139
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    return-object v3

    .line 135
    :cond_3b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Repeating request surface size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    .end local v0    # "repeatingRequestSurfaceSize":Landroid/util/Size;
    .end local v1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v2    # "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :cond_5a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    .registers 9
    .param p0, "s"    # Landroid/view/Surface;

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "writer":Landroid/media/ImageWriter;
    const/4 v1, 0x0

    .line 77
    .local v1, "img":Landroid/media/Image;
    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;-><init>()V

    .line 78
    .local v2, "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->detectSurfaceFormat(Landroid/view/Surface;)I

    move-result v3

    .line 79
    .local v3, "nativeFormat":I
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v4

    .line 80
    .local v4, "dataspace":I
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    .line 81
    .local v5, "surfaceSize":Landroid/util/Size;
    iput v3, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    .line 82
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    iput v6, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    .line 83
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    iput v6, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    .line 84
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceUsage(Landroid/view/Surface;)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    .line 88
    const/16 v6, 0x21

    if-ne v3, v6, :cond_34

    const/high16 v6, 0x8c20000

    if-ne v4, v6, :cond_34

    .line 90
    const/16 v6, 0x100

    iput v6, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    .line 91
    return-object v2

    .line 94
    :cond_34
    return-object v2
.end method
