.class public Lcom/android/server/vibrator/SemPatternVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "SemPatternVibration.java"


# instance fields
.field public mIsColorful:Z

.field public mIsExecutablePkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsColorful:Z

    return-void
.end method


# virtual methods
.method public final colorfulInvalidation([I)Z
    .registers 6

    const-string p0, "VibratorManagerService"

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p1, "colorful data is null"

    .line 97
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 100
    :cond_b
    array-length v1, p1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2d

    .line 101
    aget v1, p1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2d

    aget v1, p1, v3

    if-nez v1, :cond_2d

    const/4 v1, 0x2

    aget v1, p1, v1

    if-nez v1, :cond_2d

    const/4 v1, 0x3

    aget v1, p1, v1

    if-nez v1, :cond_2d

    aget v1, p1, v2

    if-nez v1, :cond_2d

    const-string p1, "Empty pattern for haptic engine."

    .line 103
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 107
    :cond_2d
    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->isColorfulDataFormat([I)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "data is not colorful data"

    .line 108
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_39
    return v3
.end method

.method public final getColorfulData(I)[I
    .registers 4

    const/4 v0, 0x0

    .line 72
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sub-int v0, p1, v0

    .line 74
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 76
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    return-object p0

    .line 78
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColorfulData(), IndexOutOfBoundsException occurred, type:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 82
    fill-array-data p0, :array_38

    return-object p0

    nop

    :array_38
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public final getColorfulPattern([J)[J
    .registers 12

    .line 124
    array-length p0, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p0, v2, :cond_e

    .line 126
    aget-wide v4, p1, v3

    cmp-long p0, v4, v0

    if-gez p0, :cond_e

    return-object p1

    :cond_e
    new-array p0, v2, [J

    .line 133
    array-length v2, p1

    move v4, v3

    move v5, v4

    :goto_13
    if-ge v4, v2, :cond_1d

    aget-wide v6, p1, v4

    int-to-long v8, v5

    add-long/2addr v8, v6

    long-to-int v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1d
    aput-wide v0, p0, v3

    int-to-long v0, v5

    const/4 p1, 0x1

    aput-wide v0, p0, p1

    return-object p0
.end method

.method public final getColorfulVibration([I)Lcom/android/server/vibrator/Vibration;
    .registers 23

    move-object/from16 v0, p0

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/vibrator/SemPatternVibration;->colorfulInvalidation([I)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_7e

    .line 37
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/vibrator/SemPatternVibration;->getMillisecondsFromColorfulData([I)J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long v15, v3, v5

    .line 39
    iget v1, v0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_22

    .line 40
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/vibrator/SemPatternVibration;->getCustomPattern([I)[J

    move-result-object v1

    goto :goto_26

    :cond_22
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/SemVibration;->getPatternByIndex(I)[J

    move-result-object v1

    .line 39
    :goto_26
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/SemPatternVibration;->getColorfulPattern([J)[J

    move-result-object v1

    .line 42
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_55

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not supported.(colorful)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 47
    :cond_55
    iget v4, v0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    if-le v4, v3, :cond_60

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    move-result v3

    if-nez v3, :cond_60

    return-object v2

    .line 51
    :cond_60
    new-instance v2, Lcom/android/server/vibrator/Vibration;

    iget-object v8, v0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    iget v9, v0, Lcom/android/server/vibrator/SemVibration;->mId:I

    iget-object v10, v0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v11, v0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    iget v12, v0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    iget-object v13, v0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/16 v19, -0x1

    move-object v7, v2

    move-object/from16 v17, v1

    move/from16 v18, v0

    move-object/from16 v20, p1

    invoke-direct/range {v7 .. v20}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JII[I)V

    :cond_7e
    :goto_7e
    return-object v2
.end method

.method public final getCustomPattern([I)[J
    .registers 12

    .line 142
    array-length p0, p1

    .line 143
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-gt v0, v2, :cond_c

    new-array p0, v1, [J

    .line 144
    fill-array-data p0, :array_4e

    return-object p0

    :cond_c
    add-int/lit8 v0, p0, -0x1

    .line 147
    div-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 149
    new-array v0, v0, [J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 153
    aput-wide v3, v0, v5

    .line 154
    aget v1, p1, v1

    if-eqz v1, :cond_1f

    move v1, v2

    move v3, v5

    goto :goto_21

    :cond_1f
    move v3, v2

    move v1, v5

    :goto_21
    move v4, v2

    :goto_22
    if-ge v4, p0, :cond_46

    add-int/lit8 v6, v4, 0x1

    if-ge v6, p0, :cond_43

    if-eqz v3, :cond_32

    .line 161
    aget v7, p1, v6

    if-eqz v7, :cond_32

    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_3b

    :cond_32
    if-nez v3, :cond_3b

    .line 164
    aget v6, p1, v6

    if-nez v6, :cond_3b

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .line 168
    :cond_3b
    :goto_3b
    aget-wide v6, v0, v1

    aget v8, p1, v4

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v0, v1

    :cond_43
    add-int/lit8 v4, v4, 0x4

    goto :goto_22

    :cond_46
    add-int/2addr v1, v2

    .line 174
    new-array p0, v1, [J

    .line 175
    invoke-static {v0, v5, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    nop

    :array_4e
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public final getMillisecondsFromColorfulData([I)J
    .registers 7

    .line 116
    array-length p0, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    :goto_4
    if-ge v2, p0, :cond_d

    .line 118
    aget v3, p1, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x4

    goto :goto_4

    :cond_d
    return-wide v0
.end method

.method public final getPatternVibration()Lcom/android/server/vibrator/Vibration;
    .registers 16

    .line 56
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/SemVibration;->getPatternByIndex(I)[J

    move-result-object v11

    .line 58
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0, v11}, Lcom/android/server/vibrator/SemPatternVibration;->patternInvalidation([J)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_40

    .line 62
    :cond_13
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-static {v11, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 63
    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    .line 64
    invoke-static {v0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v4

    .line 66
    new-instance v0, Lcom/android/server/vibrator/Vibration;

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/vibrator/SemVibration;->mId:I

    iget-object v5, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    iget v6, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    iget-object v7, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    const-wide/16 v9, -0x1

    iget v12, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/SemVibration;->getPatternFrequencyByIndex(I)I

    move-result v13

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JII[I)V

    return-object v0

    :cond_40
    :goto_40
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVibration()Lcom/android/server/vibrator/Vibration;
    .registers 3

    .line 22
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getIsHapticEngineSupported()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 23
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/SemPatternVibration;->getColorfulData(I)[I

    move-result-object v0

    .line 24
    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/SemPatternVibration;->hasColorfulData(I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsColorful:Z

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/SemPatternVibration;->getColorfulVibration([I)Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    return-object p0

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemPatternVibration;->getPatternVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    return-object p0
.end method

.method public final hasColorfulData(I[I)Z
    .registers 4

    .line 86
    array-length p0, p2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_25

    const/4 p0, 0x0

    .line 87
    aget p2, p2, p0

    if-gez p2, :cond_25

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported for engine."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VibratorManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method public final isAll0([J)Z
    .registers 8

    .line 208
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_11

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    const-string p0, "VibratorManagerService"

    const-string p1, "isAll0() is true"

    .line 213
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final isExecutablePattern([J)Z
    .registers 15

    const-string v0, "VibratorManagerService"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string p0, "isExecutablePattern() - pattern is null"

    .line 220
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 224
    :cond_b
    array-length v2, p1

    .line 225
    iget v3, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    if-lt v3, v2, :cond_2f

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExecutablePattern() - length = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", repeat = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 230
    :cond_2f
    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-lez v4, :cond_39

    return v5

    .line 234
    :cond_39
    div-int/lit8 v4, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, v3, :cond_45

    div-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, v2, :cond_51

    :cond_45
    div-int/lit8 v4, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, v3, :cond_5a

    div-int/lit8 v3, v2, 0x2

    mul-int/lit8 v3, v3, 0x2

    if-eq v3, v2, :cond_5a

    :cond_51
    add-int/lit8 v3, v2, -0x1

    .line 236
    aget-wide v3, p1, v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_5a

    return v5

    :cond_5a
    move v3, v1

    :goto_5b
    if-ge v3, v2, :cond_72

    .line 243
    iget v4, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    add-int/2addr v4, v3

    add-int/2addr v4, v5

    add-int/lit8 v8, v4, 0x1

    if-ge v8, v2, :cond_6f

    .line 245
    aget-wide v9, p1, v4

    aget-wide v11, p1, v8

    add-long/2addr v9, v11

    cmp-long v4, v9, v6

    if-lez v4, :cond_6f

    return v5

    :cond_6f
    add-int/lit8 v3, v3, 0x2

    goto :goto_5b

    .line 251
    :cond_72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This pattern is not executable. repeat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :goto_89
    if-ge v3, v2, :cond_ad

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pattern["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p1, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 256
    :cond_ad
    iget-object v0, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_f4

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    move v0, v1

    :goto_d7
    if-ge v0, v2, :cond_f4

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p1, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    :cond_f4
    return v1
.end method

.method public final patternInvalidation([J)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 182
    :cond_4
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "VibratorManagerService"

    if-ne v1, v2, :cond_53

    .line 183
    aget-wide v1, p1, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const-string v8, "This "

    if-nez v7, :cond_35

    aget-wide v9, p1, v3

    cmp-long v7, v9, v5

    if-nez v7, :cond_35

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is blank pattern.(common)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_35
    cmp-long v1, v1, v5

    if-gez v1, :cond_53

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported.(common)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 192
    :cond_53
    array-length v1, p1

    if-eqz v1, :cond_75

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/SemPatternVibration;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_75

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    array-length v2, p1

    if-ge v1, v2, :cond_75

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_66

    goto :goto_75

    :cond_66
    const/4 v2, -0x1

    if-le v1, v2, :cond_74

    .line 200
    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    if-ne v1, v2, :cond_74

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/SemPatternVibration;->isExecutablePattern([J)Z

    move-result p0

    if-nez p0, :cond_74

    return v0

    :cond_74
    return v3

    :cond_75
    :goto_75
    const-string/jumbo v1, "semPatternVibrate() is failed by illegal argument."

    .line 193
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semPatternVibrate() - pattern.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", repeat = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semPatternVibrate() - token = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/vibrator/SemPatternVibration;->mIsColorful:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "semColorfulVibrate : "

    goto :goto_10

    :cond_d
    const-string/jumbo v1, "semPatternVibrate : "

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
