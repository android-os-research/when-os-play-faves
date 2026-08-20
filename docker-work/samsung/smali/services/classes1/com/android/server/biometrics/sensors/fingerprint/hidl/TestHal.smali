.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;
.super Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Stub;
.source "TestHal.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "fingerprint.hidl.TestHal"


# instance fields
.field public mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field public final mContext:Landroid/content/Context;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 46
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Stub;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mSensorId:I

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .registers 4

    const-string p0, "fingerprint.hidl.TestHal"

    const-string p1, "Authenticate"

    .line 144
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public cancel()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    const-wide/16 v1, 0x0

    const/4 v3, 0x5

    .line 96
    invoke-interface {p0, v1, v2, v3, v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onError(JII)V

    :cond_b
    return v0
.end method

.method public enroll([BII)I
    .registers 4

    const-string p0, "fingerprint.hidl.TestHal"

    const-string p1, "enroll"

    .line 79
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public enumerate()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.hidl.TestHal"

    const-string v1, "Enumerate"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    if-eqz v2, :cond_13

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 105
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onEnumerate(JIII)V

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getAuthenticatorId()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isUdfps(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onFingerDown(IIFF)V
    .registers 5

    return-void
.end method

.method public onFingerUp()V
    .registers 1

    return-void
.end method

.method public postEnroll()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public preEnroll()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public remove(II)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.hidl.TestHal"

    const-string v1, "Remove"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const/4 v0, 0x0

    if-eqz v2, :cond_56

    if-nez p2, :cond_4e

    .line 117
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mSensorId:I

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p2, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    .line 120
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2b

    .line 121
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(JIII)V

    return v0

    :cond_2b
    move v1, v0

    .line 125
    :goto_2c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 126
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 127
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const-wide/16 v4, 0x0

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    .line 128
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v8, v2, -0x1

    move v7, p1

    .line 127
    invoke-interface/range {v3 .. v8}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(JIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_4e
    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p2

    move v6, p1

    .line 131
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(JIII)V

    :cond_56
    return v0
.end method

.method public setActiveGroup(ILjava/lang/String;)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const-wide/16 p0, 0x0

    return-wide p0
.end method
