.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;
.super Ljava/lang/Object;
.source "SemFpGestureManager.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->startCalibration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalibrationFinished()V
    .registers 1

    .line 368
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$mhandleOnChangeSettingValue(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    return-void
.end method

.method public onCalibrationStarted()V
    .registers 2

    .line 363
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    return-void
.end method
