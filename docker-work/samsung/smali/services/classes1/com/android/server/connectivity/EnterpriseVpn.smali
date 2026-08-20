.class public Lcom/android/server/connectivity/EnterpriseVpn;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    }
.end annotation


# static fields
.field public static final CHAINING_ENABLED:I = 0x1

.field public static final DBG:Z

.field public static final INVALID_PACKAGE_UID:I = -0x1

.field public static final LOGD:Z = true

.field public static final META_MARK_ENABLED_PROPERTY:Ljava/lang/String; = "net.vpn.markbase"

.field public static final NETID_UNSET:I = 0x0

.field public static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field public static final REMOVE:Z = false

.field public static final TAG:Ljava/lang/String; = "knoxEnterpriseVpn"

.field public static final VPN_DEFAULT_SCORE:I = 0x65

.field public static final VPN_NOTIFICATION_ID:I = 0x186a0

.field public static final VPN_PROVIDER_NAME_BASE:Ljava/lang/String; = "VpnNetworkProvider:"


# instance fields
.field public isMetaDataEnabled:Z

.field public isVpnObjectRemoved:Z

.field public final knoxVpnUidRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAddress:Ljava/lang/String;

.field public mConfig:Lcom/android/internal/net/VpnConfig;

.field public mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mHttpProxyInfo:Landroid/net/ProxyInfo;

.field public mInterface:Ljava/lang/String;

.field public mLegacyState:I

.field public final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field public final mLooper:Landroid/os/Looper;

.field public final mNetd:Landroid/net/INetd;

.field public mNetworkAgent:Landroid/net/NetworkAgent;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public final mNetworkInfo:Landroid/net/NetworkInfo;

.field public final mNetworkProvider:Landroid/net/NetworkProvider;

.field public final mNms:Landroid/os/INetworkManagementService;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mObserver:Landroid/net/INetworkManagementEventObserver;

.field public mOwnerUID:I

.field public mPackage:Ljava/lang/String;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public mProfileName:Ljava/lang/String;

.field public final mUserId:I

.field public final mUserManager:Landroid/os/UserManager;

