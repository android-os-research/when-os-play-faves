.class Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;
.super Landroid/os/Handler;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultimediaHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 618
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    .line 619
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 620
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 624
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 625
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    goto :goto_49

    .line 652
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$mupdateMediaRunning(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V

    .line 653
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetmMultimediaHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_49

    .line 647
    :pswitch_1b
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$mhandleAudioPlaybackUpdated(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;Ljava/util/HashSet;)V

    .line 649
    goto :goto_49

    .line 642
    :pswitch_25
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$mhandleCodecStatusUpdated(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;Ljava/util/HashSet;)V

    .line 644
    goto :goto_49

    .line 637
    :pswitch_2f
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$mhandleDecoderStatusUpdated(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;Z)V

    .line 639
    goto :goto_49

    .line 632
    :pswitch_3d
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$mhandleStop(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V

    .line 634
    goto :goto_49

    .line 627
    :pswitch_43
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$mhandleStart(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V

    .line 629
    nop

    .line 657
    :goto_49
    return-void

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3d
        :pswitch_2f
        :pswitch_25
        :pswitch_1b
        :pswitch_9
    .end packed-switch
.end method
