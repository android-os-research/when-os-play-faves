.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhysicalMappingStrategy"
.end annotation


# instance fields
.field public mAutoBrightnessAdjustment:F

.field public final mBrightness:[F

.field public mBrightnessRangeAdjustmentApplied:Z

.field public mBrightnessSpline:Landroid/util/Spline;

.field public mBrightnessToNitsSpline:Landroid/util/Spline;

.field public mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field public mDefaultBrightnessToNitsSpline:Landroid/util/Spline;

.field public final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field public mDefaultNitsToBrightnessSpline:Landroid/util/Spline;

.field public final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field public final mIsForIdleMode:Z

.field public final mMaxGamma:F

.field public final mNits:[F

.field public mNitsToBrightnessSpline:Landroid/util/Spline;

.field public mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[FFZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V
    .registers 11

    .line 1371
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 1363
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    invoke-direct {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 1373
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    array-length v0, p3

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    const-string v3, "Nits and brightness arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1376
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    const-string v0, "Nits and brightness arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1378
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    const-string/jumbo v2, "nits"

    .line 1379
    invoke-static {p2, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 1380
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsScreenExtendedBrightnessRangeMaximum()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    const-string v2, "brightness"

    invoke-static {p3, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 1386
    iput-boolean p5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mIsForIdleMode:Z

    .line 1387
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 1388
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1397
    iput-object p6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 1399
    iput-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNits:[F

    .line 1400
    iput-object p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    .line 1401
    invoke-virtual {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeNitsBrightnessSplines([F)V

    .line 1404
    invoke-static {p2, p3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultNitsToBrightnessSpline:Landroid/util/Spline;

    .line 1405
    invoke-static {p3, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultBrightnessToNitsSpline:Landroid/util/Spline;

    .line 1408
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 1409
    iget-boolean p2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p2, :cond_6c

    .line 1410
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object p2

    const-string/jumbo p3, "physical mapping strategy"

    invoke-virtual {p2, p3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1412
    :cond_6c
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 1413
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    return-void
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 8

    .line 1546
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smisValidUserLux(F)Z

    move-result v0

    const-string v1, "BrightnessMappingStrategy"

    if-nez v0, :cond_1d

    .line 1547
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addUserDataPoint: invalid user lux: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1552
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 1553
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_5c

    .line 1554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string v3, "add user data point"

    invoke-virtual {v2, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string/jumbo v3, "user data point"

    .line 1556
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string v3, "current brightness"

    .line 1557
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 1559
    :cond_5c
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v2

    .line 1562
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_84

    .line 1563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_84
    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1573
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->addPoint(FFF)V

    .line 1576
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    return-void
.end method

.method public clearUserDataPoints()V
    .registers 3

    .line 1583
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1586
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_30

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearUserDataPoints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "clear user data points"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    :cond_30
    const/4 v0, 0x0

    .line 1591
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1598
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->clear()V

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    :cond_3b
    return-void
.end method

.method public final computeNitsBrightnessSplines([F)V
    .registers 3

    .line 1834
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 1835
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    invoke-static {v0, p1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    return-void
.end method

.method public final computeSpline()V
    .registers 11

    .line 1839
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1840
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 1841
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    .line 1842
    array-length v2, v0

    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v2, :cond_22

    .line 1844
    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1848
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->isDefaultConfig()Z

    move-result v2

    if-nez v2, :cond_93

    .line 1849
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v2}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v2

    .line 1850
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    .line 1851
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    move v5, v4

    move v6, v5

    .line 1857
    :goto_38
    array-length v7, v1

    if-ge v5, v7, :cond_4a

    .line 1858
    aget v7, v1, v5

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsHbmLux()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_47

    add-int/lit8 v6, v6, 0x1

    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_4a
    move v5, v4

    move v7, v5

    .line 1862
    :goto_4c
    array-length v8, v3

    if-ge v5, v8, :cond_5e

    .line 1863
    aget v8, v3, v5

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsHbmLux()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5b

    add-int/lit8 v7, v7, 0x1

    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_5e
    add-int v5, v6, v7

    .line 1867
    new-array v8, v5, [F

    .line 1868
    new-array v9, v5, [F

    .line 1871
    invoke-static {v1, v4, v8, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1872
    invoke-static {v0, v4, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1875
    array-length v0, v3

    sub-int/2addr v0, v7

    invoke-static {v3, v0, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1877
    array-length v0, v2

    sub-int/2addr v0, v7

    invoke-static {v2, v0, v9, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1881
    new-array v0, v5, [F

    move v1, v4

    :goto_77
    if-ge v1, v5, :cond_86

    .line 1883
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    aget v3, v9, v1

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 1886
    :cond_86
    invoke-virtual {v8}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1887
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [F

    .line 1896
    :cond_93
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getOffsetAdjustedCurve([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;

    move-result-object v0

    .line 1900
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 1901
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    .line 1902
    array-length v2, v0

    new-array v3, v2, [F

    :goto_a4
    if-ge v4, v2, :cond_b3

    .line 1904
    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    aget v6, v0, v4

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    .line 1906
    :cond_b3
    invoke-static {v1, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 1908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeSpline: mBrightnessSpline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public convertToBrightness(F)I
    .registers 3

    .line 1535
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 1536
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    .line 1535
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p0

    .line 1537
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsScreenExtendedBrightnessRangeMaximum()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method public convertToNits(F)F
    .registers 2

    .line 1529
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public final correctBrightness(FLjava/lang/String;I)F
    .registers 5

    if-eqz p2, :cond_f

    .line 1957
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p2}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 1959
    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result p0

    return p0

    :cond_f
    const/4 p2, -0x1

    if-eq p3, p2, :cond_1f

    .line 1963
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0, p3}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 1965
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result p0

    return p0

    :cond_1f
    return p1
.end method

.method public dump(Ljava/io/PrintWriter;F)V
    .registers 4

    const-string p2, "PhysicalMappingStrategy"

    .line 1674
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mConfig="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mBrightnessSpline="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mNitsToBrightnessSpline="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mBrightnessToNitsSpline="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mMaxGamma="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mAutoBrightnessAdjustment="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    iget-boolean p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessRangeAdjustmentApplied:Z

    if-eqz p2, :cond_b9

    .line 1684
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mDefaultNitsToBrightnessSpline="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mDefaultBrightnessToNitsSpline="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultBrightnessToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    :cond_b9
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {p2, p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->dump(Ljava/io/PrintWriter;)V

    .line 1697
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mDefaultConfig="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mBrightnessRangeAdjustmentApplied="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessRangeAdjustmentApplied:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 9

    .line 1637
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object p0

    .line 1638
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    .line 1639
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, [F

    check-cast p0, [F

    array-length p0, p0

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    .line 1641
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    .line 1642
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    .line 1643
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    .line 1644
    invoke-static {v2, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    const/4 v4, 0x0

    .line 1646
    aget v5, v0, v4

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_4b

    aget v2, v2, v4

    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4b

    aget v2, p0, v4

    aget v1, v1, v4

    .line 1647
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_4b

    const-string p0, "BrightnessMappingStrategy"

    const-string p1, "defulat brightness is higher than backup brightness"

    .line 1648
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1653
    :cond_4b
    :goto_4b
    aget v1, v0, v4

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_60

    .line 1654
    aget v1, v0, v4

    invoke-virtual {v3, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    aput v1, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_60
    const/4 v1, 0x1

    .line 1658
    :goto_61
    array-length v2, v0

    if-ge v1, v2, :cond_83

    .line 1659
    aget v2, v0, v1

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsHbmLux()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_80

    add-int/lit8 v2, v1, -0x1

    .line 1660
    aget v3, p0, v2

    aget v4, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_80

    .line 1661
    aget v2, p0, v2

    aput v2, p0, v1

    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 1665
    :cond_83
    new-instance v1, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v1, v0, p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 1667
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 1668
    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 1

    .line 1506
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .registers 5

    .line 1451
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F

    move-result p0

    return p0
.end method

.method public final getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F
    .registers 6

    .line 1457
    invoke-virtual {p4, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p4

    .line 1461
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_c

    .line 1462
    invoke-virtual {v0, p4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->calculateAdjustedBrightnessNits(F)F

    move-result p4

    .line 1465
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p4}, Landroid/util/Spline;->interpolate(F)F

    move-result p4

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1473
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->correctBrightness(FLjava/lang/String;I)F

    move-result p4

    goto :goto_29

    .line 1474
    :cond_1d
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_29

    const-string p0, "BrightnessMappingStrategy"

    const-string/jumbo p2, "user point set, correction not applied"

    .line 1475
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    const/high16 p0, 0x3f800000    # 1.0f

    .line 1479
    invoke-static {p4, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-lez p2, :cond_3c

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsHbmLux()F

    move-result p2

    .line 1480
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_3c

    move p4, p0

    :cond_3c
    return p4
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    .line 1443
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object p0
.end method

.method public getBrightnessForSpline(FLandroid/util/Spline;)F
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_10

    const-string p2, "BrightnessMappingStrategy"

    const-string v2, "getBrightnessForSpline: null"

    .line 1496
    invoke-static {p2, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result p0

    return p0

    .line 1500
    :cond_10
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F

    move-result p0

    return p0
.end method

.method public getBrightnessSpline()Landroid/util/Spline;
    .registers 1

    .line 1491
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    .line 1620
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object p0
.end method

.method public final getOffsetAdjustedCurve([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;",
            ")",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1921
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    .line 1922
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_12

    .line 1923
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "curve before adjust offset"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1926
    :cond_12
    invoke-virtual {p3}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1928
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 1929
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 1930
    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 1933
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->plusOffsetBrightness([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)[F

    move-result-object p2

    .line 1935
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_37

    .line 1936
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v2, "curve after offset plus"

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1940
    :cond_37
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->insertOffsetPoints([F[FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;

    move-result-object p1

    .line 1944
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [F

    .line 1945
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    .line 1946
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_50

    .line 1947
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object p0

    const-string p3, "curve after insert user point"

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_50
    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    .line 1951
    :cond_53
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getShortTermModelTimeout()J
    .registers 5

    .line 1418
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    .line 1419
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0

    .line 1421
    :cond_13
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUnadjustedBrightness(F)F
    .registers 4

    .line 1912
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1913
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 1914
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public hasUserDataPoints()Z
    .registers 1

    .line 1609
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    move-result p0

    return p0
.end method

.method public isDefaultConfig()Z
    .registers 2

    .line 1615
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isForIdleMode()Z
    .registers 1

    .line 1712
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mIsForIdleMode:Z

    return p0
.end method

.method public recalculateSplines(Z[F)V
    .registers 3

    return-void
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 6

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1513
    invoke-static {p1, v0, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 1514
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_27

    const/4 p0, 0x0

    return p0

    .line 1517
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_50

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1522
    :cond_50
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    const/4 p0, 0x1

    return p0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 4

    if-nez p1, :cond_4

    .line 1428
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 1430
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 1433
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1b

    .line 1434
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "brightness configuration"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1436
    :cond_1b
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 1437
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    const/4 p0, 0x1

    return p0
.end method

.method public final toStrFloatForDump(F)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_8

    const-string p0, "0"

    return-object p0

    :cond_8
    const p0, 0x3dcccccd    # 0.1f

    cmpg-float p0, p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p0, :cond_22

    .line 1823
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%.3f"

    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_39

    .line 1825
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%.2f"

    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    const/high16 p0, 0x41200000    # 10.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_50

    .line 1827
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%.1f"

    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    new-array p0, v1, [Ljava/lang/Object;

    .line 1829
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "%d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
