.class public final Lcom/android/server/display/BrightnessTracker$TrackerHandler;
.super Landroid/os/Handler;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V
    .registers 4

    .line 1011
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1012
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 1015
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_92

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_75

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5f

    const/4 v3, 0x4

    if-eq v0, v3, :cond_21

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    goto/16 :goto_9f

    .line 1047
    :cond_16
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Sensor;

    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mhandleSensorChanged(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/Sensor;)V

    goto/16 :goto_9f

    .line 1036
    :cond_21
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/display/BrightnessConfiguration;

    invoke-static {v0, p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fputmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1037
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    .line 1039
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result p1

    if-eqz p1, :cond_3f

    move v1, v2

    :cond_3f
    if-eqz v1, :cond_4f

    .line 1040
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/BrightnessTracker;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 1041
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$menableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_9f

    :cond_4f
    if-nez v1, :cond_9f

    .line 1042
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/BrightnessTracker;)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 1043
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mdisableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_9f

    .line 1028
    :cond_5f
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mstartSensorListener(Lcom/android/server/display/BrightnessTracker;)V

    .line 1029
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$menableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_9f

    .line 1032
    :cond_6a
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mstopSensorListener(Lcom/android/server/display/BrightnessTracker;)V

    .line 1033
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mdisableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_9f

    .line 1020
    :cond_75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 1021
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_7f

    move v5, v2

    goto :goto_80

    :cond_7f
    move v5, v1

    .line 1022
    :goto_80
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget v4, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iget v6, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v7, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v8, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v9, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    iget-object v11, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    invoke-static/range {v3 .. v11}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/BrightnessTracker;FZFZZJLjava/lang/String;)V

    goto :goto_9f

    .line 1017
    :cond_92
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mbackgroundStart(Lcom/android/server/display/BrightnessTracker;F)V

    :cond_9f
    :goto_9f
    return-void
.end method
