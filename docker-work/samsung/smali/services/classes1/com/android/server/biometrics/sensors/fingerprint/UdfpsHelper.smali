.class public Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;
.super Ljava/lang/Object;
.source "UdfpsHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UdfpsHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidAcquisitionMessage(Landroid/content/Context;II)Z
    .registers 3

    .line 80
    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V
    .registers 6

    .line 38
    instance-of v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    if-eqz v0, :cond_5

    return-void

    .line 43
    :cond_5
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object p0

    const-string v0, "UdfpsHelper"

    if-nez p0, :cond_14

    const-string/jumbo p0, "onFingerDown | failed to cast the HIDL to V2_3"

    .line 46
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_14
    :try_start_14
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerDown(IIFF)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    move-exception p0

    const-string/jumbo p1, "onFingerDown | RemoteException: "

    .line 53
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public static onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V
    .registers 3

    .line 59
    instance-of v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    if-eqz v0, :cond_5

    return-void

    .line 64
    :cond_5
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object p0

    const-string v0, "UdfpsHelper"

    if-nez p0, :cond_14

    const-string/jumbo p0, "onFingerUp | failed to cast the HIDL to V2_3"

    .line 67
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_14
    :try_start_14
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerUp()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    move-exception p0

    const-string/jumbo v1, "onFingerUp | RemoteException: "

    .line 74
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method
