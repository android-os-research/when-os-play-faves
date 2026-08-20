.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;
.super Ljava/lang/Object;
.source "FingerprintProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


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

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;)V
    .registers 3

    .line 1195
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;->val$client:Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    if-eqz p2, :cond_1b

    .line 1199
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;->val$client:Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$mupdateCacheForHAL(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V

    .line 1200
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmDaemonSdkVersion(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpHalInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
