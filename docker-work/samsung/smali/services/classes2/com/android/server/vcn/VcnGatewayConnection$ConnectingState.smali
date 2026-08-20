.class public Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectingState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 3

    .line 1595
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method public enterState()V
    .registers 3

    .line 1598
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1599
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "ConnectingState entered with active session"

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    .line 1603
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V

    .line 1606
    :cond_1e
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V

    return-void
.end method

.method public processStateMsg(Landroid/os/Message;)V
    .registers 5

    .line 1611
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_47

    const/16 v1, 0xa

    if-eq v0, v1, :cond_43

    const/16 v1, 0xc

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-eq v0, v1, :cond_36

    const/4 v1, 0x6

    if-eq v0, v1, :cond_36

    const/4 v1, 0x7

    if-eq v0, v1, :cond_21

    .line 1662
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->logUnhandledMessage(Landroid/os/Message;)V

    goto/16 :goto_92

    .line 1656
    :cond_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    goto :goto_92

    .line 1644
    :cond_29
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1646
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_92

    .line 1652
    :cond_36
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1653
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_92

    .line 1659
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleSafeModeTimeoutExceeded()V

    goto :goto_92

    .line 1613
    :cond_47
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    .line 1614
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    invoke-static {v2, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    if-nez v0, :cond_61

    .line 1618
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v2, "Old underlying network was null in connected state. Bug?"

    invoke-static {p1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1622
    :cond_61
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object p1

    if-nez p1, :cond_71

    .line 1623
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_92

    :cond_71
    if-eqz v0, :cond_84

    .line 1627
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 1628
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_84

    goto :goto_92

    .line 1635
    :cond_84
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {p1, v1}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->setSkipRetryTimeout(Z)V

    .line 1639
    :cond_8b
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_92
    return-void
.end method
