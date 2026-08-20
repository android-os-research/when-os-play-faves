.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;
.super Landroid/hardware/fingerprint/FingerprintServiceReceiver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final numSensors:I

.field public sensorsFinishedRemoving:I

.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field public final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 3

    .line 690
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintServiceReceiver;-><init>()V

    const/4 p2, 0x0

    .line 691
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->sensorsFinishedRemoving:I

    .line 692
    iget-object p2, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 693
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    .line 692
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 693
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->numSensors:I

    return-void
.end method


# virtual methods
.method public onError(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 710
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V

    return-void
.end method

.method public onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_38

    .line 697
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->sensorsFinishedRemoving:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->sensorsFinishedRemoving:I

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sensorsFinishedRemoving: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->sensorsFinishedRemoving:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", numSensors: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->numSensors:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerprintService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->sensorsFinishedRemoving:I

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->numSensors:I

    if-ne p1, p2, :cond_38

    .line 701
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V

    :cond_38
    return-void
.end method
