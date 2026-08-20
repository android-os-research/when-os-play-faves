.class public Lcom/android/internal/telephony/cat/CatBIPManager;
.super Landroid/os/Handler;
.source "CatBIPManager.java"


# instance fields
.field blacklist channelIds:[Z

.field private blacklist connMgr:Landroid/net/ConnectivityManager;

.field blacklist connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/internal/telephony/cat/CatBIPConnection;",
            ">;"
        }
    .end annotation
.end field

.field blacklist crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

.field blacklist currentChannel:I

.field blacklist isBipOverWifi:Z

.field private blacklist isClosing:Z

.field private blacklist isRetryOverCs:Z

.field public blacklist mAPNState:Landroid/net/NetworkInfo$State;

.field private blacklist mCapabilityType:I

.field blacklist mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

.field public blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public blacklist mNetworkRequest:Landroid/net/NetworkRequest;

.field private blacklist mPdnReuse:Z

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSlotId:I

.field blacklist oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

.field blacklist resp_pending:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetconnMgr(Lcom/android/internal/telephony/cat/CatBIPManager;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapabilityType(Lcom/android/internal/telephony/cat/CatBIPManager;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeepOpenParams(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/OpenChannelParams;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotId(Lcom/android/internal/telephony/cat/CatBIPManager;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcontinueProcessingOpenChannel(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->continueProcessingOpenChannel()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfreeChannel(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBIPConnection(Lcom/android/internal/telephony/cat/CatBIPManager;I)Lcom/android/internal/telephony/cat/CatBIPConnection;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRetrieveDNSIPAddress(Lcom/android/internal/telephony/cat/CatBIPManager;Landroid/net/Network;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleRetrieveDNSIPAddress(Landroid/net/Network;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mopenChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterPhoneStateListener(Lcom/android/internal/telephony/cat/CatBIPManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerPhoneStateListener(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTerminalResponse(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTrForApnFailedOpenchannel(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTrForApnFailedOpenchannel()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTrForOpenchannelTimeout(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTrForOpenchannelTimeout()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cat/CatService;I)V
    .registers 8

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    .line 107
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v1, 0x0

    .line 109
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    .line 115
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    const/16 v2, 0x1f

    .line 118
    iput v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 119
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isClosing:Z

    .line 120
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    .line 123
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isRetryOverCs:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    .line 125
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 127
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "Inside CatBIPManager"

    .line 131
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    .line 136
    iput p4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/4 p2, 0x1

    new-array p2, p2, [Z

    .line 137
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    const-string p2, "connectivity"

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->disableBipApn()V

    .line 142
    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SPR"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    const-string p0, "ril.bip_in_progress"

    const-string p1, "0"

    .line 143
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    return-void
.end method

.method private blacklist assignChannelId()I
    .registers 4

    const/4 v0, 0x0

    .line 722
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 723
    aget-boolean v2, v1, v0

    if-nez v2, :cond_f

    const/4 p0, 0x1

    .line 724
    aput-boolean p0, v1, v0

    add-int/2addr v0, p0

    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist beginBipConnection()I
    .registers 6

    .line 890
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 891
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x0

    .line 892
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 893
    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 894
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 895
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_4a

    .line 896
    new-instance v2, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 897
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 896
    invoke-virtual {v2, v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v2

    .line 897
    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v2

    .line 896
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 900
    :cond_4a
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 902
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const-string v3, "SPR"

    if-ne v0, v2, :cond_65

    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    return v1

    .line 906
    :cond_65
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_7c

    .line 907
    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$3;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 974
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    const v4, 0xea60

    invoke-virtual {v1, v2, v0, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 977
    :cond_7c
    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const-string p0, "ril.bip_in_progress"

    const-string v0, "1"

    .line 978
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist channelsAvailable()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x1

    if-ge v1, v2, :cond_f

    .line 1370
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_c

    return v2

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    return v0
.end method

.method private blacklist closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .registers 5

    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v1, 0x0

    .line 1073
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const/4 v2, 0x0

    .line 1074
    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1076
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    if-nez v0, :cond_52

    .line 1077
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1078
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    const-string p1, "endBipConnection()"

    .line 1080
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1083
    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_30

    const/4 v0, 0x4

    if-eq p1, v0, :cond_30

    iget-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz p1, :cond_2c

    goto :goto_30

    .line 1091
    :cond_2c
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerReceiverForCloseChannel()V

    goto :goto_4f

    .line 1085
    :cond_30
    :goto_30
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1087
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sent close Channel TR: mCapabilityType - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    const/16 p1, 0x1f

    .line 1089
    iput p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 1093
    :goto_4f
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

    goto :goto_5f

    .line 1095
    :cond_52
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    const/4 p1, 0x1

    .line 1096
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_5f
    return-void
.end method

.method private blacklist continueProcessingOpenChannel()V
    .registers 9

    .line 1403
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    const-string v1, "continueProcessingOpenChannel() "

    .line 1404
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_15

    const-string v0, "bipcon is null"

    .line 1407
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1414
    :cond_15
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    const-string v2, "Removed connection Successfully!!"

    const-string v3, "Time to return"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_cb

    .line 1415
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1433
    array-length v6, v1

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5d

    .line 1436
    :try_start_28
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_2b
    .catch Ljava/net/UnknownHostException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_5d

    :catch_2c
    const-string v1, "Exception occurred while Setting up streams"

    .line 1438
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1440
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v4, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1441
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v5, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1442
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v6, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v6, v4

    aput-boolean v5, v1, v6

    .line 1445
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1446
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1448
    :cond_54
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1450
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void

    .line 1456
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 1457
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1458
    iput-boolean v5, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 1459
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    if-ne v2, v4, :cond_70

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_72

    :cond_70
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_72
    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1460
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_76} :catch_87

    .line 1485
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v2, :cond_86

    .line 1486
    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1487
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1488
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    :cond_86
    return-void

    :catch_87
    move-exception v1

    const-string v2, "HandleMessage: Exception occurred while Setting up streams"

    .line 1462
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1463
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v2, :cond_ca

    .line 1464
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1465
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1466
    iput v5, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1467
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1468
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TIMEOUT"

    .line 1469
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    .line 1470
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_c2

    .line 1472
    :cond_ae
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v2, v4

    aput-boolean v5, v1, v2

    .line 1473
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    const-string v0, "Removed connection  Successfully!!"

    .line 1474
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1477
    :cond_c2
    :goto_c2
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1479
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    :cond_ca
    return-void

    :cond_cb
    const-string v1, "Destination address is null"

    .line 1417
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1418
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1419
    iput-boolean v4, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1420
    iput v5, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1421
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1423
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v6, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v6, v4

    aput-boolean v5, v1, v6

    .line 1424
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1425
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    :cond_ef
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1428
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 1429
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    return-void
.end method

.method private blacklist disableBipApn()V
    .registers 3

    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "disableBipApn : there is no default preferences"

    .line 1537
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1540
    :cond_12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disableBipApn"

    .line 1541
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string v1, "bip.pref.enable"

    .line 1542
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1543
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist displayConnectionStatus()V
    .registers 6

    .line 1338
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ConnectionStatus Channel"

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 1340
    :goto_b
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_3c

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v1, v4, v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v3

    goto :goto_b

    .line 1343
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Total number of connections "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1348
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iface(protcl , port) =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_63

    :cond_9e
    return-void
.end method

.method private blacklist freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "Nothing to Free, No channels Open"

    .line 371
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 375
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to freeChannel chanelid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPConnection;->terminateStreams()V

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const-string p1, "Removed connection  Successfully!!"

    .line 380
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method private blacklist getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;
    .registers 5

    const-string v0, "CatBIPConnection : get ID"

    .line 701
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 705
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 706
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 707
    iget v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    if-ne v2, p1, :cond_b

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CatBIPConnection : found ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_30
    const-string p1, "CatBIPConnection : null ID"

    .line 712
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getDefaultApnName()Ljava/lang/String;
    .registers 2

    .line 1548
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1551
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApnForBip()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1553
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method

.method private blacklist getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .registers 2

    .line 1702
    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$5;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    return-object v0
.end method

.method private blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 1689
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 1691
    aget v0, v0, v1

    goto :goto_f

    :cond_c
    const v0, 0x7fffffff

    .line 1694
    :goto_f
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1695
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1696
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    :cond_23
    return-object p0
.end method

.method private blacklist handleRetrieveDNSIPAddress(Landroid/net/Network;)V
    .registers 10

    const-string v0, "handleRetrieveDNSIPAddress"

    .line 985
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2b

    const-string p1, "handleRetrieveDNSIPAddress: linkProperties is null"

    .line 988
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 990
    iput-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 991
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 992
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 993
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 994
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void

    .line 998
    :cond_2b
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_dd

    .line 999
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_39

    goto/16 :goto_dd

    .line 1010
    :cond_39
    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    if-eqz v2, :cond_45

    .line 1012
    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 1015
    :cond_45
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 1016
    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v2, "adding dns address for IPv4"

    .line 1018
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_57
    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "address : "

    const/16 v5, 0x10

    if-eqz v3, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    if-eqz v3, :cond_57

    .line 1021
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    if-eqz v6, :cond_57

    .line 1022
    array-length v7, v6

    if-eq v7, v5, :cond_57

    .line 1023
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_8a
    const-string v2, "adding dns address for IPv6"

    .line 1029
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_93
    :goto_93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    if-eqz v2, :cond_93

    .line 1032
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    if-eqz v3, :cond_93

    .line 1033
    array-length v6, v3

    if-ne v6, v5, :cond_93

    .line 1034
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 1040
    :cond_c2
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1041
    iput-boolean v1, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1042
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1043
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1044
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void

    :cond_dd
    :goto_dd
    const-string p1, "handleRetrieveDNSIPAddress: dnsAddress is null or size 0"

    .line 1000
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1002
    iput-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1003
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1004
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1005
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1006
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void
.end method

.method private blacklist isUt3TestSim()Z
    .registers 4

    .line 1569
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v1, "ril.simoperator"

    const-string v2, "ETC"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UT5"

    .line 1570
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "UT3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "UTV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_3a

    .line 1571
    :cond_25
    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UT3 test case simOp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    :goto_3a
    return p0
.end method

.method private blacklist openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I
    .registers 13

    const-string v0, "Removed connection  Successfully!!"

    const-string v1, "Time to return"

    const-string v2, "Exception occurred while Setting up streams"

    const-string v3, "openChannelAsRemoteClient()"

    .line 186
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 191
    iput-boolean v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 193
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isUt3TestSim()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 194
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    if-nez v4, :cond_a0

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getDefaultApnName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 197
    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UT3 test case set defaultApnName ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a0

    :cond_35
    const-string v4, "TestGp.rs"

    .line 200
    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    const-string v4, "UserLog"

    .line 201
    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    const-string v4, "UserPwd"

    .line 202
    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    const-string v4, "UT3 test case set NetworkAccessname"

    .line 203
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a0

    .line 206
    :cond_47
    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KDI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 207
    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, "0"

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "4405"

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8f

    const-string v5, "4407"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8f

    const-string v5, "4408"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8f

    const-string v5, "44007"

    .line 209
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    const-string v5, "44008"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    const-string v5, "44170"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    :cond_8f
    const-string v4, "admin.au-net.ne.jp"

    .line 210
    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    const-string v4, "au@admin.au-net.ne.jp"

    .line 211
    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    const-string v4, "au"

    .line 212
    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    const-string v4, "KDI case set NetworkAccessname"

    .line 213
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    :cond_a0
    :goto_a0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_eb

    .line 220
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_eb

    .line 221
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 223
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_e1

    .line 224
    array-length v7, v4

    if-lez v7, :cond_e1

    move v7, v3

    .line 225
    :goto_c2
    array-length v8, v4

    if-ge v7, v8, :cond_e1

    .line 226
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_de

    .line 227
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v6, v8, :cond_de

    .line 228
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    .line 229
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    :cond_de
    add-int/lit8 v7, v7, 0x1

    goto :goto_c2

    :cond_e1
    const-string v4, "ril.bip_in_progress"

    const-string v7, "1"

    .line 234
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v3

    move v4, v6

    goto :goto_ed

    :cond_eb
    move v4, v3

    move v7, v5

    .line 237
    :goto_ed
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v9, v8, Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v10, "requestDataConnection() returns "

    if-eqz v9, :cond_115

    check-cast v8, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataServiceState()I

    move-result v8

    if-nez v8, :cond_115

    if-nez v4, :cond_115

    .line 238
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v7

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_115
    if-eqz v7, :cond_154

    if-eq v7, v6, :cond_14e

    const/4 v0, 0x2

    if-eq v7, v0, :cond_120

    if-eq v7, v5, :cond_120

    goto/16 :goto_1c9

    :cond_120
    const-string v0, "sending Failure TR"

    .line 245
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 248
    iput-boolean v6, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 249
    iput v3, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 250
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v0, :cond_144

    .line 251
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_144

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v1, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 254
    :cond_144
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 261
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 262
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    return v7

    :cond_14e
    const-string p1, "APN_REQUEST_STARTED , wait till we hear from NetworkListener, returning "

    .line 348
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v7

    :cond_154
    const-string v4, "APN_ALREADY_ACTIVE"

    .line 266
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    :try_start_159
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 271
    array-length v4, v4

    const/16 v8, 0x10

    if-ne v4, v8, :cond_1a2

    .line 274
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v7, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 276
    iput-boolean v6, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 277
    iput v3, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 278
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v4, :cond_186

    .line 279
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v4, v7, :cond_186

    .line 280
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v7, v3}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v7, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 282
    :cond_186
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 284
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v7, v6

    aput-boolean v3, v4, v7

    .line 285
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19b

    .line 286
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    :cond_19b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 289
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v5

    .line 293
    :cond_1a2
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 294
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 295
    iput-boolean v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 297
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v8, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    if-ne v8, v6, :cond_1b5

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_1b7

    :cond_1b5
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_1b7
    iput-object v8, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 298
    iput-boolean v3, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const-string v4, "wakelock for OPEN CHANNEL"

    .line 300
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x2710

    invoke-virtual {v4, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_1c9} :catch_1f3

    .line 352
    :goto_1c9
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-eqz v1, :cond_1d8

    const-string v0, "Backgound mode sending channel status to Cat Service"

    .line 353
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_1ef

    .line 355
    :cond_1d8
    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-nez v0, :cond_1ef

    .line 356
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    const-string v0, "Immediate mode Sending TR to Cat Service"

    .line 357
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v1, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 361
    :cond_1ef
    :goto_1ef
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    return v7

    .line 304
    :catch_1f3
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "TMO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_215

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    .line 308
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "DSG"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_213

    goto :goto_215

    :cond_213
    :goto_213
    move v2, v6

    goto :goto_229

    .line 309
    :cond_215
    :goto_215
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 310
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mobile_data"

    .line 309
    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_228

    goto :goto_213

    :cond_228
    move v2, v3

    .line 313
    :goto_229
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isUt3TestSim()Z

    move-result v4

    if-eqz v4, :cond_235

    const-string v2, "UT3 test case mUserDataEnabled"

    .line 314
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v6

    .line 318
    :cond_235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUserDataEnabled "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v7, v4, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v7, :cond_27a

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataServiceState()I

    move-result v4

    if-nez v4, :cond_27a

    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz v4, :cond_27a

    if-eqz v2, :cond_27a

    .line 321
    iput-boolean v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 322
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isRetryOverCs:Z

    .line 323
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result p1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    return v6

    .line 328
    :cond_27a
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 329
    iput-boolean v6, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 330
    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 331
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v2, :cond_299

    .line 332
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v4, :cond_299

    .line 333
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v4, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 335
    :cond_299
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v4, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    sub-int/2addr v4, v6

    aput-boolean v3, v2, v4

    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2ae

    .line 339
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    :cond_2ae
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 342
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v5
.end method

.method private blacklist receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V
    .registers 8

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v1, 0x0

    .line 743
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    and-int/lit16 v0, p2, 0xff

    const/16 v2, 0xed

    if-le v0, v2, :cond_24

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveDataClientMode: requestedLength is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move p2, v2

    :cond_24
    and-int/lit16 p2, p2, 0xff

    .line 755
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->getRxData(I)[B

    move-result-object v0

    if-nez v0, :cond_33

    const-string p1, "receiveDataClientMode: RxData is null"

    .line 757
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move p1, v1

    goto :goto_51

    .line 758
    :cond_33
    array-length v2, v0

    if-ge v2, p2, :cond_3d

    .line 759
    array-length p1, v0

    const-string p2, "receiveDataClientMode: RxData is shorter than requested length"

    .line 760
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4e

    .line 763
    :cond_3d
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 764
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    iget p1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    sub-int v1, p2, p1

    .line 765
    array-length p1, v0

    :goto_4e
    move v4, v1

    move v1, p1

    move p1, v4

    .line 767
    :goto_51
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance p2, Lcom/android/internal/telephony/cat/ReceiveDataResponse;

    invoke-direct {p2, v0, v1, p1}, Lcom/android/internal/telephony/cat/ReceiveDataResponse;-><init>([BII)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    return-void
.end method

.method private blacklist registerPhoneStateListener(I)V
    .registers 3

    .line 1663
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->unregisterPhoneStateListener()V

    const-string v0, "registerPhoneStateListener"

    .line 1665
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1667
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1668
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1669
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private blacklist registerReceiverForCloseChannel()V
    .registers 4

    const-string v0, "registerReceiverForCloseChannel"

    .line 1595
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1597
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1599
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPManager$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$4;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I
    .registers 11

    .line 796
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v1, "ril.simtype"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    const-string v2, "18"

    const-string v3, "3"

    const/4 v4, 0x3

    const/16 v5, 0x1f

    const/16 v6, 0xc

    if-nez v1, :cond_80

    .line 799
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->disableBipApn()V

    .line 801
    iput v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 803
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "SPR"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    if-ne v1, v6, :cond_5f

    .line 804
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "ATC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "Forcing BIP APN for ATC"

    .line 805
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "altice"

    .line 806
    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    goto :goto_4f

    :cond_46
    const-string v1, "Forcing BIP APN for SPR"

    .line 808
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "otasn"

    .line 809
    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 812
    :goto_4f
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->checkIsSprintSimCard()Z

    move-result v1

    if-eqz v1, :cond_59

    move v1, v4

    goto :goto_5a

    :cond_59
    move v1, v5

    .line 813
    :goto_5a
    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 814
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 816
    :cond_5f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    .line 817
    :cond_6b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v2, "CscFeature_RIL_BIPOTAApnName"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 818
    iput v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 819
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    goto/16 :goto_136

    .line 822
    :cond_80
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getDefaultApnName()Ljava/lang/String;

    move-result-object v1

    .line 823
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defaultApnName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_aa

    .line 824
    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    const-string v1, "con.NetworkAccessname is same as default APN"

    .line 825
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    iput v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    goto :goto_b7

    .line 828
    :cond_aa
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->checkIsSprintSimCard()Z

    move-result v1

    if-eqz v1, :cond_b4

    move v1, v4

    goto :goto_b5

    :cond_b4
    move v1, v5

    .line 829
    :goto_b5
    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    :goto_b7
    const-string v1, "2"

    .line 831
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "IMS"

    const/4 v8, 0x4

    if-nez v1, :cond_10e

    const-string v1, "20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    goto :goto_10e

    .line 841
    :cond_cb
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_103

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    goto :goto_103

    :cond_d8
    const-string v1, "4"

    .line 845
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    const-string v1, "19"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 846
    :cond_e8
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    const-string v1, "ims"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_133

    .line 847
    iput v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    goto :goto_133

    .line 842
    :cond_103
    :goto_103
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 843
    iput v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    goto :goto_133

    .line 832
    :cond_10e
    :goto_10e
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    const-string v0, "ril.currentplmn"

    .line 833
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12c

    const-string v0, "KT BIP OTA is progressing for domestic mode"

    .line 834
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    iput v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    goto :goto_133

    :cond_12c
    const-string v0, "KT BIP OTA is progressing for oversea mode"

    .line 837
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    iput v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 850
    :cond_133
    :goto_133
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 852
    :cond_136
    :goto_136
    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TMO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_159

    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    .line 853
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DSG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_159

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isUt3TestSim()Z

    move-result p1

    if-eqz p1, :cond_1b7

    :cond_159
    const-string p1, "CSCFEATURE_RIL_ENABLEBIPDURINGMOBILEDATAOFF"

    .line 854
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "mobile_data"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_173

    move p1, v0

    goto :goto_174

    :cond_173
    move p1, v1

    .line 859
    :goto_174
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_184

    move v2, v0

    goto :goto_185

    :cond_184
    move v2, v1

    .line 861
    :goto_185
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const v6, 0x7fffffff

    .line 863
    iget v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    if-eqz v7, :cond_19c

    .line 865
    aget v6, v7, v1

    :cond_19c
    if-eqz p1, :cond_1a6

    .line 868
    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result p1

    if-eqz p1, :cond_1b7

    if-nez v2, :cond_1b7

    :cond_1a6
    const-string p1, "set mCapabilityType : BIP"

    .line 869
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->checkIsSprintSimCard()Z

    move-result p1

    if-eqz p1, :cond_1b4

    goto :goto_1b5

    :cond_1b4
    move v4, v5

    :goto_1b5
    iput v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 877
    :cond_1b7
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->beginBipConnection()I

    move-result p1

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result of beginBipConnection("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, p1, :cond_1e9

    const-string v1, "wakelock for OPEN CHANNEL"

    .line 881
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 884
    :cond_1e9
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return p1
.end method

.method private blacklist sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    .registers 12

    .line 1109
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-eqz v0, :cond_1c

    const-string v0, "ConnectionMode.isOnDemand && con.isfirstTime = true"

    .line 1110
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    const-string p1, "APN_REQUEST_FAILED"

    .line 1112
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1117
    :cond_1c
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-nez v0, :cond_202

    const-string v0, "con.isfirstTime = false"

    .line 1118
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v1, 0x1

    .line 1123
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1124
    new-instance v1, Lcom/android/internal/telephony/cat/SendDataResponse;

    iget v2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1126
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 1127
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    const-string v2, "TCP Remote Client"

    .line 1128
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1130
    :cond_55
    iput-boolean v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    goto :goto_77

    .line 1132
    :cond_58
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1133
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramSocket;

    const-string v2, "UDP Remote Client"

    .line 1134
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1136
    :cond_75
    iput-boolean v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 1140
    :cond_77
    :goto_77
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-nez v0, :cond_a8

    .line 1141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Socket is Closed or Not Connected isLinkEstablished  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 p3, 0x2

    iput p3, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1143
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1145
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result p2

    if-eqz p2, :cond_a7

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1147
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    :cond_a7
    return-void

    :cond_a8
    const-string v0, "Socket is neither Closed nor Not Connected"

    .line 1151
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    :try_start_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bytes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1156
    iget v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    array-length p2, p2

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I
    :try_end_e4
    .catch Ljava/lang/NullPointerException; {:try_start_ad .. :try_end_e4} :catch_eb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ad .. :try_end_e4} :catch_e5

    goto :goto_f0

    :catch_e5
    const-string p2, "IndexOutOfBounds Exception while writing to tx buf "

    .line 1160
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f0

    :catch_eb
    const-string p2, "Nul pointer Exception while writing to tx buf "

    .line 1158
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_f0
    if-eqz p3, :cond_1e6

    .line 1166
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result p2

    if-eqz p2, :cond_168

    .line 1167
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast p2, Ljava/net/DatagramSocket;

    .line 1168
    new-instance p3, Ljava/net/DatagramPacket;

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    .line 1170
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v7, v0, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    move-object v2, p3

    invoke-direct/range {v2 .. v7}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 1175
    :try_start_117
    invoke-virtual {p2, p3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const-string p2, "Packet Ready sent"

    .line 1176
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object p3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object p3, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1178
    iput-boolean v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1179
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1180
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 1182
    iget p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    iget-object p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1183
    iget-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v0, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v0, p3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_140} :catch_142

    goto/16 :goto_1ff

    :catch_142
    move-exception p2

    .line 1185
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException while sending UDP packet : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1187
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1188
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto/16 :goto_1ff

    .line 1191
    :cond_168
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result p2

    if-eqz p2, :cond_1ff

    .line 1193
    :try_start_170
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    iget-object p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p2, p3, v1, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1195
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    .line 1196
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data written to TCP sockt "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object p3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object p3, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1199
    iput-boolean v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1200
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1201
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 1203
    iget p2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    iget-object p3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1205
    iget-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v0, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v0, p3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_1c0} :catch_1c1

    goto :goto_1ff

    :catch_1c1
    move-exception p2

    .line 1208
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception while sending to TCP packet : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1210
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1211
    iget-object p2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1212
    iput v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto :goto_1ff

    :cond_1e6
    const-string p2, "Data Stored. Send Response"

    .line 1218
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object p3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object p3, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1220
    iput-boolean v1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1221
    iget p3, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    iget p1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    sub-int/2addr p3, p1

    .line 1222
    new-instance p1, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {p1, p3}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object p1, p2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1225
    :cond_1ff
    :goto_1ff
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    :cond_202
    return-void
.end method

.method private blacklist sendTerminalResponse()V
    .registers 3

    .line 1578
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1579
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1580
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist sendTrForApnFailedOpenchannel()V
    .registers 5

    .line 1644
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_38

    .line 1646
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1647
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 1648
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const/4 v2, 0x0

    .line 1649
    iput v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1650
    new-instance v3, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    iput-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    const-string v1, "sendTrForApnFailedOpenchannel: Filled Open Channel Terminal Response params"

    .line 1651
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1652
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1653
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 1656
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1657
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1658
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    :cond_38
    return-void
.end method

.method private blacklist sendTrForOpenchannelTimeout()V
    .registers 4

    .line 1356
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1357
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 1358
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const/4 v2, 0x0

    .line 1359
    iput v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1360
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 1362
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1363
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1364
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1365
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    return-void
.end method

.method private blacklist setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .registers 6

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p1, "setBipApn : there is no default preferences"

    .line 1496
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1499
    :cond_12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setBipApn : set values"

    .line 1500
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1501
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    const/16 v2, 0xc

    const-string v3, "bip.pref.enable"

    if-eq v1, v2, :cond_f0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_28

    goto/16 :goto_f0

    :cond_28
    const/4 v1, 0x1

    .line 1504
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1505
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "bip.pref.apn"

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v3, v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v3, :cond_6f

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1507
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1508
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v3, 0xe

    if-eq v1, v3, :cond_6f

    const-string p0, "cinet.spcs"

    .line 1509
    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_f4

    .line 1511
    :cond_6f
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1512
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    const-string v2, "bip.pref.user"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1513
    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    const-string v1, "bip.pref.passwd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1515
    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "VZW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "IPV4V6"

    const-string v2, "bip.pref.protocol"

    if-eqz p1, :cond_9e

    .line 1516
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "bip.pref.roaming_protocol"

    const-string v3, "IP"

    .line 1517
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1520
    :cond_9e
    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "KDI"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f4

    .line 1521
    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string p1, "gsm.sim.operator.numeric"

    const-string v3, "0"

    invoke-static {p0, p1, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4405"

    .line 1522
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e6

    const-string p1, "4407"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e6

    const-string p1, "4408"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e6

    const-string p1, "44007"

    .line 1523
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    const-string p1, "44008"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    const-string p1, "44170"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f4

    .line 1524
    :cond_e6
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x2

    const-string p1, "bip.pref.auth_type"

    .line 1525
    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_f4

    :cond_f0
    :goto_f0
    const/4 p0, 0x0

    .line 1502
    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1530
    :cond_f4
    :goto_f4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist unregisterPhoneStateListener()V
    .registers 4

    const-string v0, "unregisterPhoneStateListener "

    .line 1673
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_f

    const-string v0, "unregisterPhoneStateListener(), no listener indicates nothing is listening"

    .line 1675
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1679
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1680
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    const-string v0, "Unable to unregister PhoneStateListener as mPhoneStateListener is already null"

    .line 1682
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1f
    const/4 v0, 0x0

    .line 1684
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    const-string v0, "dispose CatBIPManager"

    .line 153
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 156
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 157
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isRetryOverCs:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->unregisterReceiver()V

    return-void
.end method

.method protected blacklist endBipConnection()V
    .registers 4

    .line 1048
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    .line 1049
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->unregisterPhoneStateListener()V

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    .line 1051
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 1053
    :try_start_f
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_16} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_22

    :catch_17
    const-string v0, "NullPointerException happens"

    .line 1057
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_22

    :catch_1d
    const-string v0, "IllegalArgumentException happens"

    .line 1055
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    :goto_22
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1062
    :cond_24
    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SPR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    const-string p0, "ril.bip_in_progress"

    const-string v0, "0"

    .line 1063
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public blacklist getChannelStatus(Lcom/android/internal/telephony/cat/CommandParams;)V
    .registers 5

    const-string v0, "getChannelStatus"

    .line 680
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 683
    iget-object p1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 684
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 p1, 0x0

    .line 685
    iput-boolean p1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 687
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v1, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    invoke-direct {v1, p1, v2}, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;-><init>(Ljava/util/Iterator;[Z)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 690
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method public blacklist handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V
    .registers 6

    const-string v0, "handleCloseChannel"

    .line 546
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iget v0, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    and-int/lit8 v0, v0, 0x7

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseChannel: Requested Chanel ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 553
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 554
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 555
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 557
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 558
    iget v1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    const/4 v2, 0x3

    const/16 v3, 0x21

    if-lt v1, v3, :cond_b5

    const/16 v3, 0x27

    if-le v1, v3, :cond_3e

    goto :goto_b5

    .line 567
    :cond_3e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    if-nez v1, :cond_6a

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseChannel: No Channel Available! BIP cid ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " params.mChannelId ="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v2, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 574
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void

    .line 579
    :cond_6a
    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v0

    if-eqz v0, :cond_af

    const-string v0, "handleCloseChannel: UICC in CLIENT Mode"

    .line 580
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 583
    iget-boolean p1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mPdnReuse:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPdnReuse : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    :cond_9f
    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    const-string p1, "Be back to old StrictMode"

    .line 589
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_b4

    :cond_af
    const-string p1, "handleCloseChannel: Do not support UICC in SERVER Mode"

    .line 592
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b4
    return-void

    .line 560
    :cond_b5
    :goto_b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseChannel: Invalid Channel Id! BIP\'s cid ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " params.mChannelId"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v2, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 563
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 164
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const-string p1, "unknown message"

    .line 175
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2f

    :cond_b
    const-string p1, "MSG_ID_BIP_KEEP_CHANNEL_TIMEOUT"

    .line 166
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->checkIsSprintSimCard()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x3

    goto :goto_2b

    :cond_29
    const/16 v0, 0x1f

    .line 171
    :goto_2b
    iput v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 172
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    :goto_2f
    return-void
.end method

.method public blacklist handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V
    .registers 18

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v1, "handleOpenChannel"

    .line 390
    invoke-static {v10, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 394
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 395
    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v11, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x0

    .line 396
    iput-boolean v12, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 398
    iput-object v0, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mKeepOpenParams:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 399
    iget v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v13, "VZW"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_d2

    iget-boolean v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    if-ne v1, v14, :cond_d2

    const-string v1, "mPdnReuse is true"

    .line 400
    invoke-static {v10, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v10, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    iget v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {v10, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    if-eqz v1, :cond_cb

    .line 405
    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    :cond_52
    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    if-eqz v2, :cond_9b

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 407
    :cond_5e
    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v2, v2, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    if-ne v2, v3, :cond_92

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    if-eqz v2, :cond_92

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    if-eqz v3, :cond_92

    .line 409
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_92

    const-string v0, "open channel with same settings, send TR"

    .line 410
    invoke-static {v10, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v0, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 413
    iput-boolean v12, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    return-void

    :cond_92
    const-string v2, "open channel with same apn and different address"

    .line 416
    invoke-static {v10, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-direct {v10, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_d2

    :cond_9b
    const-string v2, "open channel with different apn"

    .line 420
    invoke-static {v10, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-direct {v10, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 424
    iget v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b8

    iget-boolean v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz v1, :cond_b4

    goto :goto_b8

    .line 431
    :cond_b4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerReceiverForCloseChannel()V

    return-void

    .line 426
    :cond_b8
    :goto_b8
    iput-boolean v12, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    .line 427
    iget-object v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->checkIsSprintSimCard()Z

    move-result v1

    if-eqz v1, :cond_c4

    const/4 v1, 0x3

    goto :goto_c6

    :cond_c4
    const/16 v1, 0x1f

    .line 428
    :goto_c6
    iput v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mCapabilityType:I

    .line 429
    iput-boolean v12, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    goto :goto_d2

    :cond_cb
    const-string v1, "no connection"

    .line 436
    invoke-static {v10, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iput-boolean v12, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    .line 441
    :cond_d2
    :goto_d2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->channelsAvailable()Z

    move-result v1

    if-nez v1, :cond_e7

    const-string v0, "Bearer type not supported"

    .line 442
    invoke-static {v10, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iget-object v0, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void

    .line 448
    :cond_e7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isUt3TestSim()Z

    move-result v1

    if-eqz v1, :cond_f3

    const-string v1, "UT3 test case"

    .line 449
    invoke-static {v10, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_158

    .line 450
    :cond_f3
    iget v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10f

    iget v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    .line 451
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 452
    :cond_10f
    iget-object v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 453
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    .line 452
    invoke-static {v1, v2, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v14, :cond_123

    move v1, v14

    goto :goto_124

    :cond_123
    move v1, v12

    .line 456
    :goto_124
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_142

    .line 457
    iget-object v2, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 458
    invoke-virtual {v2, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_142

    .line 459
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_142

    move v2, v14

    goto :goto_143

    :cond_142
    move v2, v12

    :goto_143
    if-nez v1, :cond_158

    if-nez v2, :cond_158

    const-string v0, "Mobile data and WiFi both are disable."

    .line 464
    invoke-static {v10, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v0, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 466
    iput-boolean v12, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void

    .line 473
    :cond_158
    :goto_158
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 475
    iget-object v1, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v1

    if-eqz v1, :cond_237

    .line 476
    iget-object v1, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 477
    iget-object v2, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    new-instance v15, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-object v5, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-object v7, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-object v4, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v8, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v9, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;-><init>(Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Change the StrictMode for BIP client Mode"

    .line 492
    invoke-static {v10, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 494
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 493
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->assignChannelId()I

    move-result v0

    iput v0, v15, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    .line 498
    iget-object v0, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel Assigned  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iget v0, v15, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    iput v0, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    .line 505
    iget-object v0, v15, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-nez v1, :cond_1ef

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v0, :cond_211

    :cond_1ef
    const-string v0, "openChannelAsRemoteClient sending TR connection mode is either backgrnd or ondemand"

    .line 506
    invoke-static {v10, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    iget-object v0, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v1, v15, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    if-ne v1, v14, :cond_1fc

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :cond_1fc
    iput-object v11, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 508
    iput-boolean v12, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 509
    new-instance v1, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v1, v15}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    .line 512
    iget-object v0, v15, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v0, :cond_211

    return-void

    .line 517
    :cond_211
    iget v0, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_226

    iget-boolean v0, v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mPdnReuse:Z

    if-nez v0, :cond_226

    const/16 v0, 0x1000

    .line 518
    invoke-direct {v10, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerPhoneStateListener(I)V

    .line 521
    :cond_226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPManager$1;

    invoke-direct {v1, v10, v15}, Lcom/android/internal/telephony/cat/CatBIPManager$1;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 532
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 534
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    goto :goto_23c

    :cond_237
    const-string v0, "handleOpenChannel: Do not support UICC in SERVER mode"

    .line 536
    invoke-static {v10, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_23c
    return-void
.end method

.method public blacklist handleReceiveData(Lcom/android/internal/telephony/cat/ReceiveDataParams;)V
    .registers 6

    const-string v0, "handleReceiveData"

    .line 637
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    iget v0, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    and-int/lit8 v0, v0, 0x7

    .line 640
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 641
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 642
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 643
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 645
    iget v1, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_57

    const/16 v3, 0x27

    if-le v1, v3, :cond_26

    goto :goto_57

    .line 653
    :cond_26
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    if-nez v0, :cond_39

    const-string p1, "handleReceiveData: No Channel available"

    .line 657
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v2, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 659
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void

    .line 663
    :cond_39
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 664
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-byte p1, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V

    .line 665
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    const-string p1, "handleReceiveData: Sending Receive Data Terminal Response to mCatService handle"

    .line 666
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_56

    :cond_51
    const-string p1, "handleReceiveData: BIP Connection Found. UICC in SERVER mode does not support"

    .line 668
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_56
    return-void

    :cond_57
    :goto_57
    const-string p1, "handleReceiveData: Invalid Channel ID"

    .line 647
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 649
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method public blacklist handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V
    .registers 6

    const-string v0, "handleSendData"

    .line 598
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    iget v0, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    and-int/lit8 v0, v0, 0x7

    .line 603
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 604
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 605
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x1

    .line 606
    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 608
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 610
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 611
    iget v2, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_5a

    const/16 v3, 0x27

    if-le v2, v3, :cond_2f

    goto :goto_5a

    .line 619
    :cond_2f
    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isClient()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "handleSendData: UICC in CLIENT mode"

    .line 620
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    iget-object v0, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 624
    iget-boolean p1, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    .line 625
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPManager$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager$2;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;[BZ)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 630
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_59

    :cond_54
    const-string p1, "handleSendData: Do not support UICC in SERVER mode"

    .line 632
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_59
    return-void

    .line 612
    :cond_5a
    :goto_5a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSendData: No Channel available : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 615
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTerminalResponse()V

    return-void
.end method

.method blacklist isBipOverWifiEnabled()Z
    .registers 4

    .line 1584
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const-string v1, "CarrierFeature_RIL_SupportBipOverWifi"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    if-nez p0, :cond_25

    .line 1586
    sget-boolean p0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p0, :cond_24

    const-string p0, "persist.radio.bipoverwifi"

    const-string v0, "0"

    .line 1587
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    return v2

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist linkDropWhenConnectionReset(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .registers 3

    .line 1560
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    const/4 v0, 0x0

    .line 1561
    iput-boolean v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const/4 v0, 0x5

    .line 1562
    iput-byte v0, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 1563
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1564
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    return-void
.end method

.method public blacklist registerPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    const-string v0, "CatBIPManager phone reloaded!"

    .line 148
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public blacklist sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .registers 7

    .line 1237
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isMonitoringEvent(II)Z

    move-result v0

    if-nez v0, :cond_10

    const-string p1, "sendChannelStatusEvent: not set"

    .line 1238
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1242
    :cond_10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1243
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 1244
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    .line 1245
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1247
    iget v2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    .line 1249
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v3

    const/4 v4, 0x6

    if-eqz v3, :cond_3b

    .line 1250
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    :goto_39
    int-to-byte v2, v2

    goto :goto_45

    .line 1252
    :cond_3b
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v3, :cond_45

    or-int/lit16 v2, v2, 0x80

    goto :goto_39

    .line 1256
    :cond_45
    :goto_45
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1257
    iget-byte p1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1258
    new-instance p1, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {p1}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 1259
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    iput v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 1260
    new-instance v2, Lcom/android/internal/telephony/cat/SetEventListParams;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    .line 1261
    new-instance p1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p1, v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1262
    new-instance v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1264
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 1266
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v0, "sendChannelStatusEvent: Send EVENT_DOWNLOAD_CHANNEL_STATUS Envelope Message to mCatService handle"

    .line 1267
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1268
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1269
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .registers 7

    .line 1276
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isMonitoringEvent(II)Z

    move-result v0

    if-nez v0, :cond_10

    const-string p1, "sendDataAvailableEvent: not set"

    .line 1277
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1282
    :cond_10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1284
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 1285
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    .line 1286
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1288
    iget v2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    .line 1289
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v3

    const/4 v4, 0x6

    if-eqz v3, :cond_3b

    .line 1290
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v3, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    :goto_39
    int-to-byte v2, v2

    goto :goto_45

    .line 1292
    :cond_3b
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v3, :cond_45

    or-int/lit16 v2, v2, 0x80

    goto :goto_39

    .line 1296
    :cond_45
    :goto_45
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    .line 1297
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1300
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 1301
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x1

    .line 1302
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1305
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v2

    const/16 v3, 0xff

    if-eqz v2, :cond_66

    goto :goto_9b

    .line 1308
    :cond_66
    check-cast p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-le p1, v3, :cond_71

    goto :goto_72

    :cond_71
    move v3, p1

    .line 1310
    :goto_72
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    if-eqz p1, :cond_9b

    .line 1311
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 1312
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getEid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9b

    const-string v2, "89043051"

    .line 1313
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    const/4 p1, 0x5

    if-ne v3, p1, :cond_9b

    const/4 v3, 0x4

    const-string p1, "sendDataAvailableEvent dataLength set 0x04"

    .line 1315
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1319
    :cond_9b
    :goto_9b
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1321
    new-instance p1, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {p1}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 1322
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    iput v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 1323
    new-instance v2, Lcom/android/internal/telephony/cat/SetEventListParams;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    .line 1324
    new-instance p1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p1, v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1325
    new-instance v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1327
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1328
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 1330
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v0, "sendDataAvailableEvent: Send EVENT_DOWNLOAD_DATA_AVAILABLE to mCatService handle"

    .line 1331
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1333
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist unregisterReceiver()V
    .registers 3

    const-string v0, "unregisterReceiver"

    .line 1636
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_11

    .line 1638
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1639
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_11
    return-void
.end method
