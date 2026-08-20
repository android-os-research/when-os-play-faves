.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;
.super Ljava/lang/Object;
.source "SemFpBaseAuthenticationClient.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireBoosting(Landroid/content/Context;)V
    .registers 3

    .line 176
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object p0

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireFingerprintDvfs(Landroid/content/Context;I)V

    return-void
.end method

.method public checkTDDIDoubleTap(Landroid/content/Context;)Z
    .registers 4

    .line 150
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    .line 152
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result p0

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_13

    return v0

    .line 157
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "double_tab_to_wake_up"

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0
.end method

.method public createBiometricNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/biometrics/SemBiometricNotification;
    .registers 4

    .line 128
    new-instance p0, Lcom/android/server/biometrics/SemBiometricNotification;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/biometrics/SemBiometricNotification;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object p0
.end method

.method public createUdfpsSysUiImpl(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;Z)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;
    .registers 5

    .line 121
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;-><init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public enableEarlyWakeUp(Landroid/content/Context;)V
    .registers 2

    .line 138
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 p1, 0x1

    .line 139
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->setEarlyWakeUp(Z)V

    return-void
.end method

.method public getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;
    .registers 3

    const-string p0, "biometric"

    .line 108
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 107
    invoke-static {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    .line 111
    :try_start_a
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_2b

    :catch_f
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBiometricPrompt: failed to get prompt info"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_2b
    return-object p0
.end method

.method public isFoldedInFlipType(Landroid/content/Context;)Z
    .registers 2

    .line 143
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isInteractive(Landroid/content/Context;)Z
    .registers 2

    .line 133
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 134
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 162
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public releaseBoosting(Landroid/content/Context;)V
    .registers 3

    .line 181
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    return-void
.end method

.method public sendBigDataForAuthenticationFail(Ljava/lang/String;JZ)V
    .registers 8

    .line 223
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const-string v0, "FPIF"

    const/4 v1, -0x1

    const/4 v2, 0x3

    .line 224
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 228
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FPTF"

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p2, 0x2

    if-eqz p4, :cond_1e

    const-string p3, "FPOF"

    .line 231
    invoke-virtual {p0, p3, p1, v1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_23

    :cond_1e
    const-string p3, "FPFF"

    .line 234
    invoke-virtual {p0, p3, p1, v1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_23
    return-void
.end method

.method public sendBigDataForAuthenticationSucceed(Ljava/lang/String;JIIZ)V
    .registers 10

    .line 200
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const-string v0, "FPIS"

    const/4 v1, -0x1

    const/4 v2, 0x3

    .line 201
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 204
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FPTS"

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p2, 0x2

    if-eqz p6, :cond_1e

    const-string p3, "FPOS"

    .line 206
    invoke-virtual {p0, p3, p1, v1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_23

    :cond_1e
    const-string p3, "FPFS"

    .line 209
    invoke-virtual {p0, p3, p1, v1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 214
    :goto_23
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FPSF"

    .line 213
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 218
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FPSQ"

    .line 217
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public sendBigDataForError(IILjava/lang/String;)V
    .registers 4

    .line 194
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogError(IILjava/lang/String;)V

    return-void
.end method

.method public startLogging(JZLjava/lang/String;)V
    .registers 5

    .line 186
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    long-to-int p1, p1

    if-eqz p3, :cond_a

    const-string p2, "AP"

    goto :goto_c

    :cond_a
    const-string p2, "A"

    :goto_c
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStart(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vibrateError(Landroid/content/Context;)V
    .registers 2

    const/4 p0, 0x5

    .line 172
    invoke-static {p1, p0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    return-void
.end method

.method public vibrateSuccess(Landroid/content/Context;)V
    .registers 2

    const/4 p0, 0x1

    .line 167
    invoke-static {p1, p0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    return-void
.end method
