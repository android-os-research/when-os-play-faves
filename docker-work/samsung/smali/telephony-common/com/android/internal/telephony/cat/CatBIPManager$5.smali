.class Lcom/android/internal/telephony/cat/CatBIPManager$5;
.super Landroid/telephony/PhoneStateListener;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
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

    .line 1702
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 4

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreciseDataConnectionStateChanged, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1730
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionApnTypeBitMask()I

    move-result v0

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_28

    .line 1731
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionApnTypeBitMask()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_54

    .line 1732
    :cond_28
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionFailCause()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_54

    .line 1733
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3d

    .line 1734
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result p1

    if-nez p1, :cond_54

    .line 1735
    :cond_3d
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v0, :cond_54

    iget-boolean p1, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_54

    const-string p1, "ACL fail so send TR"

    .line 1736
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1737
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$msendTrForApnFailedOpenchannel(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    :cond_54
    return-void
.end method

.method public whitelist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1706
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5e

    .line 1707
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    const-string p1, "ServiceState.STATE_OUT_OF_SERVICE LINK_DROPPED "

    .line 1708
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1711
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1712
    :cond_32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1713
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1714
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1715
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/TransportLevel;->isRemoteClient()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    .line 1716
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const/4 v1, 0x5

    .line 1717
    iput-byte v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 1718
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1719
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mfreeChannel(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_32

    .line 1722
    :cond_59
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$5;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    :cond_5e
    return-void
.end method
