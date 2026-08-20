.class public Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;
.super Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
.source "MotionRecognitionPalmSweep.java"


# static fields
.field private static final DEVICE_TYPE_PHONE:I = 0x0

.field private static final DEVICE_TYPE_PHONE_STRING:Ljava/lang/String; = "phone"

.field private static final DEVICE_TYPE_TABLET:I = 0x1

.field private static final DEVICE_TYPE_TABLET_STRING:Ljava/lang/String; = "tablet"

.field private static final DEVICE_TYPE_UNKNOWN:I = -0x1

.field private static final DEVICE_TYPE_UNKNOWN_STRING:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "PalmMotion"


# instance fields
.field private BASE_SCREEN_WIDTH_SWEEP:I

.field private BASE_SWEEP_VAR_X:F

.field private IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

.field private final SWEEP_DIRECTION_FULL:I

.field private final SWEEP_DIRECTION_LEFT:I

.field private final SWEEP_DIRECTION_RIGHT:I

.field private final THRESHOLD_COORDINATE_Y:I

.field private THRESHOLD_ECCEN_SWEEP:F

.field private THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

.field private THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

.field private THRESHOLD_MAJOR_SWEEP:F

.field private THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

.field private THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

.field private THRESHOLD_SWEEP_DIST:I

.field private TOLERANCE_REVERSE_DIST_SWEEP:F

.field private mCntUnderEccenTH:I

.field private mExceedVar:F

.field private mFailCntArea:I

.field private mFailCntDist:I

.field private mFailCntEccen:I

.field private mFailCntReverse:I

.field private mFailCntTime:I

.field private mFailCntVar:I

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsEnabledPalmSweep:Z

.field private mIsReadyPalmSweep:Z

.field private mIsSweepDown:Z

.field private mIsSweepDownPrev:Z

.field private mIsWinner:Z

.field private mLastMeanX:F

.field private mLastTimeSweepEvent:J

.field private mMeanX:F

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mPalmSweepCnt:I

.field private mPassCnt:I

.field protected mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

.field private mSumLeftToRight:F

.field private mSumRightToLeft:F

.field private mSweepStartX:F

.field private final mSweptArea:[Z

.field private mTimeSweepStartMS:J

.field private final mTypeDevice:I

.field private mbSuccessCoordinateY:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "palmData"    # Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;-><init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V

    .line 107
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    .line 108
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

    .line 109
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

    .line 110
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    .line 111
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

    .line 112
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    .line 115
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    .line 118
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    .line 119
    int-to-float v2, v0

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->TOLERANCE_REVERSE_DIST_SWEEP:F

    .line 121
    const/16 v2, 0xfa

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_COORDINATE_Y:I

    .line 122
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->SWEEP_DIRECTION_RIGHT:I

    .line 123
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->SWEEP_DIRECTION_LEFT:I

    .line 124
    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->SWEEP_DIRECTION_FULL:I

    .line 126
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    .line 128
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDownPrev:Z

    .line 130
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    .line 132
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    .line 133
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTimeSweepStartMS:J

    .line 134
    iput-wide v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastTimeSweepEvent:J

    .line 136
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    .line 137
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastMeanX:F

    .line 139
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    .line 140
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    .line 141
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    .line 142
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mbSuccessCoordinateY:Z

    .line 145
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    .line 147
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    .line 148
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    .line 149
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    .line 150
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    .line 151
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    .line 152
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    .line 153
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    .line 156
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsWinner:Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mInputManager:Landroid/hardware/input/InputManager;

    .line 159
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getDeviceType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTypeDevice:I

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_SWEEP] TypeDevice :  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PalmMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 168
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsWinner:Z

    .line 170
    :cond_96
    return-void
.end method

.method private checkActionMoveToKeep()V
    .registers 5

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastTimeActionUp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 384
    .local v0, "timeGap":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3d

    const-wide/16 v2, 0x1e

    cmp-long v2, v0, v2

    if-gez v2, :cond_3d

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v3, 0x0

    .line 385
    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 386
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v2

    if-ne v2, v3, :cond_3d

    .line 388
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->setActionMoveEvent()V

    .line 390
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDownPrev:Z

    if-eqz v2, :cond_3d

    .line 391
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 392
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    .line 393
    const-string v2, "PalmMotion"

    const-string v3, "[PALM_SWEEP] KEEP ACTION MOVE!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_3d
    return-void
.end method

