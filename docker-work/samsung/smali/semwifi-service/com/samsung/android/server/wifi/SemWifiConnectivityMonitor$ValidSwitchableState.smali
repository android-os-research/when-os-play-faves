.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidSwitchableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 4607
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 4610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4612
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x21084

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 4617
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 4618
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "WifiConnectivityMonitor"

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_cc

    return v1

    .line 4645
    :sswitch_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4647
    :cond_1c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    const/16 v0, 0x11

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 4648
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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

    .line 4649
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 4650
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4652
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 4653
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    return v3

    .line 4635
    :sswitch_5a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    const-string p1, "VALIDATED_DETECTED"

    .line 4636
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 4638
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4639
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    move-result-object v0

    if-ne p1, v0, :cond_88

    .line 4640
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel1State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_88
    return v3

    .line 4620
    :sswitch_89
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    move-result p1

    if-ne p1, v3, :cond_ad

    .line 4621
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x21019

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    .line 4622
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel1State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_b2

    .line 4624
    :cond_ad
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckTransitionToLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    :goto_b2
    return v3

    .line 4628
    :sswitch_b3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_bc

    return v3

    :cond_bc
    const-string v0, "[ValidSwitchable] REPORT_NETWORK_CONNECTIVITY"

    .line 4630
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(II)Z

    return v3

    nop

    :sswitch_data_cc
    .sparse-switch
        0x21024 -> :sswitch_b3
        0x21084 -> :sswitch_89
        0x21130 -> :sswitch_5a
        0x21131 -> :sswitch_f
    .end sparse-switch
.end method
