.class public final Lcom/android/server/display/color/DisplayWhiteBalanceTintController;
.super Lcom/android/server/display/color/TintController;
.source "DisplayWhiteBalanceTintController.java"


# static fields
.field public static final COLORSPACE_MATRIX_LENGTH:I = 0x9

.field public static final NUM_DISPLAY_PRIMARIES_VALS:I = 0xc

.field public static final NUM_VALUES_PER_PRIMARY:I = 0x3


# instance fields
.field public mChromaticAdaptationMatrix:[F

.field public mCurrentColorTemperature:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mCurrentColorTemperatureXYZ:[F

.field public mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDisplayNominalWhiteXYZ:[F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mIsAvailable:Ljava/lang/Boolean;

.field public final mLock:Ljava/lang/Object;

.field public mMatrixDisplayWhiteBalance:[F

.field public mSetUp:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mTemperatureDefault:I

.field public mTemperatureMax:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mTemperatureMin:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 52
    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 62
    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    return-void
.end method

.method public static mul3x3([F[F)[F
    .registers 21

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 147
    aget v2, p0, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    const/4 v3, 0x3

    aget v4, p0, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    mul-float v7, v4, v6

    add-float/2addr v2, v7

    const/4 v7, 0x6

    aget v8, p0, v7

    const/4 v9, 0x2

    aget v10, p1, v9

    mul-float v11, v8, v10

    add-float/2addr v2, v11

    aput v2, v0, v1

    .line 148
    aget v2, p0, v5

    aget v11, p1, v1

    mul-float/2addr v2, v11

    const/4 v12, 0x4

    aget v13, p0, v12

    mul-float/2addr v6, v13

    add-float/2addr v2, v6

    const/4 v6, 0x7

    aget v14, p0, v6

    mul-float v15, v14, v10

    add-float/2addr v2, v15

    aput v2, v0, v5

    .line 149
    aget v2, p0, v9

    mul-float/2addr v2, v11

    const/4 v11, 0x5

    aget v15, p0, v11

    aget v16, p1, v5

    mul-float v16, v16, v15

    add-float v2, v2, v16

    const/16 v16, 0x8

    aget v17, p0, v16

    mul-float v10, v10, v17

    add-float/2addr v2, v10

    aput v2, v0, v9

    .line 150
    aget v1, p0, v1

    aget v2, p1, v3

    mul-float/2addr v2, v1

    aget v10, p1, v12

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    aget v4, p1, v11

    mul-float v18, v8, v4

    add-float v2, v2, v18

    aput v2, v0, v3

    .line 151
    aget v2, p0, v5

    aget v5, p1, v3

    mul-float v18, v2, v5

    mul-float/2addr v13, v10

    add-float v18, v18, v13

    mul-float v10, v14, v4

    add-float v18, v18, v10

    aput v18, v0, v12

    .line 152
    aget v9, p0, v9

    mul-float/2addr v5, v9

    aget v10, p1, v12

    mul-float/2addr v15, v10

    add-float/2addr v5, v15

    mul-float v4, v4, v17

    add-float/2addr v5, v4

    aput v5, v0, v11

    .line 153
    aget v4, p1, v7

    mul-float/2addr v1, v4

    aget v3, p0, v3

    aget v4, p1, v6

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    aget v3, p1, v16

    mul-float/2addr v8, v3

    add-float/2addr v1, v8

    aput v1, v0, v7

    .line 154
    aget v1, p1, v7

    mul-float/2addr v2, v1

    aget v5, p0, v12

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    mul-float/2addr v14, v3

    add-float/2addr v2, v14

    aput v2, v0, v6

    mul-float/2addr v9, v1

    .line 155
    aget v1, p0, v11

    aget v2, p1, v6

    mul-float/2addr v1, v2

    add-float/2addr v9, v1

    mul-float v17, v17, v3

    add-float v9, v9, v17

    aput v9, v0, v16

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 231
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSetUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    iget-boolean v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-nez v1, :cond_1f

    .line 234
    monitor-exit v0

    return-void

    .line 237
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureMin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureDefault = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentColorTemperature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentColorTemperatureXYZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    const/4 v3, 0x3

    .line 242
    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDisplayColorSpaceRGB RGB-to-XYZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 244
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mChromaticAdaptationMatrix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 246
    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDisplayColorSpaceRGB XYZ-to-RGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 248
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMatrixDisplayWhiteBalance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/4 v2, 0x4

    .line 250
    invoke-static {p0, v2}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    monitor-exit v0

    return-void

    :catchall_105
    move-exception p0

    monitor-exit v0
    :try_end_107
    .catchall {:try_start_3 .. :try_end_107} :catchall_105

    throw p0
.end method

.method public final getDisplayColorSpaceFromResources(Landroid/content/res/Resources;)Landroid/graphics/ColorSpace$Rgb;
    .registers 9

    const v0, 0x10700b3

    .line 298
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    new-array v1, v0, [F

    const/4 v2, 0x3

    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v0, :cond_1d

    .line 305
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1d
    :goto_1d
    if-ge v4, v2, :cond_2c

    add-int v5, v0, v4

    .line 309
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 313
    :cond_2c
    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayColorSpaceFromSurfaceControl()Landroid/graphics/ColorSpace$Rgb;
    .registers 11

    .line 276
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 281
    :cond_8
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 282
    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v2, :cond_64

    iget-object v3, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v3, :cond_64

    iget-object v4, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v4, :cond_64

    iget-object v0, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    if-nez v0, :cond_1f

    goto :goto_64

    :cond_1f
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 287
    iget v5, v2, Landroid/view/SurfaceControl$CieXyz;->X:F

    const/4 v6, 0x0

    aput v5, v1, v6

    iget v5, v2, Landroid/view/SurfaceControl$CieXyz;->Y:F

    const/4 v7, 0x1

    aput v5, v1, v7

    iget v2, v2, Landroid/view/SurfaceControl$CieXyz;->Z:F

    const/4 v5, 0x2

    aput v2, v1, v5

    iget v2, v3, Landroid/view/SurfaceControl$CieXyz;->X:F

    const/4 v8, 0x3

    aput v2, v1, v8

    const/4 v2, 0x4

    iget v9, v3, Landroid/view/SurfaceControl$CieXyz;->Y:F

    aput v9, v1, v2

    const/4 v2, 0x5

    iget v3, v3, Landroid/view/SurfaceControl$CieXyz;->Z:F

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, v4, Landroid/view/SurfaceControl$CieXyz;->X:F

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, v4, Landroid/view/SurfaceControl$CieXyz;->Y:F

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, v4, Landroid/view/SurfaceControl$CieXyz;->Z:F

    aput v3, v1, v2

    new-array v2, v8, [F

    iget v3, v0, Landroid/view/SurfaceControl$CieXyz;->X:F

    aput v3, v2, v6

    iget v3, v0, Landroid/view/SurfaceControl$CieXyz;->Y:F

    aput v3, v2, v7

    iget v0, v0, Landroid/view/SurfaceControl$CieXyz;->Z:F

    aput v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;

    move-result-object p0

    return-object p0

    :cond_64
    :goto_64
    return-object v1
.end method

.method public getLevel()I
    .registers 1

    const/16 p0, 0x7d

    return p0
.end method

.method public getLuminance()F
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    if-eqz p0, :cond_1c

    array-length v1, p0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1c

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 258
    aget v2, p0, v2

    const/4 v3, 0x4

    aget v3, p0, v3

    add-float/2addr v2, v3

    const/4 v3, 0x7

    aget p0, p0, v3

    add-float/2addr v2, p0

    div-float/2addr v1, v2

    monitor-exit v0

    return v1

    :cond_1c
    const/high16 p0, -0x40800000    # -1.0f

    .line 261
    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    .line 263
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public getMatrix()[F
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    goto :goto_f

    .line 132
    :cond_d
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    :goto_f
    return-object p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 224
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 226
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isColorMatrixCoeffValid(F)Z
    .registers 2

    .line 317
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method

.method public final isColorMatrixValid([F)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 325
    array-length v1, p1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    goto :goto_1b

    :cond_9
    move v1, v0

    .line 329
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 330
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixCoeffValid(F)Z

    move-result v2

    if-nez v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    return v0
.end method

.method public final makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;
    .registers 9

    .line 267
    new-instance p0, Landroid/graphics/ColorSpace$Rgb;

    const-string v1, "Display Color Space"

    const-wide v4, 0x40019999a0000000L    # 2.200000047683716

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FD)V

    return-object p0
.end method

.method public setMatrix(I)V
    .registers 13

    .line 161
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-nez v0, :cond_c

    const-string p0, "ColorDisplayService"

    const-string p1, "Can\'t set display white balance temperature: uninitialized"

    .line 162
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_c
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    if-ge p1, v0, :cond_1a

    const-string p1, "ColorDisplayService"

    const-string v0, "Requested display color temperature is below allowed minimum"

    .line 168
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    goto :goto_27

    .line 171
    :cond_1a
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    if-le p1, v0, :cond_27

    const-string p1, "ColorDisplayService"

    const-string v0, "Requested display color temperature is above allowed maximum"

    .line 172
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 177
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_2a
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    .line 181
    invoke-static {p1}, Landroid/graphics/ColorSpace;->cctToXyz(I)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 183
    sget-object v2, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v3, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 184
    invoke-static {v2, v3, v1}, Landroid/graphics/ColorSpace;->chromaticAdaptation(Landroid/graphics/ColorSpace$Adaptation;[F[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 188
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 189
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v2

    .line 188
    invoke-static {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mul3x3([F[F)[F

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mul3x3([F[F)[F

    move-result-object v1

    const/4 v2, 0x0

    .line 193
    aget v3, v1, v2

    const/4 v4, 0x3

    aget v5, v1, v4

    add-float/2addr v3, v5

    const/4 v5, 0x6

    aget v6, v1, v5

    add-float/2addr v3, v6

    const/4 v6, 0x1

    .line 194
    aget v6, v1, v6

    const/4 v7, 0x4

    aget v8, v1, v7

    add-float/2addr v6, v8

    const/4 v8, 0x7

    aget v8, v1, v8

    add-float/2addr v6, v8

    const/4 v8, 0x2

    .line 195
    aget v8, v1, v8

    const/4 v9, 0x5

    aget v9, v1, v9

    add-float/2addr v8, v9

    const/16 v9, 0x8

    aget v10, v1, v9

    add-float/2addr v8, v10

    .line 196
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 198
    iget-object v6, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v6, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move v6, v2

    .line 199
    :goto_80
    array-length v8, v1

    if-ge v6, v8, :cond_9a

    .line 200
    aget v8, v1, v6

    div-float/2addr v8, v3

    aput v8, v1, v6

    .line 201
    invoke-virtual {p0, v8}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixCoeffValid(F)Z

    move-result v8

    if-nez v8, :cond_97

    const-string p0, "ColorDisplayService"

    const-string p1, "Invalid DWB color matrix"

    .line 202
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v0

    return-void

    :cond_97
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 207
    :cond_9a
    iget-object v3, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v1, v4, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v1, v5, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_2a .. :try_end_aa} :catchall_d2

    const-string v0, "ColorDisplayService"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayWhiteBalanceTemperatureMatrix: cct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " matrix = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/16 p1, 0x10

    .line 213
    invoke-static {p0, p1}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_d2
    move-exception p0

    .line 210
    :try_start_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw p0
.end method

.method public setUp(Landroid/content/Context;Z)V
    .registers 7

    const/4 p2, 0x0

    .line 67
    iput-boolean p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->getDisplayColorSpaceFromSurfaceControl()Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v0, "ColorDisplayService"

    const-string v1, "Failed to get display color space from SurfaceControl, trying res"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->getDisplayColorSpaceFromResources(Landroid/content/res/Resources;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    if-nez v0, :cond_22

    const-string p0, "ColorDisplayService"

    const-string p1, "Failed to get display color space from resources"

    .line 76
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_22
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixValid([F)Z

    move-result v1

    if-nez v1, :cond_34

    const-string p0, "ColorDisplayService"

    const-string p1, "Invalid display color space RGB-to-XYZ transform"

    .line 83
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_34
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixValid([F)Z

    move-result v1

    if-nez v1, :cond_46

    const-string p0, "ColorDisplayService"

    const-string p1, "Invalid display color space XYZ-to-RGB transform"

    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    const v1, 0x10700b2

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 94
    :goto_50
    array-length v3, v1

    if-ge p2, v3, :cond_5e

    .line 95
    aget-object v3, v1, p2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_50

    :cond_5e
    const p2, 0x10e007b

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-gtz p2, :cond_6f

    const-string p0, "ColorDisplayService"

    const-string p1, "Display white balance minimum temperature must be greater than 0"

    .line 101
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6f
    const v1, 0x10e007a

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ge v1, p2, :cond_80

    const-string p0, "ColorDisplayService"

    const-string p1, "Display white balance max temp must be greater or equal to min"

    .line 109
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    const v3, 0x10e0078

    .line 114
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 117
    iget-object v3, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 118
    :try_start_8a
    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 119
    iput-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 120
    iput p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    .line 121
    iput v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 122
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    const/4 p2, 0x1

    .line 123
    iput-boolean p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 124
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_8a .. :try_end_98} :catchall_9c

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setMatrix(I)V

    return-void

    :catchall_9c
    move-exception p0

    .line 124
    :try_start_9d
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p0
.end method
