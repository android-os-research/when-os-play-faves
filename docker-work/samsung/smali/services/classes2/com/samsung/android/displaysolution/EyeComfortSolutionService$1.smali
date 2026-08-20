.class public Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;
.super Ljava/lang/Object;
.source "EyeComfortSolutionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 2

    .line 763
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

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

    .line 766
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 767
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget p1, p1, v3

    float-to-int p1, p1

    invoke-static {v2, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputbopr_current_value(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V

    .line 768
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_count(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputbopr_cumulative_count(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V

    .line 769
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterEnableTime(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 770
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_current_value(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetbopr_cumulative_count(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v4

    invoke-static {p1, v2, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mblue_light_filter_setting_bopr(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;II)V

    .line 771
    :cond_31
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBoprSensorListener(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 772
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetBOPR_VALUE_STEP(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result p1

    const/16 v2, 0x36

    if-ge p1, v2, :cond_6c

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterEnableTime(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 773
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result p0

    int-to-long v4, p0

    add-long/2addr v0, v4

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_6c
    return-void
.end method
