.class public Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;
.super Ljava/lang/Object;
.source "SemBiometricSysUiReceiver.java"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBiometricSysUiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiReceiver;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(I[B)V
    .registers 3

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onDialogDismissed(I[B)V

    return-void
.end method

.method public onError(II)V
    .registers 3

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onSysUiError(II)V

    return-void
.end method

.method public onEvent(II)V
    .registers 3

    packed-switch p1, :pswitch_data_16

    goto :goto_15

    .line 41
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onDialogAnimatedIn()V

    goto :goto_15

    .line 38
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onSystemEvent(I)V

    goto :goto_15

    .line 35
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onDeviceCredentialPressed()V

    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x3ea
        :pswitch_10
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public onTryAgainPressed(I)V
    .registers 2

    .line 23
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onTryAgainPressed(I)V

    return-void
.end method