.method private checkCurrentSweptAreaInDisplay()V
    .registers 5

    .line 634
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    div-int/2addr v0, v1

    .line 635
    .local v0, "range":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    if-gez v0, :cond_2f

    .line 636
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_SWEEP] Out of range! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PalmMotion"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    if-le v0, v1, :cond_2c

    const/4 v0, 0x3

    .line 638
    :cond_2c
    if-gez v0, :cond_2f

    const/4 v0, 0x0

    .line 641
    :cond_2f
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    aget-boolean v2, v1, v0

    if-nez v2, :cond_38

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 642
    :cond_38
    return-void
.end method

.method private checkPocketMode()Z
    .registers 3

    .line 726
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->getPopUpState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 727
    const-string v0, "PalmMotion"

    const-string v1, "[PALM_SWEEP] SKIP PALM SWEEP IN ACCIDENTAL TOUCH PREVENTION MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v0, 0x1

    return v0

    .line 730
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private checkSweepDownFailConditions()V
    .registers 5

    .line 569
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    if-lt v0, v2, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 570
    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumEccen()F

    move-result v0

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1b

    .line 571
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    .line 574
    :cond_1b
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    if-lt v0, v2, :cond_39

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 575
    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMeanY()F

    move-result v0

    const/high16 v2, 0x437a0000    # 250.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_39

    .line 576
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mbSuccessCoordinateY:Z

    .line 579
    :cond_39
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v0

    if-eqz v0, :cond_6a

    .line 580
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastMeanX:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_6a

    .line 582
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    sub-float/2addr v2, v0

    .line 583
    .local v2, "delta":F
    cmpl-float v0, v2, v1

    if-lez v0, :cond_5d

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    .line 584
    :cond_5d
    cmpg-float v0, v2, v1

    if-gez v0, :cond_6a

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    .line 588
    .end local v2    # "delta":F
    :cond_6a
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7e

    .line 589
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    .line 591
    :cond_7e
    return-void
.end method

.method private checkSweepDownLastConditions(FLjava/lang/StringBuffer;)Z
    .registers 9
    .param p1, "movedDistance"    # F
    .param p2, "sweepDirection"    # Ljava/lang/StringBuffer;

    .line 595
    const/4 v0, 0x1

    .line 597
    .local v0, "isSweepDown":Z
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTypeDevice:I

    const-string v2, "PalmMotion"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_10

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 598
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isSuccessConditionSweptArea()Z

    move-result v1

    if-nez v1, :cond_38

    .line 599
    const/4 v0, 0x0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM_SWEEP] FAIL by SWEPT_AREA   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    invoke-static {v4}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    .line 604
    :cond_38
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    div-int/lit8 v4, v4, 0x2

    const-string v5, " > "

    if-le v1, v4, :cond_72

    .line 605
    const/4 v0, 0x0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM_SWEEP] FAIL by UNDER_ECCEN ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    .line 610
    :cond_72
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_a8

    .line 611
    const/4 v0, 0x0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM_SWEEP] FAIL by EXCEED_VAR  ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (BASE_SWEEP_VAR_X)]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    .line 616
    :cond_a8
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_103

    .line 617
    const/4 v0, 0x0

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM_SWEEP] FAIL by DISTANCE  ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Dist:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [ R->L : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ] [ L->R : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    .line 625
    :cond_103
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mbSuccessCoordinateY:Z

    if-nez v1, :cond_115

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_115

    .line 626
    const/4 v0, 0x0

    .line 627
    const-string v1, "[PALM_SWEEP] FAIL by COORDINATE Y"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_115
    return v0
.end method

.method private checkSweepDownStartConditions()Z
    .registers 5

    .line 552
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 553
    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_83

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumEccen()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_83

    .line 555
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMeanX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTimeSweepStartMS:J

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM_SWEEP] START [CNT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Major: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 559
    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", BASE_SWEEP_VAR_X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Landscape : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 561
    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    const-string v2, "PalmMotion"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v1

    .line 564
    :cond_83
    const/4 v0, 0x0

    return v0
.end method

.method private detectSweepDownAction(FLjava/lang/StringBuffer;)V
    .registers 11
    .param p1, "movedDistance"    # F
    .param p2, "sweepDirection"    # Ljava/lang/StringBuffer;

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mTimeSweepStartMS:J

    sub-long/2addr v0, v2

    .line 672
    .local v0, "timeGap":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const-string v4, "PalmMotion"

    if-ltz v2, :cond_e3

    const-wide/16 v5, 0x514

    cmp-long v2, v0, v5

    if-lez v2, :cond_18

    goto/16 :goto_e3

    .line 676
    :cond_18
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->TOLERANCE_REVERSE_DIST_SWEEP:F

    cmpg-float v2, v2, v5

    const-string v6, "]"

    const-string v7, " Dist["

    if-gtz v2, :cond_51

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PALM_SWEEP] RIGHT -> LEFT  : AREA"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->onPalmEvents(I)V

    goto/16 :goto_104

    .line 681
    :cond_51
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_85

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_SWEEP] LEFT  -> RIGHT : AREA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    invoke-static {v3}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->onPalmEvents(I)V

    goto/16 :goto_104

    .line 687
    :cond_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PALM_SWEEP] FAIL by REVERSE  ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Dist:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " > "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "] [ R-> L : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ] [ L-> R : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->TOLERANCE_REVERSE_DIST_SWEEP:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    goto :goto_104

    .line 673
    :cond_e3
    :goto_e3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PALM_SWEEP] FAIL by TIME GAP    ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " NOT 100 < GAP < 1300]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    .line 692
    :goto_104
    return-void
