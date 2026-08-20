.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
.super Landroid/os/Handler;
.source "EyeComfortSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ECSControlHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Looper;)V
    .registers 3

    .line 721
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    const/4 p1, 0x0

    .line 722
    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 727
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_42

    goto :goto_41

    .line 754
    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mupdateNightDimSettings(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V

    goto :goto_41

    .line 750
    :pswitch_f
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterAdaptiveModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p0

    if-eqz p0, :cond_20

    move v0, v1

    :cond_20
    invoke-static {p1, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mblue_light_filter_setting_day(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    goto :goto_41

    .line 746
    :pswitch_24
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mgetBoprSensorValueForBigData(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    goto :goto_41

    .line 742
    :pswitch_2a
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mgetBoprSensorValueForBigData(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    goto :goto_41

    .line 738
    :pswitch_30
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mgetBoprSensorValue(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    goto :goto_41

    .line 734
    :pswitch_36
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mgetBoprSensorValue(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    goto :goto_41

    .line 730
    :pswitch_3c
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mgetSystemServices(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method
