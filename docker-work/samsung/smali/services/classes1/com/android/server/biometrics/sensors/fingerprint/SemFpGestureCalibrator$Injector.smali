.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;
.super Ljava/lang/Object;
.source "SemFpGestureCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableGestureOption(Landroid/content/Context;)V
    .registers 4

    const-string p0, "fingerprint_gesture_quick"

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 77
    invoke-static {p1, p0, v0, v0, v1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZII)V

    const-string p0, "fingerprint_gesture_spay"

    .line 79
    invoke-static {p1, p0, v0, v0, v1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void
.end method

.method public getCalibrationState(Landroid/content/Context;)I
    .registers 5

    const-string p0, "fingerprint_gesture_calibration_state"

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 71
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I

    move-result p0

    return p0
.end method

.method public setCalibrationState(Landroid/content/Context;I)V
    .registers 4

    const-string p0, "fingerprint_gesture_calibration_state"

    const/4 v0, 0x1

    .line 66
    invoke-static {p1, p0, v0, p2}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method