.end method

.method private getDeviceType()I
    .registers 3

    .line 173
    const-string v0, "ro.build.characteristics"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "strType":Ljava/lang/String;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 176
    const/4 v1, 0x0

    return v1

    .line 177
    :cond_12
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 178
    const/4 v1, 0x1

    return v1

    .line 180
    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method private getSweepDirection(F)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "movedDistance"    # F

    .line 527
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 528
    .local v0, "sweepDirection":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_10

    .line 529
    const-string v1, "Right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 532
    :cond_10
    const-string v1, "Left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    :goto_15
    return-object v0
.end method

.method private isScreenWidthZero()Z
    .registers 4

    .line 539
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v0

    if-nez v0, :cond_57

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PALM_SWEEP] #1 Screen Width is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PalmMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateScreenInfo()V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v0

    if-nez v0, :cond_57

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM_SWEEP] #2 Screen Width is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Still."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x1

    return v0

    .line 547
    :cond_57
    const/4 v0, 0x0

    return v0
.end method

.method private isSuccessConditionSweptArea()Z
    .registers 7

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "flipCnt":I
    const/4 v1, 0x0

    .line 649
    .local v1, "sweptAreaCnt":I
    const/4 v2, 0x1

    .line 650
    .local v2, "beforeValue":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1b

    .line 652
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    aget-boolean v5, v4, v3

    if-eqz v5, :cond_f

    .line 653
    add-int/lit8 v1, v1, 0x1

    .line 656
    :cond_f
    if-lez v1, :cond_18

    .line 657
    xor-int/2addr v5, v2

    if-eqz v5, :cond_16

    .line 658
    add-int/lit8 v0, v0, 0x1

    .line 660
    :cond_16
    aget-boolean v2, v4, v3

    .line 650
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 664
    .end local v3    # "i":I
    :cond_1b
    const/4 v3, 0x2

    if-ge v0, v3, :cond_23

    if-ge v1, v3, :cond_21

    goto :goto_23

    .line 667
    :cond_21
    const/4 v3, 0x1

    return v3

    .line 665
    :cond_23
    :goto_23
    const/4 v3, 0x0

    return v3
.end method

.method private sendPalmSweepEvents(ILjava/lang/String;)V
    .registers 7
    .param p1, "direction"    # I
    .param p2, "screenName"    # Ljava/lang/String;

    .line 742
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 743
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PalmMotion"

    packed-switch p1, :pswitch_data_3c

    .line 757
    :pswitch_a
    return-void

    .line 753
    :pswitch_b
    const-string v2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    goto :goto_26

    .line 749
    :pswitch_14
    const-string v2, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    goto :goto_26

    .line 745
    :pswitch_1d
    const-string v2, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    nop

    .line 759
    :goto_26
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.PALM_MOTION"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 760
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    .line 761
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 762
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_14
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private setBaseVarianceX()V
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLowDPI()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 455
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    goto :goto_21

    .line 457
    :cond_11
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    .line 459
    :goto_21
    return-void
.end method

.method private setThresholdDistance()V
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_SWEEP_DIST:I

    .line 430
    return-void
.end method

.method private setThresholdEccenMajor()V
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 371
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    .line 372
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    goto :goto_19

    .line 374
    :cond_11
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    .line 375
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    .line 377
    :goto_19
    return-void
.end method

.method private variableInitialize()V
    .registers 3

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 434
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDownPrev:Z

    .line 436
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    .line 437
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    .line 439
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    .line 440
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastMeanX:F

    .line 442
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumRightToLeft:F

    .line 443
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSumLeftToRight:F

    .line 445
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mExceedVar:F

    .line 446
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mCntUnderEccenTH:I

    .line 448
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mbSuccessCoordinateY:Z

    .line 450
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweptArea:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 451
    return-void
