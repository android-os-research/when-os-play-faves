.class public Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;
.super Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
.source "MotionRecognitionPalmTouch.java"


# static fields
.field private static final INJECT_PALM_DOWN:I = 0x247c1

.field private static final INJECT_PALM_UP:I = 0x347c1

.field private static final TAG:Ljava/lang/String; = "PalmMotion"

.field private static final TYPE_SENSORHUB:I = 0x10032


# instance fields
.field private BASE_SCREEN_WIDTH_TOUCH:F

.field private THRESHOLD_MAJOR_TOUCH:F

.field private THRESHOLD_PALM_COUNT:I

.field private mIsEnabledPalmScreenOff:Z

.field private mIsEnabledPalmTouch:Z

.field private mIsLargePalmTouchDown:Z

.field private mIsPalmTouchDown:Z

.field private mIsReadyPalmTouch:Z

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mPalmTouchCnt:I

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "palmData"    # Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;-><init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    .line 54
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->BASE_SCREEN_WIDTH_TOUCH:F

    .line 62
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mSensorManager:Landroid/hardware/SensorManager;

    .line 63
    return-void
.end method

.method private checkLargePalmTouchDown()Z
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private checkPalmTouchDown(IF)Z
    .registers 7
    .param p1, "cntFinger"    # I
    .param p2, "BASE_TOUCH_VAR"    # F

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "palmTouchDown":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_17

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 230
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_86

    .line 231
    :cond_17
    const-string v1, "PalmMotion"

    if-ne p1, v2, :cond_45

    .line 232
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumEccen()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_86

    .line 233
    const/4 v0, 0x1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_TOUCH] sumEccen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumEccen()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 237
    :cond_45
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceX()F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_86

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 238
    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceY()F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_86

    .line 239
    const/4 v0, 0x1

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PALM_TOUCH] varianceX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " varianceY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getVarianceY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_86
    :goto_86
    return v0
.end method

