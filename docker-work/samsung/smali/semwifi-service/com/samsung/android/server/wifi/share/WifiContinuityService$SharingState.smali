.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;
.super Lcom/android/internal/util/State;
.source "WifiContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 2

    .line 538
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 541
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 542
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(I)V

    return-void
.end method

.method public exit()V
    .registers 3

    .line 607
    invoke-super {p0}, Lcom/android/internal/util/State;->exit()V

    const-string v0, "SemWifi.Continuity"

    const-string v1, "stop sharing"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 v1, 0x5

    # invokes: Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$800(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 610
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->stopDiscovery()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 547
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_110

    const/16 v1, 0x23

    if-eq v0, v1, :cond_105

    const/16 v1, 0x24

    if-eq v0, v1, :cond_105

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_11a

    const/4 p0, 0x0

    return p0

    .line 557
    :pswitch_15
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_119

    .line 558
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetdefaultState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_119

    .line 578
    :pswitch_24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_3a

    const-string p1, "SemWifi.Continuity"

    const-string v0, "failed to share profile, config is null"

    .line 579
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(I)V

    goto/16 :goto_119

    :cond_3a
    const-string p1, "SemWifi.Continuity"

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start sharing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetclock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputlastSharedDataTimeMs(Lcom/samsung/android/server/wifi/share/WifiContinuityService;J)V

    .line 585
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 586
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 588
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 585
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->startDiscovery(Ljava/util/List;Landroid/os/Handler;)V

    .line 589
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigLock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 590
    :try_start_8c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetaddedNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 591
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_8c .. :try_end_a2} :catchall_b6

    .line 592
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 v0, 0x5

    # invokes: Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->access$700(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V

    .line 593
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-wide/16 v3, 0x7530

    invoke-virtual {p0, v0, p1, v3, v4}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessageDelayed(IIJ)V

    goto :goto_119

    :catchall_b6
    move-exception p0

    .line 591
    :try_start_b7
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw p0

    .line 568
    :pswitch_b9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_119

    .line 569
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_119

    .line 570
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 571
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)V

    const-string p1, "SemWifi.Continuity"

    const-string v0, "target config was changed, restart discovery"

    .line 572
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->stopDiscovery()V

    .line 574
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(I)V

    goto :goto_119

    .line 565
    :pswitch_f7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(I)V

    goto :goto_119

    :pswitch_fd
    const-string p0, "SemWifi.Continuity"

    const-string p1, "already bound"

    .line 597
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    .line 550
    :cond_105
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_10a

    goto :goto_119

    .line 554
    :cond_10a
    :pswitch_10a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$munbind(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    goto :goto_119

    .line 562
    :cond_110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetdefaultState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_119
    :goto_119
    return v2

    :pswitch_data_11a
    .packed-switch 0x3
        :pswitch_fd
        :pswitch_10a
        :pswitch_f7
        :pswitch_b9
        :pswitch_24
        :pswitch_15
    .end packed-switch
.end method
