.class final Lcom/android/internal/telephony/NetworkTypeController$LegacyState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LegacyState"
.end annotation


# instance fields
.field private blacklist mIsNrRestricted:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2

    .line 1630
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    const/4 p1, 0x0

    .line 1631
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$LegacyState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Entering LegacyState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1640
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1642
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1643
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    .line 1644
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 1786
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    if-eqz p0, :cond_7

    const-string p0, "restricted"

    goto :goto_9

    :cond_7
    const-string p0, "legacy"

    :goto_9
    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 1650
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LegacyState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1652
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    .line 1653
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1d5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_141

    const/4 v5, 0x4

    if-eq v1, v5, :cond_282

    const-string v5, "Reset timers since timer reset is enabled for RRC idle."

    const/4 v6, 0x5

    if-eq v1, v6, :cond_77

    const/16 p1, 0xd

    if-eq v1, p1, :cond_40

    return v2

    .line 1724
    :cond_40
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 1725
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1726
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsTimerResetEnabledForLegacyStateRRCIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_6b

    .line 1727
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1728
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1732
    :cond_6b
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1735
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_282

    .line 1739
    :cond_77
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    .line 1741
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1742
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v2, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1744
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1747
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_120

    .line 1748
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 1749
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkValid(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_120

    .line 1750
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1751
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    goto :goto_c0

    :cond_ba
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    .line 1750
    :goto_c0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_120

    .line 1754
    :cond_c4
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misEndcDetectionBeforeRrcConnectSupported(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_120

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1755
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_120

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    if-nez p1, :cond_120

    if-ne v1, v4, :cond_120

    .line 1758
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v3, :cond_120

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPhysicalLinkStatusDelayed(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_120

    .line 1761
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1762
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhysicalLinkStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (restored)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1763
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmArPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Landroid/os/AsyncResult;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v6, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 1764
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsPhysicalLinkStatusDelayed(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1769
    :cond_120
    :goto_120
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsTimerResetEnabledForLegacyStateRRCIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_282

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_282

    .line 1770
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1771
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1772
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_282

    .line 1696
    :cond_141
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nrState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1697
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_177

    .line 1698
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_1cb

    .line 1699
    :cond_177
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_1ae

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_1ae

    .line 1705
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkValid(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_1a8

    .line 1706
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 1707
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    goto :goto_1a4

    :cond_19e
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    .line 1706
    :goto_1a4
    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_1cb

    .line 1709
    :cond_1a8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_1cb

    .line 1712
    :cond_1ae
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_1cb

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_1c6

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1714
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNone(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_1cb

    .line 1716
    :cond_1c6
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1718
    :cond_1cb
    :goto_1cb
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    goto/16 :goto_282

    .line 1656
    :cond_1d5
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rat = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 p1, 0x12

    if-ne v0, p1, :cond_201

    .line 1659
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_1fc

    .line 1660
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1662
    :cond_1fc
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_201
    const/16 p1, 0x14

    if-eq v0, p1, :cond_26c

    .line 1665
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_216

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_216

    goto :goto_26c

    .line 1667
    :cond_216
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_24d

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_24d

    .line 1673
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkValid(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_247

    .line 1674
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    if-eqz v1, :cond_23d

    .line 1675
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v1

    goto :goto_243

    :cond_23d
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v1

    .line 1674
    :goto_243
    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_275

    .line 1677
    :cond_247
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_275

    .line 1681
    :cond_24d
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-nez p1, :cond_266

    .line 1682
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Reset timers since 2G and 3G don\'t need NR timers."

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1684
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1686
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1688
    :cond_266
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_275

    .line 1666
    :cond_26c
    :goto_26c
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1690
    :goto_275
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    .line 1692
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1778
    :cond_282
    :goto_282
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_29b

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_29b

    .line 1779
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_29b
    return v4
.end method
