.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;
.super Ljava/lang/Object;
.source "Fingerprint21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onHardwareUnavailable()V
.end method

.method public abstract onSemAcquire(III)V
.end method

.method public abstract onSemAuthenticated(Z)V
.end method

.method public abstract onSemEnrolled()V
.end method

.method public abstract onSemError(III)V
.end method

.method public abstract onSemGestureEvent(I)V
.end method

.method public abstract onSemSpenEvent(I)V
.end method
