.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;
.super Ljava/lang/Object;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;
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

.method public abstract onSemChallengeGenerated(J)V
.end method

.method public abstract onSemEnrolled()V
.end method

.method public abstract onSemError(III)V
.end method

.method public abstract onSemGestureEvent(I)V
.end method

.method public abstract onSemSpenEvent(I)V
.end method
