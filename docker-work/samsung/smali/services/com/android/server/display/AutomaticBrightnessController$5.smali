.class public Lcom/android/server/display/AutomaticBrightnessController$5;
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

    .line 2102
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11

    .line 2106
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmAmbientLuxValid(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    const-string v1, "AutomaticBrightnessController"

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSensorChanged: 1st lux : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :cond_24
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLightSensorEnabled(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 2112
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmClock(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessController$Clock;->uptimeMillis()J

    move-result-wide v3

    .line 2113
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 2116
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmIsUnderDisplayLightSensor(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 2117
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_78

    .line 2118
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmMinLuxUpdated(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 2119
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmRecentLightSamples(Lcom/android/server/display/AutomaticBrightnessController;I)V

    .line 2120
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmAmbientLightRingBuffer(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 2121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSensorChanged: min lux : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_78
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    if-eqz v5, :cond_c7

    .line 2126
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget p1, p1, v5

    cmpl-float p1, p1, v7

    if-lez p1, :cond_8e

    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmDualScreenPolicy(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result p1

    if-nez p1, :cond_8e

    move v2, v6

    .line 2128
    :cond_8e
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmIsRearLightSensor(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result p1

    if-eq p1, v2, :cond_c7

    .line 2129
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmIsLightSensorPositionUpdated(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 2130
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmLightSensorPositionUpdatedTime(Lcom/android/server/display/AutomaticBrightnessController;J)V

    .line 2131
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmIsRearLightSensor(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 2132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSensorChanged: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmIsRearLightSensor(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_bb

    const-string v2, "Front -> Rear"

    goto :goto_bd

    :cond_bb
    const-string v2, "Rear -> Front"

    :goto_bd
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2132
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :cond_c7
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0, v3, v4, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    :cond_cc
    return-void
.end method
