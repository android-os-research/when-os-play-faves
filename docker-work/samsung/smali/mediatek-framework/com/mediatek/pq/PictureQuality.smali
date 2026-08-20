.class public Lcom/mediatek/pq/PictureQuality;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/pq/PictureQuality$GammaLut;,
        Lcom/mediatek/pq/PictureQuality$Range;,
        Lcom/mediatek/pq/PictureQuality$Hist;
    }
.end annotation


# static fields
.field private static final blacklist BLUELIGHT_DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "persist.vendor.sys.pq.bluelight.default"

.field public static final blacklist CAPABILITY_MASK_COLOR:I = 0x1

.field public static final blacklist CAPABILITY_MASK_DC:I = 0x8

.field public static final blacklist CAPABILITY_MASK_GAMMA:I = 0x4

.field public static final blacklist CAPABILITY_MASK_OD:I = 0x10

.field public static final blacklist CAPABILITY_MASK_SHARPNESS:I = 0x2

.field private static final blacklist CHAMELEON_DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "persist.vendor.sys.pq.chameleon.default"

.field public static final blacklist DCHIST_INFO_NUM:I = 0x14

.field private static final blacklist GAMMA_INDEX_PROPERTY_NAME:Ljava/lang/String; = "persist.vendor.sys.pq.gamma.index"

.field public static final blacklist GAMMA_LUT_SIZE:I = 0x200

.field public static final blacklist MODE_CAMERA:I = 0x1

.field public static final blacklist MODE_MASK:I = 0x1

.field public static final blacklist MODE_NORMAL:I = 0x0

.field public static final blacklist MODE_VIDEO:I = 0x2

.field public static final blacklist PIC_MODE_STANDARD:I = 0x0

.field public static final blacklist PIC_MODE_USER_DEF:I = 0x2

.field public static final blacklist PIC_MODE_VIVID:I = 0x1

