.class final Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LteConnectedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2

    .line 1936
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 1939
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Entering LteConnectedState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1941
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1943
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1944
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1945
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    .line 1950
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNetworkVzw(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmVzwTuwb1Started(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1951
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v2, "VZW timer spec : connected=true"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNotRestrictedRrcState(Lcom/android/internal/telephony/NetworkTypeController;)[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 1953
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmVzwRrcConnected(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    :cond_54
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    const-string p0, "not_restricted_rrc_con"

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 1960
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteConnectedState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1961
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1962
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1a0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_156

    const/4 v4, 0x4

    if-eq v0, v4, :cond_216

    const/4 v4, 0x5

    const-string v5, "NR state changed. Sending EVENT_NR_STATE_CHANGED"

    if-eq v0, v4, :cond_7c

    const/16 p1, 0xd

    if-eq v0, p1, :cond_3a

    return v2

    .line 2006
    :cond_3a
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 2007
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2008
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 2010
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_70

    .line 2011
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_216

    .line 2015
    :cond_66
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2016
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    .line 2020
    :cond_70
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2023
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_216

    .line 2026
    :cond_7c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2027
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2029
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2032
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_14a

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_14a

    .line 2033
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misTmo5GUCSupported(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_13f

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_13f

    .line 2034
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Going from LteConnected->Idle:  mPreviousState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mShow5GUC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsNrAdvBandIndi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2037
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    const-string v0, "connected_mmwave"

    if-eqz p1, :cond_119

    .line 2039
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "connected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_108

    .line 2040
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_119

    .line 2042
    :cond_108
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_119

    .line 2043
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2047
    :cond_119
    :goto_119
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_13f

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v3, :cond_13f

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object p1

    .line 2048
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13f

    .line 2049
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2050
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2054
    :cond_13f
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_216

    .line 2056
    :cond_14a
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2057
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_216

    .line 1995
    :cond_156
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nrState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

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

    .line 1996
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_18d

    .line 1997
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_216

    .line 1998
    :cond_18d
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_216

    .line 1999
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_216

    .line 1964
    :cond_1a0
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    .line 1966
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rat = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1d2

    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 1970
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1972
    :cond_1cd
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_1d2
    const/16 v0, 0x14

    if-eq p1, v0, :cond_208

    .line 1978
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v0

    if-eqz v0, :cond_1e7

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    goto :goto_208

    .line 1981
    :cond_1e7
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v0

    if-eqz v0, :cond_1fe

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_1f8

    goto :goto_1fe

    .line 1987
    :cond_1f8
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_211

    .line 1982
    :cond_1fe
    :goto_1fe
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_211

    .line 1980
    :cond_208
    :goto_208
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1991
    :goto_211
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2063
    :cond_216
    :goto_216
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_22f

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_22f

    .line 2064
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_22f
    return v3
.end method
