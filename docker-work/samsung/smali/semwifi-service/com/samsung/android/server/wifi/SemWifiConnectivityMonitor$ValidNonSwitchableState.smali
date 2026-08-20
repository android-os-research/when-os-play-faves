.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidNonSwitchableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 4563
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 4566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZ)V

    .line 4568
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetLinkDetectMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4569
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4570
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4571
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 4572
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$minChinaNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setNetworkStatCheckDns(Z)V

    :cond_4d
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 4579
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 4580
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "WifiConnectivityMonitor"

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_7e

    return v1

    .line 4592
    :sswitch_f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "INVALIDATED_DETECTED"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmInvalidationRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4594
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    const/16 v0, 0x11

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 4595
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 4596
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 4597
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4598
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v3

    .line 4588
    :sswitch_5c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 4589
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_6c

    const-string p0, "VALIDATED_DETECTED"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return v3

    .line 4582
    :sswitch_6d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(II)Z

    return v3

    .line 4585
    :sswitch_77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLossSampleCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    return v1

    nop

    :sswitch_data_7e
    .sparse-switch
        0x21009 -> :sswitch_77
        0x21024 -> :sswitch_6d
        0x21130 -> :sswitch_5c
        0x21131 -> :sswitch_f
    .end sparse-switch
.end method
