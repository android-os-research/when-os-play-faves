.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;
.super Ljava/lang/Object;
.source "FaceProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleEnroll$5(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;I[BLjava/lang/String;J[ILandroid/view/Surface;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$sensorId:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .registers 4

    .line 413
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 4

    if-eqz p2, :cond_1c

    .line 418
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$userId:I

    invoke-static {p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$mscheduleLoadAuthenticatorIdsForUser(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    .line 422
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 423
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$userId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInvalidationRequest(II)V

    :cond_1c
    return-void
.end method
