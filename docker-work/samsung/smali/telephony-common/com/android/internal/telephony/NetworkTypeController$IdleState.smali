.class final Lcom/android/internal/telephony/NetworkTypeController$IdleState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2

    .line 1795
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$IdleState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$IdleState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 5

    .line 1798
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Entering IdleState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1800
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrevNrAdvBandIndi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrevNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsNrAdvBandIndi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mShow5GUC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIs5GUCToidle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1803
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_90

    .line 1804
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1805
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1806
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1807
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NSA Update icon from nonUC->UC mIsUpdateToUCIconInIdle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_c5

    .line 1810
    :cond_8a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    goto :goto_c5

    .line 1813
    :cond_90
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsRefreshTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrevNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v2

    if-eq v0, v2, :cond_c0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1814
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v2, "NSA Update icon from UC->nonUC"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1815
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1816
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_c5

    .line 1818
    :cond_c0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1821
    :goto_c5
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_e8

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    .line 1827
    :cond_e8
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNetworkVzw(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmVzwTuwb1Started(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmVzwRrcConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v2, "VZW timer spec : idle=true"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1829
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNotRestrictedRrcState(Lcom/android/internal/telephony/NetworkTypeController;)[Z

    move-result-object p0

    const/4 v0, 0x0

    aput-boolean v1, p0, v0

    :cond_110
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    const-string p0, "not_restricted_rrc_idle"

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1836
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1837
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1838
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_102

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b8

    const/4 v3, 0x4

    if-eq v0, v3, :cond_178

    const/4 v3, 0x5

    const-string v4, "NR state changed. Sending EVENT_NR_STATE_CHANGED"

    if-eq v0, v3, :cond_7b

    const/16 p1, 0xd

    if-eq v0, p1, :cond_39

    return v2

    .line 1881
    :cond_39
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1882
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1883
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 1885
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1886
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_178

    .line 1890
    :cond_65
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1891
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    .line 1895
    :cond_6f
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1898
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_178

    .line 1901
    :cond_7b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1902
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1904
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1906
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 1908
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_178

    .line 1909
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_178

    .line 1912
    :cond_ac
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1913
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_178

    .line 1870
    :cond_b8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nrState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1871
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 1872
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_178

    .line 1873
    :cond_ef
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_178

    .line 1874
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_178

    .line 1840
    :cond_102
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rat = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 v0, 0x12

    if-ne p1, v0, :cond_134

    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 1846
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1848
    :cond_12f
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_134
    const/16 v0, 0x14

    if-eq p1, v0, :cond_16a

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v0

    if-eqz v0, :cond_149

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_149

    goto :goto_16a

    .line 1857
    :cond_149
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v0

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_15a

    goto :goto_160

    .line 1863
    :cond_15a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_173

    .line 1858
    :cond_160
    :goto_160
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_173

    .line 1856
    :cond_16a
    :goto_16a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1866
    :goto_173
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1919
    :cond_178
    :goto_178
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_191

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_191

    .line 1920
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_191
    const/4 p0, 0x1

    return p0
.end method
