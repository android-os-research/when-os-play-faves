.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createHalResultCallback()Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardwareUnavailable()V
    .registers 3

    .line 584
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fputmDaemon(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V

    .line 585
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    const/16 v0, -0x2710

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V

    return-void
.end method

.method public onSemAcquire(III)V
    .registers 4

    .line 600
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mdispatchAcquisitionEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;III)V

    return-void
.end method

.method public onSemAuthenticated(Z)V
    .registers 2

    .line 615
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mdispatchOnAuthenticated(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Z)V

    return-void
.end method

.method public onSemEnrolled()V
    .registers 1

    .line 610
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mdispatchOnEnrolledEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    return-void
.end method

.method public onSemError(III)V
    .registers 4

    .line 605
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mdispatchErrorEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;III)V

    return-void
.end method

.method public onSemGestureEvent(I)V
    .registers 2

    .line 595
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mdispatchGestureEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V

    return-void
.end method

.method public onSemSpenEvent(I)V
    .registers 2

    .line 590
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mdispatchSpenEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V

    return-void
.end method
