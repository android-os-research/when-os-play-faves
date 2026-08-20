.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;
.super Ljava/util/TimerTask;
.source "HdrDisplayNitMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCreateTimerTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LIGHT_STABLE_THRESHOLD:F = 10.0f

.field private static final NUM_STABLE_CHECK:I = 0xa


# instance fields
.field private LIGHT_DEC_LIMIT_PER_UPDATE:F

.field private LIGHT_INC_LIMIT_PER_UPDATE:F

.field private LIGHT_UPDATE_TOLERANCE_LOWER:F

.field private LIGHT_UPDATE_TOLERANCE_UPPER:F

.field private NUM_ACCUM_TICK:I

.field private NUM_LOG_TICK:I

.field private NUM_SUB_AVERAGE:I

.field private mAccumCount:I

.field private mAccumLight:F

.field private mAppliedLight:[F

.field private mAppliedLightIndex:I

.field private mLightData:F

.field private mLogCount:I

.field private mStableLight:F

.field private mSubAvergeLight:[F

.field private mSubAvergeLightIndex:I

.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V
    .registers 5
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    .line 338
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 339
    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_INC_LIMIT_PER_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v0

    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_INC_LIMIT_PER_UPDATE:F

    .line 340
    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_DEC_LIMIT_PER_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v0

    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_DEC_LIMIT_PER_UPDATE:F

    .line 341
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_INC_LIMIT_PER_UPDATE:F

    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_UPDATE_TOLERANCE_UPPER:F

    .line 342
    neg-float v0, v0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_UPDATE_TOLERANCE_LOWER:F

    .line 343
    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v0

    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_SAMPLING_INTERVAL_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_ACCUM_TICK:I

    .line 344
    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_AVERAGE_LENGTH_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v0

    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    .line 346
    new-array v0, v0, [F

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    .line 349
    const/4 v1, 0x0

    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    .line 350
    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    .line 351
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    .line 355
    const/16 v2, 0xa

    new-array v2, v2, [F

    iput-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLight:[F

    .line 356
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLightIndex:I

    .line 357
    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mStableLight:F

    .line 359
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    .line 360
    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLOG_TIMER_UPDATE_PERIOD_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_SAMPLING_INTERVAL_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_LOG_TICK:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 17

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    const-string v2, "HdrSolution_HdrDisplayNitMapper"

    const/4 v3, 0x1

    if-ltz v1, :cond_252

    .line 366
    const/4 v1, 0x0

    .line 368
    .local v1, "doUpdateLight":Z
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    const-string v5, "RUN"

    const/4 v7, 0x0

    const-string v8, "debug.hdr.light.state"

    const/16 v9, 0xa

    if-nez v4, :cond_75

    .line 369
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v4

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_1a3

    .line 370
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_28
    iget v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    if-ge v4, v10, :cond_39

    .line 371
    iget-object v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    iget-object v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v11}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v11

    aput v11, v10, v4

    .line 370
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 373
    .end local v4    # "idx":I
    :cond_39
    const/4 v4, 0x0

    iput v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    .line 374
    iget-object v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v10}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v10

    iput v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    .line 375
    iget-object v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v10}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v10

    iput v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    .line 376
    iput v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    .line 377
    const/4 v1, 0x1

    .line 378
    iget-object v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v10, v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;I)V

    .line 379
    iput v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    .line 381
    const/4 v10, 0x0

    .local v10, "idx":I
    :goto_57
    if-ge v10, v9, :cond_66

    .line 382
    iget-object v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLight:[F

    iget-object v12, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v12}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v12

    aput v12, v11, v10

    .line 381
    add-int/lit8 v10, v10, 0x1

    goto :goto_57

    .line 385
    .end local v10    # "idx":I
    :cond_66
    iput v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLightIndex:I

    .line 387
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v4

    if-lez v4, :cond_1a3

    .line 388
    invoke-static {v8, v5}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a3

    .line 392
    :cond_75
    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    iget v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    sub-int/2addr v10, v3

    iget v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    add-int/2addr v10, v11

    rem-int/2addr v10, v11

    aget v4, v4, v10

    .line 393
    .local v4, "baseLightData":F
    iget v10, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_UPDATE_TOLERANCE_UPPER:F

    add-float/2addr v10, v4

    .line 394
    .local v10, "upperLimit":F
    iget v11, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->LIGHT_UPDATE_TOLERANCE_LOWER:F

    add-float/2addr v11, v4

    .line 395
    .local v11, "lowerLimit":F
    iget-object v12, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v12}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 397
    .local v12, "limitedLightData":F
    iget v13, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    add-float/2addr v13, v12

    iput v13, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    .line 398
    iget v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    add-int/2addr v14, v3

    iput v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    .line 399
    iget v15, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_ACCUM_TICK:I

    if-le v14, v15, :cond_1a3

    .line 400
    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    .line 401
    .local v13, "subLight":F
    move v14, v13

    .line 402
    .local v14, "averageLight":F
    const/4 v15, 0x1

    .local v15, "idx":I
    :goto_ab
    iget v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    if-ge v15, v7, :cond_bf

    .line 403
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    iget v6, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    sub-int/2addr v6, v15

    add-int/2addr v6, v7

    rem-int/2addr v6, v7

    aget v6, v9, v6

    add-float/2addr v14, v6

    .line 402
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    const/16 v9, 0xa

    goto :goto_ab

    .line 405
    .end local v15    # "idx":I
    :cond_bf
    int-to-float v6, v7

    div-float v6, v14, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 406
    .end local v14    # "averageLight":F
    .local v6, "averageLight":F
    iget-object v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLight:[F

    iget v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    aput v13, v7, v9

    .line 407
    add-int/2addr v9, v3

    iget v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_SUB_AVERAGE:I

    rem-int/2addr v9, v7

    iput v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mSubAvergeLightIndex:I

    .line 409
    iget v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_RATE(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v9

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v9, v14, v9

    mul-float/2addr v7, v9

    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetLIGHT_UPDATE_RATE(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v9

    mul-float/2addr v9, v6

    add-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 410
    .local v7, "calcLightData":F
    iput v12, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumLight:F

    .line 411
    iput v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAccumCount:I

    .line 413
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v9

    if-le v9, v3, :cond_133

    .line 414
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Update LightSensor: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " -> "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " | "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v14}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_133
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLight:[F

    iget v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLightIndex:I

    aput v7, v9, v14

    .line 418
    add-int/2addr v14, v3

    const/16 v9, 0xa

    rem-int/2addr v14, v9

    iput v14, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLightIndex:I

    .line 420
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v9

    const/high16 v14, 0x41200000    # 10.0f

    const/4 v15, 0x2

    if-ne v9, v15, :cond_16b

    .line 421
    iget v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mStableLight:F

    cmpl-float v15, v9, v7

    if-eqz v15, :cond_1a1

    .line 422
    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v14

    if-lez v9, :cond_1a1

    .line 423
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9, v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;I)V

    .line 424
    const/4 v1, 0x1

    .line 425
    iget-object v9, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v9}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v9

    if-lez v9, :cond_1a1

    .line 426
    invoke-static {v8, v5}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a1

    .line 431
    :cond_16b
    const/4 v5, 0x1

    .line 432
    .local v5, "checkStable":Z
    const/4 v9, 0x0

    .local v9, "idx":I
    :goto_16d
    const/16 v3, 0xa

    if-ge v9, v3, :cond_184

    .line 433
    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mAppliedLight:[F

    aget v3, v3, v9

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v14

    if-lez v3, :cond_180

    .line 434
    const/4 v5, 0x0

    .line 435
    goto :goto_184

    .line 432
    :cond_180
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto :goto_16d

    .line 438
    .end local v9    # "idx":I
    :cond_184
    :goto_184
    if-eqz v5, :cond_19a

    .line 439
    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3, v15}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;I)V

    .line 440
    iput v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mStableLight:F

    .line 441
    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v3

    if-lez v3, :cond_19a

    .line 442
    const-string v3, "STABLE"

    invoke-static {v8, v3}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_19a
    iget v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    cmpl-float v3, v7, v3

    if-eqz v3, :cond_1a1

    .line 446
    const/4 v1, 0x1

    .line 449
    .end local v5    # "checkStable":Z
    :cond_1a1
    :goto_1a1
    iput v7, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    .line 452
    .end local v4    # "baseLightData":F
    .end local v6    # "averageLight":F
    .end local v7    # "calcLightData":F
    .end local v10    # "upperLimit":F
    .end local v11    # "lowerLimit":F
    .end local v12    # "limitedLightData":F
    .end local v13    # "subLight":F
    :cond_1a3
    :goto_1a3
    if-eqz v1, :cond_252

    .line 453
    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v3

    if-lez v3, :cond_1b8

    .line 454
    iget v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "debug.hdr.light.apply"

    invoke-static {v4, v3}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_1b8
    iget v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound0(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1cc

    .line 457
    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    goto/16 :goto_24d

    .line 458
    :cond_1cc
    iget v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    iget-object v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_20e

    .line 459
    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    iget v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound0(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    iget-object v6, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound0(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmZone1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmCp(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmRdr(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    goto :goto_24d

    .line 461
    :cond_20e
    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    iget v4, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound2(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    iget-object v6, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmZone2(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmCp(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    mul-float/2addr v4, v6

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmCp(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmRdr(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    .line 463
    :goto_24d
    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$mupdateTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    .line 467
    .end local v1    # "doUpdateLight":Z
    :cond_252
    iget-object v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v1

    if-lez v1, :cond_29f

    .line 468
    iget v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    iget v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->NUM_LOG_TICK:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_299

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ambient: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLightData:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Target: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$mgetTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_299
    iget v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;->mLogCount:I

    .line 473
    :cond_29f
    return-void
.end method
