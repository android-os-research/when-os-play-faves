.class Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;
.super Landroid/os/Handler;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSessionMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 804
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    .line 805
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 806
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 810
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 812
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1f

    .line 824
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$mhandleForegroundAppUpdated(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;Ljava/lang/String;)V

    goto :goto_1f

    .line 819
    :pswitch_13
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$mhandleStop(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)V

    .line 820
    goto :goto_1f

    .line 814
    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->-$$Nest$mhandleStart(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)V

    .line 815
    nop

    .line 828
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method
