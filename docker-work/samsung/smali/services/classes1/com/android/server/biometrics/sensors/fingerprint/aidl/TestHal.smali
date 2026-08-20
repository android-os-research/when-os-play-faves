.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;
.super Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;
.source "TestHal.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "fingerprint.aidl.TestHal"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
    .registers 6

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fingerprint.aidl.TestHal"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    invoke-direct {p1, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-object p1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "c2f3b863b6dff925bc4451473ee6caa1aa304b8f"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;
    .registers 2

    const-string p0, "fingerprint.aidl.TestHal"

    const-string/jumbo v0, "getSensorProps"

    .line 49
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    return-object p0
.end method
