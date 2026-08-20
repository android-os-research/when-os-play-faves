.class public Lcom/android/server/display/DisplayDeviceConfig;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;,
        Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;,
        Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    }
.end annotation


# static fields
.field public static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x9c4

.field public static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x258

.field public static final BRIGHTNESS_DEFAULT:F = 0.5f

.field public static final CONFIG_FILE_FORMAT:Ljava/lang/String; = "display_%s.xml"

.field public static final DEBUG:Z = false

.field public static final DEFAULT_CONFIG_FILE:Ljava/lang/String; = "default.xml"

.field public static final DEFAULT_CONFIG_FILE_WITH_UIMODE_FORMAT:Ljava/lang/String; = "default_%s.xml"

.field public static final DISPLAY_CONFIG_DIR:Ljava/lang/String; = "displayconfig"

.field public static final ETC_DIR:Ljava/lang/String; = "etc"

.field public static final HDR_PERCENT_OF_SCREEN_REQUIRED_DEFAULT:F = 0.5f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final HIGH_BRIGHTNESS_MODE_UNSUPPORTED:F = NaNf

.field public static final INTERPOLATION_DEFAULT:I = 0x0

.field public static final INTERPOLATION_LINEAR:I = 0x1

.field public static final INVALID_BRIGHTNESS_IN_CONFIG:F = -2.0f

.field public static final NITS_INVALID:F = -1.0f

.field public static final NO_SUFFIX_FORMAT:Ljava/lang/String; = "%d"

.field public static final PORT_SUFFIX_FORMAT:Ljava/lang/String; = "port_%d"

.field public static final QUIRK_CAN_SET_BRIGHTNESS_VIA_HWC:Ljava/lang/String; = "canSetBrightnessViaHwc"

.field public static final STABLE_FLAG:J = 0x4000000000000000L

.field public static final STABLE_ID_SUFFIX_FORMAT:Ljava/lang/String; = "id_%d"

.field public static final TAG:Ljava/lang/String; = "DisplayDeviceConfig"

.field public static sScreenExtendedBrightnessRangeMaximumFloat:F

.field public static sScreenExtendedBrightnessRangeMaximumInt:I


# instance fields
.field public mAmbientHorizonLong:I

.field public mAmbientHorizonShort:I

.field public final mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

.field public mAmbientLuxBrighteningMinThreshold:F

.field public mAmbientLuxDarkeningMinThreshold:F

