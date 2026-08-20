.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;
.super Ljava/lang/Object;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDisplayStateMonitor(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;
    .registers 2

    .line 142
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createGestureManager(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;
    .registers 3

    .line 119
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    return-object p0
.end method

.method public createOneHandModeMonitor(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;
    .registers 3

    .line 137
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    return-object p0
.end method

.method public createProtectiveFilmGuide(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;
    .registers 3

    .line 131
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    return-object p0
.end method

.method public createSpenConstraintHandler(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;
    .registers 3

    .line 125
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    return-object p0
.end method

.method public getBioAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .registers 1

    .line 113
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    return-object p0
.end method

.method public getSysUiManager()Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .registers 1

    .line 108
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p0

    return-object p0
.end method

.method public getUdfpsHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
    .registers 1

    .line 103
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object p0

    return-object p0
.end method

.method public getUserOrWorkProfileId(Landroid/content/Context;I)I
    .registers 3

    .line 98
    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public isInteractive(Landroid/content/Context;)Z
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_e

    .line 92
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 94
    :cond_e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method
