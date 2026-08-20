.class public final Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
.super Landroid/os/Handler;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayManagerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .registers 4

    .line 3806
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3807
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 3812
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_119

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_113

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_107

    packed-switch v0, :pswitch_data_126

    packed-switch v0, :pswitch_data_13a

    goto/16 :goto_124

    .line 3831
    :pswitch_16
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDisplayVolumeKeyEvent(Lcom/android/server/display/DisplayManagerService;I)V

    goto/16 :goto_124

    .line 3827
    :pswitch_1f
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDisplayVolumeEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/os/Bundle;)V

    goto/16 :goto_124

    .line 3847
    :pswitch_2c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverPresentationDisplayInfoEvent(Lcom/android/server/display/DisplayManagerService;IILjava/lang/String;)V

    goto/16 :goto_124

    .line 3843
    :pswitch_3b
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDeviceEvent(Lcom/android/server/display/DisplayManagerService;Landroid/os/Bundle;I)V

    goto/16 :goto_124

    .line 3892
    :pswitch_48
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V

    goto/16 :goto_124

    .line 3878
    :pswitch_53
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3879
    :try_start_5a
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3880
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v2

    .line 3881
    invoke-virtual {v2, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 3883
    monitor-exit v0

    goto/16 :goto_124

    .line 3885
    :cond_6b
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPendingFrameRateOverrideUids()Landroid/util/ArraySet;

    move-result-object v2

    .line 3886
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->clearPendingFrameRateOverrideUids()V

    .line 3887
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_5a .. :try_end_73} :catchall_7e

    .line 3888
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v2, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDisplayEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/util/ArraySet;I)V

    goto/16 :goto_124

    :catchall_7e
    move-exception p0

    .line 3887
    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0

    .line 3873
    :pswitch_81
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mloadBrightnessConfigurations(Lcom/android/server/display/DisplayManagerService;)V

    goto/16 :goto_124

    .line 3857
    :pswitch_88
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 3858
    :try_start_8f
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmTempViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d0

    .line 3860
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmTempViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3861
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 3862
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmTempViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/display/DisplayViewport;->makeCopy()Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    .line 3865
    :cond_d0
    monitor-exit p1
    :try_end_d1
    .catchall {:try_start_8f .. :try_end_d1} :catchall_e3

    if-eqz v0, :cond_124

    .line 3867
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmInputManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmTempViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/input/InputManagerInternal;->setDisplayViewports(Ljava/util/List;)V

    goto :goto_124

    :catchall_e3
    move-exception p0

    .line 3865
    :try_start_e4
    monitor-exit p1
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw p0

    .line 3852
    :pswitch_e6
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto :goto_124

    .line 3822
    :pswitch_f0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverDisplayEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/util/ArraySet;I)V

    goto :goto_124

    .line 3818
    :pswitch_fb
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterAdditionalDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_124

    .line 3814
    :pswitch_101
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterDefaultDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_124

    .line 3898
    :cond_107
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3899
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->updateMirroredSurface(I)V

    goto :goto_124

    .line 3839
    :cond_113
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$minitializeWifiDisplayMcfManager(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_124

    .line 3835
    :cond_119
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdeliverWifiDisplayParameterEvent(Lcom/android/server/display/DisplayManagerService;ILjava/util/List;)V

    :cond_124
    :goto_124
    return-void

    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_101
        :pswitch_fb
        :pswitch_f0
        :pswitch_e6
        :pswitch_88
        :pswitch_81
        :pswitch_53
        :pswitch_48
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x14
        :pswitch_3b
        :pswitch_2c
        :pswitch_1f
        :pswitch_16
    .end packed-switch
.end method
