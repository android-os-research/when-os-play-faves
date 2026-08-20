.class public final Lcom/android/server/desktopmode/McfManager$McfHandler;
.super Landroid/os/Handler;
.source "McfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/McfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "McfHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/McfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/McfManager;Landroid/os/Looper;)V
    .registers 3

    .line 626
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 627
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 632
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_92

    const/16 v1, 0x191

    if-eq v0, v1, :cond_8c

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_64

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_5e

    packed-switch v0, :pswitch_data_a0

    packed-switch v0, :pswitch_data_ac

    goto/16 :goto_9f

    .line 682
    :pswitch_1a
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleNearbyScanningChanged(Lcom/android/server/desktopmode/McfManager;)V

    goto/16 :goto_9f

    .line 677
    :pswitch_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 678
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleSemBleStateChanged(Lcom/android/server/desktopmode/McfManager;Landroid/content/Intent;)V

    goto/16 :goto_9f

    .line 673
    :pswitch_2c
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleAirplaneModeChanged(Lcom/android/server/desktopmode/McfManager;)V

    goto :goto_9f

    .line 649
    :pswitch_32
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandlePackageStateChanged(Lcom/android/server/desktopmode/McfManager;)V

    goto :goto_9f

    .line 644
    :pswitch_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 645
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleDualModeStopLoadingScreen(Lcom/android/server/desktopmode/McfManager;Z)V

    goto :goto_9f

    .line 639
    :pswitch_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 640
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleWirelessDexBleMacAddressChanged(Lcom/android/server/desktopmode/McfManager;Ljava/lang/String;)V

    goto :goto_9f

    .line 634
    :pswitch_50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 635
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleBleAdvertiserServiceUnbind(Lcom/android/server/desktopmode/McfManager;J)V

    goto :goto_9f

    .line 665
    :cond_5e
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleMcfAdapterServiceDisconnected(Lcom/android/server/desktopmode/McfManager;)V

    goto :goto_9f

    .line 658
    :cond_64
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 659
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mcf/McfAdapter;

    .line 660
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_86

    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_MCF_ADAPTER_SERVICE_CONNECTED retryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_86
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleMcfAdapterServiceConnected(Lcom/android/server/desktopmode/McfManager;ILcom/samsung/android/mcf/McfAdapter;)V

    goto :goto_9f

    .line 669
    :cond_8c
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleMcfAdapterScannerScanResult(Lcom/android/server/desktopmode/McfManager;)V

    goto :goto_9f

    .line 653
    :cond_92
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 654
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$mhandleMcfServiceStateChanged(Lcom/android/server/desktopmode/McfManager;I)V

    :goto_9f
    return-void

    :pswitch_data_a0
    .packed-switch 0x65
        :pswitch_50
        :pswitch_46
        :pswitch_38
        :pswitch_32
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x2bd
        :pswitch_2c
        :pswitch_21
        :pswitch_1a
    .end packed-switch
.end method
