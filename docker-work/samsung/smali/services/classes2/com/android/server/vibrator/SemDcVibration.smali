.class public Lcom/android/server/vibrator/SemDcVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "SemDcVibration.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    return-void
.end method


# virtual methods
.method public getVibration()Lcom/android/server/vibrator/Vibration;
    .registers 16

    .line 14
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_8
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    int-to-long v0, v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v4

    .line 23
    new-instance v0, Lcom/android/server/vibrator/Vibration;

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/vibrator/SemVibration;->mId:I

    iget-object v5, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    iget v6, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    iget-object v7, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/SemVibration;->getPatternFrequencyByIndex(I)I

    move-result v13

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JII[I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semDcVibrate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
