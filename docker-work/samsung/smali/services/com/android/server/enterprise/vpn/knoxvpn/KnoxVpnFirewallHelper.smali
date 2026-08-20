.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
.super Ljava/lang/Object;
.source "KnoxVpnFirewallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;
    }
.end annotation


# static fields
.field public static final ACTION_IPTABLE_EXECUTE:I = 0x1

.field public static final ACTION_IPTABLE_MULTI_EXECUTE:I = 0x2

.field public static final ADD:Ljava/lang/String; = " add "

.field public static final BLACKHOLE_PRIORITY:Ljava/lang/String; = " prio 50 "

.field public static final BLOCK_DNS_QUERIES:I = 0x1

.field public static final CMD:Ljava/lang/String; = "command"

.field public static final COMMIT_CMD:Ljava/lang/String; = "COMMIT\n"

.field public static final DBG:Z

.field public static final DEL:Ljava/lang/String; = " del "

.field public static final DELIMITER:Ljava/lang/String; = ";"

.field public static final DELIMITER_IP_RESTORE:Ljava/lang/String; = "\n"

.field public static final DESTROY_BLOCKED_NETWORK:I = 0x5

.field public static final EXEMPT_DNS_QUERIES:I = 0x3

.field public static final FORWARD_CHAIN:Ljava/lang/String; = "FORWARD"

.field public static final INPUT_CHAIN:Ljava/lang/String; = "INPUT"

.field public static final INVALID_UID:I = -0x1

.field public static final IP4_ROUTE_CMD:Ljava/lang/String; = "ip route"

.field public static final IP4_RULE_CMD:Ljava/lang/String; = "ip rule"

.field public static final IP6_ROUTE_CMD:Ljava/lang/String; = "ip -6 route"

.field public static final IP6_RULE_CMD:Ljava/lang/String; = "ip -6 rule"

.field public static final IPV4:I = 0x4

.field public static final IPV4V6:I = 0x2e

.field public static final IPV6:I = 0x6

.field public static final IP_RULE_ADDALL_PRIORITY:Ljava/lang/String; = " prio 53 "

.field public static final IP_RULE_CAPTIVE_PORTAL_PRIORITY:Ljava/lang/String; = " prio 46"

.field public static final IP_RULE_DOWNLOAD_PRIORITY:Ljava/lang/String; = " prio 47"

.field public static final IP_RULE_EXEMPT_UID_PRIORITY:Ljava/lang/String; = " prio 51 "

.field public static final IP_RULE_INCOMING_PRIORITY:Ljava/lang/String; = " prio 45"

.field public static final IP_RULE_PER_APP_PRIORITY:Ljava/lang/String; = " prio 52 "

.field public static final IP_RULE_PRIORITY:Ljava/lang/String; = " prio 48 "

.field public static final IP_RULE_STRONGSWAN_P_PRIORITY:Ljava/lang/String; = " prio 44"

.field public static final IP_RULE_USB_TETHERING_EXEMPT_PRIORITY:Ljava/lang/String; = " prio 42"

.field public static final IP_RULE_USB_TETHERING_PRIORITY:Ljava/lang/String; = " prio 43"

.field public static final KNOX_VPN_CHAINING:Ljava/lang/String; = "knox_vpn_CHAINING"

.field public static final KNOX_VPN_EXEMPT:Ljava/lang/String; = "knox_vpn_EXEMPT"

.field public static final KNOX_VPN_FILTER_FORWARD:Ljava/lang/String; = "knox_vpn_filter_tether_fwd"

.field public static final KNOX_VPN_FILTER_INPUT_DROP:Ljava/lang/String; = "knox_vpn_filter_input_drop"

.field public static final KNOX_VPN_FILTER_INPUT_TETHER:Ljava/lang/String; = "knox_vpn_tether_exempt"

.field public static final KNOX_VPN_FILTER_OUTPUT_ACCEPT:Ljava/lang/String; = "knox_vpn_filter_output_act"

.field public static final KNOX_VPN_FILTER_OUTPUT_DROP:Ljava/lang/String; = "knox_vpn_filter_output_drop"

.field public static final KNOX_VPN_MANGLE_CAPTIVE_PORTAL_EXEMPT:Ljava/lang/String; = "knox_vpn_mangle_exempt_cp"

.field public static final KNOX_VPN_MANGLE_OUTPUT_DOWNLOAD_EXEMPT:Ljava/lang/String; = "knox_vpn_mangle_exempt_dl"

.field public static final KNOX_VPN_MANGLE_OUTPUT_TETHER:Ljava/lang/String; = "knox_vpn_tether_exempt"

.field public static final KNOX_VPN_NAT_PREROUTING:Ljava/lang/String; = "knox_vpn_nat_preroute"

.field public static final KNOX_VPN_NO_UID:Ljava/lang/String; = "knox_vpn_no_uid"

.field public static final KNOX_VPN_OUTPUT:Ljava/lang/String; = "knox_vpn_OUTPUT"

.field public static final KNOX_VPN_PROXY_ACCEPT:Ljava/lang/String; = "knox_vpn_proxy_accept"

.field public static final LOCAL_NETWORK_TABLE_ID:Ljava/lang/String; = "97"

.field public static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field public static final OUTPUT_CHAIN:Ljava/lang/String; = "OUTPUT"

.field public static final PREROUTING_CHAIN:Ljava/lang/String; = "PREROUTING"

.field public static final ROOT_ID:I = 0x0

.field public static final RULE_APPEND:I = 0x0

.field public static final RULE_DELETE:I = 0x1

.field public static final SYS_ID:I = 0x3e8

.field public static final TABLE_FILTER:Ljava/lang/String; = "*filter"

.field public static final TABLE_MANGLE:Ljava/lang/String; = "*mangle"

.field public static final TABLE_NAT:Ljava/lang/String; = "*nat"

.field public static TAG:Ljava/lang/String; = null

.field public static TETHER_TAG:Ljava/lang/String; = null

.field public static final UNBLOCK_DNS_QUERIES:I = 0x2

.field public static final UNEXEMPT_DNS_QUERIES:I = 0x4

.field public static final VPN_UID:I = 0x3f8

.field public static final WAIT:Ljava/lang/String; = " -w "

.field public static final filterChains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field public static mNetdService:Landroid/net/INetd;

.field public static mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field public static final mangleChains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final natChains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public mNetworkManagementService:Landroid/os/INetworkManagementService;

.field public final mPattern:Ljava/lang/String;

.field public final vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 99
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z

    const-string v0, "FW-KnoxVpnFirewallHelper"

    .line 101
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v0, "KnoxVpnTetherAuthentication"

    .line 102
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TETHER_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 171
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 264
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createMangleMapList()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mangleChains:Ljava/util/Map;

    .line 283
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createFilterMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->filterChains:Ljava/util/Map;

    .line 297
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createNatMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->natChains:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[a-zA-Z0-9_]+"

    .line 169
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mPattern:Ljava/lang/String;

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 178
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 328
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createIpTableChains()V

    return-void
.end method

.method public static connectNativeNetdService()V
    .registers 2

    :try_start_0
    const-string/jumbo v0, "netd"

    .line 187
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_10

    return-void

    .line 191
    :cond_10
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    const/4 v0, 0x0

    .line 193
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetdService:Landroid/net/INetd;

    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_26

    .line 196
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t connect to NativeNetdService netd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method public static createFilterMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "knox_vpn_filter_input_drop"

    const-string/jumbo v2, "knox_vpn_tether_exempt"

    .line 288
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "INPUT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "knox_vpn_filter_output_drop"

    const-string/jumbo v2, "knox_vpn_filter_output_act"

    .line 290
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "OUTPUT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "knox_vpn_filter_tether_fwd"

    .line 292
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "FORWARD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createMangleMapList()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "knox_vpn_no_uid"

    const-string/jumbo v2, "knox_vpn_OUTPUT"

    const-string/jumbo v3, "knox_vpn_proxy_accept"

    const-string/jumbo v4, "knox_vpn_mangle_exempt_dl"

    const-string/jumbo v5, "knox_vpn_mangle_exempt_cp"

    const-string/jumbo v6, "knox_vpn_EXEMPT"

    const-string/jumbo v7, "knox_vpn_tether_exempt"

    .line 269
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "OUTPUT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createNatMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "knox_vpn_nat_preroute"

    .line 302
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "PREROUTING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
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

    .line 3575
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

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    .registers 2

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    monitor-enter v0

    .line 308
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    if-nez v1, :cond_e

    .line 309
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-direct {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 311
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .registers 4

    .line 202
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_5

    return-object v0

    .line 204
    :cond_5
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_c

    .line 205
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->connectNativeNetdService()V

    .line 206
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_36

    .line 208
    :try_start_10
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_36

    :catch_1b
    move-exception v0

    .line 210
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get OemNetd listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_36
    :goto_36
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method public static native jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I
.end method

.method public static native jnigetInterfaceIndex(Ljava/lang/String;)I
.end method

.method public static toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRangeParcel;",
            ">;)[",
            "Landroid/net/UidRangeParcel;"
        }
    .end annotation

    .line 218
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRangeParcel;

    .line 220
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRangeParcel;

    .line 221
    new-instance v3, Landroid/net/UidRangeParcel;

    iget v4, v2, Landroid/net/UidRangeParcel;->start:I

    iget v2, v2, Landroid/net/UidRangeParcel;->stop:I

    invoke-direct {v3, v4, v2}, Landroid/net/UidRangeParcel;-><init>(II)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_25
    return-object v0
.end method


