.class public Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2

    .line 621
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

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

    .line 624
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmLightSensorDelay(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_67

    .line 625
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$mgetRgbFromLightSensor(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 626
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmSensorValueValid(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 627
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmLightSensorR(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    .line 628
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmLightSensorG(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v2

    .line 629
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmLightSensorB(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v3

    .line 630
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget p1, p1, v4

    float-to-int p1, p1

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLightSensorR : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mLightSensorG : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mLightSensorB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , lux : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdaptiveDisplayColorService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4, v0, v2, v3, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$mhandleRgbSensorEvent(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;IIII)V

    .line 634
    :cond_61
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmLightSensorDelay(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)V

    goto :goto_88

    .line 636
    :cond_67
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmLightSensorDelay(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result p1

    if-gt p1, v1, :cond_83

    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmLightSensorDelay(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result p1

    if-lez p1, :cond_83

    .line 637
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmLightSensorDelay(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmLightSensorDelay(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)V

    goto :goto_88

    .line 640
    :cond_83
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmLightSensorDelay(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)V

    :goto_88
    return-void
.end method
