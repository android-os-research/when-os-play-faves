.class public Lcom/android/server/wm/utils/RotationAnimationUtils;
.super Ljava/lang/Object;
.source "RotationAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 6

    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 p2, 0x3

    if-eq p0, p2, :cond_d

    goto :goto_2f

    :cond_d
    const/high16 p0, 0x43870000    # 270.0f

    .line 145
    invoke-virtual {p3, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float p0, p1

    .line 146
    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2f

    :cond_17
    const/high16 p0, 0x43340000    # 180.0f

    .line 141
    invoke-virtual {p3, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float p0, p1

    int-to-float p1, p2

    .line 142
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2f

    :cond_22
    const/high16 p0, 0x42b40000    # 90.0f

    .line 137
    invoke-virtual {p3, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float p0, p2

    .line 138
    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2f

    .line 134
    :cond_2c
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_2f
    return-void
.end method

.method public static getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;)F
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 118
    :cond_4
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 119
    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 120
    new-instance p0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-direct {p0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 122
    invoke-static {p1, p0, v1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_1f

    return v0

    .line 127
    :cond_1f
    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    .line 127
    invoke-static {p1, p0}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result p0

    return p0
.end method

.method public static getMedianBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F
    .registers 14

    const/4 v0, 0x0

    if-eqz p0, :cond_95

    .line 55
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_95

    .line 56
    invoke-static {p0}, Lcom/android/server/wm/utils/RotationAnimationUtils;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_95

    .line 60
    :cond_12
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    .line 61
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v4

    .line 60
    invoke-static {v1, v3, v4, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 63
    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

    if-eqz p0, :cond_95

    .line 64
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_37

    goto :goto_95

    .line 68
    :cond_37
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 69
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 70
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 71
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    .line 72
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    .line 73
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    mul-int/lit8 v6, v4, 0x2

    mul-int/lit8 v7, p0, 0x2

    add-int/2addr v6, v7

    .line 74
    new-array v7, v6, [F

    move v8, v0

    move v9, v8

    :goto_5b
    if-ge v8, v4, :cond_72

    add-int/lit8 v10, v9, 0x1

    .line 79
    invoke-static {v3, v8, v0, v5, p1}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v11

    aput v11, v7, v9

    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v11, p0, -0x1

    .line 80
    invoke-static {v3, v8, v11, v5, p1}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v11

    aput v11, v7, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_5b

    :cond_72
    move v8, v0

    :goto_73
    if-ge v8, p0, :cond_8a

    add-int/lit8 v10, v9, 0x1

    .line 85
    invoke-static {v3, v0, v8, v5, p1}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v11

    aput v11, v7, v9

    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v11, v4, -0x1

    .line 86
    invoke-static {v3, v11, v8, v5, p1}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v11

    aput v11, v7, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_73

    .line 90
    :cond_8a
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 94
    invoke-static {v7}, Ljava/util/Arrays;->sort([F)V

    .line 95
    div-int/lit8 v6, v6, 0x2

    aget p0, v7, v6

    return p0

    :cond_95
    :goto_95
    return v0
.end method

.method public static getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F
    .registers 5

    mul-int/2addr p2, p4

    mul-int/2addr p1, p3

    add-int/2addr p2, p1

    .line 102
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x0

    add-int/lit8 p3, p2, 0x1

    .line 103
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p1, p3

    add-int/lit8 p3, p2, 0x2

    .line 104
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 105
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    .line 106
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->luminance()F

    move-result p0

    return p0
.end method

.method public static hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z
    .registers 5

    .line 45
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method
