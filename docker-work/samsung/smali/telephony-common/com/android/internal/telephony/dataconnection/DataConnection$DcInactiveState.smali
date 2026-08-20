.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
.super Lcom/android/internal/telephony/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcInactiveState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$_hEzyq_H099sfqmymsuqRIUbifA(Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->lambda$enter$0()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 2

    .line 3033
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$0()V
    .registers 2

    .line 3108
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setPduSessionId(I)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 11

    .line 3061
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 3062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcInactiveState: enter() mTag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3063
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3065
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmId(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v6

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetApnTypeBitmask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    int-to-long v7, v0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mcanHandleDefault(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v9

    const/16 v3, 0x4b

    const/4 v4, 0x1

    .line 3063
    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIIIJZ)V

    .line 3066
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onDataCallDisconnected(I)V

    .line 3067
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverState(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_61

    .line 3069
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setHandoverState(I)V

    .line 3076
    :cond_61
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ee

    .line 3077
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 3081
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverLocalLog(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handover failed. Reset the source dc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state to idle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3081
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3084
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mcancelHandover(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto :goto_e9

    .line 3088
    :cond_9d
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverLocalLog(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    const-string v3, "Handover failed and dangling agent found."

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3090
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->acquireOwnership(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3092
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared dangling network agent. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3093
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->unregister(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3094
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->releaseOwnership(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3096
    :goto_e9
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)V

    .line 3099
    :cond_ee
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_135

    .line 3101
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcInactiveState: enter notifyConnectCompleted +ALL failCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    .line 3102
    invoke-static {v4}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3101
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3106
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;)V

    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mreleasePduSessionId(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Runnable;)V

    .line 3111
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverFailureMode(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v5

    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V

    .line 3114
    :cond_135
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v0

    if-eqz v0, :cond_166

    .line 3116
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcInactiveState: enter notifyDisconnectCompleted +ALL failCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    .line 3117
    invoke-static {v4}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3116
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3119
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    .line 3121
    :cond_166
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v0

    if-nez v0, :cond_1ae

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    if-nez v0, :cond_1ae

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    if-eqz v0, :cond_1ae

    .line 3124
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcInactiveState: enter notifyAllDisconnectCompleted failCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    .line 3125
    invoke-static {v3}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3124
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3127
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v2, 0x4200f

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    .line 3128
    invoke-static {v3}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3127
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 3132
    :cond_1ae
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcController(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3138
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnSetting(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1c6

    .line 3139
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyDataConnectionState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3141
    :cond_1c6
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mclearSettings(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3144
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmImsPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1f9

    .line 3145
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmImsPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 3146
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmImsPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    :cond_1f9
    return-void
.end method

.method public blacklist exit()V
    .registers 1

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 3157
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_10c

    .line 3219
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcInactiveState not handled msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return v1

    .line 3212
    :sswitch_26
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v0, "DcInactiveState T3346 EVENT_DATA_CONNECTION_T3346 T3346_TIMER_STOP_V01"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3213
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    return v2

    .line 3207
    :sswitch_34
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v0, "DcInactiveState T3346 EVENT_DATA_CONNECTION_T3346 T3346_TIMER_START_V01"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3208
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    return v2

    .line 3161
    :sswitch_41
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcInactiveState: msg.what="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ignore we\'re already done"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return v2

    .line 3202
    :sswitch_65
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcInactiveState: msg.what=EVENT_DISCONNECT_ALL"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3203
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return v2

    .line 3193
    :sswitch_76
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcInactiveState: msg.what=EVENT_DISCONNECT"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3195
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCidManager()Lcom/android/internal/telephony/CidManager;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 3196
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCidManager()Lcom/android/internal/telephony/CidManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v4, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/CidManager;->releaseCid(II)V

    .line 3199
    :cond_9e
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return v2

    .line 3166
    :sswitch_a8
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcInactiveState: mag.what=EVENT_CONNECT"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3167
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 3169
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$minitConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_d5

    .line 3170
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v4, "DcInactiveState: msg.what=EVENT_CONNECT initConnection failed"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3171
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v4, 0x10002

    invoke-static {v0, p1, v4, v3, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V

    .line 3173
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v2

    .line 3177
    :cond_d5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mconnect(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I

    move-result v0

    if-eqz v0, :cond_f3

    .line 3179
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v5, "DcInactiveState: msg.what=EVENT_CONNECT connect failed"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3180
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4, p1, v0, v3, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V

    .line 3182
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v2

    .line 3186
    :cond_f3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    if-ne v0, v3, :cond_102

    .line 3187
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget p1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mSubId:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmSubId(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3190
    :cond_102
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmActivatingState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v2

    :sswitch_data_10c
    .sparse-switch
        0x40000 -> :sswitch_a8
        0x40004 -> :sswitch_76
        0x40006 -> :sswitch_65
        0x40018 -> :sswitch_41
        0x40019 -> :sswitch_41
        0x40028 -> :sswitch_34
        0x40029 -> :sswitch_26
    .end sparse-switch
.end method

.method public blacklist setEnterNotificationParams(I)V
    .registers 4

    .line 3054
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 3055
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 3056
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    return-void
.end method

.method public blacklist setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;II)V
    .registers 6

    .line 3037
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "DcInactiveState: setEnterNotificationParams cp,cause"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3038
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 3039
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 3040
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3041
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmHandoverFailureMode(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    return-void
.end method

.method public blacklist setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V
    .registers 4

    .line 3046
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "DcInactiveState: setEnterNotificationParams dp"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3047
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 3048
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 3049
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    return-void
.end method
