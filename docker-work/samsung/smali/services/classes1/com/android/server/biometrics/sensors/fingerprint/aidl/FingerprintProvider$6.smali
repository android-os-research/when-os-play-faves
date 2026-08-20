.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;
.super Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;
.source "FingerprintProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$semScheduleUpdateTrustApp$25(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/biometrics/log/BiometricContext;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 1173
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/biometrics/log/BiometricContext;)V

    return-void
.end method


# virtual methods
.method public sehInstallTAEnd([B)I
    .registers 8

    .line 1190
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    const/16 v2, 0x2711

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$mhandleRequestCommandWithoutScheduler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;III[B[B)I

    move-result p0

    return p0
.end method

.method public sehInstallTAStart()I
    .registers 7

    .line 1176
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    const/16 v2, 0x2711

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$mhandleRequestCommandWithoutScheduler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;III[B[B)I

    move-result p0

    return p0
.end method

.method public sehInstallTAWrite([B)I
    .registers 8

    .line 1183
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    const/16 v2, 0x2711

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$mhandleRequestCommandWithoutScheduler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;III[B[B)I

    move-result p0

    return p0
.end method
