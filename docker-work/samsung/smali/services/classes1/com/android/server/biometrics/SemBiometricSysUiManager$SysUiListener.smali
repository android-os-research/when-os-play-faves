.class public interface abstract Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
.super Ljava/lang/Object;
.source "SemBiometricSysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBiometricSysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SysUiListener"
.end annotation


# virtual methods
.method public onDismissed(I[B)V
    .registers 3

    return-void
.end method

.method public abstract onError(II)V
.end method

.method public onEvent(II)V
    .registers 3

    return-void
.end method

.method public onTouchEvent(I)V
    .registers 2

    return-void
.end method

.method public onTryAgainPressed(I)V
    .registers 2

    return-void
.end method
