.class public interface abstract Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;
.super Ljava/lang/Object;
.source "SemTestHalHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/SemTestHalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract deliverAcquiredEvent(II)V
.end method

.method public abstract deliverAuthenticationResult(I)V
.end method

.method public abstract deliverEnrollResult(I)V
.end method

.method public deliverEnumerate(III)V
    .registers 4

    return-void
.end method

.method public abstract deliverErrorEvent(II)V
.end method

.method public deliverTspEvent(I)V
    .registers 2

    return-void
.end method
