.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleEnroll$6(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;)V
    .registers 3

    .line 915
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    if-eqz p2, :cond_d

    .line 921
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    :cond_d
    return-void
.end method
