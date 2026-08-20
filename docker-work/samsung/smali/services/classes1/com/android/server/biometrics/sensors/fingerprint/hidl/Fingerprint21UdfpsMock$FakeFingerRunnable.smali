.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;
.super Ljava/lang/Object;
.source "Fingerprint21UdfpsMock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FakeFingerRunnable"
.end annotation


# instance fields
.field public mCaptureDuration:I

.field public mFingerDownTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public isImageCaptureComplete()Z
    .registers 5

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;->mFingerDownTime:J

    sub-long/2addr v0, v2

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;->mCaptureDuration:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public setSimulationTime(JI)V
    .registers 4

    .line 273
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;->mFingerDownTime:J

    .line 274
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;->mCaptureDuration:I

    return-void
.end method
