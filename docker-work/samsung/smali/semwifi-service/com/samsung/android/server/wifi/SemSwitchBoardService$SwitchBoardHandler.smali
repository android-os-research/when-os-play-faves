.class Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;
.super Landroid/os/Handler;
.source "SemSwitchBoardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchBoardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Landroid/os/Looper;)V
    .registers 3

    .line 511
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 512
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 516
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AlwaysEnabledPolicy"

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_37c

    .line 648
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SwitchBoardHandler.handleMessage: undefined case: msg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    goto/16 :goto_37a

    .line 643
    :pswitch_24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)V

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Primary Wi-Fi changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    goto/16 :goto_37a

    .line 628
    :pswitch_49
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    .line 629
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz p1, :cond_8c

    .line 630
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 631
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v7

    if-eqz v0, :cond_8c

    .line 632
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long p1, v9, v7

    if-eqz p1, :cond_8c

    .line 633
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v5

    const-string v0, "Wi-Fi disconnected, but ignored for non primary interface (%x)"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    goto/16 :goto_37a

    .line 637
    :cond_8c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V

    .line 638
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    if-nez v0, :cond_a0

    goto :goto_a4

    .line 639
    :cond_a0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_a4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v6

    const-string p0, "Wi-Fi disconnected: %s (%x)"

    .line 638
    invoke-static {p1, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    goto/16 :goto_37a

    .line 606
    :pswitch_b5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    .line 607
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmConMan(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_129

    .line 609
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 612
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    .line 613
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_dc
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_108

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f1

    goto :goto_108

    .line 620
    :cond_f1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v6

    const-string v0, "Wi-Fi connected, but ignored: %s (%x)"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    goto/16 :goto_37a

    .line 616
    :cond_108
    :goto_108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)V

    .line 617
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0, v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V

    .line 618
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v6

    const-string v0, "Wi-Fi connected: %s (%x)"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    goto/16 :goto_37a

    :cond_129
    const-string p0, "Wi-Fi connected, but ignored"

    .line 623
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    goto/16 :goto_37a

    .line 587
    :pswitch_130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->valueOf(I)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;)V

    .line 588
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    if-ne p1, v0, :cond_162

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-nez p1, :cond_162

    .line 589
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-eqz p1, :cond_37a

    .line 590
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0, v6, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    goto/16 :goto_37a

    .line 592
    :cond_162
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysDisabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    if-ne p1, v0, :cond_17d

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-eqz p1, :cond_17d

    .line 593
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    const-string p1, "AlwaysDisabledPolicy"

    invoke-static {p0, v5, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    goto/16 :goto_37a

    .line 594
    :cond_17d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    if-ne p1, v0, :cond_37a

    .line 595
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    const-string v0, "DefaultPolicy"

    if-nez p1, :cond_1ac

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_1ac

    .line 596
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-eqz p1, :cond_37a

    .line 597
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0, v6, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    goto/16 :goto_37a

    .line 599
    :cond_1ac
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-eqz p1, :cond_37a

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_37a

    .line 600
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0, v5, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    goto/16 :goto_37a

    :pswitch_1c7
    const-string p1, "EVENT_AUTO_STOP"

    .line 580
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 581
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The number of packages using SwitchBoard="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 583
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    const-string p1, "AutoStop"

    invoke-static {p0, v5, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    goto/16 :goto_37a

    :pswitch_1fc
    const-string p1, "EVENT_GET_WIFIINFO_POLL"

    .line 554
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 557
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-eqz p1, :cond_251

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$mgetWifiLinkLayerStats(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p1

    if-eqz p1, :cond_251

    .line 558
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmCurWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mupdate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    .line 560
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmCurWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mvalid(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)Z

    move-result p1

    if-eqz p1, :cond_241

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mvalid(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)Z

    move-result p1

    if-eqz p1, :cond_241

    .line 561
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$mdetermineDataPathPriority(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V

    .line 563
    :cond_241
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmCurWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mupdate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    goto :goto_288

    .line 565
    :cond_251
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-eqz p1, :cond_273

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWifiLinkLayerStats failed with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 568
    :cond_273
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mvalid(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)Z

    move-result p1

    if-eqz p1, :cond_288

    .line 569
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mreset(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    .line 573
    :cond_288
    :goto_288
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiInfoPollingEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-eqz p1, :cond_37a

    .line 574
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p0

    const/4 v0, 0x3

    .line 575
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    .line 574
    invoke-virtual {p1, p0, v0, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_37a

    .line 539
    :pswitch_2a8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V

    const-string p1, "EVENT_BOOT_COMPLETED"

    .line 540
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$mcheckDefaultEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-eqz p1, :cond_2c1

    .line 543
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;)V

    .line 546
    :cond_2c1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardRequestBeforeBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result p1

    if-eqz p1, :cond_2d2

    .line 547
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    const-string p1, "EnableRequestBeforeBootComplete"

    invoke-static {p0, v6, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    goto/16 :goto_37a

    .line 548
    :cond_2d2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    if-ne p1, v0, :cond_37a

    .line 549
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0, v6, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    goto/16 :goto_37a

    .line 518
    :pswitch_2e3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2e8

    move v5, v6

    .line 519
    :cond_2e8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz v5, :cond_2f8

    .line 521
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_301

    .line 522
    :cond_2f8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 524
    :goto_301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_ENABLE_SWITCHBOARD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeOf packages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    move-result-object v1

    .line 525
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    move-result v0

    if-nez v0, :cond_356

    .line 528
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmSwitchBoardRequestBeforeBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setSwitchBoardState: pending a request before boot completed [enable="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    goto :goto_37a

    :cond_356
    if-nez v5, :cond_364

    .line 532
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_37a

    .line 533
    :cond_364
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppsRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v5, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    :cond_37a
    :goto_37a
    return-void

    nop

    :pswitch_data_37c
    .packed-switch 0x1
        :pswitch_2e3
        :pswitch_2a8
        :pswitch_1fc
        :pswitch_1c7
        :pswitch_130
        :pswitch_b5
        :pswitch_49
        :pswitch_24
    .end packed-switch
.end method
