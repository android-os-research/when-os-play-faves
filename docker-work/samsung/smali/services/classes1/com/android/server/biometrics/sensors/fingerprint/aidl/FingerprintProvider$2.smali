.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$2;
.super Ljava/lang/Object;
.source "FingerprintProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleGenerateChallenge$4(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .registers 2

    .line 476
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    if-eqz p2, :cond_9

    .line 480
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mChallengeMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;->onChallengeGenerated()V

    :cond_9
    return-void
.end method
