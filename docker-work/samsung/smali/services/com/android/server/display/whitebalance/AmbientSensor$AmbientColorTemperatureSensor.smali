.class public Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
.super Lcom/android/server/display/whitebalance/AmbientSensor;
.source "AmbientSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/whitebalance/AmbientSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmbientColorTemperatureSensor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AmbientColorTemperatureSensor"


# instance fields
.field public mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "AmbientColorTemperatureSensor"

    .line 330
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/android/server/display/whitebalance/AmbientSensor;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    const/4 p1, 0x0

    .line 331
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensor:Landroid/hardware/Sensor;

    .line 332
    iget-object p2, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p4, -0x1

    invoke-virtual {p2, p4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/Sensor;

    .line 333
    invoke-virtual {p4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 334
    iput-object p4, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensor:Landroid/hardware/Sensor;

    .line 338
    :cond_2b
    iget-object p2, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_32

    .line 341
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    return-void

    .line 339
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot find sensor "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 365
    invoke-super {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->dump(Ljava/io/PrintWriter;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 356
    :cond_6
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    const/4 p0, 0x1

    return p0
.end method

.method public update(F)V
    .registers 2

    .line 375
    iget-object p0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    if-eqz p0, :cond_7

    .line 376
    invoke-interface {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;->onAmbientColorTemperatureChanged(F)V

    :cond_7
    return-void
.end method