.field public mBacklight:[F

.field public mBacklightMaximum:F

.field public mBacklightMinimum:F

.field public mBacklightToBrightnessSpline:Landroid/util/Spline;

.field public mBacklightToNitsSpline:Landroid/util/Spline;

.field public mBrightness:[F

.field public mBrightnessDefault:F

.field public mBrightnessRampDecreaseMaxMillis:J

.field public mBrightnessRampFastDecrease:F

.field public mBrightnessRampFastIncrease:F

.field public mBrightnessRampIncreaseMaxMillis:J

.field public mBrightnessRampSlowDecrease:F

.field public mBrightnessRampSlowIncrease:F

.field public mBrightnessThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

.field public mBrightnessToBacklightSpline:Landroid/util/Spline;

.field public final mContext:Landroid/content/Context;

.field public mDensityMapping:Lcom/android/server/display/DensityMapping;

.field public mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field public mInterpolationType:I

.field public mIsHighBrightnessModeEnabled:Z

.field public mIsSimpleMappingStrategy:Z

.field public mLoadedFrom:Ljava/lang/String;

.field public mNits:[F

.field public mNitsToBacklightSpline:Landroid/util/Spline;

.field public final mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

.field public mQuirks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRawBacklight:[F

.field public mRawNits:[F

.field public final mRefreshRateLimitations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenBrighteningMinThreshold:F

.field public mScreenDarkeningMinThreshold:F

.field public mSdrToHdrRatioSpline:Landroid/util/Spline;

.field public mUseSurfaceControlBrightness:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 295
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0xff

    .line 294
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayDeviceConfig;->sScreenExtendedBrightnessRangeMaximumInt:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 297
    sput v0, Lcom/android/server/display/DisplayDeviceConfig;->sScreenExtendedBrightnessRangeMaximumFloat:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    .line 240
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 262
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 263
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 264
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 265
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 266
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 267
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 268
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    const-wide/16 v0, 0x0

    .line 269
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 270
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    const/16 v0, 0x9c4

    .line 271
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    const/16 v0, 0x258

    .line 272
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    .line 274
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    .line 275
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    .line 276
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    const/4 v1, 0x0

    .line 285
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 290
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    .line 302
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;JZ)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 4

    .line 319
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/DisplayDeviceConfig;->createWithoutDefaultValues(Landroid/content/Context;JZ)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    .line 322
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDeviceConfig;->copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-object p1
.end method

.method public static create(Landroid/content/Context;JZZ)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 5

    .line 329
    invoke-static {p0, p3}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    .line 331
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDeviceConfig;->copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    if-eqz p4, :cond_10

    .line 333
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->convertBacklightArrayForSurfaceControl()V

    :cond_10
    return-object p1
.end method

.method public static create(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    if-eqz p1, :cond_7

    .line 350
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromGlobalXml(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    goto :goto_b

    .line 352
    :cond_7
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static createWithoutDefaultValues(Landroid/content/Context;JZ)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 5

    .line 361
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 367
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    if-eqz p1, :cond_16

    return-object p1

    .line 376
    :cond_16
    invoke-static {p0, p3}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigFromGlobalXml(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    .line 707
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    .line 708
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromGlobalXml()V

    return-object v0
.end method

.method public static getConfigFromPmValues(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    .line 713
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    .line 714
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromDefaultValues()V

    return-object v0
.end method

.method public static getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 695
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v1, p4

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, p4

    const-string p2, "display_%s.xml"

    .line 696
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/String;

    const-string v1, "etc"

    aput-object v1, p3, p4

    const-string p4, "displayconfig"

    aput-object p4, p3, v0

    const/4 p4, 0x2

    aput-object p2, p3, p4

    .line 697
    invoke-static {p1, p3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 699
    new-instance p2, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {p2, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    .line 700
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayDeviceConfig;->initFromFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_36

    return-object p2

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 420
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;J)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 7

    const-string/jumbo v0, "id_%d"

    .line 432
    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    const-wide v0, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v0, p2

    const-string v2, "%d"

    .line 440
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_19

    return-object v0

    .line 447
    :cond_19
    invoke-static {p2, p3}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object p2

    .line 448
    invoke-virtual {p2}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p2

    int-to-long p2, p2

    const-string/jumbo v0, "port_%d"

    .line 449
    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;
    .registers 11

    const-string v0, "DisplayDeviceConfig"

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc"

    const-string v4, "displayconfig"

    const-string v5, "default.xml"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10e0070

    .line 388
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 389
    invoke-static {p0}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5d

    .line 391
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v8, 0x1

    aput-object v4, v6, v8

    const/4 v9, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v7

    const-string p0, "default_%s.xml"

    .line 393
    invoke-static {p0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v9

    .line 391
    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_5d
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_74

    return-object v1

    .line 406
    :cond_74
    :try_start_74
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7e} :catch_97
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_74 .. :try_end_7e} :catch_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_7e} :catch_97

    .line 407
    :try_start_7e
    invoke-static {v2}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    if-nez v1, :cond_89

    const-string v3, "Default DisplayDeviceConfig file is null"

    .line 409
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_8d

    .line 411
    :cond_89
    :try_start_89
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_97
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_89 .. :try_end_8c} :catch_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_8c} :catch_97

    goto :goto_ac

    :catchall_8d
    move-exception v3

    .line 406
    :try_start_8e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_96

    :catchall_92
    move-exception v2

    :try_start_93
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_96
    throw v3
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_97} :catch_97
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_93 .. :try_end_97} :catch_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_93 .. :try_end_97} :catch_97

    :catch_97
    move-exception v2

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ac
    return-object v1
.end method


# virtual methods
.method public final adjustBacklightArrayBoundary()V
    .registers 6

    .line 1024
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v0, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    const-string v2, " "

    const-string v3, "DisplayDeviceConfig"

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v0, v0, v1

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_41

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjust backlight min boundary : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    aput v4, v0, v1

    .line 1030
    :cond_41
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_89

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjust backlight max boundary : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    aput p0, v0, v1

    :cond_89
    return-void
.end method

.method public final constrainNitsAndBacklightArrays()V
    .registers 12

    .line 1045
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    if-gtz v2, :cond_88

    array-length v2, v0

    sub-int/2addr v2, v4

    aget v2, v0, v2

    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_88

    cmpl-float v2, v3, v5

    if-gtz v2, :cond_88

    .line 1055
    array-length v2, v0

    new-array v2, v2, [F

    .line 1056
    array-length v0, v0

    new-array v0, v0, [F

    move v3, v1

    .line 1060
    :goto_21
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v6, v5

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_34

    add-int/lit8 v6, v3, 0x1

    .line 1061
    aget v5, v5, v6

    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_32

    goto :goto_35

    :cond_32
    move v3, v6

    goto :goto_21

    :cond_34
    move v3, v1

    :goto_35
    move v6, v1

    move v7, v6

    move v5, v3

    .line 1069
    :goto_38
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v9, v8

    if-ge v5, v9, :cond_77

    if-nez v6, :cond_77

    sub-int v7, v5, v3

    .line 1073
    aget v6, v8, v5

    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v10, v6, v9

    if-gez v10, :cond_50

    array-length v8, v8

    sub-int/2addr v8, v4

    if-lt v5, v8, :cond_4e

    goto :goto_50

    :cond_4e
    move v8, v1

    goto :goto_51

    :cond_50
    :goto_50
    move v8, v4

    :goto_51
    if-nez v7, :cond_5e

    .line 1077
    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v6, v9}, Landroid/util/MathUtils;->max(FF)F

    move-result v6

    .line 1078
    invoke-virtual {p0, v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_6f

    :cond_5e
    if-eqz v8, :cond_6b

    .line 1080
    invoke-static {v6, v9}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    add-int/lit8 v9, v5, -0x1

    .line 1081
    invoke-virtual {p0, v9, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_6f

    .line 1084
    :cond_6b
    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v9, v9, v5

    .line 1086
    :goto_6f
    aput v6, v0, v7

    .line 1087
    aput v9, v2, v7

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_38

    :cond_77
    add-int/2addr v7, v4

    .line 1089
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 1090
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    return-void

    .line 1048
    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min or max values are invalid; raw min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; raw max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v3, v1

    sub-int/2addr v3, v4

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight min="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final convertBacklightArrayForSurfaceControl()V
    .registers 6

    const/4 v0, 0x1

    .line 1383
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mUseSurfaceControlBrightness:Z

    .line 1384
    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 1385
    :goto_8
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v1, v0

    if-ge v2, v1, :cond_17

    .line 1386
    aget v1, v0, v2

    sget v3, Lcom/android/server/display/DisplayDeviceConfig;->sScreenExtendedBrightnessRangeMaximumFloat:F

    div-float/2addr v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1390
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    goto :goto_36

    :cond_1b
    const/4 v1, 0x2

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 1392
    sget v2, Lcom/android/server/display/DisplayDeviceConfig;->sScreenExtendedBrightnessRangeMaximumFloat:F

    aput v2, v3, v0

    new-array v0, v1, [F

    .line 1394
    fill-array-data v0, :array_38

    .line 1395
    invoke-static {v3, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 1397
    invoke-static {v0, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    :goto_36
    return-void

    nop

    :array_38
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final convertInterpolationType(Ljava/lang/String;)I
    .registers 4

    .line 1358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    const-string/jumbo p0, "linear"

    .line 1362
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    .line 1366
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Interpolation Type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayDeviceConfig"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1336
    :cond_4
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Thermal Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayDeviceConfig"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_26
    const/4 p0, 0x6

    return p0

    :pswitch_28
    const/4 p0, 0x5

    return p0

    :pswitch_2a
    const/4 p0, 0x4

    return p0

    :pswitch_2c
    const/4 p0, 0x3

    return p0

    :pswitch_2e
    const/4 p0, 0x2

    return p0

    :pswitch_30
    const/4 p0, 0x1

    :pswitch_31
    return p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_26
    .end packed-switch
.end method

.method public final copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    if-nez v0, :cond_a

    .line 790
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    :cond_a
    return-void
.end method

.method public final createBacklightConversionSplines()V
    .registers 9

    .line 1105
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    const/4 v0, 0x0

    move v1, v0

    .line 1106
    :goto_9
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_26

    .line 1107
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    aget v5, v3, v0

    array-length v6, v3

    sub-int/2addr v6, v4

    aget v4, v3, v6

    iget v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    sget v7, Lcom/android/server/display/DisplayDeviceConfig;->sScreenExtendedBrightnessRangeMaximumFloat:F

    aget v3, v3, v1

    invoke-static {v5, v4, v6, v7, v3}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1113
    :cond_26
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_31

    .line 1114
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_37

    .line 1115
    :cond_31
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_37
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 1116
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_46

    .line 1117
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_4e

    .line 1118
    :cond_46
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_4e
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 1119
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_5d

    .line 1120
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_65

    .line 1121
    :cond_5d
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_65
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 1122
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_74

    .line 1123
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_7c

    .line 1124
    :cond_74
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_7c
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    return-void
.end method

.method public getAmbientHorizonLong()I
    .registers 1

    .line 581
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    return p0
.end method

.method public getAmbientHorizonShort()I
    .registers 1

    .line 585
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    return p0
.end method

.method public getAmbientLightSensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    .registers 1

    .line 605
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    return-object p0
.end method

.method public getAmbientLuxBrighteningMinThreshold()F
    .registers 1

    .line 597
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    return p0
.end method

.method public getAmbientLuxDarkeningMinThreshold()F
    .registers 1

    .line 601
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    return p0
.end method

.method public getBacklight()[F
    .registers 1

    .line 468
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    return-object p0
.end method

.method public getBacklightFromBrightness(F)F
    .registers 2

    .line 479
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getBrightness()[F
    .registers 1

    .line 544
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    return-object p0
.end method

.method public getBrightnessDefault()F
    .registers 1

    .line 553
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return p0
.end method

.method public getBrightnessRampDecreaseMaxMillis()J
    .registers 3

    .line 573
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampFastDecrease()F
    .registers 1

    .line 557
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    return p0
.end method

.method public getBrightnessRampFastIncrease()F
    .registers 1

    .line 561
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    return p0
.end method

.method public getBrightnessRampIncreaseMaxMillis()J
    .registers 3

    .line 577
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampSlowDecrease()F
    .registers 1

    .line 565
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return p0
.end method

.method public getBrightnessRampSlowIncrease()F
    .registers 1

    .line 569
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    return p0
.end method

.method public getBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;
    .registers 1

    .line 646
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->create(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    move-result-object p0

    return-object p0
.end method

.method public getDensityMapping()Lcom/android/server/display/DensityMapping;
    .registers 1

    .line 639
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-object p0
.end method

.method public getHdrBrightnessFromSdr(F)F
    .registers 4

    .line 504
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_7

    return v1

    .line 508
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result p1

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result p1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_14

    return v1

    .line 514
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    mul-float/2addr p1, v0

    .line 516
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    if-nez v0, :cond_20

    return v1

    .line 520
    :cond_20
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 521
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 522
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .registers 2

    .line 625
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    if-nez v0, :cond_9

    goto :goto_14

    .line 629
    :cond_9
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    .line 630
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->copyTo(Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;)V

    return-object v0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNits()[F
    .registers 1

    .line 459
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    return-object p0
.end method

.method public getNitsFromBacklight(F)F
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    if-nez v0, :cond_13

    .line 489
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    if-nez p0, :cond_10

    const-string p0, "DisplayDeviceConfig"

    const-string/jumbo p1, "requesting nits when no mapping exists."

    .line 490
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 494
    :cond_13
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 495
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getProximitySensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    .registers 1

    .line 609
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    return-object p0
.end method

.method public getRefreshRateLimitations()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    return-object p0
.end method

.method public getScreenBrighteningMinThreshold()F
    .registers 1

    .line 589
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    return p0
.end method

.method public getScreenDarkeningMinThreshold()F
    .registers 1

    .line 593
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    return p0
.end method

.method public hasQuirk(Ljava/lang/String;)Z
    .registers 2

    .line 618
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final initFromDefaultValues()V
    .registers 3

    const-string v0, "Static values"

    .line 769
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 v0, 0x0

    .line 770
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 771
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 772
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 773
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 774
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 775
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 776
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    const-wide/16 v0, 0x0

    .line 777
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 778
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 779
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    .line 780
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    .line 781
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    return-void
.end method

.method public final initFromFile(Ljava/io/File;)Z
    .registers 6

    .line 719
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 724
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v2, "DisplayDeviceConfig"

    if-nez v0, :cond_2a

    .line 725
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display configuration is not a file: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 729
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_72
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2a .. :try_end_34} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_34} :catch_72

    .line 730
    :try_start_34
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 732
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 733
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 735
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 736
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessThrottlingMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 737
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 738
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 739
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 740
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 741
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadProxSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 742
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 743
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    goto :goto_64

    :cond_5f
    const-string v1, "DisplayDeviceConfig file is null"

    .line 745
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_34 .. :try_end_64} :catchall_68

    .line 747
    :goto_64
    :try_start_64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_72
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_64 .. :try_end_67} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_67} :catch_72

    goto :goto_87

    :catchall_68
    move-exception v1

    .line 729
    :try_start_69
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception v0

    :try_start_6e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_71
    throw v1
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_72} :catch_72
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_6e .. :try_end_72} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_72} :catch_72

    :catch_72
    move-exception v0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    :goto_87
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public final initFromGlobalXml()V
    .registers 2

    .line 757
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 758
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 759
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 760
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 761
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    .line 762
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    const-string v0, "<config.xml>"

    .line 763
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 764
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeDataFromConfigXml()V

    return-void
.end method

.method public final loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3

    .line 1371
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonLong()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1373
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 1375
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonShort()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 1377
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    :cond_18
    return-void
.end method

.method public final loadAmbientLightSensorFromConfigXml()V
    .registers 3

    .line 1234
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 1235
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x104033c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    return-void
.end method

.method public final loadAmbientLightSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 1240
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getLightSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 1242
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    .line 1243
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 1244
    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 1246
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    .line 1247
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    goto :goto_38

    .line 1250
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    :cond_38
    :goto_38
    return-void
.end method

.method public final loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 1275
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    .line 1276
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object p1

    if-eqz v0, :cond_2a

    .line 1280
    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v1

    .line 1282
    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v0

    .line 1284
    invoke-virtual {v1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v1

    .line 1285
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v1, :cond_22

    .line 1288
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    :cond_22
    if-eqz v0, :cond_2a

    .line 1291
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    :cond_2a
    if-eqz p1, :cond_4c

    .line 1297
    invoke-virtual {p1}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v0

    .line 1299
    invoke-virtual {p1}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object p1

    .line 1301
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1302
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz v0, :cond_44

    .line 1305
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    :cond_44
    if-eqz p1, :cond_4c

    .line 1308
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    :cond_4c
    return-void
.end method

.method public final loadBrightnessConstraintsFromConfigXml()V
    .registers 5

    .line 845
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 847
    sget v1, Lcom/android/server/display/DisplayDeviceConfig;->sScreenExtendedBrightnessRangeMaximumFloat:F

    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1a

    goto :goto_1f

    .line 859
    :cond_1a
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 860
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    goto :goto_36

    .line 851
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 852
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 851
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 854
    sget v0, Lcom/android/server/display/DisplayDeviceConfig;->sScreenExtendedBrightnessRangeMaximumFloat:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    :goto_36
    return-void
.end method

.method public final loadBrightnessDefaultFromConfigXml()V
    .registers 3

    .line 832
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_27

    .line 835
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 836
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 835
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_29

    .line 839
    :cond_27
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    :goto_29
    return-void
.end method

.method public final loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    if-eqz p1, :cond_12

    .line 820
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessDefault()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 822
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_12

    .line 824
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    :cond_12
    :goto_12
    return-void
.end method

.method public final loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 10

    .line 865
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;

    move-result-object p1

    if-nez p1, :cond_a

    .line 868
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    return-void

    .line 873
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v0

    .line 874
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 876
    new-array v2, v1, [F

    .line 877
    new-array v1, v1, [F

    .line 879
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getInterpolation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->convertInterpolationType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    const/4 p1, 0x0

    .line 881
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/Point;

    .line 882
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v2, p1

    .line 883
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, p1

    if-lez p1, :cond_9b

    .line 885
    aget v4, v2, p1

    add-int/lit8 v5, p1, -0x1

    aget v6, v2, v5

    cmpg-float v4, v4, v6

    const-string v6, " < "

    const-string v7, "DisplayDeviceConfig"

    if-gez v4, :cond_75

    .line 886
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 891
    :cond_75
    aget v4, v1, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9b

    .line 892
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9b
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    .line 900
    :cond_9e
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 901
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 902
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void
.end method

.method public final loadBrightnessMapFromConfigXml()V
    .registers 8

    .line 976
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070115

    .line 977
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    const v2, 0x1070114

    .line 979
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 981
    array-length v2, v0

    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    .line 983
    :goto_1d
    array-length v6, v0

    if-ge v5, v6, :cond_2b

    .line 984
    aget v6, v0, v5

    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_2b
    if-eqz v2, :cond_61

    .line 990
    array-length v2, v1

    if-nez v2, :cond_31

    goto :goto_61

    .line 996
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backlight min="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " backlight max="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DisplayDeviceConfig"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 1001
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->adjustBacklightArrayBoundary()V

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void

    .line 991
    :cond_61
    :goto_61
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    return-void
.end method

.method public final loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 6

    .line 1185
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1186
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;

    move-result-object v1

    .line 1187
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;

    move-result-object v2

    .line 1188
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v0, :cond_31

    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    if-eqz v3, :cond_31

    .line 1192
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 1193
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 1194
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 1195
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    goto :goto_43

    :cond_31
    if-nez v0, :cond_39

    if-nez v1, :cond_39

    if-nez v2, :cond_39

    if-eqz v3, :cond_40

    :cond_39
    const-string v0, "DisplayDeviceConfig"

    const-string v1, "Per display brightness ramp values ignored because not all values are present in display device config"

    .line 1199
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 1205
    :goto_43
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1207
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 1209
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 1211
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    :cond_5d
    return-void
.end method

.method public final loadBrightnessRampsFromConfigXml()V
    .registers 3

    .line 1220
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_FAST_RAMP_RATE:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1221
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1220
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    goto :goto_19

    :cond_16
    const v0, 0x40fafaf8

    .line 1223
    :goto_19
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 1225
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1226
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1225
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 1229
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 1230
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return-void
.end method

.method public final loadBrightnessThrottlingMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 7

    .line 940
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;

    move-result-object p1

    const-string v0, "DisplayDeviceConfig"

    if-nez p1, :cond_f

    const-string/jumbo p0, "no thermal throttling config found"

    .line 942
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 946
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getBrightnessThrottlingMap()Lcom/android/server/display/config/BrightnessThrottlingMap;

    move-result-object p1

    if-nez p1, :cond_1c

    const-string/jumbo p0, "no brightness throttling map found"

    .line 948
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 952
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getBrightnessThrottlingPoint()Ljava/util/List;

    move-result-object p1

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    .line 955
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 958
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 959
    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v3

    .line 960
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v4

    if-nez v4, :cond_46

    const/4 v1, 0x1

    goto :goto_5b

    .line 965
    :cond_46
    new-instance v4, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    .line 966
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getBrightness()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    invoke-direct {v4, v3, v2}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 965
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_5b
    :goto_5b
    if-nez v1, :cond_63

    .line 970
    invoke-static {v0}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    :cond_63
    return-void
.end method

.method public final loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 8

    .line 795
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 799
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/DensityMapping;->getDensity()Ljava/util/List;

    move-result-object p1

    .line 802
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/display/DensityMapping$Entry;

    const/4 v1, 0x0

    .line 803
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 804
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/Density;

    .line 805
    new-instance v3, Lcom/android/server/display/DensityMapping$Entry;

    .line 806
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 807
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 808
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getDensity()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 810
    :cond_44
    invoke-static {v0}, Lcom/android/server/display/DensityMapping;->createByOwning([Lcom/android/server/display/DensityMapping$Entry;)Lcom/android/server/display/DensityMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-void
.end method

.method public final loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 8

    .line 1135
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object p1

    if-eqz p1, :cond_109

    .line 1137
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 1138
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 1139
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumLux_all()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    .line 1140
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 1141
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v1, v0, v1

    if-gez v1, :cond_e4

    .line 1146
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 1147
    invoke-virtual {v2, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 1148
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTiming_all()Lcom/android/server/display/config/HbmTiming;

    move-result-object v0

    .line 1149
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HbmTiming;->getTimeWindowSecs_all()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 1150
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HbmTiming;->getTimeMaxSecs_all()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 1151
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HbmTiming;->getTimeMinSecs_all()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 1152
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getThermalStatusLimit_all()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    .line 1153
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getAllowInLowPowerMode_all()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 1154
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 1156
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    .line 1157
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    .line 1158
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1, v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(IFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_97
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_d9

    .line 1163
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 1164
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_b6

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_dd

    .line 1166
    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minimum HDR percent of screen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 1167
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DisplayDeviceConfig"

    .line 1166
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    goto :goto_dd

    .line 1171
    :cond_d9
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 1174
    :cond_dd
    :goto_dd
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    goto :goto_10c

    .line 1142
    :cond_e4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HBM transition point invalid. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " is not less than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1177
    :cond_109
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeDataFromConfigXml()V

    :goto_10c
    return-void
.end method

.method public final loadHighBrightnessModeDataFromConfigXml()V
    .registers 14

    .line 1405
    sget v0, Lcom/android/server/display/DisplayDeviceConfig;->sScreenExtendedBrightnessRangeMaximumInt:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    if-eqz v0, :cond_2f

    .line 1407
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v2, v0

    .line 1410
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>(FFJJJIZF)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    :cond_2f
    return-void
.end method

.method public final loadProxSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 1260
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getProxSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 1262
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 1263
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    .line 1264
    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 1266
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    .line 1267
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    goto :goto_38

    .line 1270
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    :cond_38
    :goto_38
    return-void
.end method

.method public final loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3

    .line 1128
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getQuirks()Lcom/android/server/display/config/DisplayQuirks;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayQuirks;->getQuirk()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    :cond_11
    return-void
.end method

.method public final loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;
    .registers 9

    .line 906
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 912
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object p0

    .line 913
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_13

    return-object p1

    .line 918
    :cond_13
    new-array v1, v0, [F

    .line 919
    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 922
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/SdrHdrRatioPoint;

    .line 923
    invoke-virtual {v3}, Lcom/android/server/display/config/SdrHdrRatioPoint;->getSdrNits()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v1, v2

    if-lez v2, :cond_60

    add-int/lit8 v5, v2, -0x1

    .line 925
    aget v6, v1, v5

    cmpg-float v4, v4, v6

    if-gez v4, :cond_60

    .line 926
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sdrHdrRatioMap must be non-decreasing, ignoring rest  of configuration. nits: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayDeviceConfig"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 932
    :cond_60
    invoke-virtual {v3}, Lcom/android/server/display/config/SdrHdrRatioPoint;->getHdrRatio()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 936
    :cond_6d
    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    return-object p0
.end method

.method public final rawBacklightToNits(IF)F
    .registers 6

    .line 1095
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget p1, p0, p1

    aget p0, p0, v2

    invoke-static {v1, v0, p1, p0, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    return p0
.end method

.method public final setProxSensorUnspecified()V
    .registers 2

    .line 1255
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 1256
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    return-void
.end method

.method public final setSimpleMappingStrategyValues()V
    .registers 4

    const/4 v0, 0x0

    .line 1010
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 1011
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1012
    sget v1, Lcom/android/server/display/DisplayDeviceConfig;->sScreenExtendedBrightnessRangeMaximumFloat:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1014
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 1016
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 1019
    iput-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    return-void
.end method

.method public final thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1318
    :cond_4
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_12

    return p0

    :pswitch_10
    const/4 p0, 0x1

    return p0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceConfig{mLoadedFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 653
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 654
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 655
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 656
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInterpolationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 658
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightToBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mQuirks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHbmEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdrToHdrRatioSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessThrottlingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampFastDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampFastIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampDecreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampIncreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientHorizonLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientHorizonShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenDarkeningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrighteningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLuxDarkeningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLuxBrighteningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateLimitations= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 684
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDensityMapping= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUseSurfaceControlBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mUseSurfaceControlBrightness:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
