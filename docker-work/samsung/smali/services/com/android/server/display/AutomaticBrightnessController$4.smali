.class public Lcom/android/server/display/AutomaticBrightnessController$4;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    .line 2035
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    .line 2038
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmProximitySensorEnabled(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2039
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2040
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    .line 2043
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmProximitySensor(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v3, v4, :cond_31

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_47

    .line 2044
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmProximityThreshold(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_47

    :goto_2f
    move v2, v5

    goto :goto_47

    .line 2046
    :cond_31
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmProximitySensor(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const v4, 0x10068

    if-ne v3, v4, :cond_47

    const/high16 v3, 0x41a80000    # 21.0f

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_47

    goto :goto_2f

    .line 2049
    :cond_47
    :goto_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] onSensorChanged: proximity: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "AutomaticBrightnessController"

    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mhandleProximitySensorEvent(Lcom/android/server/display/AutomaticBrightnessController;JZ)V

    :cond_62
    return-void
.end method
