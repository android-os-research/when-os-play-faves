.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;
.super Landroid/os/Handler;
.source "SemWifiOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LlHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiOptimizer.LlHandler"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Landroid/os/Looper;)V
    .registers 3

    .line 320
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 321
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_128

    :pswitch_7
    goto/16 :goto_126

    .line 363
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 364
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-ne v0, v1, :cond_28

    .line 366
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnectedStaIfaces(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 369
    :cond_28
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnectedStaIfaces(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 372
    :goto_31
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_126

    if-ne v0, v1, :cond_46

    .line 374
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    goto/16 :goto_126

    .line 376
    :cond_46
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_126

    .line 377
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    goto/16 :goto_126

    .line 383
    :pswitch_55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    .line 385
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnectedStaIfaces(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 387
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    goto/16 :goto_126

    .line 389
    :cond_83
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_126

    .line 390
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    goto/16 :goto_126

    .line 343
    :pswitch_92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    const/16 v0, 0x10

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    goto/16 :goto_126

    .line 340
    :pswitch_9f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    const/16 v0, 0x8

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    goto/16 :goto_126

    .line 337
    :pswitch_aa
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    invoke-static {p0, v2, v2, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    goto/16 :goto_126

    .line 334
    :pswitch_b3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    const/4 v0, 0x4

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    goto :goto_126

    .line 331
    :pswitch_be
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    goto :goto_126

    .line 328
    :pswitch_c9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v1, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    goto :goto_126

    .line 359
    :pswitch_d3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 360
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mcheckTraffic(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    goto :goto_126

    .line 346
    :pswitch_e2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_e8

    move p1, v1

    goto :goto_e9

    :cond_e8
    move p1, v2

    :goto_e9
    const/16 v0, 0x3e8

    if-eqz p1, :cond_fd

    .line 348
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    goto :goto_126

    .line 350
    :cond_fd
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 351
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmTrafficMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result p1

    if-ne p1, v1, :cond_126

    const/4 p1, 0x5

    .line 352
    invoke-static {p0, p1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmTrafficMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    .line 354
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmIsGamePkg(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    :cond_126
    :goto_126
    return-void

    nop

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_d3
        :pswitch_7
        :pswitch_c9
        :pswitch_be
        :pswitch_b3
        :pswitch_aa
        :pswitch_9f
        :pswitch_92
        :pswitch_55
        :pswitch_9
    .end packed-switch
.end method
