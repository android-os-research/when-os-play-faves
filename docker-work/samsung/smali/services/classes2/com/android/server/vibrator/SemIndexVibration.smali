.class public Lcom/android/server/vibrator/SemIndexVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "SemIndexVibration.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;)V
    .registers 2

    .line 6
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    return-void
.end method


# virtual methods
.method public getVibration()Lcom/android/server/vibrator/Vibration;
    .registers 16

    .line 11
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_8
    new-instance v14, Lcom/android/server/vibrator/Vibration;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mId:I

    iget-object v3, p0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    iget v5, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    iget-object v6, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    const-wide/16 v8, 0x1388

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JII[I)V

    return-object v14
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semIndexVibrate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
