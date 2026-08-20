.class public abstract Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ConnectedStateBase"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public static synthetic $r8$lambda$A3QPMJIyGdHhfWPyQBRUFE9yF4o(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->lambda$buildNetworkAgent$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f-EsbdIIQFxUk5ilDttx5lAW6kw(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->lambda$buildNetworkAgent$0(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 3

    .line 1668
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method

.method private synthetic lambda$buildNetworkAgent$0(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .registers 3

    .line 1732
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    if-eq v0, p1, :cond_11

    .line 1733
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string/jumbo p1, "unwanted() called on stale NetworkAgent"

    invoke-static {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    return-void

    .line 1737
    :cond_11
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v0, "NetworkAgent was unwanted"

    invoke-static {p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1738
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    return-void
.end method

.method private synthetic lambda$buildNetworkAgent$1(Ljava/lang/Integer;)V
    .registers 4

    .line 1741
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIsQuitting(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/util/OneWayBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1745
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_53

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    .line 1763
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown validation status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    goto :goto_56

    .line 1752
    :cond_33
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 1753
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 1760
    :cond_4d
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setSafeModeAlarm()V

    goto :goto_56

    .line 1747
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->clearFailedAttemptCounterAndSafeModeAlarm()V

    :goto_56
    return-void
.end method


# virtual methods
.method public applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V
    .registers 9

    if-eqz p5, :cond_1b

    const/4 v0, 0x1

    if-eq p5, v0, :cond_1b

    .line 1795
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying transform for unexpected direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1799
    :cond_1b
    :try_start_1b
    invoke-virtual {p2, p3}, Landroid/net/IpSecManager$IpSecTunnelInterface;->setUnderlyingNetwork(Landroid/net/Network;)V

    .line 1802
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIpSecManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;

    move-result-object p3

    invoke-virtual {p3, p2, p5, p4}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V

    .line 1806
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object p3

    if-nez p5, :cond_64

    const/4 p5, 0x2

    .line 1808
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_64

    .line 1809
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIpSecManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;

    move-result-object p3

    invoke-virtual {p3, p2, p5, p4}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_47} :catch_48

    goto :goto_64

    :catch_48
    move-exception p2

    .line 1813
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Transform application failed for network "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1814
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public buildNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .registers 18

    move-object v0, p0

    .line 1695
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIsMobileDataEnabled(Lcom/android/server/vcn/VcnGatewayConnection;)Z

    move-result v3

    .line 1696
    invoke-static {v1, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;

    move-result-object v7

    .line 1697
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v5

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    .line 1698
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection;->buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Landroid/net/LinkProperties;

    move-result-object v8

    .line 1704
    new-instance v1, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v1}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    const/4 v2, 0x0

    .line 1706
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    const-string v3, "MOBILE"

    .line 1707
    invoke-virtual {v1, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    .line 1708
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubType(I)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    .line 1710
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1709
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    const-string v2, "VCN"

    .line 1712
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    .line 1713
    invoke-virtual {v1}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v10

    .line 1715
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmDeps(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    move-result-object v4

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmVcnContext(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v5

    invoke-static {}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    .line 1721
    invoke-static {}, Lcom/android/server/vcn/Vcn;->getNetworkScore()Landroid/net/NetworkScore;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmVcnContext(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v1

    .line 1723
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v11

    new-instance v12, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;

    invoke-direct {v12, p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;)V

    new-instance v13, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda1;

    invoke-direct {v13, p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;)V

    .line 1716
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newNetworkAgent(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    .line 1771
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->register()V

    .line 1772
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->markConnected()V

    return-object v0
.end method

.method public clearFailedAttemptCounterAndSafeModeAlarm()V
    .registers 3

    .line 1778
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmVcnContext(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 1781
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    .line 1782
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mcancelSafeModeAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 1784
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmIsInSafeMode(Lcom/android/server/vcn/VcnGatewayConnection;Z)V

    .line 1785
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmGatewayStatusCallback(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onSafeModeStatusChanged()V

    return-void
.end method

.method public setupInterface(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .registers 7

    .line 1824
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    .line 1825
    invoke-virtual {p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1826
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    if-eqz p4, :cond_17

    .line 1828
    invoke-virtual {p4}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1831
    :cond_17
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    .line 1832
    invoke-interface {p4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1833
    invoke-interface {p4, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1835
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1836
    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1837
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1839
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_31
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_49

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/LinkAddress;

    .line 1840
    invoke-virtual {p4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p4

    invoke-virtual {p2, v0, p4}, Landroid/net/IpSecManager$IpSecTunnelInterface;->addAddress(Ljava/net/InetAddress;I)V

    goto :goto_31

    .line 1843
    :cond_49
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_81

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/LinkAddress;

    .line 1844
    invoke-virtual {p4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p4

    invoke-virtual {p2, v0, p4}, Landroid/net/IpSecManager$IpSecTunnelInterface;->removeAddress(Ljava/net/InetAddress;I)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_4d

    :catch_65
    move-exception p2

    .line 1847
    iget-object p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding address to tunnel failed for token "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1848
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    :cond_81
    return-void
.end method

.method public updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 12

    .line 1674
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIsMobileDataEnabled(Lcom/android/server/vcn/VcnGatewayConnection;)Z

    move-result v2

    .line 1675
    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1676
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v5

    move-object v3, p1

    move-object v4, p3

    move-object v6, p4

    .line 1677
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection;->buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Landroid/net/LinkProperties;

    move-result-object p1

    .line 1684
    invoke-virtual {p2, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1685
    invoke-virtual {p2, p1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 1688
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object p1

    if-nez p1, :cond_39

    const/4 p0, 0x0

    goto :goto_45

    :cond_39
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1687
    :goto_45
    invoke-virtual {p2, p0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    return-void
.end method
