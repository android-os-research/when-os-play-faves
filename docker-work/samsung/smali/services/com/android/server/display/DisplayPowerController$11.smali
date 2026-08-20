.class public Lcom/android/server/display/DisplayPowerController$11;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 4307
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 4310
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmProximitySensorEnabled(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4312
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_21

    .line 4313
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmProximityThreshold(Lcom/android/server/display/DisplayPowerController;)F

    move-result v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_21

    const/4 v2, 0x1

    .line 4314
    :cond_21
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] onSensorChanged: proximity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleProximitySensorEvent(Lcom/android/server/display/DisplayPowerController;JZ)V

    :cond_40
    return-void
.end method
