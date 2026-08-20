.class Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;
.super Landroid/os/Handler;
.source "SemWifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoostHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/Looper;)V
    .registers 3

    .line 544
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 545
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 549
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-eq v0, v1, :cond_cc

    const/4 v1, 0x2

    const/16 v3, 0x1770

    const/16 v4, 0xbb8

    const/16 v5, 0x1f4

    if-eq v0, v1, :cond_87

    const/4 v1, 0x3

    if-eq v0, v1, :cond_41

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    goto/16 :goto_10d

    .line 594
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmForegroundPkgList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/HashMap;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10d

    .line 591
    :cond_2c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmForegroundPkgList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/HashMap;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10d

    .line 578
    :cond_41
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_51

    .line 579
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_80

    .line 580
    :cond_51
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_61

    .line 581
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_80

    .line 582
    :cond_61
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_71

    .line 583
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_80

    .line 584
    :cond_71
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_80

    .line 585
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m6000msCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 588
    :cond_80
    :goto_80
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$msetPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    goto/16 :goto_10d

    .line 565
    :cond_87
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_97

    .line 566
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 567
    :cond_97
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_a7

    .line 568
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 569
    :cond_a7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_b7

    .line 570
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 571
    :cond_b7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_c6

    .line 572
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m6000msCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_c6
    :goto_c6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$msetPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    goto :goto_10d

    .line 551
    :cond_cc
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    move-result p1

    if-lez p1, :cond_e3

    .line 552
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ed

    .line 555
    :cond_e3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmPolled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 558
    :goto_ed
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$mupdateStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 559
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetisFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Z

    move-result p1

    if-eqz p1, :cond_10d

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmTrafficPollTime(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    move-result p1

    rem-int/2addr p1, v2

    if-nez p1, :cond_10d

    .line 560
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$mupdateP2pAwareTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 561
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$msetBoostMode(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    :cond_10d
    :goto_10d
    return-void
.end method
