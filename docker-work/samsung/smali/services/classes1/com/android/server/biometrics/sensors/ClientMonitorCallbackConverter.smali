.class public Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
.super Ljava/lang/Object;
.source "ClientMonitorCallbackConverter.java"


# instance fields
.field public mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field public mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

.field public mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/face/IFaceServiceReceiver;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    return-void
.end method


# virtual methods
.method public onAcquired(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_8

    .line 84
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAcquired(III)V

    goto :goto_17

    .line 85
    :cond_8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_10

    .line 86
    invoke-interface {p1, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onAcquired(II)V

    goto :goto_17

    .line 87
    :cond_10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_17

    .line 88
    invoke-interface {p0, p2, p3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V

    :cond_17
    :goto_17
    return-void
.end method

.method public onAuthenticationFailed(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_8

    .line 120
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAuthenticationFailed(I)V

    goto :goto_17

    .line 121
    :cond_8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_10

    .line 122
    invoke-interface {p1}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed()V

    goto :goto_17

    .line 123
    :cond_10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_17

    .line 124
    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed()V

    :cond_17
    :goto_17
    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_7

    .line 218
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    :cond_7
    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_f

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 96
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onSemAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ[B)V

    goto :goto_26

    .line 102
    :cond_f
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_1d

    .line 105
    check-cast p2, Landroid/hardware/face/Face;

    .line 106
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getFidoResultData()[B

    move-result-object p0

    .line 105
    invoke-interface {p1, p2, p4, p5, p0}, Landroid/hardware/face/IFaceServiceReceiver;->onSemAuthenticationSucceeded(Landroid/hardware/face/Face;IZ[B)V

    goto :goto_26

    .line 112
    :cond_1d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_26

    .line 113
    check-cast p2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p0, p2, p4, p5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    :cond_26
    :goto_26
    return-void
.end method

.method public onChallengeGenerated(IIJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_8

    .line 173
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onChallengeGenerated(IIJ)V

    goto :goto_f

    .line 174
    :cond_8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_f

    .line 175
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onChallengeGenerated(IIJ)V

    :cond_f
    :goto_f
    return-void
.end method

.method public onDetected(IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_8

    .line 144
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onFaceDetected(IIZ)V

    goto :goto_f

    .line 145
    :cond_8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_f

    .line 146
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onFingerprintDetected(IIZ)V

    :cond_f
    :goto_f
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_a

    .line 153
    check-cast p1, Landroid/hardware/face/Face;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollResult(Landroid/hardware/face/Face;I)V

    goto :goto_13

    .line 154
    :cond_a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_13

    .line 155
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_7

    .line 231
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    :cond_7
    return-void
.end method

.method public onError(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_8

    .line 131
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onError(IIII)V

    goto :goto_17

    .line 132
    :cond_8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_10

    .line 133
    invoke-interface {p1, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V

    goto :goto_17

    .line 134
    :cond_10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_17

    .line 135
    invoke-interface {p0, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V

    :cond_17
    :goto_17
    return-void
.end method

.method public onFeatureGet(Z[I[Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_7

    .line 188
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureGet(Z[I[Z)V

    :cond_7
    return-void
.end method

.method public onFeatureSet(ZI)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_7

    .line 181
    invoke-interface {p0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureSet(ZI)V

    :cond_7
    return-void
.end method

.method public onImageProcessed([BIIIILandroid/os/Bundle;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_d

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 249
    invoke-interface/range {v0 .. v6}, Landroid/hardware/face/IFaceServiceReceiver;->onSemImageProcessed([BIIIILandroid/os/Bundle;)V

    :cond_d
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_a

    .line 163
    check-cast p1, Landroid/hardware/face/Face;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(Landroid/hardware/face/Face;I)V

    goto :goto_13

    .line 164
    :cond_a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_13

    .line 165
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onRequestResult(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    if-eqz p0, :cond_7

    .line 278
    invoke-interface {p0, p1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;->onResult(I)V

    :cond_7
    return-void
.end method

.method public onSemAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_38

    .line 258
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_2b

    .line 260
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_22

    .line 261
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "KEY_IDENTIFIER_NAME"

    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_22
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result p2

    const-string p5, "KEY_BIOMETRICS_ID"

    invoke-virtual {p4, p5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2b
    if-eqz p6, :cond_32

    const-string p2, "KEY_CHALLENGE_TOKEN"

    .line 266
    invoke-virtual {p4, p2, p6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 268
    :cond_32
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    invoke-interface {p0, p1, p3, p4}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onSemAuthenticationSucceeded(I[BLandroid/os/Bundle;)V

    goto :goto_41

    .line 269
    :cond_38
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_41

    .line 270
    check-cast p2, Landroid/hardware/face/Face;

    invoke-interface {p0, p2, p4, p5, p6}, Landroid/hardware/face/IFaceServiceReceiver;->onSemAuthenticationSucceeded(Landroid/hardware/face/Face;IZ[B)V

    :cond_41
    :goto_41
    return-void
.end method

.method public onSemTrustAppUpdateEvent(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    if-eqz v0, :cond_8

    .line 240
    invoke-interface {v0, p1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;->onResult(I)V

    goto :goto_11

    .line 241
    :cond_8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_11

    const-string v0, ""

    .line 242
    invoke-interface {p0, p1, v0}, Landroid/hardware/face/IFaceServiceReceiver;->onSemStatusUpdate(ILjava/lang/String;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public onUdfpsPointerDown(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_7

    .line 196
    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerDown(I)V

    :cond_7
    return-void
.end method

.method public onUdfpsPointerUp(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_7

    .line 202
    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerUp(I)V

    :cond_7
    return-void
.end method
