.class public final Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
.super Landroid/os/Handler;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScrControlHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Looper;)V
    .registers 3

    .line 971
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    const/4 p1, 0x0

    .line 972
    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 977
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7e

    goto/16 :goto_7d

    .line 1012
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 1013
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmRgbSensorListener(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmRgbSensor(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_7d

    .line 1009
    :pswitch_2c
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$mterminateScrRGB(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    goto :goto_7d

    .line 1006
    :pswitch_32
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$mterminateVideoMode(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    goto :goto_7d

    .line 1003
    :pswitch_38
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$msetBrowserMode(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    goto :goto_7d

    .line 1000
    :pswitch_3e
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$msetVideoMode(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    goto :goto_7d

    .line 997
    :pswitch_44
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$msetEbookMode(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    goto :goto_7d

    .line 994
    :pswitch_4a
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$manimateScrRGB(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    goto :goto_7d

    .line 991
    :pswitch_50
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$msendRgbAverage(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    goto :goto_7d

    .line 983
    :pswitch_56
    :try_start_56
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    iget-object p1, p1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5f} :catch_60

    goto :goto_7d

    .line 985
    :catch_60
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const-string p0, "AdaptiveDisplayColorService"

    const-string p1, "failed to onForegroundActivitiesChanged"

    .line 986
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 979
    :pswitch_70
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$mmonitorForegroundBrowser(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Ljava/lang/String;II)V

    :cond_7d
    :goto_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_70
        :pswitch_56
        :pswitch_50
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_7
    .end packed-switch
.end method
