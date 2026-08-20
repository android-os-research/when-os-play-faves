.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;
.super Lcom/android/server/biometrics/sensors/BiometricScheduler;
.source "Fingerprint21UdfpsMock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestableBiometricScheduler"
.end annotation


# instance fields
.field public mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V
    .registers 4

    const/4 p2, 0x3

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    return-void
.end method
