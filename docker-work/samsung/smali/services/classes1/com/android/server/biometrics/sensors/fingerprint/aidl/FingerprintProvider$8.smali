.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;
.super Ljava/lang/Object;
.source "FingerprintProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$semProcessFidoCommand$26(ILcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1240
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    .line 1243
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
