.class public Lcom/android/server/biometrics/BiometricService$Injector;
.super Ljava/lang/Object;
.source "BiometricService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$BYjCZkREJX4ouairW7uSfjVEgXQ(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/BiometricService$Injector;->lambda$getRequestGenerator$0(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getRequestGenerator$0(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;
    .registers 3

    .line 1087
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAuthSessionExt(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Landroid/hardware/biometrics/IBiometricSysuiReceiver;)Lcom/android/server/biometrics/SemAuthSessionExt;
    .registers 12

    .line 1093
    new-instance p0, Lcom/android/server/biometrics/SemAuthSessionExt;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/SemAuthSessionExt;-><init>(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Landroid/hardware/biometrics/IBiometricSysuiReceiver;)V

    return-object p0
.end method

.method public getActivityManagerService()Landroid/app/IActivityManager;
    .registers 1

    .line 996
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;
    .registers 2

    .line 1039
    new-instance p0, Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricStrengthController;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-object p0
.end method

.method public getConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 1052
    invoke-static {}, Lcom/android/server/biometrics/Utils;->getSensorConfiguration()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .registers 2

    .line 1058
    const-class p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getFingerprintSensorProperties(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 1063
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 1064
    const-class p0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_1b

    .line 1066
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1069
    :cond_1b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .registers 1

    .line 1017
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method public getRequestGenerator()Ljava/util/function/Supplier;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1086
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1087
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v0
.end method

.method public getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;)",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;"
        }
    .end annotation

    .line 1013
    new-instance p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)V

    return-object p0
.end method

.method public getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1

    const-string/jumbo p0, "statusbar"

    .line 1005
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1004
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public getTrustManager()Landroid/app/trust/ITrustManager;
    .registers 1

    const-string/jumbo p0, "trust"

    .line 1000
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object p0

    return-object p0
.end method

.method public isAdvancedCoexLogicEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 1076
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "com.android.server.biometrics.sensors.CoexCoordinator.enable"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isCoexFaceNonBypassHapticsDisabled(Landroid/content/Context;)Z
    .registers 3

    .line 1081
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "com.android.server.biometrics.sensors.CoexCoordinator.disable_face_haptics"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isDebugEnabled(Landroid/content/Context;I)Z
    .registers 3

    .line 1024
    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V
    .registers 3

    const-string p0, "biometric"

    .line 1031
    # invokes: Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {p1, p0, p2}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
