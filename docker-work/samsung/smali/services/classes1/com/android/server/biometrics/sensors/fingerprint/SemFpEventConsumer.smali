.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;
.super Ljava/lang/Object;
.source "SemFpEventConsumer.java"


# virtual methods
.method public onAcquire(IIII)V
    .registers 5

    return-void
.end method

.method public onAuthenticated(Z)V
    .registers 2

    return-void
.end method

.method public onAuthenticationStarted()V
    .registers 1

    return-void
.end method

.method public onAuthenticationStopped()V
    .registers 1

    return-void
.end method

.method public onEnrollStarted(I)V
    .registers 2

    return-void
.end method

.method public onEnrolled(I)V
    .registers 2

    return-void
.end method

.method public onError(II)V
    .registers 3

    return-void
.end method

.method public onGestureEvent(I)V
    .registers 2

    return-void
.end method

.method public onSpenEvent(I)V
    .registers 2

    return-void
.end method
