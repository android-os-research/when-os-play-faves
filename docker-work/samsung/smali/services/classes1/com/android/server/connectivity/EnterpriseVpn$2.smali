.class public Lcom/android/server/connectivity/EnterpriseVpn$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 2

    .line 835
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 6

    .line 838
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    monitor-enter v0

    .line 839
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v1, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mjniCheck(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b7

    const-string/jumbo v1, "knoxEnterpriseVpn"

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_b9

    .line 842
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmConnection(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-result-object v1

    if-eqz v1, :cond_b7

    .line 843
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmConnection(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 844
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mcloseInterface(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 845
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mdismissConnectingNotification(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)V

    .line 846
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "agentDisconnect"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$smgetService()Landroid/net/IVpnManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmProfileName(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmOwnerUID(Lcom/android/server/connectivity/EnterpriseVpn;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/net/IVpnManager;->disconnectKnoxVpn(Ljava/lang/String;I)Z

    .line 848
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mcleanupVpnStateLocked(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 850
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$smgetKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmProfileName(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeVpnUidRanges(Ljava/lang/String;)V

    .line 852
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetisVpnObjectRemoved(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result p1

    if-eqz p1, :cond_b7

    const-string/jumbo p1, "knoxEnterpriseVpn"

    const-string/jumbo v1, "resetting the network capability and unregistering the observer since the interface is removed"

    .line 853
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmUserId(Lcom/android/server/connectivity/EnterpriseVpn;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 855
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->cleanupObjects()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_9a} :catch_9b
    .catchall {:try_start_2c .. :try_end_9a} :catchall_b9

    goto :goto_b7

    :catch_9b
    move-exception p0

    :try_start_9c
    const-string/jumbo p1, "knoxEnterpriseVpn"

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at  interfaceRemoved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_b7
    :goto_b7
    monitor-exit v0

    return-void

    :catchall_b9
    move-exception p0

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_9c .. :try_end_bb} :catchall_b9

    throw p0
.end method
