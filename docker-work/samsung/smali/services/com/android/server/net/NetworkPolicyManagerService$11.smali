.class public Lcom/android/server/net/NetworkPolicyManagerService$11;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 1590
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 9

    .line 1595
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0xb

    .line 1597
    :try_start_7
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v3

    .line 1598
    :goto_12
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkMetered(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-static {v4, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$smupdateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v4

    const/16 v5, 0x12

    .line 1602
    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-nez p2, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    .line 1603
    :goto_26
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkRoaming(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-static {p2, v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$smupdateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result p2

    if-nez v4, :cond_34

    if-eqz p2, :cond_46

    .line 1607
    :cond_34
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLogger(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {p2, p1, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meterednessChanged(IZ)V

    .line 1608
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1610
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 5

    .line 1615
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1616
    :try_start_5
    new-instance v1, Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1617
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateNetworkToIfacesNL(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1620
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1622
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 1627
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1628
    :try_start_5
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkToIfaces(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseSetArray;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1629
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method
