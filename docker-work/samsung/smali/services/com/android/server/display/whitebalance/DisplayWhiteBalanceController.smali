.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceController.java"

# interfaces
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;
.implements Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayWhiteBalanceController"


# instance fields
.field public mAmbientColorTemperature:F

.field public final mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

.field public mAmbientColorTemperatureOverride:F

.field public mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

.field public mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

.field public final mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

.field public mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

.field public mEnabled:Z

.field public mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field public final mHighLightAmbientColorTemperature:F

.field public mLastAmbientColorTemperature:F

.field public mLatestAmbientBrightness:F

.field public mLatestAmbientColorTemperature:F

.field public mLatestHighLightBias:F

.field public mLatestLowLightBias:F

.field public mLoggingEnabled:Z

.field public mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

.field public final mLowLightAmbientColorTemperature:F

.field public mPendingAmbientColorTemperature:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

.field public mStrongModeEnabled:Z

.field public final mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[FF[F[FF[F[F[F[F)V
    .registers 26

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    const-string v4, "DisplayWhiteBalanceController"

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V

    move-object v0, p1

    .line 177
    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-object v0, p2

    .line 178
    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    move-object v0, p3

    .line 179
    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-object v0, p4

    .line 180
    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    move-object v0, p5

    .line 181
    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move/from16 v0, p8

    .line 182
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    move/from16 v0, p11

    .line 183
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 184
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 185
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 186
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    .line 187
    new-instance v5, Lcom/android/server/display/utils/History;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    .line 188
    iput v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    const/4 v5, 0x0

    .line 191
    :try_start_38
    new-instance v0, Landroid/util/Spline$LinearSpline;

    move-object/from16 v6, p7

    invoke-direct {v0, v2, v6}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    move-exception v0

    const-string v6, "failed to create low light ambient brightness to bias spline."

    .line 194
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 197
    :goto_4a
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v8, 0x0

    if-eqz v0, :cond_6d

    .line 198
    invoke-virtual {v0, v8}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_65

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 199
    invoke-virtual {v0, v7}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_6d

    :cond_65
    const-string/jumbo v0, "invalid low light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    .line 201
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 208
    :cond_6d
    :try_start_6d
    new-instance v0, Landroid/util/Spline$LinearSpline;

    move-object/from16 v9, p10

    invoke-direct {v0, v3, v9}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_76} :catch_77

    goto :goto_7f

    :catch_77
    move-exception v0

    const-string v9, "failed to create high light ambient brightness to bias spline."

    .line 211
    invoke-static {v4, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 214
    :goto_7f
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_9d

    .line 215
    invoke-virtual {v0, v8}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_95

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 216
    invoke-virtual {v0, v7}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_9d

    :cond_95
    const-string/jumbo v0, "invalid high light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0."

    .line 218
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 224
    :cond_9d
    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_bb

    iget-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v0, :cond_bb

    .line 226
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    const/4 v2, 0x0

    aget v2, v3, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_bb

    const-string/jumbo v0, "invalid low light and high light ambient brightness to bias spline combination, defined domains must not intersect."

    .line 228
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 231
    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    .line 236
    :cond_bb
    :try_start_bb
    new-instance v0, Landroid/util/Spline$LinearSpline;

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-direct {v0, v2, v3}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c6} :catch_c7

    goto :goto_cf

    :catch_c7
    move-exception v0

    const-string v2, "failed to create ambient to display color temperature spline."

    .line 239
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    iput-object v5, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    .line 244
    :goto_cf
    :try_start_cf
    new-instance v0, Landroid/util/Spline$LinearSpline;

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    invoke-direct {v0, v2, v3}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_da} :catch_db

    goto :goto_e1

    :catch_db
    move-exception v0

    const-string v2, "Failed to create strong ambient to display color temperature spline"

    .line 247
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :goto_e1
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    return-void
.end method


# virtual methods
.method public calculateAdjustedBrightnessNits(F)F
    .registers 3

    .line 504
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getDisplayWhiteBalanceLuminance()F

    move-result p0

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_d

    return p1

    :cond_d
    mul-float/2addr p0, p1

    sub-float p0, p1, p0

    add-float/2addr p0, p1

    return p0
.end method

.method public final disable()Z
    .registers 4

    .line 556
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 559
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    const-string v0, "DisplayWhiteBalanceController"

    const-string v2, "disabling"

    .line 560
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_11
    iput-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 563
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setEnabled(Z)Z

    .line 564
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 565
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setEnabled(Z)Z

    .line 566
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 567
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->clear()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 568
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 569
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 570
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->resetDisplayWhiteBalanceColorTemperature()Z

    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "DisplayWhiteBalanceController"

    .line 346
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStrongModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayPowerControllerCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->dump(Ljava/io/PrintWriter;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->dump(Ljava/io/PrintWriter;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 355
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->dump(Ljava/io/PrintWriter;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastAmbientColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientColorTemperatureOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStrongAmbientToDisplayColorTemperatureSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighLightAmbientBrightnessToBiasSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enable()Z
    .registers 3

    .line 543
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 546
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    const-string v0, "DisplayWhiteBalanceController"

    const-string v1, "enabling"

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    .line 550
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor;->setEnabled(Z)Z

    .line 551
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {p0, v0}, Lcom/android/server/display/whitebalance/AmbientSensor;->setEnabled(Z)Z

    return v0
.end method

.method public onAmbientBrightnessChanged(F)V
    .registers 5

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 376
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 377
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    return-void
.end method

.method public onAmbientColorTemperatureChanged(F)V
    .registers 5

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 383
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 384
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)Z
    .registers 3

    .line 332
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 335
    :cond_8
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    const/4 p0, 0x1

    return p0
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 294
    :cond_6
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    const/4 p0, 0x1

    return p0
.end method

.method public setEnabled(Z)Z
    .registers 2

    if-eqz p1, :cond_7

    .line 263
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->enable()Z

    move-result p0

    return p0

    .line 265
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->disable()Z

    move-result p0

    return p0
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3

    .line 307
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 310
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    .line 311
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setLoggingEnabled(Z)Z

    .line 312
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 313
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureSensor:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->setLoggingEnabled(Z)Z

    .line 314
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/AmbientFilter;->setLoggingEnabled(Z)Z

    .line 315
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->setLoggingEnabled(Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setStrongModeEnabled(Z)V
    .registers 2

    .line 275
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    .line 276
    iget-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mEnabled:Z

    if-eqz p1, :cond_c

    .line 277
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateAmbientColorTemperature()V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    :cond_c
    return-void
.end method

.method public updateAmbientColorTemperature()V
    .registers 8

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 392
    iget-object v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorTemperatureFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v2

    .line 393
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    .line 395
    iget-boolean v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongModeEnabled:Z

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_1f

    .line 396
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mStrongAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v3, :cond_2b

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_2b

    .line 399
    invoke-virtual {v3, v2}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v2

    goto :goto_2b

    .line 403
    :cond_1f
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientToDisplayColorTemperatureSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v3, :cond_2b

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_2b

    .line 406
    invoke-virtual {v3, v2}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v2

    .line 411
    :cond_2b
    :goto_2b
    iget-object v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mBrightnessFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v0

    .line 412
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    cmpl-float v1, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4a

    .line 414
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v1, :cond_4a

    .line 416
    invoke-virtual {v1, v0}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v1

    mul-float/2addr v2, v1

    sub-float v5, v3, v1

    .line 417
    iget v6, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLowLightAmbientColorTemperature:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 420
    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    :cond_4a
    cmpl-float v1, v2, v4

    if-eqz v1, :cond_5f

    .line 422
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientBrightnessToBiasSpline:Landroid/util/Spline$LinearSpline;

    if-eqz v1, :cond_5f

    .line 424
    invoke-virtual {v1, v0}, Landroid/util/Spline$LinearSpline;->interpolate(F)F

    move-result v0

    sub-float/2addr v3, v0

    mul-float/2addr v3, v2

    .line 425
    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mHighLightAmbientColorTemperature:F

    mul-float/2addr v1, v0

    add-float v2, v3, v1

    .line 428
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    .line 431
    :cond_5f
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    cmpl-float v0, v0, v4

    const-string v1, "DisplayWhiteBalanceController"

    if-eqz v0, :cond_8c

    .line 432
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_8a

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "override ambient color temperature: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_8a
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureOverride:F

    :cond_8c
    cmpl-float v0, v2, v4

    if-eqz v0, :cond_bb

    .line 443
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mThrottler:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->throttle(F)Z

    move-result v0

    if-eqz v0, :cond_99

    goto :goto_bb

    .line 447
    :cond_99
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    if-eqz v0, :cond_b2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pending ambient color temperature: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_b2
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 451
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mDisplayPowerControllerCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz p0, :cond_bb

    .line 452
    invoke-interface {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public updateDisplayColorTemperature()V
    .registers 6

    .line 465
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_11

    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_11

    .line 466
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    goto :goto_12

    :cond_11
    move v2, v1

    .line 471
    :goto_12
    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_1d

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1d

    move v2, v3

    :cond_1d
    cmpl-float v0, v2, v1

    if-nez v0, :cond_22

    return-void

    .line 480
    :cond_22
    iput v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    .line 481
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLoggingEnabled:Z

    const-string v2, "DisplayWhiteBalanceController"

    if-eqz v0, :cond_40

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ambient color temperature: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_40
    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mPendingAmbientColorTemperature:F

    .line 485
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperatureHistory:Lcom/android/server/display/utils/History;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/History;->add(F)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display cct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest ambient cct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientColorTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest ambient lux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestAmbientBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest low light bias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestLowLightBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Latest high light bias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLatestHighLightBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceColorTemperature(I)Z

    .line 493
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mAmbientColorTemperature:F

    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->mLastAmbientColorTemperature:F

    return-void
.end method

.method public final validateArguments(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;)V
    .registers 6

    const-string p0, "brightnessSensor must not be null"

    .line 533
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "brightnessFilter must not be null"

    .line 534
    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "colorTemperatureSensor must not be null"

    .line 535
    invoke-static {p3, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "colorTemperatureFilter must not be null"

    .line 537
    invoke-static {p4, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo p0, "throttler cannot be null"

    .line 539
    invoke-static {p5, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
