.class public Lcom/android/server/biometrics/sensors/face/aidl/TestHal;
.super Landroid/hardware/biometrics/face/IFace$Stub;
.source "TestHal.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "face.aidl.TestHal"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/hardware/biometrics/face/IFace$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;
    .registers 6

    .line 56
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

    const-string p2, "face.aidl.TestHal"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    invoke-direct {p1, p0, p3}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V

    return-object p1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "74b0b7cb149ee205b12cd2254d216725c6e5429c"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;
    .registers 2

    const-string p0, "face.aidl.TestHal"

    const-string/jumbo v0, "getSensorProps"

    .line 50
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/biometrics/face/SensorProps;

    return-object p0
.end method