.end method


# virtual methods
.method public getFailCntArea()I
    .registers 2

    .line 272
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    return v0
.end method

.method public getFailCntDist()I
    .registers 2

    .line 296
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    return v0
.end method

.method public getFailCntEccen()I
    .registers 2

    .line 280
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    return v0
.end method

.method public getFailCntReverse()I
    .registers 2

    .line 312
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    return v0
.end method

.method public getFailCntTime()I
    .registers 2

    .line 304
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    return v0
.end method

.method public getFailCntVar()I
    .registers 2

    .line 288
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    return v0
.end method

.method public getPalmSweepCnt()I
    .registers 2

    .line 248
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    return v0
.end method

.method public getPassCnt()I
    .registers 2

    .line 264
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    return v0
.end method

.method public getThresholdEccenSweep()F
    .registers 2

    .line 184
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    return v0
.end method

.method public getThresholdEccenSweepLandscape()F
    .registers 2

    .line 200
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

    return v0
.end method

.method public getThresholdEccenSweepPortrait()F
    .registers 2

    .line 192
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

    return v0
.end method

.method public getThresholdMajorSweep()F
    .registers 2

    .line 208
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    return v0
.end method

.method public getThresholdMajorSweepLandscape()F
    .registers 2

    .line 224
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

    return v0
.end method

.method public getThresholdMajorSweepPortrait()F
    .registers 2

    .line 216
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

    return v0
.end method

.method public initPalm()V
    .registers 3

    .line 409
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    if-nez v0, :cond_5

    return-void

    .line 411
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdDistance()V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    .line 415
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->variableInitialize()V

    .line 416
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setBaseVarianceX()V

    .line 418
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SCREEN_WIDTH_SWEEP:I

    int-to-float v0, v0

    const/high16 v1, 0x40600000    # 3.5f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->TOLERANCE_REVERSE_DIST_SWEEP:F

    .line 419
    return-void
.end method

.method public isEnabledPalmSweep()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    return v0
.end method

.method public isIgnoreCheckMajorSweepEntry()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    return v0
.end method

.method public isReadyPalmSweep()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    return v0
.end method

.method public onPalmEvents(I)V
    .registers 12
    .param p1, "direction"    # I

    .line 704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 705
    .local v0, "tCurrentTime":J
    iget-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastTimeSweepEvent:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "PalmMotion"

    if-eqz v6, :cond_33

    .line 706
    sub-long v2, v0, v2

    .line 707
    .local v2, "timeGap":J
    const-wide/16 v8, 0x3e8

    cmp-long v6, v2, v8

    if-gez v6, :cond_33

    cmp-long v4, v2, v4

    if-lez v4, :cond_33

    .line 708
    iput-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastTimeSweepEvent:J

    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PALM_SWEEP] onPalmEvents timeGap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void

    .line 713
    .end local v2    # "timeGap":J
    :cond_33
    iput-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastTimeSweepEvent:J

    .line 715
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkBootComplete()Z

    move-result v2

    if-nez v2, :cond_41

    .line 716
    const-string v2, "[PALM_SWEEP] checkBootComplete is false)"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void

    .line 720
    :cond_41
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkPocketMode()Z

    move-result v2

    if-eqz v2, :cond_48

    return-void

    .line 722
    :cond_48
    const-string v2, "MAIN"

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->sendPalmSweepEvents(ILjava/lang/String;)V

    .line 723
    return-void
.end method

