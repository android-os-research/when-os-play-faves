.class public Lcom/android/server/vibrator/SemCustomVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "SemCustomVibration.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

.field public final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;Landroid/os/vibrator/SemHapticSegment;Lcom/android/server/vibrator/VibrationSettings;Landroid/content/Context;)V
    .registers 5

    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    .line 21
    iput-object p2, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    .line 22
    iput-object p3, p0, Lcom/android/server/vibrator/SemCustomVibration;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 23
    iput-object p4, p0, Lcom/android/server/vibrator/SemCustomVibration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCustomAmplitudeData(Ljava/lang/String;I)[I
    .registers 8

    const-string v0, "#"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 89
    aget-object p1, p1, v0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 90
    array-length v0, p1

    new-array v0, v0, [I

    .line 91
    iget-object p0, p0, Lcom/android/server/vibrator/SemCustomVibration;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getMaxMagnitude()I

    move-result p0

    int-to-double v1, p0

    int-to-double v3, p2

    div-double/2addr v1, v3

    const/4 p0, 0x0

    .line 94
    :goto_1c
    :try_start_1c
    array-length p2, p1

    if-ge p0, p2, :cond_31

    .line 95
    aget-object p2, p1, p0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-double v3, p2

    div-double/2addr v3, v1

    double-to-int p2, v3

    aput p2, v0, p0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_2a} :catch_2d

    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :catch_2d
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_31
    return-object v0
.end method

.method public final getCustomPatternData(Ljava/lang/String;)[J
    .registers 5

    const-string p0, "#"

    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 73
    aget-object p0, p0, p1

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 74
    array-length v0, p0

    new-array v0, v0, [J

    .line 77
    :goto_12
    :try_start_12
    array-length v1, p0

    if-ge p1, v1, :cond_24

    .line 78
    aget-object v1, p0, p1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, v0, p1
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1d} :catch_20

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :catch_20
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_24
    return-object v0
.end method

.method public getVibration()Lcom/android/server/vibrator/Vibration;
    .registers 18

    move-object/from16 v1, p0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    return-object v2

    .line 34
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 35
    iget-object v0, v1, Lcom/android/server/vibrator/SemCustomVibration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 36
    :try_start_14
    iget-object v0, v1, Lcom/android/server/vibrator/SemCustomVibration;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->getCategoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "vibration_pattern=?"

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget v10, v1, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 38
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    const/4 v10, 0x0

    .line 36
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_33} :catch_87
    .catchall {:try_start_14 .. :try_end_33} :catchall_85

    if-eqz v5, :cond_64

    .line 39
    :try_start_35
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "custom_data"

    .line 40
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_71

    .line 42
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_53

    .line 44
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_77

    .line 56
    :try_start_4c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_87
    .catchall {:try_start_4c .. :try_end_4f} :catchall_85

    .line 59
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 47
    :cond_53
    :try_start_53
    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/SemCustomVibration;->getCustomPatternData(Ljava/lang/String;)[J

    move-result-object v6

    .line 48
    iget v7, v1, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    invoke-virtual {v1, v0, v7}, Lcom/android/server/vibrator/SemCustomVibration;->getCustomAmplitudeData(Ljava/lang/String;I)[I

    move-result-object v0

    .line 49
    iget v7, v1, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-static {v6, v0, v7}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v2

    goto :goto_71

    .line 52
    :cond_64
    iget-object v0, v1, Lcom/android/server/vibrator/SemCustomVibration;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    .line 53
    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->getDefaultSepIndex()I

    move-result v0

    iget v6, v1, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-static {v0, v6}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_77

    move-object v2, v0

    :cond_71
    :goto_71
    if-eqz v5, :cond_8b

    .line 56
    :try_start_73
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_87
    .catchall {:try_start_73 .. :try_end_76} :catchall_85

    goto :goto_8b

    :catchall_77
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_84

    .line 36
    :try_start_7b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_84

    :catchall_7f
    move-exception v0

    move-object v5, v0

    :try_start_81
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_84
    :goto_84
    throw v6
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_85} :catch_87
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception v0

    goto :goto_b9

    :catch_87
    move-exception v0

    .line 57
    :try_start_88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_85

    .line 59
    :cond_8b
    :goto_8b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_95

    .line 63
    iget v0, v1, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    invoke-virtual {v2, v0}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    .line 65
    :cond_95
    invoke-static {v2}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v6

    .line 67
    new-instance v0, Lcom/android/server/vibrator/Vibration;

    iget-object v4, v1, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    iget v5, v1, Lcom/android/server/vibrator/SemVibration;->mId:I

    iget-object v7, v1, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    iget v8, v1, Lcom/android/server/vibrator/SemVibration;->mUid:I

    iget-object v9, v1, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    iget v14, v1, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    iget v2, v1, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 68
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/SemVibration;->getPatternFrequencyByIndex(I)I

    move-result v15

    const/16 v16, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v16}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JII[I)V

    return-object v0

    .line 59
    :goto_b9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semCustomVibrate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
