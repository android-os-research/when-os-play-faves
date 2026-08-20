.class final Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$RLkTM8sSVuOY4q_rx8XfOL_rkNU(Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->lambda$enter$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zTpwxNesj_YWray_GohnsPmBukk(Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->lambda$enter$1(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 1488
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$0()V
    .registers 3

    .line 1511
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    .line 1512
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onDisconnected(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$1(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 9

    .line 1517
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v4

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;)J

    move-result-wide v5

    move-object v3, p1

    .line 1518
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onSetupDataFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data network disconnected. mEverConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1495
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    .line 1498
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    .line 1502
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->quit()V

    .line 1510
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1511
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_66

    .line 1514
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$munregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_66

    .line 1517
    :cond_58
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 1521
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1522
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->unregister()V

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onDataCallDisconnected(I)V

    .line 1525
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a4

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    if-eqz v0, :cond_a4

    .line 1527
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRil(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->releasePduSessionId(Landroid/os/Message;I)V

    .line 1530
    :cond_a4
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_c3

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/vcn/VcnManager;->removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    :cond_c3
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1537
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