.method private injectPalmTouchEvent([ILjava/lang/String;)V
    .registers 7
    .param p1, "data"    # [I
    .param p2, "s"    # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10032

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 317
    .local v0, "hubSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_21

    .line 318
    invoke-static {v0, p1}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v1

    .line 319
    .local v1, "info":Landroid/hardware/SensorAdditionalInfo;
    const-string v2, "PalmMotion"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 321
    const-string v3, "[EARSENSE_MOTION]injectSensorData failed (PalmTouchEvent) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v1    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_21
    return-void
.end method

.method private sendPalmTouchEvents(I)V
    .registers 10
    .param p1, "action"    # I

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 273
    .local v1, "data":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    .line 274
    const-string v2, "[PALM_TOUCH] Intent : "

    const/4 v3, 0x1

    const-string v4, "PalmMotion"

    const-string v5, "com.samsung.android.motion.PALM_DOWN"

    const-string v6, "com.samsung.permission.PALM_MOTION"

    packed-switch p1, :pswitch_data_aa

    .line 309
    return-void

    .line 295
    :pswitch_19
    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    if-eqz v3, :cond_48

    .line 296
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v3, "com.samsung.android.motion.PALM_SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_94

    .line 302
    :cond_48
    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    if-eqz v3, :cond_94

    .line 303
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 305
    const-string v3, "[PALM_TOUCH] mIsEnabledPalmScreenOff is not set. mIsEnabledPalmTouch is set."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 285
    :pswitch_5c
    iget-boolean v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    if-eqz v7, :cond_6a

    .line 286
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 290
    :cond_6a
    const v5, 0x247c1

    aput v5, v1, v3

    .line 291
    const-string v3, "[EARSENSE_MOTION] inject palm down"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->injectPalmTouchEvent([ILjava/lang/String;)V

    .line 292
    goto :goto_94

    .line 276
    :pswitch_75
    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    if-nez v5, :cond_7d

    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    if-eqz v5, :cond_89

    .line 277
    :cond_7d
    const-string v5, "com.samsung.android.motion.PALM_UP"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 281
    :cond_89
    const v5, 0x347c1

    aput v5, v1, v3

    .line 282
    const-string v3, "[EARSENSE_MOTION] inject palm up"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->injectPalmTouchEvent([ILjava/lang/String;)V

    .line 283
    nop

    .line 311
    :cond_94
    :goto_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_75
        :pswitch_5c
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public getPalmTouchCnt()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    return v0
.end method

.method public getThresholdMajorTouch()F
    .registers 2

    .line 110
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    return v0
.end method

.method public getThresholdPalmCount()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    return v0
.end method

.method public initPalm()V
    .registers 3

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 166
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 167
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->BASE_SCREEN_WIDTH_TOUCH:F

    .line 168
    return-void
.end method

.method public isEnabledPalmScreenOff()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    return v0
.end method

.method public isEnabledPalmTouch()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    return v0
.end method

.method public isReadyPalmTouch()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    return v0
.end method

.method public onPalmEvents(I)V
    .registers 4
    .param p1, "action"    # I

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->checkBootComplete()Z

    move-result v0

    if-nez v0, :cond_e

    .line 263
    const-string v0, "PalmMotion"

    const-string v1, "[PALM_TOUCH] checkBootComplete is false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 267
    :cond_e
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->sendPalmTouchEvents(I)V

    .line 268
    return-void
.end method

.method public processPalm()V
    .registers 9

    .line 187
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getFingerCnt()I

    move-result v0

    .line 189
    .local v0, "cntFinger":I
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->BASE_SCREEN_WIDTH_TOUCH:F

    add-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 191
    .local v1, "BASE_TOUCH_VAR":F
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    const-string v3, "PalmMotion"

    if-ge v0, v2, :cond_35

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM_TOUCH] cntFinger "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " < THRESHOLD_PALM_COUNT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 196
    :cond_35
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    const-string v4, "]"

    const-string v5, "][PalmFlag: "

    const/4 v6, 0x1

    if-nez v2, :cond_7b

    .line 197
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->checkPalmTouchDown(IF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 198
    if-eqz v2, :cond_7b

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PALM_TOUCH] DOWN [FINGER_CNT: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "][BASE_TOUCH_VAR: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 201
    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, v6}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->onPalmEvents(I)V

    .line 206
    :cond_7b
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    if-nez v2, :cond_b3

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->checkLargePalmTouchDown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 208
    if-eqz v2, :cond_b3

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PALM_TOUCH] Large Palm [FINGER_CNT: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 210
    invoke-virtual {v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getHasPalmFlag()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->onPalmEvents(I)V

    .line 216
    :cond_b3
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_d2

    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    if-nez v2, :cond_c3

    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    if-eqz v2, :cond_d2

    .line 217
    :cond_c3
    const-string v2, "[PALM_TOUCH] UP"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->onPalmEvents(I)V

    .line 220
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    .line 221
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 222
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 224
    :cond_d2
    return-void
.end method

.method public readyPalm()V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    .line 137
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    if-nez v1, :cond_4d

    .line 139
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateScreenInfo()V

    .line 143
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_29

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    .line 145
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateSimpleReadyPalmInfo()V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSumMajor()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4d

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mPalmTouchCnt:I

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4d

    .line 149
    :cond_4b
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    .line 152
    :cond_4d
    return-void
.end method

.method public setEnabledPalmScreenOff(Z)V
    .registers 2
    .param p1, "mIsEnabledPalmScreenOff"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmScreenOff:Z

    .line 99
    return-void
.end method

.method public setEnabledPalmTouch(Z)V
    .registers 2
    .param p1, "mIsEnabledPalmTouch"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsEnabledPalmTouch:Z

    .line 91
    return-void
.end method

.method public setLargePalmTouchDown(Z)V
    .registers 2
    .param p1, "mIsLargePalmTouchDown"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsLargePalmTouchDown:Z

    .line 79
    return-void
.end method

.method public setPalmTouchDown(Z)V
    .registers 2
    .param p1, "mIsPalmTouchDown"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsPalmTouchDown:Z

    .line 71
    return-void
.end method

.method public setReadyPalmTouch(Z)V
    .registers 2
    .param p1, "mIsReadyPalmTouch"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->mIsReadyPalmTouch:Z

    .line 83
    return-void
.end method

.method public setThresholdMajorTouch(F)V
    .registers 2
    .param p1, "ThresholdMajorTouch"    # F

    .line 114
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_MAJOR_TOUCH:F

    .line 115
    return-void
.end method

.method public setThresholdPalmCount(I)V
    .registers 2
    .param p1, "ThresholdPalmCount"    # I

    .line 106
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->THRESHOLD_PALM_COUNT:I

    .line 107
    return-void
.end method
