.class public Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;
.super Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;
.source "SemFaceServiceExImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/content/Context;)V
    .registers 3

    .line 322
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .line 325
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_41

    .line 326
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x0

    .line 327
    aget v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_29

    .line 328
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PROXIMITY] onSensorChanged : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFace"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void
.end method
