.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;
.super Ljava/lang/Object;
.source "SemFpGestureCalibrator.java"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/SemBiometricSysUiManager;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(I[B)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/samsung/android/biometrics/SemBiometricConstants$GestureCalibrationDismissedReason;
        .end annotation
    .end param

    .line 113
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->-$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;I)V

    return-void
.end method

.method public onError(II)V
    .registers 3

    .line 107
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->-$$Nest$mhandleOnError(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;II)V

    return-void
.end method

.method public onEvent(II)V
    .registers 3

    .line 102
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->-$$Nest$mhandleOnSysUiEvent(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;II)V

    return-void
.end method
