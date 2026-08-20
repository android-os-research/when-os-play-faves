.class Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;
.super Landroid/os/Handler;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 955
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    .line 956
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 957
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 961
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 963
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    goto :goto_21

    .line 975
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->-$$Nest$mcheckCameraRunning(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;Ljava/lang/String;I)V

    goto :goto_21

    .line 970
    :pswitch_15
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->-$$Nest$mhandleStop(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;)V

    .line 971
    goto :goto_21

    .line 965
    :pswitch_1b
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->-$$Nest$mhandleStart(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;)V

    .line 966
    nop

    .line 979
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_15
        :pswitch_9
    .end packed-switch
.end method
