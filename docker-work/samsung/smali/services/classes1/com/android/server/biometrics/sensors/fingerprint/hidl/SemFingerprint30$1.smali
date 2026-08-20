.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$1;
.super Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;
.source "SemFingerprint30.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->lambda$semScheduleUpdateTrustApp$1(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/biometrics/log/BiometricContext;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 124
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

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
    .registers 5

    .line 139
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    const/16 v0, 0x2711

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->-$$Nest$mhandleRequestCommandWithoutScheduler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;II[B[B)I

    move-result p0

    return p0
.end method

.method public sehInstallTAStart()I
    .registers 4

    .line 127
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    const/16 v0, 0x2711

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->-$$Nest$mhandleRequestCommandWithoutScheduler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;II[B[B)I

    move-result p0

    return p0
.end method

.method public sehInstallTAWrite([B)I
    .registers 5

    .line 133
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    const/16 v0, 0x2711

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->-$$Nest$mhandleRequestCommandWithoutScheduler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;II[B[B)I

    move-result p0

    return p0
.end method