# virtual methods
.method public addExemptRulesForDownloadManagerUid(ILjava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_e

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    :cond_6
    const/4 v0, 0x4

    .line 1374
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertExemptRulesForDownloadManagerUid(IILjava/lang/String;)V

    const/4 v0, 0x6

    .line 1375
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertExemptRulesForDownloadManagerUid(IILjava/lang/String;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public addExemptRulesForStrongswan(I)V
    .registers 4

    const/16 v0, 0x3f8

    const/4 v1, 0x3

    .line 1193
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    const/16 v0, 0x2e

    .line 1194
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertExemptRulesForStrongswan(II)V

    return-void
.end method

.method public addExemptRulesForUid(I)V
    .registers 3

    const/4 v0, 0x3

    .line 959
    invoke-virtual {p0, p1, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    const/16 v0, 0x2e

    .line 960
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertExemptRulesForUid(II)V

    return-void
.end method

.method public addInputFilterDropRulesForInterface(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "com.samsung.sVpn"

    .line 544
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    const/4 p1, -0x1

    if-eqz p4, :cond_28

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "v4-"

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_28

    .line 553
    invoke-static {p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result p1

    :cond_28
    if-gtz p1, :cond_2b

    const/4 p1, 0x0

    .line 559
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 561
    :try_start_2f
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p3

    const/4 p4, 0x1

    if-ne p2, p4, :cond_4b

    .line 563
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p3, p1, p4}, Landroid/os/INetworkManagementService;->updateInputFilterUserWideRules([III)V

    goto :goto_5a

    :cond_4b
    if-nez p2, :cond_5a

    .line 565
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p3, p1, p4}, Landroid/os/INetworkManagementService;->updateInputFilterAppWideRules([III)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_54} :catch_5a
    .catchall {:try_start_2f .. :try_end_54} :catchall_55

    goto :goto_5a

    :catchall_55
    move-exception p0

    .line 570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    throw p0

    .line 570
    :catch_5a
    :cond_5a
    :goto_5a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public addIpRouteAndPolicyRules(Ljava/lang/String;I)V
    .registers 7

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 345
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "not allowed name  : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-nez p1, :cond_22

    .line 350
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    :cond_22
    const/4 v0, 0x1

    const/4 v1, 0x4

    const-string v2, " add "

    if-eq p2, v0, :cond_5b

    const/4 v0, 0x2

    const/4 v3, 0x6

    if-eq p2, v0, :cond_54

    const/4 v0, 0x3

    if-eq p2, v0, :cond_47

    .line 370
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown interface type has been recieved "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 363
    :cond_47
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 359
    :cond_54
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 355
    :cond_5b
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    :goto_61
    return-void
.end method

.method public addIpRulesForExemptedUid(ILjava/lang/String;I)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    const-string v1, " add "

    const-string v2, " del "

    const/4 v3, 0x4

    if-eq p3, v0, :cond_3e

    const/4 v0, 0x2

    const/4 v4, 0x6

    if-eq p3, v0, :cond_37

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2a

    .line 452
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown interface type has been recieved for the method addIpRulesForExemptedUid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 445
    :cond_2a
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    .line 446
    invoke-virtual {p0, v3, v1, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRulesForExemptedUid(ILjava/lang/String;Ljava/lang/String;I)V

    .line 448
    invoke-virtual {p0, v4, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    .line 449
    invoke-virtual {p0, v4, v1, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRulesForExemptedUid(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_44

    .line 441
    :cond_37
    invoke-virtual {p0, v4, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    .line 442
    invoke-virtual {p0, v4, v1, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRulesForExemptedUid(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_44

    .line 437
    :cond_3e
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    .line 438
    invoke-virtual {p0, v3, v1, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRulesForExemptedUid(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_44
    return-void
.end method

.method public addMangleNatRulesRange(ILjava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public addMarkingRulesForFilteredPackages(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    if-nez p1, :cond_4

    .line 1981
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    :cond_4
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p3, v0, :cond_31

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p3, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p3, v0, :cond_26

    .line 1995
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addMarkingRulesForFilteredPackages: unknown interface type has been recieved "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1991
    :cond_26
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 1988
    :cond_2d
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 1985
    :cond_31
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method public addMiscRules(Ljava/util/List;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 624
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 625
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not allowed name  : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-nez p2, :cond_22

    .line 630
    sget-object p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    .line 633
    :cond_22
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_30

    .line 634
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(Ljava/util/List;I)V

    goto :goto_33

    .line 636
    :cond_30
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(Ljava/util/List;I)V

    .line 639
    :goto_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    if-eq p3, v1, :cond_72

    const/4 v1, 0x6

    if-eq p3, v2, :cond_67

    const/4 v2, 0x3

    if-eq p3, v2, :cond_59

    .line 656
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown interface type has been recieved "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 651
    :cond_59
    invoke-virtual {p0, v3, p1, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 652
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    goto :goto_7c

    .line 647
    :cond_67
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    goto :goto_7c

    .line 643
    :cond_72
    invoke-virtual {p0, v3, p1, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    :goto_7c
    return-void
.end method

.method public addMiscRulesRange(ILjava/lang/String;I)V
    .registers 10

    .line 681
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 682
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not allowed name  : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-nez p2, :cond_22

    .line 686
    sget-object p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    :cond_22
    const v0, 0x186a0

    mul-int/2addr v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x1

    const v3, 0x1869f

    add-int/2addr v2, v3

    .line 692
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 693
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    goto :goto_3e

    :cond_3a
    const/4 v3, 0x2

    .line 695
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    .line 698
    :goto_3e
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getDefaultRouteApps(I)Ljava/util/List;

    move-result-object v0

    .line 699
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 701
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p1

    .line 702
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    .line 703
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_6f

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 707
    :cond_6f
    new-instance v4, Landroid/net/UidRangeParcel;

    add-int/lit8 v5, v1, -0x1

    invoke-direct {v4, v3, v5}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    goto :goto_5a

    .line 711
    :cond_7d
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v3, v0, :cond_9b

    new-instance v0, Landroid/net/UidRangeParcel;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, v3, p1}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_9b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRangeParcel;

    .line 714
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMiscRulesRange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/UidRangeParcel;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/UidRangeParcel;->stop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget v1, v0, Landroid/net/UidRangeParcel;->start:I

    iget v0, v0, Landroid/net/UidRangeParcel;->stop:I

    invoke-virtual {p0, p2, p3, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMiscRulesRange(Ljava/lang/String;III)V

    goto :goto_9f

    :cond_d3
    return-void
.end method

.method public final addMiscRulesRange(Ljava/lang/String;III)V
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-string v6, " del "

    if-eq p2, v1, :cond_4a

    const/4 v1, 0x2

    const/4 v7, 0x6

    if-eq p2, v1, :cond_3c

    const/4 v1, 0x3

    if-eq p2, v1, :cond_25

    .line 737
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown interface type has been recieved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 730
    :cond_25
    invoke-virtual {p0, v2, v6, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(ILjava/lang/String;II)V

    const/4 v1, 0x4

    const-string v2, " add "

    move-object v0, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    .line 731
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForuidRangeSourceSelection(ILjava/lang/String;Ljava/lang/String;II)V

    .line 733
    invoke-virtual {p0, v7, v6, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(ILjava/lang/String;II)V

    const/4 v1, 0x6

    const-string v2, " add "

    .line 734
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForuidRangeSourceSelection(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_57

    .line 726
    :cond_3c
    invoke-virtual {p0, v7, v6, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(ILjava/lang/String;II)V

    const/4 v1, 0x6

    const-string v2, " add "

    move-object v0, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    .line 727
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForuidRangeSourceSelection(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_57

    .line 722
    :cond_4a
    invoke-virtual {p0, v2, v6, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(ILjava/lang/String;II)V

    const/4 v1, 0x4

    const-string v2, " add "

    move-object v0, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    .line 723
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForuidRangeSourceSelection(ILjava/lang/String;Ljava/lang/String;II)V

    :goto_57
    return-void
.end method

.method public addNatRules(Ljava/lang/String;I)V
    .registers 4

    .line 914
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 915
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "not allowed name  : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-nez p1, :cond_22

    .line 920
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    :cond_22
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_49

    const/4 v0, 0x3

    if-eq p2, v0, :cond_43

    .line 934
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown interface type has been recieved "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_43
    const/16 p2, 0x2e

    .line 931
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertNatRules(ILjava/lang/String;)V

    goto :goto_52

    :cond_49
    const/4 p2, 0x6

    .line 928
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertNatRules(ILjava/lang/String;)V

    goto :goto_52

    :cond_4e
    const/4 p2, 0x4

    .line 925
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertNatRules(ILjava/lang/String;)V

    :goto_52
    return-void
.end method

.method public addRangeRulesForFilteredPackages(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 20

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 1885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_uidlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_act"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v0, 0x186a0

    mul-int v0, v0, p3

    const/4 v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v3, v0, -0x1

    const v4, 0x1869f

    add-int/2addr v3, v4

    .line 1889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1891
    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -m owner --uid-owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v9, ""

    const/4 v11, 0x0

    move-object v4, v13

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v10, 0x0

    const-string v11, "*mangle"

    const/4 v12, 0x0

    const/16 v14, 0x2e

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string v0, "com.samsung.sVpn"

    move-object/from16 v3, p1

    .line 1895
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cb

    const/4 v0, -0x1

    if-eqz v1, :cond_97

    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v4-"

    .line 1899
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_97

    .line 1902
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result v0

    :cond_97
    if-gtz v0, :cond_9a

    const/4 v0, 0x0

    .line 1908
    :cond_9a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1910
    :try_start_9e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1911
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1912
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v5, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 1913
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5, v1, v0, v2}, Landroid/os/INetworkManagementService;->updateInputFilterUserWideRules([III)V
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_c2} :catch_c8
    .catchall {:try_start_9e .. :try_end_c2} :catchall_c3

    goto :goto_c8

    :catchall_c3
    move-exception v0

    .line 1917
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1918
    throw v0

    .line 1917
    :catch_c8
    :goto_c8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_cb
    return-void
.end method

.method public addRulesForDroppingTetherPackets(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    .line 2100
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForDroppingTetherPackets(ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 2101
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForDroppingTetherPackets(ILjava/lang/String;)V

    return-void
.end method

.method public addRulesForFilteredPackages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 1792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_uidlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_act"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1794
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1796
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1797
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1798
    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -m owner --uid-owner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v11, 0x0

    const-string v9, ""

    move-object v4, v13

    move-object v5, p0

    move-object v6, v2

    move-object v8, v0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1802
    :cond_66
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x2e

    const-string v5, "*mangle"

    move-object v3, p0

    move-object v7, v12

    .line 1803
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    :cond_77
    const-string v0, "com.samsung.sVpn"

    move-object v2, p1

    .line 1805
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c8

    const/4 v0, -0x1

    if-eqz v1, :cond_9f

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4-"

    .line 1809
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_9f

    .line 1812
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result v0

    :cond_9f
    if-gtz v0, :cond_a2

    const/4 v0, 0x0

    .line 1818
    :cond_a2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1819
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 1821
    :try_start_b7
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v3, v0, v5}, Landroid/os/INetworkManagementService;->updateInputFilterAppWideRules([III)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_bf} :catch_c5
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_c0

    goto :goto_c5

    :catchall_c0
    move-exception v0

    .line 1825
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1826
    throw v0

    .line 1825
    :catch_c5
    :goto_c5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_c8
    return-void
.end method

.method public addRulesForNoUidPackets(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p3, v0, :cond_30

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p3, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p3, v0, :cond_25

    .line 1549
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addRulesForNoUidPackets: unknown interface type has been recieved "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1545
    :cond_25
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    .line 1546
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 1542
    :cond_2c
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 1539
    :cond_30
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public addRulesForStrongswanP(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 p0, 0x2

    if-eq p1, p0, :cond_24

    const/4 p0, 0x3

    if-eq p1, p0, :cond_24

    .line 2219
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addRulesForStrongswanP: unknown interface type has been recieved "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_20
    const/4 p1, 0x4

    .line 2212
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForStrongswanP(IILjava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public addRulesForUsbTethering(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_47

    const/4 v0, 0x2

    if-eq p2, v0, :cond_36

    const/4 v0, 0x3

    if-eq p2, v0, :cond_20

    .line 2054
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addRulesForUsbTethering: unknown interface type has been recieved "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 2049
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForDroppingTetherPackets()V

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2050
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForUsbTethering(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v3, 0x6

    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2051
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForUsbTethering(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_57

    .line 2044
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForDroppingTetherPackets()V

    const/4 v5, 0x6

    move-object v4, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 2045
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForUsbTethering(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x4

    .line 2046
    invoke-virtual {p0, p1, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForDroppingTetherPackets(ILjava/lang/String;)V

    goto :goto_57

    .line 2039
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForDroppingTetherPackets()V

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2040
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForUsbTethering(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x6

    .line 2041
    invoke-virtual {p0, p1, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForDroppingTetherPackets(ILjava/lang/String;)V

    :goto_57
    return-void
.end method

.method public addRulesInOutputChain(Ljava/lang/String;)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    .line 1769
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_uidlist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x1

    const/4 v9, 0x0

    .line 1771
    new-instance v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v8, 0x0

    const-string/jumbo v3, "knox_vpn_OUTPUT"

    const-string v4, ""

    const-string v6, ""

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/16 v11, 0x2e

    const-string v8, "*mangle"

    move-object v6, p0

    move v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public addRulesTetherAuth(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "com.samsung.android.knox.intent.extra.DNS_REDIRECTION_PORT"

    const/4 v4, -0x1

    .line 2122
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "com.samsung.android.knox.intent.extra.HTTP_REDIRECTION_PORT"

    .line 2123
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "com.samsung.android.knox.intent.extra.HTTPS_REDIRECTION_PORT"

    .line 2124
    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "com.samsung.android.knox.intent.extra.HTTPS_REDIRECTION_AUTH_PORT"

    .line 2125
    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v3, :cond_33b

    if-lez v5, :cond_33b

    if-lez v6, :cond_33b

    if-gtz v2, :cond_29

    goto/16 :goto_33b

    :cond_29
    if-nez v1, :cond_33

    .line 2132
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TETHER_TAG:Ljava/lang/String;

    const-string v1, "The usb interface name received for usb tether mutual authentication is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    if-nez p3, :cond_3d

    .line 2136
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TETHER_TAG:Ljava/lang/String;

    const-string v1, "The usb interface ip addresses received for usb tether mutual authentication is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3d
    const/4 v4, 0x0

    .line 2140
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_42
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 2141
    instance-of v9, v8, Ljava/net/Inet4Address;

    if-eqz v9, :cond_42

    .line 2142
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    :cond_56
    if-nez v4, :cond_60

    .line 2147
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TETHER_TAG:Ljava/lang/String;

    const-string v1, "The usb interface ipV4 address received for usb tether mutual authentication is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_60
    if-gtz v0, :cond_69

    .line 2152
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TETHER_TAG:Ljava/lang/String;

    const-string v8, "applying firewall rules for tether auth uid failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_69
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2156
    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " -i "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -p udp --dport "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x35

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DNAT --to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/16 v21, 0x0

    const-string/jumbo v16, "knox_vpn_nat_preroute"

    const-string v19, ""

    move-object v14, v7

    move-object/from16 v15, p0

    move-object/from16 v20, v8

    invoke-direct/range {v14 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2157
    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " -p tcp --dport "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p3, v11

    const/16 v11, 0x50

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    const-string/jumbo v21, "knox_vpn_nat_preroute"

    const-string v24, ""

    move-object/from16 v19, v7

    move-object/from16 v20, p0

    move-object/from16 v25, v8

    invoke-direct/range {v19 .. v26}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v21, "knox_vpn_nat_preroute"

    const-string v23, "ACCEPT"

    const-string v24, ""

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v26}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2159
    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x1bb

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v21, "knox_vpn_nat_preroute"

    const-string v24, ""

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v26}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    const-string/jumbo v4, "knox_vpn_nat_preroute"

    .line 2160
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v14, 0x4

    const-string v11, "*nat"

    move-object/from16 v9, p0

    move-object/from16 v7, p3

    move-object/from16 v27, v12

    move-object v12, v4

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 2162
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2163
    new-instance v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v27

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/16 v23, 0x0

    const-string/jumbo v18, "knox_vpn_filter_tether_fwd"

    const-string v20, "DROP"

    const-string v21, ""

    move-object/from16 v16, v9

    move-object/from16 v17, p0

    move-object/from16 v22, v10

    invoke-direct/range {v16 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2164
    new-instance v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " -o "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v27, 0x0

    const-string/jumbo v22, "knox_vpn_filter_tether_fwd"

    const-string v24, "DROP"

    const-string v25, ""

    move-object/from16 v20, v9

    move-object/from16 v21, p0

    move-object/from16 v26, v10

    invoke-direct/range {v20 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x1

    const-string/jumbo v9, "knox_vpn_filter_tether_fwd"

    .line 2165
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v21, 0x2e

    const-string v18, "*filter"

    move-object/from16 v16, p0

    move-object/from16 v20, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 2168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2169
    new-instance v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v26, 0x0

    const-string/jumbo v21, "knox_vpn_tether_exempt"

    const-string v23, "ACCEPT"

    const-string v24, ""

    move-object/from16 v19, v9

    move-object/from16 v20, p0

    move-object/from16 v25, v8

    invoke-direct/range {v19 .. v26}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2170
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v21, "knox_vpn_tether_exempt"

    const-string v23, "ACCEPT"

    const-string v24, ""

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v26}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2171
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v21, "knox_vpn_tether_exempt"

    const-string v23, "ACCEPT"

    const-string v24, ""

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v26}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2172
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v21, "knox_vpn_tether_exempt"

    const-string v23, "ACCEPT"

    const-string v24, ""

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v26}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v23, 0x1

    const-string/jumbo v1, "knox_vpn_tether_exempt"

    .line 2173
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    const/16 v27, 0x4

    const-string v24, "*filter"

    move-object/from16 v22, p0

    move-object/from16 v26, v4

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    const/4 v12, 0x1

    const/4 v14, 0x0

    .line 2175
    new-instance v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -m owner --uid-owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v27, 0x0

    const-string/jumbo v22, "knox_vpn_tether_exempt"

    const-string v24, "ACCEPT"

    const-string v25, ""

    move-object/from16 v20, v15

    move-object/from16 v21, p0

    move-object/from16 v26, v10

    invoke-direct/range {v20 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/16 v16, 0x4

    const-string v13, "*mangle"

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ip rule"

    .line 2178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " del "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "from all uidrange "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " lookup "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "97"

    .line 2179
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " prio 42"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    .line 2128
    :cond_33b
    :goto_33b
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TETHER_TAG:Ljava/lang/String;

    const-string v1, "The ports received for usb tether mutual authentication is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addRulesToAcceptIncomingPackets(ILjava/lang/String;)V
    .registers 8

    if-eqz p2, :cond_4c

    .line 1294
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4c

    :cond_b
    const/4 v0, 0x1

    const-string v1, " add "

    const-string v2, " del "

    const/4 v3, 0x4

    if-eq p1, v0, :cond_46

    const/4 v0, 0x2

    const/4 v4, 0x6

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_32

    .line 1314
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown interface type has been recieved "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 1307
    :cond_32
    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p0, v3, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0, v4, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0, v4, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 1303
    :cond_3f
    invoke-virtual {p0, v4, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p0, v4, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 1299
    :cond_46
    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0, v3, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public addRulesToAcceptProxyPackets(ILjava/lang/String;I)V
    .registers 6

    if-eqz p2, :cond_3d

    .line 1230
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3d

    :cond_b
    const/4 v0, 0x1

    const-string v1, " add "

    if-eq p1, v0, :cond_39

    const/4 v0, 0x2

    if-eq p1, v0, :cond_34

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2e

    .line 1244
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown interface type has been recieved "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_2e
    const/16 p1, 0x2e

    .line 1241
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAcceptProxyPackets(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3d

    :cond_34
    const/4 p1, 0x6

    .line 1238
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAcceptProxyPackets(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3d

    :cond_39
    const/4 p1, 0x4

    .line 1235
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAcceptProxyPackets(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public addRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V
    .registers 7

    .line 1005
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1006
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not allowed name  : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-nez p1, :cond_21

    return-void

    :cond_21
    const/4 v0, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p3, v0, :cond_40

    const/4 v0, 0x2

    if-eq p3, v0, :cond_34

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2d

    goto :goto_4b

    .line 1023
    :cond_2d
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1024
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    goto :goto_4b

    .line 1018
    :cond_34
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1019
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1020
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    goto :goto_4b

    .line 1013
    :cond_40
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1014
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1015
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    :goto_4b
    return-void
.end method

.method public addRulesToDenyAccessToLocalHost(I)V
    .registers 3

    const/16 v0, 0x2e

    .line 1096
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToDenyAccessToLocalHost(II)V

    return-void
.end method

.method public addRulesToExemptCaptivePortalQueries(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x3

    .line 1423
    invoke-virtual {p0, p2, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    const/4 v0, 0x4

    .line 1424
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToExemptCaptivePortalQueries(IILjava/lang/String;)V

    const/4 v0, 0x6

    .line 1425
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToExemptCaptivePortalQueries(IILjava/lang/String;)V

    return-void
.end method

.method public applyBlockingRulesForDns(III)V
    .registers 9

    .line 1608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1610
    :try_start_4
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 1611
    new-instance v2, Landroid/net/UidRangeParcel;

    invoke-direct {v2, p1, p2}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1612
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action to be performed on the dns packet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for the start uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and for the stop uid "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eq p3, p1, :cond_7f

    const/4 p1, 0x2

    if-eq p3, p1, :cond_73

    const/4 p1, 0x3

    if-eq p3, p1, :cond_5c

    const/4 p1, 0x4

    if-eq p3, p1, :cond_50

    const/4 p0, 0x5

    if-eq p3, p0, :cond_48

    goto :goto_9f

    .line 1630
    :cond_48
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnDestroyBlockedKnoxNetwork()V

    goto :goto_9f

    .line 1627
    :cond_50
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_9f

    .line 1623
    :cond_5c
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 1624
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_9f

    .line 1620
    :cond_73
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_9f

    .line 1616
    :cond_7f
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 1617
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_95} :catch_98
    .catchall {:try_start_4 .. :try_end_95} :catchall_96

    goto :goto_9f

    :catchall_96
    move-exception p0

    goto :goto_a3

    .line 1636
    :catch_98
    :try_start_98
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string p1, "error occured while trying to update rules for dns packets "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_96

    .line 1638
    :goto_9f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_a3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    throw p0
.end method

.method public applyBlockingRulesForDns(Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1645
    :try_start_4
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 1646
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1647
    new-instance v3, Landroid/net/UidRangeParcel;

    invoke-direct {v3, v2, v2}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1648
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action to be performed on the dns packet is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for the start uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and for the stop uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_4c
    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eq p2, p1, :cond_94

    const/4 p1, 0x2

    if-eq p2, p1, :cond_88

    const/4 p1, 0x3

    if-eq p2, p1, :cond_71

    const/4 p1, 0x4

    if-eq p2, p1, :cond_65

    const/4 p0, 0x5

    if-eq p2, p0, :cond_5d

    goto :goto_b4

    .line 1666
    :cond_5d
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnDestroyBlockedKnoxNetwork()V

    goto :goto_b4

    .line 1663
    :cond_65
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_b4

    .line 1659
    :cond_71
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 1660
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_b4

    .line 1656
    :cond_88
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_b4

    .line 1652
    :cond_94
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 1653
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_aa} :catch_ad
    .catchall {:try_start_4 .. :try_end_aa} :catchall_ab

    goto :goto_b4

    :catchall_ab
    move-exception p0

    goto :goto_b8

    .line 1672
    :catch_ad
    :try_start_ad
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string p1, "error occured while trying to update rules for dns packets "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_ab

    .line 1674
    :goto_b4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_b8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1675
    throw p0
.end method

.method public blockIncomingICMPPackets(ZLjava/lang/String;)V
    .registers 27

    move-object/from16 v0, p2

    const-string v1, " -p ICMPV6 --icmpv6-type 8 -i "

    const-string v2, " -p ICMP --icmp-type 8 -i "

    if-eqz p1, :cond_61

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 510
    new-instance v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v22, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v14, 0x0

    const-string/jumbo v9, "knox_vpn_filter_input_drop"

    const-string v11, "DROP"

    const-string v12, ""

    move-object v7, v15

    move-object/from16 v8, p0

    move-object/from16 v13, v22

    invoke-direct/range {v7 .. v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v8, 0x4

    const-string v5, "*filter"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 514
    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x0

    const-string/jumbo v18, "knox_vpn_filter_input_drop"

    const-string v20, "DROP"

    const-string v21, ""

    move-object/from16 v16, v13

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v14, 0x6

    const-string v11, "*filter"

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    goto :goto_b8

    :cond_61
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 518
    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v13, 0x0

    const-string/jumbo v8, "knox_vpn_filter_input_drop"

    const-string v10, "DROP"

    const-string v11, ""

    move-object v6, v14

    move-object/from16 v7, p0

    move-object/from16 v12, v21

    invoke-direct/range {v6 .. v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v7, 0x4

    const-string v4, "*filter"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 522
    new-instance v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v22, 0x0

    const-string/jumbo v17, "knox_vpn_filter_input_drop"

    const-string v19, "DROP"

    const-string v20, ""

    move-object v15, v12

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v22}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v13, 0x6

    const-string v10, "*filter"

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    :goto_b8
    return-void
.end method

.method public final checknterface(Ljava/lang/String;)Z
    .registers 4

    .line 3069
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checknterface() : interfaceName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 p0, 0x1

    if-nez p1, :cond_1e

    return p0

    .line 3074
    :cond_1e
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    return p0

    :cond_27
    const-string p0, "[a-zA-Z0-9_]+"

    .line 3078
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearEbpfMap(I)V
    .registers 4

    .line 3445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3447
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->clearEbpfMap(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_11
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception p0

    .line 3451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3452
    throw p0

    .line 3451
    :catch_11
    :goto_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final convertToClat(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_15

    .line 2346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "v4-"

    .line 2347
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2348
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 2350
    :goto_16
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The default interface is converted to clat and its new name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final createChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2590
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2591
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    .line 2595
    :cond_23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2598
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2599
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 2600
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    .line 2601
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v10, 0x0

    const-string v6, ""

    const-string v8, ""

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    .line 2600
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_6f
    const-string p0, "COMMIT\n"

    .line 2606
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final createChainsInTable(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2564
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runIptablesRestoreCmd(Ljava/util/List;I)V

    .line 2567
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runIptablesRestoreCmd(Ljava/util/List;I)V

    return-void
.end method

.method public createIpChainForProfile(Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 1698
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_uidlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_act"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 1701
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x2e

    const-string v3, "*mangle"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public final createIpTableChains()V
    .registers 3

    .line 2556
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mangleChains:Ljava/util/Map;

    const-string v1, "*mangle"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createChainsInTable(Ljava/lang/String;Ljava/util/Map;)V

    .line 2557
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->filterChains:Ljava/util/Map;

    const-string v1, "*filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createChainsInTable(Ljava/lang/String;Ljava/util/Map;)V

    .line 2558
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->natChains:Ljava/util/Map;

    const-string v1, "*nat"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createChainsInTable(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3403
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3405
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_49

    .line 3407
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1f
    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1f

    const/4 v2, 0x0

    .line 3409
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, ":"

    .line 3410
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3411
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3410
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_49
    return-object v0
.end method

.method public final deleteExemptRulesForDownloadManagerUid(II)V
    .registers 11

    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    const-string/jumbo v0, "ip -6 rule"

    goto :goto_a

    :cond_7
    const-string/jumbo v0, "ip rule"

    .line 2850
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v4, "*mangle"

    const-string/jumbo v5, "knox_vpn_mangle_exempt_dl"

    move-object v2, p0

    move v7, p1

    .line 2852
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2855
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2857
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p1

    const/4 v4, 0x0

    invoke-interface {p1, p2, v4}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_2d
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    goto :goto_2d

    :catchall_28
    move-exception p0

    .line 2861
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2862
    throw p0

    .line 2861
    :catch_2d
    :goto_2d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2864
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " del "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "from all uidrange "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 47"

    .line 2865
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2867
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteExemptRulesForStrongswan(II)V
    .registers 19

    .line 2499
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v2, "knox_vpn_EXEMPT"

    const-string v3, " -m owner --gid-owner 1016"

    const-string v4, "ACCEPT"

    const-string v5, ""

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v1, 0x0

    const-string v2, "*mangle"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v4, v8

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2503
    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v2, "knox_vpn_EXEMPT"

    const-string v3, " -m owner --uid-owner 1016"

    const-string v4, "ACCEPT"

    const-string v5, ""

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v11, 0x0

    const-string v12, "*mangle"

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move/from16 v15, p1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final deleteExemptRulesForUid(II)V
    .registers 12

    .line 2540
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -m owner --uid-owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v2, "knox_vpn_EXEMPT"

    const-string v4, "ACCEPT"

    const-string v5, ""

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v1, 0x0

    const-string v2, "*mangle"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, v8

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2544
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2546
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_38} :catch_3e
    .catchall {:try_start_30 .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p0

    .line 2550
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2551
    throw p0

    .line 2550
    :catch_3e
    :goto_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final deleteIpBlockingRule()V
    .registers 5

    .line 2517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ip rule del blackhole fwmark 60"

    .line 2518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio 50 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ip -6 rule del blackhole fwmark 60"

    .line 2519
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v2, "deleting blocking rules"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteIpRuleForuidRangeSourceSelection(ILjava/lang/String;II)V
    .registers 7

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_c

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_f

    :cond_c
    const-string/jumbo p1, "ip rule"

    .line 2397
    :goto_f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "from all uidrange "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 53 "

    .line 2398
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x6

    if-ne p1, p0, :cond_7

    const-string/jumbo p0, "ip -6 rule"

    goto :goto_a

    :cond_7
    const-string/jumbo p0, "ip rule"

    :goto_a
    if-eqz p3, :cond_5c

    .line 2367
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_5c

    .line 2371
    :cond_15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2372
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 2373
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " del "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "from all uidrange "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " prio 52 "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final deleteIpRules(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_a

    :cond_7
    const-string/jumbo p1, "ip rule"

    .line 3025
    :goto_a
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_16

    .line 3028
    :cond_13
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    .line 3031
    :goto_16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3032
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_1a

    .line 3033
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3034
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " del "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "from all uidrange "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " prio 52 "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_67
    return-void
.end method

.method public final deleteIpRulesForExemptedUid(ILjava/lang/String;I)V
    .registers 6

    .line 2355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_c

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_f

    :cond_c
    const-string/jumbo p1, "ip rule"

    .line 2358
    :goto_f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "from all uidrange "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 51 "

    .line 2359
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteNatRules(ILjava/lang/String;)V
    .registers 16

    .line 2729
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2730
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -o "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v12, 0x0

    const-string v7, "POSTROUTING"

    const-string v9, "MASQUERADE"

    const-string v10, ""

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v3, "*nat"

    move-object v1, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    :cond_32
    return-void
.end method

.method public final deleteRulesForDroppingTetherPackets()V
    .registers 7

    const/4 v1, 0x0

    const-string v2, "*filter"

    const-string/jumbo v3, "knox_vpn_filter_tether_fwd"

    const/4 v4, 0x0

    const/16 v5, 0x2e

    move-object v0, p0

    .line 3161
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p2

    .line 2989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_act"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2991
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "60"

    move-object v11, v2

    move-object/from16 v2, p0

    goto :goto_2a

    :cond_23
    move-object/from16 v2, p0

    .line 2994
    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 2997
    :goto_2a
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v12, " -m mark --mark "

    const-string v3, " -m connmark --mark "

    if-eqz v0, :cond_e5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2998
    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "knox-netId-"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v10, 0x0

    const-string/jumbo v5, "knox_vpn_no_uid"

    const-string v8, ""

    move-object v3, v13

    move-object/from16 v4, p0

    move-object v9, v15

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move v4, v0

    move-object v6, v1

    move-object v7, v13

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 3002
    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v5, "knox_vpn_no_uid"

    const-string v8, ""

    move-object v3, v13

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move v4, v0

    move-object v6, v1

    move-object v7, v13

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 3006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    move-object v3, v12

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move v4, v0

    move-object v6, v1

    move-object v7, v12

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    goto :goto_13d

    :cond_e5
    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 3010
    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v10, 0x0

    const-string/jumbo v5, "knox_vpn_no_uid"

    const-string v8, ""

    move-object v3, v14

    move-object/from16 v4, p0

    move-object v7, v1

    move-object v9, v15

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move v4, v0

    move-object v6, v13

    move-object v7, v14

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 3014
    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "knox_vpn_no_uid"

    const-string v8, ""

    move-object v3, v14

    move-object/from16 v4, p0

    move-object v7, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move v4, v0

    move-object v6, v13

    move-object v7, v14

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    :goto_13d
    return-void
.end method

.method public final deleteRulesForStrongswanP(IILjava/lang/String;)V
    .registers 26

    move/from16 v6, p1

    const/4 v0, 0x6

    if-ne v6, v0, :cond_9

    const-string/jumbo v0, "ip -6 rule"

    goto :goto_c

    :cond_9
    const-string/jumbo v0, "ip rule"

    :goto_c
    move-object v7, v0

    const/4 v0, 0x4

    if-ne v6, v0, :cond_2f

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v4-"

    .line 2276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_35

    .line 2279
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_35

    :cond_2f
    move-object/from16 v1, p3

    .line 2282
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    :cond_35
    :goto_35
    if-gtz v0, :cond_38

    return-void

    :cond_38
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2288
    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    .line 2290
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v20, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v15, 0x0

    const-string/jumbo v10, "knox_vpn_EXEMPT"

    const-string v11, " -p udp --dport 4500 -m mark --mark 100"

    const-string v12, "MARK --set-mark "

    move-object v8, v4

    move-object/from16 v9, p0

    move-object/from16 v14, v20

    invoke-direct/range {v8 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v2, "*mangle"

    move-object/from16 v0, p0

    move/from16 v5, p1

    .line 2288
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2291
    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -p udp --dport 4500 -m mark --mark "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v21, 0x0

    const-string/jumbo v16, "knox_vpn_EXEMPT"

    const-string v18, "ACCEPT"

    const-string v19, ""

    move-object v14, v4

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v2, "*mangle"

    move-object/from16 v0, p0

    .line 2291
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2296
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " del "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio 44"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteRulesForUsbTethering(ILjava/lang/String;)V
    .registers 11

    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_a

    :cond_7
    const-string/jumbo p1, "ip rule"

    :goto_a
    const/4 v0, 0x0

    const-string v1, "60"

    if-eqz p2, :cond_1d

    .line 3137
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v0, v1

    goto :goto_1d

    .line 3140
    :cond_19
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    :goto_1d
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x2e

    const-string v4, "*filter"

    const-string/jumbo v5, "knox_vpn_filter_tether_fwd"

    move-object v2, p0

    .line 3144
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 3146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_48

    if-eq v0, v1, :cond_48

    .line 3148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " del from all lookup "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 43"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3150
    :cond_48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p3, :cond_45

    .line 2776
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_45

    .line 2779
    :cond_b
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1b

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_1e

    :cond_1b
    const-string/jumbo p1, "ip rule"

    .line 2784
    :goto_1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "from all iif "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lookup "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 45"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public final deleteRulesToAcceptProxyPackets(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 2753
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2755
    new-instance p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -m owner --uid-owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " -m mark --mark "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v2, "knox_vpn_proxy_accept"

    const-string v4, "ACCEPT"

    const-string v5, ""

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v1, 0x0

    const-string v2, "*mangle"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    .line 2755
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V
    .registers 20

    move-object/from16 v0, p2

    move/from16 v1, p3

    .line 2423
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v0, "60"

    move-object/from16 v10, p0

    goto :goto_17

    :cond_11
    move-object/from16 v10, p0

    .line 2426
    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2429
    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " -m mark --mark "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -o lo -p tcp --dport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v9, 0x0

    const-string/jumbo v4, "knox_vpn_filter_output_act"

    const-string v6, "ACCEPT"

    const-string v7, ""

    move-object v2, v13

    move-object/from16 v3, p0

    move-object v8, v15

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v4, "*filter"

    move-object/from16 v2, p0

    move v3, v11

    move-object v5, v12

    move-object v6, v13

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 2432
    new-instance v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -o lo -p udp --dport "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string/jumbo v3, "knox_vpn_filter_output_act"

    const-string v5, "ACCEPT"

    const-string v6, ""

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v3, "*filter"

    move-object/from16 v1, p0

    move v2, v9

    move-object v4, v11

    move-object v5, v12

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final deleteRulesToDenyAccessToLocalHost(II)V
    .registers 21

    move/from16 v0, p2

    .line 2445
    new-instance v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -o lo -p tcp --dport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v3, "knox_vpn_filter_output_drop"

    const-string v5, "DROP"

    const-string v6, ""

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v2, 0x0

    const-string v3, "*filter"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v9

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2448
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -o lo -p udp --dport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v12, "knox_vpn_filter_output_drop"

    const-string v14, "DROP"

    const-string v15, ""

    const/16 v17, 0x0

    move-object v10, v1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v11, 0x0

    const-string v12, "*filter"

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object v14, v1

    move/from16 v15, p1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final deleteRulesToExemptCaptivePortalQueries(II)V
    .registers 20

    move/from16 v0, p2

    const/4 v1, 0x6

    move/from16 v7, p1

    if-ne v7, v1, :cond_b

    const-string/jumbo v1, "ip -6 rule"

    goto :goto_e

    :cond_b
    const-string/jumbo v1, "ip rule"

    .line 2922
    :goto_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2924
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " del "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "from all uidrange "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio 46"

    .line 2925
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2927
    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -m owner --uid-owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/16 v16, 0x0

    const-string/jumbo v11, "knox_vpn_mangle_exempt_cp"

    const-string v13, "ACCEPT"

    const-string v14, ""

    move-object v9, v6

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v4, "*mangle"

    move-object/from16 v2, p0

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2931
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2933
    :try_start_74
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7c} :catch_82
    .catchall {:try_start_74 .. :try_end_7c} :catchall_7d

    goto :goto_82

    :catchall_7d
    move-exception v0

    .line 2937
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2938
    throw v0

    .line 2937
    :catch_82
    :goto_82
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2940
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public flushMarkingRulesForFilteredPackages(Ljava/lang/String;)V
    .registers 9

    .line 2013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_act"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string v3, "*mangle"

    const/4 v5, 0x0

    const/16 v6, 0x2e

    move-object v1, p0

    .line 2015
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public getDefaultRouteAppUidList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x3e8

    .line 3565
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x431

    .line 3566
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x3e9

    .line 3567
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.messaging"

    .line 3568
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_31

    .line 3570
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    return-object v0
.end method

.method public final getDefaultRouteApps(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3488
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getProfileOwningUserId(I)Ljava/lang/String;

    move-result-object v1

    .line 3490
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11e

    if-eqz v1, :cond_11e

    const-string v2, "getDefaultRouteApps: nonChainedVendorUid  "

    const/4 v3, 0x1

    const-string v4, "com.samsung.sVpn"

    if-nez p1, :cond_bb

    .line 3493
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getDefaultRouteAppUidList()Ljava/util/List;

    move-result-object v5

    .line 3494
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3495
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 3496
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDefaultRouteApps exempted uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 3500
    :cond_5c
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v5

    .line 3501
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6c

    const/16 v5, 0x3f8

    .line 3504
    :cond_6c
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultRouteApps: vpn uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3507
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v4

    if-ne v4, v3, :cond_11e

    .line 3508
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNonChainedVendoUid(I)I

    move-result p0

    if-lez p0, :cond_11e

    .line 3509
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_11e

    .line 3510
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11e

    .line 3515
    :cond_bb
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c6

    return-object v0

    .line 3518
    :cond_c6
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v4

    .line 3519
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p1, :cond_ed

    .line 3521
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultRouteApps: vendor uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3524
    :cond_ed
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v4

    if-ne v4, v3, :cond_11e

    .line 3525
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNonChainedVendoUid(I)I

    move-result p0

    if-lez p0, :cond_11e

    .line 3526
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_11e

    .line 3527
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_11e} :catch_11e

    .line 3536
    :catch_11e
    :cond_11e
    :goto_11e
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public final getForwardMark(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_37

    .line 3041
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_b

    goto :goto_37

    .line 3043
    :cond_b
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 3044
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 3046
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3047
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getNetId()I

    move-result p0

    if-eqz p0, :cond_37

    .line 3049
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_37
    :goto_37
    return-object v0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 6

    .line 315
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v2, "getNetworkManagementService is reached initially"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_b
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_50

    const-string/jumbo v1, "network_management"

    .line 317
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v0, :cond_2e

    .line 318
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkManagementService binder value is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    if-eqz v1, :cond_50

    .line 320
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_50

    .line 321
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_50
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public final getNonChainedVendoUid(I)I
    .registers 5

    .line 3474
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 3475
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v1

    if-nez v1, :cond_a

    .line 3476
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 3477
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result p0

    goto :goto_30

    :cond_2f
    const/4 p0, -0x1

    :goto_30
    return p0
.end method

.method public final getProfileOwningUserId(I)Ljava/lang/String;
    .registers 8

    .line 3543
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 3547
    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    if-eqz v1, :cond_e

    .line 3549
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 3550
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_24

    .line 3552
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v3

    if-ne p1, v3, :cond_24

    .line 3553
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    return-object v0
.end method

.method public final getUIDForPackage(ILjava/lang/String;)I
    .registers 8

    .line 3457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p0, -0x1

    .line 3459
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/16 v3, 0x80

    .line 3460
    invoke-interface {v2, p2, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3462
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_19
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 3467
    :cond_13
    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_35

    :catchall_17
    move-exception p0

    goto :goto_36

    :catch_19
    move-exception p1

    .line 3465
    :try_start_1a
    sget-object p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getUIDForPackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_17

    goto :goto_13

    :goto_35
    return p0

    .line 3467
    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3468
    throw p0
.end method

.method public final getVpnManagerService()Landroid/net/IVpnManager;
    .registers 1

    const-string/jumbo p0, "vpn_management"

    .line 228
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object p0

    return-object p0
.end method

.method public final insertDropRulesForNoUidPackets(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v12, p0

    .line 2455
    :try_start_a
    invoke-virtual {v12, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2456
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z

    if-eqz v4, :cond_28

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current defaultInterface  is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-eqz v4, :cond_40

    .line 2457
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The virtual interface value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    if-eqz v4, :cond_58

    .line 2458
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The virtualAddress value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_58} :catch_134

    :cond_58
    if-eqz v3, :cond_13b

    if-eqz v1, :cond_13b

    const-string v1, " -o "

    const-string v14, " -m mark ! --mark "

    const-string v15, " -s "

    if-eqz v0, :cond_f0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_69

    goto/16 :goto_13b

    :cond_69
    if-eqz v2, :cond_13b

    const/4 v0, 0x0

    :try_start_6c
    const-string v16, "*filter"

    const/16 v17, 0x0

    .line 2470
    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v6, "knox_vpn_filter_output_drop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DROP"

    const-string v9, ""

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v11, 0x0

    move-object/from16 v4, v18

    move-object/from16 v5, p0

    move-object/from16 v10, v19

    invoke-direct/range {v4 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    move-object/from16 v4, p0

    move v5, v0

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 v8, 0x0

    const-string v9, "*filter"

    const/4 v10, 0x0

    .line 2474
    new-instance v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v4, "knox_vpn_filter_output_drop"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -o v4-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DROP"

    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    goto :goto_13b

    :cond_f0
    if-eqz v2, :cond_13b

    const/4 v8, 0x1

    const-string v9, "*filter"

    const/4 v10, 0x0

    .line 2463
    new-instance v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v4, "knox_vpn_filter_output_drop"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DROP"

    const-string v6, ""

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v13, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_133} :catch_134

    goto :goto_13b

    .line 2484
    :catch_134
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v1, "Exception occured while trying to get apply dropping rules for knox vpn packets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13b
    :goto_13b
    return-void
.end method

.method public final insertExemptRulesForDownloadManagerUid(IILjava/lang/String;)V
    .registers 21

    move/from16 v0, p1

    move/from16 v7, p2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    const-string/jumbo v1, "ip -6 rule"

    goto :goto_e

    :cond_b
    const-string/jumbo v1, "ip rule"

    :goto_e
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3f

    .line 2795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v4-"

    .line 2796
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_37

    .line 2799
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v4, "Non Clat interface is detected while applying ip rules for download uid"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_45

    .line 2802
    :cond_37
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v4, "Clat interface is detected while applying ip rules for download uid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_3f
    move-object/from16 v3, p3

    .line 2805
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v2

    :goto_45
    if-gtz v2, :cond_48

    return-void

    :cond_48
    const/4 v3, 0x0

    .line 2813
    :try_start_49
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/net/IVpnManager;->getNetIdforActiveDefaultInterface()I

    move-result v3
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_51} :catch_51

    :catch_51
    if-gtz v3, :cond_54

    return-void

    .line 2821
    :cond_54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2823
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " del "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "from all uidrange "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " prio 47"

    .line 2824
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " add "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fwmark "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2827
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lookup "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2830
    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -m owner --uid-owner "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -m mark --mark "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/16 v16, 0x0

    const-string/jumbo v11, "knox_vpn_mangle_exempt_dl"

    const-string v13, "ACCEPT"

    const-string v14, ""

    move-object v9, v5

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v3, "*mangle"

    move-object/from16 v1, p0

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2834
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2836
    :try_start_fc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v7, v3}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_fc .. :try_end_104} :catch_10a
    .catchall {:try_start_fc .. :try_end_104} :catchall_105

    goto :goto_10a

    :catchall_105
    move-exception v0

    .line 2840
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2841
    throw v0

    .line 2840
    :catch_10a
    :goto_10a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2843
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final insertExemptRulesForStrongswan(II)V
    .registers 19

    .line 2489
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v2, "knox_vpn_EXEMPT"

    const-string v3, " -m owner --gid-owner 1016"

    const-string v4, "ACCEPT"

    const-string v5, ""

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v1, 0x1

    const-string v2, "*mangle"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v4, v8

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2493
    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v2, "knox_vpn_EXEMPT"

    const-string v3, " -m owner --uid-owner 1016"

    const-string v4, "ACCEPT"

    const-string v5, ""

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v11, 0x1

    const-string v12, "*mangle"

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move/from16 v15, p1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final insertExemptRulesForUid(II)V
    .registers 12

    .line 2525
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -m owner --uid-owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v2, "knox_vpn_EXEMPT"

    const-string v4, "ACCEPT"

    const-string v5, ""

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v1, 0x1

    const-string v2, "*mangle"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, v8

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2531
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p2, p1}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_38} :catch_3e
    .catchall {:try_start_30 .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p0

    .line 2535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2536
    throw p0

    .line 2535
    :catch_3e
    :goto_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final insertIpBlockingRule()V
    .registers 5

    .line 2509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ip rule add blackhole fwmark 60"

    .line 2510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio 50 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ip -6 rule add blackhole fwmark 60"

    .line 2511
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2512
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v2, "Adding blocking rules"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 2695
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v1, "add iptable route : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz p3, :cond_72

    .line 2696
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_72

    .line 2701
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    const-string/jumbo v2, "ip route"

    const-string/jumbo v3, "ip -6 route"

    if-ne p1, v1, :cond_26

    move-object p1, v3

    goto :goto_27

    :cond_26
    move-object p1, v2

    .line 2703
    :goto_27
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ";"

    const-string v5, " prio 1"

    const-string v6, " dev "

    if-ne p1, v2, :cond_4e

    .line 2706
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " 0.0.0.0/0 table "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_4e
    if-ne p1, v3, :cond_6a

    .line 2708
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ::/0 table "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    :cond_6a
    :goto_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    .line 2697
    :cond_72
    :goto_72
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add iptable route : Invalid interface name received:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_a

    :cond_7
    const-string/jumbo p1, "ip rule"

    :goto_a
    if-eqz p3, :cond_68

    .line 2716
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_68

    .line 2719
    :cond_15
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2721
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 2722
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 2723
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " add "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "from all uidrange "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " lookup "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2724
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " prio 52 "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_68
    :goto_68
    return-void
.end method

.method public final insertIpRuleForuidRangeSourceSelection(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 8

    if-eqz p3, :cond_59

    .line 2378
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_59

    .line 2381
    :cond_b
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1b

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_1e

    :cond_1b
    const-string/jumbo p1, "ip rule"

    .line 2386
    :goto_1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "from all uidrange "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lookup "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2387
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 53 "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public final insertIpRules(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2680
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v1, "add iptable rule : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz p3, :cond_51

    .line 2681
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_51

    .line 2685
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_22

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_25

    :cond_22
    const-string/jumbo p1, "ip rule"

    .line 2687
    :goto_25
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2689
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fwmark "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " table "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 48 "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    .line 2682
    :cond_51
    :goto_51
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add iptable rule : Invalid interface name received:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final insertIpRulesForExemptedUid(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const-string/jumbo v0, "rmnet"

    .line 2303
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    if-ne p1, v0, :cond_38

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v4-"

    .line 2305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_30

    .line 2308
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v1, "Non Clat Mobile interface is detected while applying ip rules"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_3c

    .line 2311
    :cond_30
    sget-object p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v1, "Clat interface is detected while applying ip rules"

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 2314
    :cond_38
    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    :goto_3c
    if-gtz v0, :cond_3f

    return-void

    .line 2319
    :cond_3f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_4b

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_4e

    :cond_4b
    const-string/jumbo p1, "ip rule"

    .line 2322
    :goto_4e
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "from all uidrange "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lookup "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 51 "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 3084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_act"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3087
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p2, "60"

    goto :goto_20

    .line 3090
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3093
    :goto_20
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3094
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNMARK --set-mark "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v8, 0x0

    const-string v4, ""

    const-string v6, ""

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3095
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " -m connmark --mark "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CONNMARK --restore-mark"

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3096
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACCEPT"

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 3097
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v2, "*mangle"

    move-object v0, p0

    move-object v4, v9

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public final insertNatRules(ILjava/lang/String;)V
    .registers 16

    .line 2737
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2738
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -o "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v12, 0x0

    const-string v7, "POSTROUTING"

    const-string v9, "MASQUERADE"

    const-string v10, ""

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v3, "*nat"

    move-object v1, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    :cond_32
    return-void
.end method

.method public final insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V
    .registers 12

    .line 3268
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public final insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;",
            ">;I)V"
        }
    .end annotation

    .line 3353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3357
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p2, "COMMIT\n"

    if-eqz p1, :cond_35

    .line 3360
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    if-eqz p3, :cond_14

    .line 3362
    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetactionType(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    move-result-object v1

    const/4 v2, 0x1

    .line 3363
    invoke-virtual {p0, v2, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseRuleCmd(ZLjava/util/List;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/util/List;

    move-result-object v2

    .line 3364
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3365
    invoke-virtual {p0, v2, p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runIptablesRestoreCmd(Ljava/util/List;I)V

    .line 3366
    invoke-static {p3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fputactionType(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    goto :goto_14

    :cond_35
    if-eqz p4, :cond_3b

    .line 3373
    invoke-virtual {p0, v0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseRuleCmd(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3374
    :cond_3b
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3376
    invoke-virtual {p0, v0, p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runIptablesRestoreCmd(Ljava/util/List;I)V

    return-void
.end method

.method public final insertRulesForDroppingTetherPackets(ILjava/lang/String;)V
    .registers 20

    move-object/from16 v0, p2

    .line 3154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3155
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -i "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v7, "knox_vpn_filter_tether_fwd"

    const-string v9, "DROP"

    const-string v10, ""

    const/4 v12, 0x0

    move-object v5, v1

    move-object/from16 v6, p0

    move-object v11, v15

    invoke-direct/range {v5 .. v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3156
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v11, "knox_vpn_filter_tether_fwd"

    const-string v13, "DROP"

    const-string v14, ""

    const/16 v16, 0x0

    move-object v9, v1

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "knox_vpn_filter_tether_fwd"

    .line 3157
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x1

    const-string v2, "*filter"

    move-object/from16 v0, p0

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public final insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p2

    .line 2945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_act"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2947
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "60"

    move-object v11, v2

    move-object/from16 v2, p0

    goto :goto_2a

    :cond_23
    move-object/from16 v2, p0

    .line 2950
    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 2953
    :goto_2a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2955
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v13, " -m mark --mark "

    const-string v14, " -m connmark --mark "

    if-eqz v0, :cond_127

    .line 2957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "knox-netId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2959
    new-instance v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v10, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v3, v15

    move-object/from16 v4, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move v4, v1

    move-object v6, v0

    move-object v7, v15

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2962
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONNMARK --set-mark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v6, ""

    const-string v8, ""

    move-object v3, v1

    move-object/from16 v4, p0

    move-object v5, v0

    move-object v9, v15

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2964
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CONNMARK --restore-mark"

    const-string v8, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2966
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 2968
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move-object v7, v12

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 2970
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 2972
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v5, "knox_vpn_no_uid"

    const-string v8, ""

    move-object v3, v1

    move-object/from16 v4, p0

    move-object v7, v0

    move-object v9, v14

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2974
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "knox_vpn_no_uid"

    const-string v8, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move-object v7, v12

    move/from16 v8, p1

    .line 2976
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_174

    .line 2979
    :cond_127
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v10, 0x0

    const-string/jumbo v5, "knox_vpn_no_uid"

    const-string v8, ""

    move-object v3, v0

    move-object/from16 v4, p0

    move-object v7, v1

    move-object v9, v14

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2981
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "knox_vpn_no_uid"

    const-string v8, ""

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move-object v7, v12

    move/from16 v8, p1

    .line 2983
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    :goto_174
    return-void
.end method

.method public final insertRulesForStrongswanP(IILjava/lang/String;)V
    .registers 24

    move/from16 v5, p1

    const/4 v0, 0x6

    if-ne v5, v0, :cond_9

    const-string/jumbo v0, "ip -6 rule"

    goto :goto_c

    :cond_9
    const-string/jumbo v0, "ip rule"

    :goto_c
    move-object v6, v0

    const/4 v0, 0x4

    if-ne v5, v0, :cond_2f

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v4-"

    .line 2244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_35

    .line 2247
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_35

    :cond_2f
    move-object/from16 v1, p3

    .line 2250
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    :cond_35
    :goto_35
    move v7, v0

    if-gtz v7, :cond_39

    return-void

    .line 2256
    :cond_39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2257
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -p udp --dport 4500 -m mark --mark "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v15, 0x0

    const-string/jumbo v10, "knox_vpn_EXEMPT"

    const-string v12, "ACCEPT"

    const-string v13, ""

    move-object v8, v0

    move-object/from16 v9, p0

    move-object/from16 v14, v18

    invoke-direct/range {v8 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2259
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    .line 2260
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const-string/jumbo v14, "knox_vpn_EXEMPT"

    const-string v15, " -p udp --dport 4500 -m mark --mark 100"

    const-string v16, "MARK --set-mark "

    move-object v12, v0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    .line 2259
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v2, "*mangle"

    move-object/from16 v0, p0

    move/from16 v5, p1

    .line 2261
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2264
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " del "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio 44"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2265
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " add "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "from all fwmark "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lookup "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final insertRulesForUsbTethering(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p4

    const/4 v0, 0x6

    if-ne v10, v0, :cond_d

    const-string/jumbo v1, "ip -6 rule"

    goto :goto_10

    :cond_d
    const-string/jumbo v1, "ip rule"

    :goto_10
    move-object v12, v1

    if-ne v10, v0, :cond_17

    const-string/jumbo v0, "ip -6 route"

    goto :goto_1a

    :cond_17
    const-string/jumbo v0, "ip route"

    :goto_1a
    move-object v13, v0

    move-object/from16 v0, p2

    .line 3103
    invoke-virtual {v9, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3107
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v4, p3

    invoke-interface {v0, v3, v4}, Landroid/os/INetworkManagementService;->setDnsForwardersForKnoxVpn(I[Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_32} :catch_39
    .catchall {:try_start_25 .. :try_end_32} :catchall_36

    .line 3111
    :goto_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_56

    :catchall_36
    move-exception v0

    goto/16 :goto_163

    :catch_39
    move-exception v0

    .line 3109
    :try_start_3a
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDnsForwardersForKnoxVpn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_36

    goto :goto_32

    .line 3114
    :goto_56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3115
    new-instance v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v8, 0x0

    const-string/jumbo v3, "knox_vpn_filter_tether_fwd"

    const-string v5, "ACCEPT"

    const-string v6, ""

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3116
    new-instance v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -o "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "knox_vpn_filter_tether_fwd"

    const-string v5, "ACCEPT"

    const-string v6, ""

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const-string/jumbo v1, "knox_vpn_filter_tether_fwd"

    .line 3117
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v3, "*filter"

    move-object/from16 v1, p0

    move-object v5, v0

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 3119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3121
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " del from all iif "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lookup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " prio 43"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3122
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " add from all iif "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3124
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3125
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " del "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dev "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " scope link metric 1 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3126
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " add "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f5

    .line 3128
    :cond_15b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    .line 3111
    :goto_163
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3112
    throw v0
.end method

.method public final insertRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p3, :cond_45

    .line 2761
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_45

    .line 2764
    :cond_b
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1b

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_1e

    :cond_1b
    const-string/jumbo p1, "ip rule"

    .line 2769
    :goto_1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "from all iif "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lookup "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2770
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 45"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public final insertRulesToAcceptProxyPackets(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 2745
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2747
    new-instance p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -m owner --uid-owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2748
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " -m mark --mark "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v2, "knox_vpn_proxy_accept"

    const-string v4, "ACCEPT"

    const-string v5, ""

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v1, 0x1

    const-string v2, "*mangle"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    .line 2747
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final insertRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V
    .registers 19

    move-object/from16 v0, p2

    move/from16 v1, p3

    .line 2406
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v0, "60"

    move-object v10, p0

    goto :goto_15

    :cond_10
    move-object v10, p0

    .line 2409
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2412
    :goto_15
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2413
    new-instance v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " -m mark --mark "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -o lo -p tcp --dport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v9, 0x0

    const-string/jumbo v4, "knox_vpn_filter_output_act"

    const-string v6, "ACCEPT"

    const-string v7, ""

    move-object v2, v12

    move-object v3, p0

    move-object v8, v14

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2415
    new-instance v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -o lo -p udp --dport "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string/jumbo v3, "knox_vpn_filter_output_act"

    const-string v5, "ACCEPT"

    const-string v6, ""

    move-object v1, v9

    move-object v2, p0

    move-object v7, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v3, "*filter"

    move-object v1, p0

    move-object v5, v11

    move/from16 v6, p1

    .line 2417
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public final insertRulesToDenyAccessToLocalHost(II)V
    .registers 20

    move/from16 v0, p2

    .line 2438
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2439
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -o lo -p tcp --dport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v7, "knox_vpn_filter_output_drop"

    const-string v9, "DROP"

    const-string v10, ""

    const/4 v12, 0x0

    move-object v5, v1

    move-object/from16 v6, p0

    move-object v11, v15

    invoke-direct/range {v5 .. v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2440
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -o lo -p udp --dport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v11, "knox_vpn_filter_output_drop"

    const-string v13, "DROP"

    const-string v14, ""

    const/16 v16, 0x0

    move-object v9, v1

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const-string v2, "*filter"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p1

    .line 2441
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public insertRulesToDropIpv6SystemQueries(I)V
    .registers 11

    .line 1470
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -m owner --uid-owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v2, "OUTPUT"

    const-string v4, "DROP"

    const-string v5, ""

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v1, 0x1

    const-string v2, "*filter"

    const/4 v3, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final insertRulesToExemptCaptivePortalQueries(IILjava/lang/String;)V
    .registers 21

    move/from16 v0, p1

    move/from16 v7, p2

    move-object/from16 v1, p3

    if-eqz v1, :cond_ff

    const/4 v2, -0x1

    if-ne v7, v2, :cond_d

    goto/16 :goto_ff

    :cond_d
    const/4 v2, 0x6

    if-ne v0, v2, :cond_14

    const-string/jumbo v2, "ip -6 rule"

    goto :goto_17

    :cond_14
    const-string/jumbo v2, "ip rule"

    :goto_17
    const/4 v3, 0x4

    if-ne v0, v3, :cond_46

    .line 2878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "v4-"

    .line 2879
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_3e

    .line 2882
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v4, "Non Clat interface is detected while applying ip rules for download uid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v3

    goto :goto_4a

    .line 2885
    :cond_3e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v4, "Clat interface is detected while applying ip rules for download uid"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 2888
    :cond_46
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v3

    :goto_4a
    if-gtz v3, :cond_4d

    return-void

    .line 2894
    :cond_4d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2896
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " del "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "from all uidrange "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " prio 46"

    .line 2897
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2899
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lookup "

    .line 2900
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2902
    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -m owner --uid-owner "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/16 v16, 0x0

    const-string/jumbo v11, "knox_vpn_mangle_exempt_cp"

    const-string v13, "ACCEPT"

    const-string v14, ""

    move-object v9, v5

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const-string v3, "*mangle"

    move-object/from16 v1, p0

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2908
    :try_start_e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v7, v3}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_ed} :catch_f3
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_ee

    goto :goto_f3

    :catchall_ee
    move-exception v0

    .line 2912
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2913
    throw v0

    .line 2912
    :catch_f3
    :goto_f3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2915
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    :cond_ff
    :goto_ff
    return-void
.end method

.method public final isClatInterface(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_25

    const-string/jumbo p0, "rmnet"

    .line 2331
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "v4-"

    .line 2333
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    .line 2339
    :goto_26
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check to see if the default interface is clat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;
    .registers 7

    .line 3181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3183
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetactionType(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, ""

    return-object p0

    .line 3185
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$1;->$SwitchMap$com$android$server$enterprise$vpn$knoxvpn$KnoxVpnFirewallHelper$IpRestoreActionType:[I

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetactionType(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, " -j "

    const-string v4, "\n"

    if-eq v0, v1, :cond_8e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_66

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2e

    move-object p0, v2

    goto/16 :goto_b5

    :cond_2e
    const-string v0, "-X "

    .line 3199
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetactionChain(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    :cond_3e
    const-string v0, "-D "

    .line 3195
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetactionChain(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetfirstParam(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetjumpChain(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    .line 3196
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetsecondParam(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    :cond_66
    const-string v0, "-I "

    .line 3191
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetactionChain(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetfirstParam(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetjumpChain(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    .line 3192
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetsecondParam(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    :cond_8e
    const-string v0, "-A "

    .line 3187
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetactionChain(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetfirstParam(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetjumpChain(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    .line 3188
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fgetsecondParam(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b5
    if-eqz p0, :cond_bc

    .line 3206
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_bc
    return-object v2
.end method

.method public final parseRuleCmd(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3393
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3394
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    if-eqz p2, :cond_c

    .line 3396
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    return-object v0
.end method

.method public final parseRuleCmd(ZLjava/util/List;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_c

    .line 3384
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    invoke-static {p3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->-$$Nest$fputactionType(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    .line 3386
    :cond_c
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3387
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final removeChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2630
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2631
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    .line 2635
    :cond_23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2638
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2639
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 2640
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    .line 2641
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v11, 0x0

    const-string v7, ""

    const-string v9, ""

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    .line 2640
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 2646
    :cond_6f
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_77
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2647
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 2648
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    :cond_af
    const-string p0, "COMMIT\n"

    .line 2654
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public removeExemptRulesForDownloadManagerUid(I)V
    .registers 3

    const/4 v0, 0x4

    .line 1398
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteExemptRulesForDownloadManagerUid(II)V

    const/4 v0, 0x6

    .line 1399
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteExemptRulesForDownloadManagerUid(II)V

    return-void
.end method

.method public removeExemptRulesForStrongswan(I)V
    .registers 4

    const/16 v0, 0x3f8

    const/4 v1, 0x4

    .line 1210
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    const/16 v0, 0x2e

    .line 1211
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteExemptRulesForStrongswan(II)V

    return-void
.end method

.method public removeExemptRulesForUid(I)V
    .registers 3

    const/4 v0, 0x4

    .line 979
    invoke-virtual {p0, p1, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    const/16 v0, 0x2e

    .line 980
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteExemptRulesForUid(II)V

    return-void
.end method

.method public removeInputFilterDropRulesForInterface(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 589
    :try_start_4
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_21

    .line 591
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p2, v2, v3}, Landroid/os/INetworkManagementService;->updateInputFilterUserWideRules([III)V

    goto :goto_30

    :cond_21
    if-nez p1, :cond_30

    .line 593
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p2, v2, v3}, Landroid/os/INetworkManagementService;->updateInputFilterAppWideRules([III)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2a} :catch_30
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2b

    goto :goto_30

    :catchall_2b
    move-exception p0

    .line 598
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    throw p0

    .line 598
    :catch_30
    :cond_30
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public removeIpBlockingRule()V
    .registers 1

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpBlockingRule()V

    return-void
.end method

.method public removeIpChainForProfile(Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p1

    if-nez v0, :cond_5

    return-void

    .line 1732
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uidlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_act"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1735
    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v10, 0x0

    const-string/jumbo v5, "knox_vpn_OUTPUT"

    const-string v6, ""

    const-string v8, ""

    move-object v3, v13

    move-object/from16 v4, p0

    move-object v7, v1

    move-object v9, v14

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/16 v7, 0x2e

    const-string v4, "*mangle"

    move-object/from16 v2, p0

    move v3, v11

    move-object v5, v12

    move-object v6, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 v2, 0x0

    .line 1738
    new-instance v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    move-object v3, v11

    move-object/from16 v4, p0

    move-object v5, v1

    move-object v9, v12

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/16 v8, 0x2e

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move v4, v2

    move-object v6, v1

    move-object v7, v11

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 1742
    new-instance v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v5, "knox_vpn_OUTPUT"

    const-string v6, ""

    const-string v8, ""

    move-object/from16 v3, v19

    move-object/from16 v4, p0

    move-object v7, v0

    move-object v9, v14

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/16 v20, 0x2e

    const-string v17, "*mangle"

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 v1, 0x0

    .line 1745
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v5, v0

    move-object v9, v12

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/16 v8, 0x2e

    const-string v5, "*mangle"

    move-object/from16 v3, p0

    move v4, v1

    move-object v6, v0

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public removeIpRouteAndPolicyRules(Ljava/lang/String;I)V
    .registers 7

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 388
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "not allowed name  : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-nez p1, :cond_22

    .line 393
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    :cond_22
    const/4 v0, 0x1

    const/4 v1, 0x4

    const-string v2, " del "

    if-eq p2, v0, :cond_5b

    const/4 v0, 0x2

    const/4 v3, 0x6

    if-eq p2, v0, :cond_54

    const/4 v0, 0x3

    if-eq p2, v0, :cond_47

    .line 413
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown interface type has been recieved "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 406
    :cond_47
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 402
    :cond_54
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 398
    :cond_5b
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    :goto_61
    return-void
.end method

.method public removeIpRulesForExemptedUid(II)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x4

    const-string v2, " del "

    if-eq p2, v0, :cond_1f

    const/4 v0, 0x2

    const/4 v3, 0x6

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_14

    .line 483
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    .line 484
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    goto :goto_22

    .line 479
    :cond_14
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    .line 480
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    goto :goto_22

    .line 476
    :cond_1b
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    goto :goto_22

    .line 473
    :cond_1f
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(ILjava/lang/String;I)V

    :goto_22
    return-void
.end method

.method public removeMangleNatRulesRange(ILjava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public removeMiscRules(Ljava/util/List;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 762
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 763
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not allowed name  : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-nez p2, :cond_22

    .line 768
    sget-object p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    :cond_22
    const/4 v0, 0x2

    .line 771
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(Ljava/util/List;I)V

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq p3, v2, :cond_66

    const/4 v2, 0x6

    if-eq p3, v0, :cond_5b

    const/4 v0, 0x3

    if-eq p3, v0, :cond_4d

    .line 790
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown interface type has been recieved "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 785
    :cond_4d
    invoke-virtual {p0, v3, p1, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 786
    invoke-virtual {p0, v2, p1, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 787
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    goto :goto_70

    .line 781
    :cond_5b
    invoke-virtual {p0, v2, p1, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 782
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    goto :goto_70

    .line 777
    :cond_66
    invoke-virtual {p0, v3, p1, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 778
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    :goto_70
    return-void
.end method

.method public final removeMiscRulesRange(III)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x4

    const-string v2, " del "

    if-eq p1, v0, :cond_30

    const/4 v0, 0x2

    const/4 v3, 0x6

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    .line 857
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown interface type has been recieved "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 853
    :cond_25
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(ILjava/lang/String;II)V

    .line 854
    invoke-virtual {p0, v3, v2, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(ILjava/lang/String;II)V

    goto :goto_33

    .line 850
    :cond_2c
    invoke-virtual {p0, v3, v2, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(ILjava/lang/String;II)V

    goto :goto_33

    .line 847
    :cond_30
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(ILjava/lang/String;II)V

    :goto_33
    return-void
.end method

.method public removeMiscRulesRange(ILjava/lang/String;I)V
    .registers 9

    .line 813
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 814
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not allowed name  : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const p2, 0x186a0

    mul-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, p2, -0x1

    const v1, 0x1869f

    add-int/2addr v0, v1

    const/4 v1, 0x2

    .line 821
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    .line 823
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getDefaultRouteApps(I)Ljava/util/List;

    move-result-object p2

    .line 824
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 826
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p1

    .line 827
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 828
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_60

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 832
    :cond_60
    new-instance v3, Landroid/net/UidRangeParcel;

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v3, v1, v4}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_4b

    .line 836
    :cond_6e
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt v1, p2, :cond_8c

    new-instance p2, Landroid/net/UidRangeParcel;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_8c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_90
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/UidRangeParcel;

    .line 839
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMiscRulesRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/net/UidRangeParcel;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/net/UidRangeParcel;->stop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget v0, p2, Landroid/net/UidRangeParcel;->start:I

    iget p2, p2, Landroid/net/UidRangeParcel;->stop:I

    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMiscRulesRange(III)V

    goto :goto_90

    :cond_c2
    return-void
.end method

.method public removeNatRules(Ljava/lang/String;I)V
    .registers 4

    .line 874
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 875
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "not allowed name  : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-nez p1, :cond_22

    .line 880
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    :cond_22
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_49

    const/4 v0, 0x3

    if-eq p2, v0, :cond_43

    .line 894
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown interface type has been recieved "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_43
    const/16 p2, 0x2e

    .line 891
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteNatRules(ILjava/lang/String;)V

    goto :goto_52

    :cond_49
    const/4 p2, 0x6

    .line 888
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteNatRules(ILjava/lang/String;)V

    goto :goto_52

    :cond_4e
    const/4 p2, 0x4

    .line 885
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteNatRules(ILjava/lang/String;)V

    :goto_52
    return-void
.end method

.method public removeRangeRulesForFilteredPackages(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 18

    move-object/from16 v0, p2

    .line 1937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uidlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_act"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v0, 0x186a0

    mul-int v0, v0, p3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, -0x1

    const v2, 0x1869f

    add-int/2addr v1, v2

    .line 1941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1943
    new-instance v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -m owner --uid-owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v8, ""

    const/4 v10, 0x0

    move-object v3, v12

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v9, 0x0

    const-string v10, "*mangle"

    const/4 v11, 0x0

    const/16 v13, 0x2e

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string v0, "com.samsung.sVpn"

    move-object v1, p1

    .line 1947
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 1948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1950
    :try_start_79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1951
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1952
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, v4}, Landroid/os/INetworkManagementService;->updateInputFilterUserWideRules([III)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_9e} :catch_a4
    .catchall {:try_start_79 .. :try_end_9e} :catchall_9f

    goto :goto_a4

    :catchall_9f
    move-exception v0

    .line 1957
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1958
    throw v0

    .line 1957
    :catch_a4
    :goto_a4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_a7
    return-void
.end method

.method public removeRulesForDroppingTethePackets()V
    .registers 1

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForDroppingTetherPackets()V

    return-void
.end method

.method public removeRulesForFilteredPackages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uidlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_act"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1849
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1850
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1851
    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " -m owner --uid-owner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v10, 0x0

    const-string v8, ""

    move-object v3, v13

    move-object v4, p0

    move-object v5, v1

    move-object v7, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/16 v9, 0x2e

    const-string v6, "*mangle"

    move v5, v11

    move-object v7, v12

    move-object v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    goto :goto_28

    :cond_68
    const-string v0, "com.samsung.sVpn"

    move-object v1, p1

    .line 1856
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 1857
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1860
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, v4}, Landroid/os/INetworkManagementService;->updateInputFilterAppWideRules([III)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8e} :catch_94
    .catchall {:try_start_86 .. :try_end_8e} :catchall_8f

    goto :goto_94

    :catchall_8f
    move-exception v0

    .line 1864
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1865
    throw v0

    .line 1864
    :catch_94
    :goto_94
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_97
    return-void
.end method

.method public removeRulesForNoUidPackets(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v0, :cond_30

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p2, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_25

    .line 1596
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deleteRulesForNoUidPackets: unknown interface type has been recieved "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1592
    :cond_25
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 1589
    :cond_2c
    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 1586
    :cond_30
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public removeRulesForStrongswanP(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 p0, 0x2

    if-eq p1, p0, :cond_25

    const/4 p0, 0x3

    if-eq p1, p0, :cond_25

    .line 2234
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "removeRulesForStrongswanP: unknown interface type has been recieved "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_21
    const/4 p1, 0x4

    .line 2227
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForStrongswanP(IILjava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public removeRulesForUsbTethering(ILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_34

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p1, v0, :cond_30

    const/4 v0, 0x3

    if-eq p1, v0, :cond_29

    .line 2080
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    .line 2081
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    .line 2082
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeRulesForUsbTethering: unknown interface type has been recieved "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 2076
    :cond_29
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    .line 2077
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    goto :goto_37

    .line 2073
    :cond_30
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    goto :goto_37

    .line 2070
    :cond_34
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    :goto_37
    return-void
.end method

.method public removeRulesTetherAuth()V
    .registers 13

    const/4 v1, 0x0

    const-string v2, "*nat"

    const-string/jumbo v3, "knox_vpn_nat_preroute"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    .line 2197
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 v7, 0x0

    const-string v8, "*filter"

    const-string/jumbo v9, "knox_vpn_filter_tether_fwd"

    const/4 v10, 0x0

    const/16 v11, 0x2e

    move-object v6, p0

    .line 2198
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string v2, "*filter"

    const-string/jumbo v3, "knox_vpn_tether_exempt"

    .line 2199
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string v8, "*mangle"

    const-string/jumbo v9, "knox_vpn_tether_exempt"

    const/4 v11, 0x4

    .line 2200
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ip rule"

    .line 2203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "del"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio 42"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public removeRulesToAcceptIncomingPackets(ILjava/lang/String;)V
    .registers 7

    if-eqz p2, :cond_3e

    .line 1333
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3e

    :cond_b
    const/4 v0, 0x1

    const/4 v1, 0x4

    const-string v2, " del "

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x2

    const/4 v3, 0x6

    if-eq p1, v0, :cond_37

    const/4 v0, 0x3

    if-eq p1, v0, :cond_30

    .line 1348
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown interface type has been recieved "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1344
    :cond_30
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 1341
    :cond_37
    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 1338
    :cond_3b
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public removeRulesToAcceptProxyPackets(ILjava/lang/String;I)V
    .registers 6

    if-eqz p2, :cond_3d

    .line 1262
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3d

    :cond_b
    const/4 v0, 0x1

    const-string v1, " del "

    if-eq p1, v0, :cond_39

    const/4 v0, 0x2

    if-eq p1, v0, :cond_34

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2e

    .line 1276
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown interface type has been recieved "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_2e
    const/16 p1, 0x2e

    .line 1273
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptProxyPackets(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3d

    :cond_34
    const/4 p1, 0x6

    .line 1270
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptProxyPackets(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3d

    :cond_39
    const/4 p1, 0x4

    .line 1267
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptProxyPackets(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public removeRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V
    .registers 7

    .line 1047
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1048
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not allowed name  : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v0, 0x6

    const/4 v1, 0x4

    if-nez p1, :cond_2b

    .line 1053
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    .line 1054
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1055
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    goto :goto_53

    :cond_2b
    const/4 v2, 0x1

    if-eq p3, v2, :cond_48

    const/4 v2, 0x2

    if-eq p3, v2, :cond_3c

    const/4 v2, 0x3

    if-eq p3, v2, :cond_35

    goto :goto_53

    .line 1069
    :cond_35
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1070
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    goto :goto_53

    .line 1064
    :cond_3c
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1065
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1066
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    goto :goto_53

    .line 1059
    :cond_48
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1060
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    .line 1061
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(ILjava/lang/String;I)V

    :goto_53
    return-void
.end method

.method public removeRulesToDenyAccessToLocalHost(I)V
    .registers 3

    const/16 v0, 0x2e

    .line 1116
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToDenyAccessToLocalHost(II)V

    return-void
.end method

.method public removeRulesToDropIpv6SystemQueries(I)V
    .registers 11

    .line 1488
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -m owner --uid-owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v2, "OUTPUT"

    const-string v4, "DROP"

    const-string v5, ""

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V

    const/4 v1, 0x0

    const-string v2, "*filter"

    const/4 v3, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public removeRulesToExemptCaptivePortalQueries(I)V
    .registers 3

    const/4 v0, 0x4

    .line 1450
    invoke-virtual {p0, p1, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    .line 1451
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToExemptCaptivePortalQueries(II)V

    const/4 v0, 0x6

    .line 1452
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToExemptCaptivePortalQueries(II)V

    return-void
.end method

.method public runIptablesRestoreCmd(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ""

    .line 3418
    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runShellCommand(ILjava/lang/String;)Z

    return-void
.end method

.method public final declared-synchronized runShellCommand(ILjava/lang/String;)Z
    .registers 8

    monitor-enter p0

    .line 3423
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_63

    .line 3425
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 3426
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_38

    .line 3429
    :cond_16
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to run command. Result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\ncommand="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_40
    .catchall {:try_start_5 .. :try_end_34} :catchall_3e

    .line 3434
    :goto_34
    :try_start_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5c

    :cond_38
    :goto_38
    const/4 p1, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_63

    .line 3427
    monitor-exit p0

    return p1

    :catchall_3e
    move-exception p1

    goto :goto_5f

    :catch_40
    move-exception p1

    .line 3432
    :try_start_41
    sget-object p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to run cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_3e

    goto :goto_34

    :goto_5c
    const/4 p1, 0x0

    .line 3436
    monitor-exit p0

    return p1

    .line 3434
    :goto_5f
    :try_start_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3435
    throw p1
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final runSingleCommand(Ljava/lang/String;)V
    .registers 9

    .line 2660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2662
    :try_start_4
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string v3, "Current time before applying the ip commands"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    :cond_f
    invoke-static {p1}, Lcom/android/server/enterprise/utils/NetdHelper;->splitCmds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_20

    .line 2665
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string p1, "Error splitting commands"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_4d
    .catchall {:try_start_4 .. :try_end_1c} :catchall_4b

    .line 2675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2668
    :cond_20
    :try_start_20
    array-length v2, p1

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_3c

    aget-object v4, p1, v3

    .line 2669
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/enterprise/utils/NetdHelper;->getCmdNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4}, Lcom/android/server/enterprise/utils/NetdHelper;->getCmdParams(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Landroid/os/INetworkManagementService;->runKnoxRulesCommand(I[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 2671
    :cond_3c
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->DBG:Z

    if-eqz p0, :cond_47

    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    const-string p1, "Current time after applying the ip commands"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_47} :catch_4d
    .catchall {:try_start_20 .. :try_end_47} :catchall_4b

    .line 2675
    :cond_47
    :goto_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6a

    :catchall_4b
    move-exception p0

    goto :goto_6b

    :catch_4d
    move-exception p0

    .line 2673
    :try_start_4e
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runSingleCommand error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4e .. :try_end_69} :catchall_4b

    goto :goto_47

    :goto_6a
    return-void

    .line 2675
    :goto_6b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2676
    throw p0
.end method

.method public final showLog(Ljava/lang/String;)V
    .registers 3

    .line 3059
    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, ";"

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    :goto_7
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 3061
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_17
    return-void
.end method

.method public updateDropRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1139
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->isClatInterface(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1140
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->convertToClat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1141
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertDropRulesForNoUidPackets(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_13
    const/4 v1, 0x4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1143
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertDropRulesForNoUidPackets(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    const/4 v1, 0x6

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    .line 1145
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertDropRulesForNoUidPackets(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateIpBlockingRule()V
    .registers 1

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpBlockingRule()V

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpBlockingRule()V

    return-void
.end method