.field public mV6Address:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$XadIrhifRROSz3cH-NAPfJwR13I(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->lambda$agentConnect$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetisVpnObjectRemoved(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isVpnObjectRemoved:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnection(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkInfo(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwnerUID(Lcom/android/server/connectivity/EnterpriseVpn;)I
    .registers 1

    iget p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileName(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/connectivity/EnterpriseVpn;)I
    .registers 1

    iget p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcleanupVpnStateLocked(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->cleanupVpnStateLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcloseInterface(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->closeInterface()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdismissConnectingNotification(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->dismissConnectingNotification(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mjniCheck(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monKnoxVpnConnected(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->onKnoxVpnConnected()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNotification(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->updateNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .registers 1

    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetService()Landroid/net/IVpnManager;
    .registers 1

    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 169
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILjava/lang/String;I)V
    .registers 12

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    .line 179
    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    .line 183
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    .line 184
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    .line 185
    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isVpnObjectRemoved:Z

    .line 546
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 775
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNotificationManager:Landroid/app/NotificationManager;

    .line 835
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$2;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/EnterpriseVpn$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 866
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$3;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/EnterpriseVpn$3;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    iput-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 207
    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 208
    iput-object p3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNms:Landroid/os/INetworkManagementService;

    .line 209
    iput-object p4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/net/INetd;

    .line 210
    iput p5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 211
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    .line 212
    const-class p4, Landroid/os/UserManager;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserManager;

    iput-object p4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserManager:Landroid/os/UserManager;

    .line 213
    iput-object p6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 p4, -0x1

    .line 217
    :try_start_4b
    iget-object p6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, p6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 218
    iget-object p6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p6, p5}, Lcom/android/server/connectivity/EnterpriseVpn;->getAppUid(Ljava/lang/String;I)I

    move-result p5

    iput p5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    if-eq p5, p4, :cond_60

    const/4 p6, 0x1

    if-eq p7, p6, :cond_60

    .line 221
    invoke-interface {p3, p5}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_60} :catch_66
    .catchall {:try_start_4b .. :try_end_60} :catchall_64

    .line 227
    :cond_60
    :goto_60
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_83

    :catchall_64
    move-exception p0

    goto :goto_d8

    :catch_66
    move-exception p3

    :try_start_67
    const-string/jumbo p5, "knoxEnterpriseVpn"

    .line 225
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Unable to register mObserver or protecting socket failed : "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_67 .. :try_end_82} :catchall_64

    goto :goto_60

    .line 230
    :goto_83
    new-instance p3, Landroid/net/NetworkProvider;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "VpnNetworkProvider:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p2, p1, p5}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 233
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p3}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 234
    new-instance p1, Landroid/net/NetworkInfo;

    const/16 p2, 0x11

    const-string p3, "VPN"

    const-string p5, ""

    invoke-direct {p1, p2, v1, p3, p5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 237
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {p1}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 p2, 0x4

    .line 238
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    const/16 p2, 0xf

    .line 239
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    const/16 p2, 0x1c

    .line 240
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    new-instance p2, Landroid/net/VpnTransportInfo;

    invoke-direct {p2, p4, v0}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 241
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 244
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->registerLocaleChangedReceiver()V

    return-void

    .line 227
    :goto_d8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    throw p0
.end method

.method public static createUidRangeForUser(I)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 549
    new-instance v0, Landroid/util/Range;

    const v1, 0x186a0

    mul-int v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .registers 1

    const-string/jumbo v0, "knox_vpn_policy"

    .line 256
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static getService()Landroid/net/IVpnManager;
    .registers 1

    const-string/jumbo v0, "vpn_management"

    .line 251
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreateknoxvpn(IZ)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private synthetic lambda$agentConnect$0()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    .line 413
    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 414
    throw v0
.end method


# virtual methods
.method public final agentConnect()V
    .registers 14

    .line 363
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 373
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v1, 0xc

    .line 375
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 378
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v10, "agentConnect"

    invoke-virtual {p0, v1, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 380
    new-instance v1, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v1}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    const/4 v2, 0x0

    .line 381
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setBypassableVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v8

    .line 384
    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 385
    iget v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 386
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 387
    new-instance v1, Landroid/net/VpnTransportInfo;

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getActiveVpnType()I

    move-result v2

    const/4 v11, 0x0

    invoke-direct {v1, v2, v11}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 390
    new-instance v12, Lcom/android/server/connectivity/EnterpriseVpn$1;

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/16 v1, 0x65

    .line 391
    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    const-string v4, "VPN"

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/EnterpriseVpn$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    iput-object v12, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 408
    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {v0, v11}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 418
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method public final agentDisconnect()V
    .registers 3

    .line 422
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method public applyBlockingRulesToUidRange(Z)V
    .registers 5

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->setRequireVpnForUids(ZLjava/util/Collection;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_37

    :catch_8
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating blocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " for UIDs "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 637
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "knoxEnterpriseVpn"

    .line 636
    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    return-void
.end method

.method public cleanupObjects()V
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string v1, "Delay resetting the network capability and unregistering the observer since the interface is not removed yet"

    .line 643
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 644
    iput-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isVpnObjectRemoved:Z

    return-void

    .line 647
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->resetUidListInNetworkCapabilities()V

    .line 649
    :try_start_13
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNms:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1a

    .line 653
    :catch_1a
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->unregisterLocaleChangedReceiver()V

    .line 654
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V

    return-void
.end method

.method public final cleanupVpnStateLocked()V
    .registers 2

    .line 518
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->resetNetworkCapabilities()V

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 520
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 522
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 523
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->agentDisconnect()V

    return-void
.end method

.method public final closeInterface()V
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 528
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 6

    .line 676
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v1, 0x104068f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v2, 0x104068e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 679
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080c15

    .line 680
    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 681
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 682
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 683
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 684
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 685
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 686
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 687
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final dismissConnectingNotification()V
    .registers 1

    return-void
.end method

.method public final dismissConnectingNotification(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 13

    monitor-enter p0

    .line 427
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2c

    const-string/jumbo p1, "knoxEnterpriseVpn"

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "establish failed due to caller mismatch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_1f4

    .line 429
    monitor-exit p0

    return-object v2

    .line 432
    :cond_2c
    :try_start_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.VpnService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_1f4

    .line 437
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 438
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_1cd

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_vpn"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1cd

    .line 442
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move-object v4, v0

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1b4

    const-string v3, "android.permission.BIND_VPN_SERVICE"

    .line 447
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_71} :catch_1d7
    .catchall {:try_start_3e .. :try_end_71} :catchall_1d5

    if-eqz v1, :cond_196

    .line 454
    :try_start_73
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 460
    iget v1, p1, Lcom/android/internal/net/VpnConfig;->mtu:I

    iget-boolean v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    invoke-direct {p0, v1, v3}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCreateknoxvpn(IZ)I

    move-result v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_1f4

    .line 463
    :try_start_86
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-static {v3, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8f} :catch_157
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_8f} :catch_155
    .catchall {:try_start_86 .. :try_end_8f} :catchall_1f4

    .line 469
    :try_start_8f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/EnterpriseVpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v3

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    iget-object v5, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    const-string v7, " "

    .line 474
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 477
    :cond_b7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/connectivity/EnterpriseVpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_14d

    .line 480
    new-instance v4, Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-direct {v4, p0, v2}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$Connection-IA;)V

    .line 481
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v6, 0x4000001

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 486
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    if-eqz v0, :cond_e2

    .line 487
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 489
    :cond_e2
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_f1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 490
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 493
    :cond_f1
    iput-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 494
    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 498
    iput-object v3, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 500
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 502
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 503
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "establish"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->agentConnect()V
    :try_end_10f
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_10f} :catch_155
    .catchall {:try_start_8f .. :try_end_10f} :catchall_1f4

    :try_start_10f
    const-string/jumbo v0, "knoxEnterpriseVpn"

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Established by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catchall {:try_start_10f .. :try_end_132} :catchall_1f4

    .line 514
    monitor-exit p0

    return-object v1

    .line 484
    :cond_134
    :try_start_134
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_14d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one address must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_155
    move-exception p1

    goto :goto_171

    :catch_157
    move-exception v0

    .line 465
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_171
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_171} :catch_155
    .catchall {:try_start_134 .. :try_end_171} :catchall_1f4

    :goto_171
    :try_start_171
    const-string/jumbo v0, "knoxEnterpriseVpn"

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in creating tun interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->dismissConnectingNotification()V

    .line 509
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->agentDisconnect()V

    .line 511
    throw p1
    :try_end_196
    .catchall {:try_start_171 .. :try_end_196} :catchall_1f4

    .line 448
    :cond_196
    :try_start_196
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not require "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1b4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1cd
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Restricted users cannot establish VPNs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d5
    .catch Landroid/os/RemoteException; {:try_start_196 .. :try_end_1d5} :catch_1d7
    .catchall {:try_start_196 .. :try_end_1d5} :catchall_1d5

    :catchall_1d5
    move-exception p1

    goto :goto_1f0

    .line 452
    :catch_1d7
    :try_start_1d7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f0
    .catchall {:try_start_1d7 .. :try_end_1f0} :catchall_1d5

    .line 454
    :goto_1f0
    :try_start_1f0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    throw p1
    :try_end_1f4
    .catchall {:try_start_1f0 .. :try_end_1f4} :catchall_1f4

    :catchall_1f4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getActiveVpnType()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public final getAppUid(Ljava/lang/String;I)I
    .registers 3

    .line 911
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 914
    :try_start_6
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public final getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 824
    sget-boolean p0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    const-string/jumbo v0, "knoxEnterpriseVpn"

    if-eqz p0, :cond_c

    const-string p0, "getDomainsByProfileName()"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 828
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 1

    .line 972
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object p0
.end method

.method public getMetaDataStateInIP()Z
    .registers 1

    .line 907
    iget-boolean p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    return p0
.end method

.method public declared-synchronized getNetId()I
    .registers 3

    monitor-enter p0

    .line 930
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 931
    monitor-exit p0

    return v1

    .line 932
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_16

    if-nez v0, :cond_10

    .line 933
    monitor-exit p0

    return v1

    .line 934
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    move-result v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_16

    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 1

    .line 926
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 1

    .line 922
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method public final getPersonaUserIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 817
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 818
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public declared-synchronized getUnderlyingNetworkInfo()Landroid/net/UnderlyingNetworkInfo;
    .registers 5

    monitor-enter p0

    .line 961
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 962
    monitor-exit p0

    return-object v0

    .line 964
    :cond_a
    :try_start_a
    new-instance v0, Landroid/net/UnderlyingNetworkInfo;

    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Landroid/net/UnderlyingNetworkInfo;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideNotification(I)V
    .registers 7

    .line 749
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hideNotification > domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knoxEnterpriseVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_1c
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    .line 751
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_3d

    .line 753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const v3, 0x186a0

    add-int/2addr v3, p1

    .line 754
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3d
    return-void
.end method

.method public isCallerEstablishedOwnerLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 945
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    if-ne v0, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isRunningLocked()Z
    .registers 2

    .line 938
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final makeLinkProperties()Landroid/net/LinkProperties;
    .registers 11

    .line 316
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v1, :cond_99

    .line 320
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 321
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "knoxEnterpriseVpn"

    const/4 v7, 0x0

    if-eqz v3, :cond_5d

    .line 322
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The ipv4 address added to the knox vpn interface is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v8, Landroid/net/IpPrefix;

    sget-object v9, Lcom/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    invoke-direct {v8, v9, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v3, v8, v7, v7, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 326
    :cond_5d
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_94

    .line 327
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The ipv6 address added to the knox vpn interface is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v8, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    invoke-direct {v6, v8, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v3, v6, v7, v7, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 331
    :cond_94
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto/16 :goto_14

    .line 335
    :cond_99
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v1, :cond_b7

    .line 336
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    invoke-static {v2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 338
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_a3

    .line 342
    :cond_b7
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_be

    .line 343
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 347
    :cond_be
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_e2

    .line 349
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 350
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cd

    .line 353
    :cond_e2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 355
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget p0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    if-lez p0, :cond_f6

    .line 356
    invoke-virtual {v0, p0}, Landroid/net/LinkProperties;->setMtu(I)V

    :cond_f6
    return-object v0
.end method

.method public final onKnoxVpnConnected()V
    .registers 9

    .line 660
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getChainingEnabledForProfile(I)I

    move-result v0

    .line 661
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getNetId()I

    move-result v3

    const/4 v7, 0x1

    if-ne v0, v7, :cond_18

    .line 663
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNms:Landroid/os/INetworkManagementService;

    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-interface {v0, v3, v7, v1}, Landroid/os/INetworkManagementService;->setNetworkInfo(IZI)V

    .line 665
    :cond_18
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addVpnUidRanges(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Ljava/lang/String;Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_49

    :catch_2d
    move-exception p0

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occured "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "knoxEnterpriseVpn"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void
.end method

.method public refreshNotification(ZI)V
    .registers 9

    .line 760
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    const-string/jumbo v1, "knoxEnterpriseVpn"

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshNotification > domain : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", optionAdd : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 763
    :try_start_28
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    .line 764
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 765
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {v4, v5, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    const/4 p1, 0x0

    const v4, 0x186a0

    add-int/2addr v4, p2

    .line 766
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v4, p0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4c} :catch_4f
    .catchall {:try_start_28 .. :try_end_4c} :catchall_4d

    goto :goto_68

    :catchall_4d
    move-exception p0

    goto :goto_6c

    :catch_4f
    move-exception p0

    .line 768
    :try_start_50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_4d

    .line 770
    :goto_68
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 771
    throw p0
.end method

.method public final registerLocaleChangedReceiver()V
    .registers 9

    .line 885
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 886
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v5, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 887
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final resetNetworkCapabilities()V
    .registers 5

    .line 308
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    new-instance v2, Landroid/net/VpnTransportInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 310
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method public resetUidListInNetworkCapabilities()V
    .registers 3

    const/4 v0, 0x0

    .line 615
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->applyBlockingRulesToUidRange(Z)V

    .line 616
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 618
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 v1, 0x0

    .line 619
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 620
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p0, :cond_22

    .line 621
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_22
    return-void
.end method

.method public setMetaDataStateInIP(Z)V
    .registers 2

    .line 902
    iput-boolean p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    return-void
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 5

    monitor-enter p0

    .line 949
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2c

    if-nez v0, :cond_a

    const/4 p1, 0x0

    .line 950
    monitor-exit p0

    return p1

    .line 953
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 954
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Network;

    goto :goto_18

    :cond_17
    move-object p1, v1

    :goto_18
    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 955
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    if-eqz v0, :cond_26

    .line 956
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 955
    :cond_26
    invoke-virtual {p1, v1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2c

    const/4 p1, 0x1

    .line 957
    monitor-exit p0

    return p1

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final showConnectingNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public showNotification(Ljava/lang/String;Z)V
    .registers 14

    .line 692
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    const-string/jumbo v1, "knoxEnterpriseVpn"

    if-eqz v0, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showNotification > profileName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , optionAdd : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    if-eqz p2, :cond_29

    .line 694
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->dismissConnectingNotification()V

    .line 695
    :cond_29
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 696
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v2, :cond_eb

    if-nez p1, :cond_3c

    goto/16 :goto_eb

    .line 701
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 705
    :try_start_46
    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const v6, 0x186a0

    const/4 v7, 0x0

    if-eqz v5, :cond_9a

    .line 706
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9a

    .line 707
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 708
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 709
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v8, v2, p2, v5}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v8

    add-int v9, v5, v6

    .line 710
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v7, v9, v8, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 711
    sget-boolean v8, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v8, :cond_5c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showNotification > keyicon notified to user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 714
    :cond_9a
    iget-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {p2, v2, v5, v8}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p2

    .line 715
    iget v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/2addr v2, v6

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v7, v2, p2, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    if-eqz v0, :cond_e7

    .line 716
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "showNotification > keyicon notified to user for non installed apps "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_cd} :catch_ce

    goto :goto_e7

    :catch_ce
    move-exception p0

    .line 719
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_e7
    :goto_e7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_eb
    :goto_eb
    const-string p0, "Error : can not init"

    .line 698
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unregisterLocaleChangedReceiver()V
    .registers 4

    .line 891
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_12

    .line 892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 893
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 894
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_12
    return-void
.end method

.method public updateLocalProxyInfo(Landroid/net/ProxyInfo;)V
    .registers 3

    .line 626
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    .line 627
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 628
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    :cond_11
    return-void
.end method

.method public final updateNotification()V
    .registers 10

    .line 728
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    const-string/jumbo v1, "knoxEnterpriseVpn"

    if-eqz v0, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotification > user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_1e
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    .line 730
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_80

    .line 732
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 733
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v6, 0x104068f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 734
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v6, 0x104068e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    if-eqz v0, :cond_47

    const-string/jumbo v0, "updateNotification > vpn type is per-app"

    .line 735
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_47
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 738
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 739
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 740
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x186a0

    add-int/2addr v7, v1

    .line 741
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v6, v7, v5, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_55

    .line 744
    :cond_7d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_80
    return-void
.end method

.method public updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knoxEnterpriseVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {p1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo$DetailedState;)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLegacyState:I

    .line 273
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object p2, Lcom/android/server/connectivity/EnterpriseVpn$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_72

    const/4 v0, 0x2

    if-eq p2, v0, :cond_68

    const/4 v0, 0x3

    if-eq p2, v0, :cond_68

    const/4 v0, 0x4

    if-eq p2, v0, :cond_5b

    const/4 p0, 0x5

    if-ne p2, p0, :cond_44

    goto :goto_79

    .line 303
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal state argument "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 295
    :cond_5b
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez p0, :cond_60

    goto :goto_79

    .line 296
    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VPN can only go to CONNECTING state when the agent is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_68
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p1, :cond_79

    .line 290
    invoke-virtual {p1}, Landroid/net/NetworkAgent;->unregister()V

    .line 291
    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    goto :goto_79

    .line 283
    :cond_72
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p0, :cond_79

    .line 284
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->markConnected()V

    :cond_79
    :goto_79
    return-void
.end method

.method public final updateUidListInNetworkCapabilities()V
    .registers 5

    .line 604
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uidRange going to be updated is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for profile "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "knoxEnterpriseVpn"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 607
    :cond_45
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 608
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 609
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p0, :cond_5f

    .line 610
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_5f
    return-void
.end method

.method public updateUidRangesToPerAppVpn(ZLjava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUidRangesToPerAppVpn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knoxEnterpriseVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_41

    .line 557
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 559
    :cond_41
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 561
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidListInNetworkCapabilities()V

    return-void
.end method

.method public updateUidRangesToUserVpn(ZI)V
    .registers 5

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUidRangesToUserVpn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knoxEnterpriseVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x186a0

    mul-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, p2, -0x1

    const v1, 0x1869f

    add-int/2addr v0, v1

    if-eqz p1, :cond_41

    .line 571
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v1, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 573
    :cond_41
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v1, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 575
    :goto_53
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidListInNetworkCapabilities()V

    return-void
.end method

.method public updateUidRangesToUserVpnWithBlackList(ILjava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUidRangesToUserVpnWithBlackList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knoxEnterpriseVpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1f

    return-void

    .line 584
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 586
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 588
    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p1

    .line 589
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 590
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_50

    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    .line 594
    :cond_50
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v3, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_3b

    .line 598
    :cond_68
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p2, v0, :cond_88

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v1, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-direct {v1, p2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_88
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidListInNetworkCapabilities()V

    return-void
.end method
