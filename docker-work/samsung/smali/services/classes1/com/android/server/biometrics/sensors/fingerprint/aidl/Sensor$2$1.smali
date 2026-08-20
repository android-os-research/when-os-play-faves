.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;)V
    .registers 2

    .line 620
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardwareUnavailable()V
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got ERROR_HW_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    return-void
.end method

.method public onSemAcquire(III)V
    .registers 4

    .line 639
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchAcquisitionEvent(III)V

    return-void
.end method

.method public onSemAuthenticated(Z)V
    .registers 2

    .line 654
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchOnAuthenticated(Z)V

    return-void
.end method

.method public onSemChallengeGenerated(J)V
    .registers 3

    .line 659
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$mupdateChallenge(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;J)V

    return-void
.end method

.method public onSemEnrolled()V
    .registers 1

    .line 649
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchOnEnrolledEvent()V

    return-void
.end method

.method public onSemError(III)V
    .registers 4

    .line 644
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchErrorEvent(III)V

    return-void
.end method

.method public onSemGestureEvent(I)V
    .registers 2

    .line 634
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchGestureEvent(I)V

    return-void
.end method

.method public onSemSpenEvent(I)V
    .registers 2

    .line 629
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchSpenEvent(I)V

    return-void
.end method