.method public processPalm()V
    .registers 4

    .line 498
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDownPrev:Z

    .line 499
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mLastMeanX:F

    .line 500
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMeanX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMeanX:F

    .line 502
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isScreenWidthZero()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 504
    :cond_17
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->BASE_SWEEP_VAR_X:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkSweepDownStartConditions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 508
    :cond_2d
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkCurrentSweptAreaInDisplay()V

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkSweepDownFailConditions()V

    .line 511
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_46

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 512
    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_66

    :cond_46
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    if-eqz v0, :cond_66

    .line 515
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mSweepStartX:F

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMeanX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 516
    .local v0, "movedDistance":F
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getSweepDirection(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 517
    .local v1, "sweepDirection":Ljava/lang/StringBuffer;
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 519
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkSweepDownLastConditions(FLjava/lang/StringBuffer;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 520
    if-eqz v2, :cond_66

    .line 521
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->detectSweepDownAction(FLjava/lang/StringBuffer;)V

    .line 524
    .end local v0    # "movedDistance":F
    .end local v1    # "sweepDirection":Ljava/lang/StringBuffer;
    :cond_66
    return-void
.end method

.method public readyPalm()V
    .registers 5

    .line 342
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    if-nez v0, :cond_5

    return-void

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    .line 346
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_20

    .line 348
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateScreenInfo()V

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdEccenMajor()V

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->checkActionMoveToKeep()V

    goto :goto_31

    .line 352
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_31

    .line 353
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->setLastTimeActionUp(J)V

    .line 356
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getLastAction(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_40

    .line 357
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    .line 360
    :cond_40
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateSimpleReadyPalmInfo()V

    .line 361
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    if-nez v0, :cond_6c

    .line 362
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6c

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPalmSweepCnt:I

    int-to-float v0, v0

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6c

    .line 364
    :cond_6a
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    .line 367
    :cond_6c
    return-void
.end method

.method public setEnabledPalmSweep(Z)V
    .registers 2
    .param p1, "mIsEnabledPalmSweep"    # Z

    .line 244
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsEnabledPalmSweep:Z

    .line 245
    return-void
.end method

.method public setFailCntArea(I)V
    .registers 2
    .param p1, "mFailCntArea"    # I

    .line 276
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntArea:I

    .line 277
    return-void
.end method

.method public setFailCntDist(I)V
    .registers 2
    .param p1, "mFailCntDist"    # I

    .line 300
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntDist:I

    .line 301
    return-void
.end method

.method public setFailCntEccen(I)V
    .registers 2
    .param p1, "mFailCntEccen"    # I

    .line 284
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntEccen:I

    .line 285
    return-void
.end method

.method public setFailCntReverse(I)V
    .registers 2
    .param p1, "mFailCntReverse"    # I

    .line 316
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntReverse:I

    .line 317
    return-void
.end method

.method public setFailCntTime(I)V
    .registers 2
    .param p1, "mFailCntTime"    # I

    .line 308
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntTime:I

    .line 309
    return-void
.end method

.method public setFailCntVar(I)V
    .registers 2
    .param p1, "mFailCntVar"    # I

    .line 292
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mFailCntVar:I

    .line 293
    return-void
.end method

.method public setIgnoreCheckMajorSweepEntry(Z)V
    .registers 2
    .param p1, "ignoreCheckMajorSweepEntry"    # Z

    .line 236
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->IGNORE_CHECK_MAJOR_SWEEP_ENTRY:Z

    .line 237
    return-void
.end method

.method public setInputManager(Landroid/hardware/input/InputManager;)V
    .registers 2
    .param p1, "mInputManager"    # Landroid/hardware/input/InputManager;

    .line 320
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mInputManager:Landroid/hardware/input/InputManager;

    .line 321
    return-void
.end method

.method public setPassCnt(I)V
    .registers 2
    .param p1, "mPassCnt"    # I

    .line 268
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPassCnt:I

    .line 269
    return-void
.end method

.method public setReadyPalmSweep(Z)V
    .registers 2
    .param p1, "mIsReadyPalmSweep"    # Z

    .line 260
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsReadyPalmSweep:Z

    .line 261
    return-void
.end method

.method public setSweepDown(Z)V
    .registers 2
    .param p1, "mIsSweepDown"    # Z

    .line 252
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mIsSweepDown:Z

    .line 253
    return-void
.end method

.method public setThresholdEccenSweep(F)V
    .registers 2
    .param p1, "thresholdEccenSweep"    # F

    .line 188
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP:F

    .line 189
    return-void
.end method

.method public setThresholdEccenSweepLandscape(F)V
    .registers 2
    .param p1, "thresholdEccenSweepLandscape"    # F

    .line 204
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_LANDSCAPE:F

    .line 205
    return-void
.end method

.method public setThresholdEccenSweepPortrait(F)V
    .registers 2
    .param p1, "thresholdEccenSweepPortrait"    # F

    .line 196
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_ECCEN_SWEEP_PORTRAIT:F

    .line 197
    return-void
.end method

.method public setThresholdMajorSweep(F)V
    .registers 2
    .param p1, "thresholdMajorSweep"    # F

    .line 212
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP:F

    .line 213
    return-void
.end method

.method public setThresholdMajorSweepLandscape(F)V
    .registers 2
    .param p1, "thresholdMajorSweepLandscape"    # F

    .line 228
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_LANDSCAPE:F

    .line 229
    return-void
.end method

.method public setThresholdMajorSweepPortrait(F)V
    .registers 2
    .param p1, "thresholdMajorSweepPortrait"    # F

    .line 220
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->THRESHOLD_MAJOR_SWEEP_PORTRAIT:F

    .line 221
    return-void
.end method
