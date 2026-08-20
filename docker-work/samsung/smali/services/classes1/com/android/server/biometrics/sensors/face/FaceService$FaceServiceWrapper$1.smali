.class public Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;
.super Landroid/hardware/face/FaceServiceReceiver;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final numSensors:I

.field public sensorsFinishedRemoving:I

.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

.field public final synthetic val$receiver:Landroid/hardware/face/IFaceServiceReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/IFaceServiceReceiver;)V
    .registers 3

    .line 576
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-direct {p0}, Landroid/hardware/face/FaceServiceReceiver;-><init>()V

    const/4 p2, 0x0

    .line 577
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    .line 578
    iget-object p2, p1, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 579
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    .line 578
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 579
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    return-void
.end method


# virtual methods
.method public onError(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeAll internalReceiver : error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-interface {p0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V

    return-void
.end method

.method public onRemoved(Landroid/hardware/face/Face;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_40

    .line 583
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sensorsFinishedRemoving: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", numSensors: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    if-ne p1, p2, :cond_40

    .line 588
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    new-instance p1, Landroid/hardware/face/Face;

    const-wide/16 v0, 0x0

    const-string p2, ""

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2, v0, v1}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-interface {p0, p1, v2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(Landroid/hardware/face/Face;I)V

    :cond_40
    return-void
.end method
