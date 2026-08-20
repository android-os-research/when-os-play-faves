.class Lcom/android/internal/telephony/cat/CatBIPManager$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->beginBipConnection()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/CatBIPManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .registers 2

    .line 907
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 6

    .line 910
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    const-string v0, "onAvailable "

    .line 912
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetconnMgr(Lcom/android/internal/telephony/cat/CatBIPManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-nez v0, :cond_25

    const-string p1, "No BIP cmd is being processed, May not have been unregistered from NWConnectivityListener"

    .line 916
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 919
    :cond_25
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_8b

    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 921
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result v0

    .line 922
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DSG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result v0

    .line 923
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TMB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_6a
    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mRetrieveDNSIPAddress:Z

    if-ne v0, v2, :cond_79

    const-string v0, "mRetrieveDNSIPAddress is true"

    .line 925
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mhandleRetrieveDNSIPAddress(Lcom/android/internal/telephony/cat/CatBIPManager;Landroid/net/Network;)V

    goto :goto_8b

    .line 928
    :cond_79
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mregisterPhoneStateListener(Lcom/android/internal/telephony/cat/CatBIPManager;I)V

    .line 929
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPManager$3$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$3$1;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager$3;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 934
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 963
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const-string p1, "onCapabilitiesChanged "

    .line 964
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 5

    .line 940
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 941
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    const-string p1, "onLost LINK_DROPPED "

    .line 942
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 945
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 946
    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 947
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 948
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 949
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 950
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const/4 v1, 0x5

    .line 951
    iput-byte v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 952
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 953
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mfreeChannel(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_16

    .line 956
    :cond_3d
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 957
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fputmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;Z)V

    return-void
.end method

.method public whitelist onUnavailable()V
    .registers 2

    .line 969
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "onUnavailable "

    .line 970
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$msendTrForOpenchannelTimeout(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    return-void
.end method
