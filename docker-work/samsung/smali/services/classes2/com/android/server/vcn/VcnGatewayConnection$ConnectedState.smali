.class public Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectedState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 3

    .line 1859
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase-IA;)V

    return-void
.end method


# virtual methods
.method public enterState()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1862
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v0

    if-nez v0, :cond_25

    .line 1866
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIpSecManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;

    move-result-object v1

    sget-object v2, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 1867
    invoke-virtual {v1, v2, v2, v3}, Landroid/net/IpSecManager;->createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1f} :catch_20
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_8 .. :try_end_1f} :catch_20

    goto :goto_25

    .line 1870
    :catch_20
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    :cond_25
    :goto_25
    return-void
.end method

.method public exitState()V
    .registers 1

    .line 2010
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setSafeModeAlarm()V

    return-void
.end method

.method public final handleMigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;)V
    .registers 9

    .line 1935
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1937
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v5, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 1944
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v5, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 1951
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 1954
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object p0

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object p0

    const/4 v0, 0x0

    .line 1954
    invoke-virtual {p1, p0, v0}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    return-void
.end method

.method public final handleUnderlyingNetworkChanged(Landroid/os/Message;)V
    .registers 5

    .line 1959
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    .line 1960
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    invoke-static {v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    .line 1962
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object p1

    if-nez p1, :cond_21

    .line 1963
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string p1, "Underlying network lost"

    invoke-static {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    return-void

    :cond_21
    if-eqz v0, :cond_60

    .line 1972
    iget-object p1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_60

    .line 1980
    :cond_34
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 1982
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    goto :goto_8f

    .line 1973
    :cond_60
    :goto_60
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Migrating to new network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1974
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {p1, p0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->setNetwork(Landroid/net/Network;)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public processStateMsg(Landroid/os/Message;)V
    .registers 9

    .line 1877
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_96

    .line 1929
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->logUnhandledMessage(Landroid/os/Message;)V

    goto/16 :goto_94

    .line 1925
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;

    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;->ikeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    invoke-static {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    goto/16 :goto_94

    .line 1919
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    .line 1922
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleMigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;)V

    goto/16 :goto_94

    .line 1916
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleSafeModeTimeoutExceeded()V

    goto/16 :goto_94

    .line 1913
    :pswitch_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    goto :goto_94

    .line 1902
    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v5

    .line 1903
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    invoke-static {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 1905
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v3

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v4

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->setupInterfaceAndNetworkAgent(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    goto :goto_94

    .line 1891
    :pswitch_5b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    .line 1894
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v5, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    iget v6, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    goto :goto_94

    .line 1884
    :pswitch_7c
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1885
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_94

    .line 1888
    :pswitch_89
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_94

    .line 1879
    :pswitch_91
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleUnderlyingNetworkChanged(Landroid/os/Message;)V

    :goto_94
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_91
        :pswitch_5
        :pswitch_89
        :pswitch_7c
        :pswitch_5b
        :pswitch_2d
        :pswitch_25
        :pswitch_5
        :pswitch_5
        :pswitch_20
        :pswitch_17
        :pswitch_a
    .end packed-switch
.end method

.method public setupInterfaceAndNetworkAgent(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 6

    .line 1994
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->setupInterface(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 1996
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object p1

    if-nez p1, :cond_15

    .line 1997
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->buildNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V

    goto :goto_21

    .line 1999
    :cond_15
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3, p5}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 2003
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->clearFailedAttemptCounterAndSafeModeAlarm()V

    :goto_21
    return-void
.end method
