.class public Lcom/android/server/biometrics/AuthService$Injector;
.super Ljava/lang/Object;
.source "AuthService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 174
    const-class p0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getBiometricService()Landroid/hardware/biometrics/IBiometricService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "biometric"

    .line 118
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 117
    invoke-static {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 140
    invoke-static {}, Lcom/android/server/biometrics/Utils;->getSensorConfiguration()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceService()Landroid/hardware/face/IFaceService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "face"

    .line 160
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 159
    invoke-static {p0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "fingerprint"

    .line 151
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 150
    invoke-static {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object p0

    return-object p0
.end method

.method public getIrisService()Landroid/hardware/iris/IIrisService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo p0, "iris"

    .line 169
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 168
    invoke-static {p0}, Landroid/hardware/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/iris/IIrisService;

    move-result-object p0

    return-object p0
.end method

.method public isHidlDisabled(Landroid/content/Context;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 182
    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    const/4 v0, 0x0

    if-nez p0, :cond_b

    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    return v0

    .line 183
    :cond_b
    :goto_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string v1, "com.android.server.biometrics.AuthService.hidlDisabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1a

    move v0, p1

    :cond_1a
    return v0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "auth"

    .line 126
    # invokes: Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {p1, p0, p2}, Lcom/android/server/biometrics/AuthService;->access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