.field static blacklist sLibStatus:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 62
    const-string v0, "JNI_PQ"

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    .line 138
    :try_start_5
    const-string v1, "loadLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "jni_pq"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_f} :catch_10

    .line 143
    goto :goto_19

    .line 140
    :catch_10
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "UnsatisfiedLinkError"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    .line 144
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_19
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableBlueLight(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .line 468
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableBlueLight(ZI)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableBlueLight(ZI)Z
    .registers 3
    .param p0, "enable"    # Z
    .param p1, "step"    # I

    .line 464
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeEnableBlueLight(ZI)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableChameleon(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .line 521
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableChameleon(ZI)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableChameleon(ZI)Z
    .registers 3
    .param p0, "enable"    # Z
    .param p1, "step"    # I

    .line 517
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeEnableChameleon(ZI)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableColor(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 212
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableColor(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableColorEffect(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 240
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableColorEffect(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableContentColor(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 217
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableContentColor(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDynamicContrast(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 229
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableDynamicContrast(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDynamicSharpness(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 234
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableDynamicSharpness(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableGamma(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 246
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableGamma(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableISOAdaptiveSharpness(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 255
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableISOAdaptiveSharpness(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableMdpCCORR(I)Z
    .registers 2
    .param p0, "enable"    # I

    .line 618
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableMdpCCORR(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableMdpDRE(I)Z
    .registers 2
    .param p0, "enable"    # I

    .line 611
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableMdpDRE(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableOD(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 251
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableOD(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePQ(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 206
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnablePQ(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSharpness(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 223
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableSharpness(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUltraResolution(I)Z
    .registers 2
    .param p0, "isEnable"    # I

    .line 259
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableUltraResolution(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableVideoHDR(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .line 597
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableVideoHDR(Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getAALFunction()I
    .registers 1

    .line 625
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetAALFunction()I

    move-result v0

    return v0
.end method

.method public static blacklist getBlueLightStrength()I
    .registers 1

    .line 457
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetBlueLightStrength()I

    move-result v0

    return v0
.end method

.method public static blacklist getBlueLightStrengthRange()Lcom/mediatek/pq/PictureQuality$Range;
    .registers 4

    .line 433
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 434
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    const-string v1, "persist.vendor.sys.pq.bluelight.default"

    const/16 v2, 0x80

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {v0, v2, v3, v1}, Lcom/mediatek/pq/PictureQuality$Range;->set(III)V

    .line 435
    return-object v0
.end method

.method public static blacklist getCapability()I
    .registers 1

    .line 156
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetCapability()I

    move-result v0

    return v0
.end method

.method public static blacklist getChameleonStrength()I
    .registers 1

    .line 510
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetChameleonStrength()I

    move-result v0

    return v0
.end method

.method public static blacklist getChameleonStrengthRange()Lcom/mediatek/pq/PictureQuality$Range;
    .registers 4

    .line 486
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 487
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    const-string v1, "persist.vendor.sys.pq.chameleon.default"

    const/16 v2, 0x80

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {v0, v2, v3, v1}, Lcom/mediatek/pq/PictureQuality$Range;->set(III)V

    .line 488
    return-object v0
.end method

.method public static blacklist getColorEffectIndex()I
    .registers 1

    .line 381
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetColorEffectIndex()I

    move-result v0

    return v0
.end method

.method public static blacklist getColorEffectIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .registers 1

    .line 375
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 376
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetColorEffectIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 377
    return-object v0
.end method

.method public static blacklist getContrastIndex()I
    .registers 1

    .line 294
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndex()I

    move-result v0

    return v0
.end method

.method public static blacklist getContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .registers 1

    .line 288
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 289
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 290
    return-object v0
.end method

.method public static blacklist getDefaultOffTransitionStep()I
    .registers 1

    .line 537
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDefaultOffTransitionStep()I

    move-result v0

    return v0
.end method

.method public static blacklist getDefaultOnTransitionStep()I
    .registers 1

    .line 546
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDefaultOnTransitionStep()I

    move-result v0

    return v0
.end method

.method public static blacklist getDynamicContrastHistogram([BII)Lcom/mediatek/pq/PictureQuality$Hist;
    .registers 4
    .param p0, "srcBuffer"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I

    .line 198
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Hist;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Hist;-><init>()V

    .line 199
    .local v0, "outHist":Lcom/mediatek/pq/PictureQuality$Hist;
    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V

    .line 200
    return-object v0
.end method

.method public static blacklist getDynamicContrastIndex()I
    .registers 1

    .line 366
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndex()I

    move-result v0

    return v0
.end method

.method public static blacklist getDynamicContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .registers 1

    .line 360
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 361
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 362
    return-object v0
.end method

.method public static blacklist getESSLEDMinStep()I
    .registers 1

    .line 673
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetESSLEDMinStep()I

    move-result v0

    return v0
.end method

.method public static blacklist getESSOLEDMinStep()I
    .registers 1

    .line 689
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetESSOLEDMinStep()I

    move-result v0

    return v0
.end method

.method public static blacklist getExternalPanelNits()I
    .registers 1

    .line 706
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetExternalPanelNits()I

    move-result v0

    return v0
.end method

.method public static blacklist getGammaIndex()I
    .registers 2

    .line 421
    nop

    .line 422
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    const-string v1, "persist.vendor.sys.pq.gamma.index"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 421
    return v0
.end method

.method public static blacklist getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .registers 1

    .line 397
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 398
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 399
    return-object v0
.end method

.method public static blacklist getGlobalPQStrength()I
    .registers 1

    .line 582
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetGlobalPQStrength()I

    move-result v0

    return v0
.end method

.method public static blacklist getGlobalPQStrengthRange()I
    .registers 1

    .line 590
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetGlobalPQStrengthRange()I

    move-result v0

    return v0
.end method

.method public static blacklist getGlobalPQSwitch()I
    .registers 1

    .line 564
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetGlobalPQSwitch()I

    move-result v0

    return v0
.end method

.method public static blacklist getLibStatus()Z
    .registers 1

    .line 147
    sget-boolean v0, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    return v0
.end method

.method public static blacklist getPicBrightnessIndex()I
    .registers 1

    .line 332
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndex()I

    move-result v0

    return v0
.end method

.method public static blacklist getPicBrightnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .registers 1

    .line 326
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 327
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 328
    return-object v0
.end method

.method public static blacklist getPictureMode()I
    .registers 1

    .line 265
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPictureMode()I

    move-result v0

    return v0
.end method

.method public static blacklist getRGBGain()[D
    .registers 10

    .line 724
    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 725
    .local v1, "arr":[D
    new-array v0, v0, [I

    .line 727
    .local v0, "arr_int":[I
    const/4 v2, 0x0

    const/16 v3, 0x400

    aput v3, v0, v2

    .line 728
    const/4 v4, 0x1

    aput v3, v0, v4

    .line 729
    const/4 v5, 0x2

    aput v3, v0, v5

    .line 731
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetRGBGain()[I

    move-result-object v0

    .line 732
    if-nez v0, :cond_1f

    .line 733
    const-string v2, "PQ"

    const-string v3, "getRGBGain() return null arr"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v2, 0x0

    return-object v2

    .line 736
    :cond_1f
    aget v3, v0, v2

    int-to-double v6, v3

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    aput-wide v6, v1, v2

    .line 737
    aget v2, v0, v4

    int-to-double v2, v2

    div-double/2addr v2, v8

    aput-wide v2, v1, v4

    .line 738
    aget v2, v0, v5

    int-to-double v2, v2

    div-double/2addr v2, v8

    aput-wide v2, v1, v5

    .line 740
    return-object v1
.end method

.method public static blacklist getSaturationIndex()I
    .registers 1

    .line 313
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndex()I

    move-result v0

    return v0
.end method

.method public static blacklist getSaturationIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .registers 1

    .line 307
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 308
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 309
    return-object v0
.end method

.method public static blacklist getSharpnessIndex()I
    .registers 1

    .line 351
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndex()I

    move-result v0

    return v0
.end method

.method public static blacklist getSharpnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .registers 1

    .line 345
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 346
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 347
    return-object v0
.end method

.method public static blacklist isBlueLightEnabled()Z
    .registers 1

    .line 475
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeIsBlueLightEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isChameleonEnabled()Z
    .registers 1

    .line 528
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeIsChameleonEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isVideoHDREnabled()Z
    .registers 1

    .line 604
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeIsVideoHDREnabled()Z

    move-result v0

    return v0
.end method

.method private static native blacklist nativeEnableBlueLight(ZI)Z
.end method

.method private static native blacklist nativeEnableChameleon(ZI)Z
.end method

.method private static native blacklist nativeEnableColor(I)Z
.end method

.method private static native blacklist nativeEnableColorEffect(I)Z
.end method

.method private static native blacklist nativeEnableContentColor(I)Z
.end method

.method private static native blacklist nativeEnableDynamicContrast(I)Z
.end method

.method private static native blacklist nativeEnableDynamicSharpness(I)Z
.end method

.method private static native blacklist nativeEnableGamma(I)Z
.end method

.method private static native blacklist nativeEnableISOAdaptiveSharpness(I)Z
.end method

.method private static native blacklist nativeEnableMdpCCORR(I)Z
.end method

.method private static native blacklist nativeEnableMdpDRE(I)Z
.end method

.method private static native blacklist nativeEnableOD(I)Z
.end method

.method private static native blacklist nativeEnablePQ(I)Z
.end method

.method private static native blacklist nativeEnableSharpness(I)Z
.end method

.method private static native blacklist nativeEnableUltraResolution(I)Z
.end method

.method private static native blacklist nativeEnableVideoHDR(Z)Z
.end method

.method private static native blacklist nativeGetAALFunction()I
.end method

.method private static native blacklist nativeGetBlueLightStrength()I
.end method

.method private static native blacklist nativeGetCapability()I
.end method

.method private static native blacklist nativeGetChameleonStrength()I
.end method

.method private static native blacklist nativeGetColorEffectIndex()I
.end method

.method private static native blacklist nativeGetColorEffectIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native blacklist nativeGetContrastIndex()I
.end method

.method private static native blacklist nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native blacklist nativeGetDefaultOffTransitionStep()I
.end method

.method private static native blacklist nativeGetDefaultOnTransitionStep()I
.end method

.method private static native blacklist nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V
.end method

.method private static native blacklist nativeGetDynamicContrastIndex()I
.end method

.method private static native blacklist nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native blacklist nativeGetESSLEDMinStep()I
.end method

.method private static native blacklist nativeGetESSOLEDMinStep()I
.end method

.method private static native blacklist nativeGetExternalPanelNits()I
.end method

.method private static native blacklist nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native blacklist nativeGetGlobalPQStrength()I
.end method

.method private static native blacklist nativeGetGlobalPQStrengthRange()I
.end method

.method private static native blacklist nativeGetGlobalPQSwitch()I
.end method

.method private static native blacklist nativeGetPicBrightnessIndex()I
.end method

.method private static native blacklist nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native blacklist nativeGetPictureMode()I
.end method

.method private static native blacklist nativeGetRGBGain()[I
.end method

.method private static native blacklist nativeGetSaturationIndex()I
.end method

.method private static native blacklist nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native blacklist nativeGetSharpnessIndex()I
.end method

.method private static native blacklist nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native blacklist nativeIsBlueLightEnabled()Z
.end method

.method private static native blacklist nativeIsChameleonEnabled()Z
.end method

.method private static native blacklist nativeIsVideoHDREnabled()Z
.end method

.method private static native blacklist nativeSetAALFunction(I)V
.end method

.method private static native blacklist nativeSetAALFunctionProperty(I)V
.end method

.method private static native blacklist nativeSetBlueLightStrength(II)Z
.end method

.method private static native blacklist nativeSetCameraPreviewMode(I)V
.end method

.method private static native blacklist nativeSetCcorrMatrix([II)Z
.end method

.method private static native blacklist nativeSetChameleonStrength(II)Z
.end method

.method private static native blacklist nativeSetColorEffectIndex(I)V
.end method

.method private static native blacklist nativeSetColorRegion(IIIII)Z
.end method

.method private static native blacklist nativeSetContrastIndex(II)V
.end method

.method private static native blacklist nativeSetDynamicContrastIndex(I)V
.end method

.method private static native blacklist nativeSetESSLEDMinStep(I)Z
.end method

.method private static native blacklist nativeSetESSOLEDMinStep(I)Z
.end method

.method private static native blacklist nativeSetExternalPanelNits(I)Z
.end method

.method private static native blacklist nativeSetGalleryNormalMode(I)V
.end method

.method private static native blacklist nativeSetGammaIndex(II)V
.end method

.method private static native blacklist nativeSetGlobalPQStrength(I)Z
.end method

.method private static native blacklist nativeSetGlobalPQSwitch(I)Z
.end method

.method private static native blacklist nativeSetLowBLReadabilityLevel(I)V
.end method

.method private static native blacklist nativeSetPicBrightnessIndex(II)V
.end method

.method private static native blacklist nativeSetPictureMode(II)Z
.end method

.method private static native blacklist nativeSetRGBGain(IIII)Z
.end method

.method private static native blacklist nativeSetReadabilityLevel(I)V
.end method

.method private static native blacklist nativeSetSaturationIndex(II)V
.end method

.method private static native blacklist nativeSetSharpnessIndex(I)V
.end method

.method private static native blacklist nativeSetSmartBacklightStrength(I)V
.end method

.method private static native blacklist nativeSetVideoPlaybackMode(I)V
.end method

.method public static blacklist setAALFunction(I)V
    .registers 1
    .param p0, "func"    # I

    .line 632
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetAALFunction(I)V

    .line 633
    return-void
.end method

.method public static blacklist setAALFunctionProperty(I)V
    .registers 1
    .param p0, "func"    # I

    .line 636
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetAALFunctionProperty(I)V

    .line 637
    return-void
.end method

.method public static blacklist setBlueLightStrength(I)Z
    .registers 2
    .param p0, "strength"    # I

    .line 448
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetBlueLightStrength(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist setBlueLightStrength(II)Z
    .registers 3
    .param p0, "strength"    # I
    .param p1, "step"    # I

    .line 444
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetBlueLightStrength(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist setCcorrMatrix([DI)Z
    .registers 8
    .param p0, "matrix"    # [D
    .param p1, "step"    # I

    .line 747
    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 749
    .local v1, "resultMatrix":[I
    if-nez p0, :cond_f

    .line 750
    const-string v0, "PQ"

    const-string v2, "setCcorrMatrix() matrix is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v0, 0x0

    return v0

    .line 754
    :cond_f
    if-eqz p0, :cond_2f

    array-length v2, p0

    if-ne v2, v0, :cond_15

    goto :goto_2f

    .line 755
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected length: 9 (3x3 matrix), actual length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    array-length v2, v1

    if-ge v0, v2, :cond_3e

    .line 760
    aget-wide v2, p0, v0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 763
    .end local v0    # "i":I
    :cond_3e
    invoke-static {v1, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetCcorrMatrix([II)Z

    move-result v0

    return v0
.end method

.method public static blacklist setChameleonStrength(I)Z
    .registers 2
    .param p0, "strength"    # I

    .line 501
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetChameleonStrength(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist setChameleonStrength(II)Z
    .registers 3
    .param p0, "strength"    # I
    .param p1, "step"    # I

    .line 497
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetChameleonStrength(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist setColorEffectIndex(I)V
    .registers 1
    .param p0, "index"    # I

    .line 385
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorEffectIndex(I)V

    .line 386
    return-void
.end method

.method public static blacklist setColorRegion(IIIII)Z
    .registers 6
    .param p0, "isEnable"    # I
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I

    .line 283
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorRegion(IIIII)Z

    move-result v0

    return v0
.end method

.method public static blacklist setContrastIndex(I)V
    .registers 2
    .param p0, "index"    # I

    .line 302
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetContrastIndex(II)V

    .line 303
    return-void
.end method

.method public static blacklist setContrastIndex(II)V
    .registers 2
    .param p0, "index"    # I
    .param p1, "step"    # I

    .line 298
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetContrastIndex(II)V

    .line 299
    return-void
.end method

.method public static blacklist setDynamicContrastIndex(I)V
    .registers 1
    .param p0, "index"    # I

    .line 370
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetDynamicContrastIndex(I)V

    .line 371
    return-void
.end method

.method public static blacklist setESSLEDMinStep(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 665
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetESSLEDMinStep(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist setESSOLEDMinStep(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 681
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetESSOLEDMinStep(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist setExternalPanelNits(I)Z
    .registers 2
    .param p0, "externalPanelNits"    # I

    .line 698
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetExternalPanelNits(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist setGammaIndex(I)V
    .registers 2
    .param p0, "index"    # I

    .line 412
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGammaIndex(II)V

    .line 413
    return-void
.end method

.method public static blacklist setGammaIndex(II)V
    .registers 2
    .param p0, "index"    # I
    .param p1, "step"    # I

    .line 408
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetGammaIndex(II)V

    .line 409
    return-void
.end method

.method public static blacklist setGlobalPQStrength(I)Z
    .registers 2
    .param p0, "globalPQStrength"    # I

    .line 573
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGlobalPQStrength(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist setGlobalPQSwitch(I)Z
    .registers 2
    .param p0, "globalPQSwitch"    # I

    .line 555
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGlobalPQSwitch(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist setLowBLReadabilityLevel(I)V
    .registers 1
    .param p0, "value"    # I

    .line 657
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetLowBLReadabilityLevel(I)V

    .line 658
    return-void
.end method

.method public static blacklist setMode(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 181
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 183
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetCameraPreviewMode(I)V

    goto :goto_1d

    .line 185
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_16

    .line 187
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetVideoPlaybackMode(I)V

    goto :goto_1d

    .line 191
    :cond_16
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGalleryNormalMode(I)V

    .line 194
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist setMode(II)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I
    .param p1, "step"    # I

    .line 162
    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    .line 164
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetCameraPreviewMode(I)V

    goto :goto_11

    .line 166
    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    .line 168
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetVideoPlaybackMode(I)V

    goto :goto_11

    .line 172
    :cond_e
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetGalleryNormalMode(I)V

    .line 175
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist setPicBrightnessIndex(I)V
    .registers 2
    .param p0, "index"    # I

    .line 340
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPicBrightnessIndex(II)V

    .line 341
    return-void
.end method

.method public static blacklist setPicBrightnessIndex(II)V
    .registers 2
    .param p0, "index"    # I
    .param p1, "step"    # I

    .line 336
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetPicBrightnessIndex(II)V

    .line 337
    return-void
.end method

.method public static blacklist setPictureMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .line 276
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPictureMode(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist setPictureMode(II)Z
    .registers 3
    .param p0, "mode"    # I
    .param p1, "step"    # I

    .line 271
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetPictureMode(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist setRGBGain(DDDI)Z
    .registers 12
    .param p0, "r_gain"    # D
    .param p2, "g_gain"    # D
    .param p4, "b_gain"    # D
    .param p6, "step"    # I

    .line 713
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    mul-double v2, p0, v0

    double-to-int v2, v2

    .line 714
    .local v2, "r_gain_normalize":I
    mul-double v3, p2, v0

    double-to-int v3, v3

    .line 715
    .local v3, "g_gain_normalize":I
    mul-double/2addr v0, p4

    double-to-int v0, v0

    .line 717
    .local v0, "b_gain_normalize":I
    invoke-static {v2, v3, v0, p6}, Lcom/mediatek/pq/PictureQuality;->nativeSetRGBGain(IIII)Z

    move-result v1

    return v1
.end method

.method public static blacklist setReadabilityLevel(I)V
    .registers 1
    .param p0, "value"    # I

    .line 650
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetReadabilityLevel(I)V

    .line 651
    return-void
.end method

.method public static blacklist setSaturationIndex(I)V
    .registers 2
    .param p0, "index"    # I

    .line 321
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSaturationIndex(II)V

    .line 322
    return-void
.end method

.method public static blacklist setSaturationIndex(II)V
    .registers 2
    .param p0, "index"    # I
    .param p1, "step"    # I

    .line 317
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetSaturationIndex(II)V

    .line 318
    return-void
.end method

.method public static blacklist setSharpnessIndex(I)V
    .registers 1
    .param p0, "index"    # I

    .line 355
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSharpnessIndex(I)V

    .line 356
    return-void
.end method

.method public static blacklist setSmartBacklightStrength(I)V
    .registers 1
    .param p0, "value"    # I

    .line 643
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSmartBacklightStrength(I)V

    .line 644
    return-void
.end method
