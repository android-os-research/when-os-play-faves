.class public Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V
    .registers 2

    .line 2932
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2935
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2937
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$mprocessSensorData(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V

    .line 2940
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$fgetmLastSensorData(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v3, v3, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmLowAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$misDifferentZone(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF[I)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$fgetmLastSensorData(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v3, v3, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHighAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v3

    .line 2942
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$misDifferentZone(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF[I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2944
    :cond_41
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->-$$Nest$fgetmInjectSensorEventRunnable(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_54
    return-void
.end method
