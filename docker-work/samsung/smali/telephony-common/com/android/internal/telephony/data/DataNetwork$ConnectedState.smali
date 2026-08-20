.class final Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$kp69Z_WSRxvNLdJr6X8CrLXntOw(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xc9TRpGgqa3yy_IPyWEAOS2t6OU(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$1()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 1194
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$ConnectedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$0()V
    .registers 2

    .line 1205
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onConnected(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$1()V
    .registers 4

    .line 1219
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "VCN policy changed."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object v0

    .line 1221
    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1222
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    goto :goto_30

    .line 1224
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    :goto_30
    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 8

    .line 1199
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1201
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "network connected."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->markConnected()V

    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 1207
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v2, Lcom/android/internal/telephony/data/QosCallbackTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/data/QosCallbackTracker;-><init>(Lcom/android/internal/telephony/data/NotifyQosSessionInterface;Lcom/android/internal/telephony/Phone;)V

    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/QosCallbackTracker;)V

    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/QosCallbackTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmQosBearerSessions(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->updateSessions(Ljava/util/List;)V

    .line 1209
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v2, Lcom/android/internal/telephony/data/KeepaliveTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1210
    invoke-virtual {v4}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v5}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/data/KeepaliveTracker;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V

    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmKeepaliveTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/KeepaliveTracker;)V

    .line 1211
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    if-ne v0, v1, :cond_7e

    .line 1212
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1217
    :cond_7e
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 1227
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1228
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    move-result-object v1

    .line 1227
    invoke-virtual {v0, v2, v1}, Landroid/net/vcn/VcnManager;->addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 1232
    :cond_ad
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1233
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 1239
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    packed-switch v0, :pswitch_data_f4

    :pswitch_23
    const/4 p0, 0x0

    return p0

    .line 1297
    :pswitch_25
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1298
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_f3

    .line 1291
    :pswitch_31
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1292
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v3, p1

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IIJ)V

    goto/16 :goto_f3

    .line 1287
    :pswitch_46
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1288
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDeactivateResponse(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_f3

    .line 1283
    :pswitch_4f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1284
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/PcoData;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monPcoDataReceived(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V

    goto/16 :goto_f3

    .line 1280
    :pswitch_5e
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateMeteredAndCongested(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_f3

    .line 1277
    :pswitch_65
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monStartHandover(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    goto/16 :goto_f3

    .line 1274
    :pswitch_72
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDisplayInfoChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_f3

    .line 1265
    :pswitch_79
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1266
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_9a

    .line 1267
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_BANDWIDTH_ESTIMATE_FROM_MODEM_CHANGED: error ignoring, e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_f3

    .line 1271
    :cond_9a
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monBandwidthUpdatedFromModem(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/List;)V

    goto :goto_f3

    .line 1241
    :pswitch_a4
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmInvokedDataDeactivation(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1242
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string p1, "Ignore tear down request because network is being torn down."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_f3

    .line 1246
    :cond_b4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v1, :cond_db

    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1253
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDown()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 1254
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay IMS tear down until call ends. reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1254
    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    goto :goto_f3

    .line 1259
    :cond_db
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->access$100(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1260
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->access$200(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1262
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)V

    :goto_f3
    return v1

    :pswitch_data_f4
    .packed-switch 0x7
        :pswitch_a4
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_79
        :pswitch_23
        :pswitch_72
        :pswitch_65
        :pswitch_23
        :pswitch_5e
        :pswitch_4f
        :pswitch_23
        :pswitch_46
        :pswitch_23
        :pswitch_31
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method
