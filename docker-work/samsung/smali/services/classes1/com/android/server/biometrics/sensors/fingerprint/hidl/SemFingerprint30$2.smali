.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$2;
.super Ljava/lang/Object;
.source "SemFingerprint30.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


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
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    if-eqz p2, :cond_15

    .line 147
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->updateCacheForHAL()V

    .line 148
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->-$$Nest$fgetmDaemonSdkVersion(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpHalInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
