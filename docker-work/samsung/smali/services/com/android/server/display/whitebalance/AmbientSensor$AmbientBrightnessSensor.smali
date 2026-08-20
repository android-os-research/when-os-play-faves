.class public Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
.super Lcom/android/server/display/whitebalance/AmbientSensor;
.source "AmbientSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/whitebalance/AmbientSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmbientBrightnessSensor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AmbientBrightnessSensor"


# instance fields
.field public mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V
    .registers 5

    const-string v0, "AmbientBrightnessSensor"

    .line 251
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/display/whitebalance/AmbientSensor;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    .line 252
    iget-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    return-void

    .line 254
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot find light sensor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 280
    invoke-super {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->dump(Ljava/io/PrintWriter;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 271
    :cond_6
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    const/4 p0, 0x1

    return p0
.end method

.method public update(F)V
    .registers 2

    .line 290
    iget-object p0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    if-eqz p0, :cond_7

    .line 291
    invoke-interface {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;->onAmbientBrightnessChanged(F)V

    :cond_7
    return-void
.end method
