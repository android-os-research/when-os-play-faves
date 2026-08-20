.class public Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
.super Ljava/lang/Object;
.source "VpnProfileInfo.java"


# static fields
.field public static final NETID_UNSET:I


# instance fields
.field public volatile activateState:I

.field public volatile admin_id:I

.field public volatile chainingEnabled:I

.field public volatile credentialsPredefined:Z

.field public volatile isProxySetupCompleted:Z

.field public volatile isUsbTetheringAuthEnabled:I

.field public volatile mDefaultInterface:Ljava/lang/String;

.field public volatile mDefaultNetworkId:I

.field public mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExemptPackageList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mInterfaceAddress:Ljava/lang/String;

.field public volatile mInterfaceName:Ljava/lang/String;

.field public volatile mInterfaceV6Address:Ljava/lang/String;

.field public volatile mInterface_type:I

.field public volatile mIpChainName:Ljava/lang/String;

.field public volatile mIsRetry:Z

.field public volatile mNetId:I

.field public mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageUidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mPacurl:Landroid/net/Uri;

.field public volatile mProfileName:Ljava/lang/String;

.field public mProxyInfo:Landroid/net/ProxyInfo;

.field public volatile mProxyPassword:Ljava/lang/String;

.field public volatile mProxyPort:I

.field public volatile mProxyServer:Ljava/lang/String;

.field public volatile mProxyusername:Ljava/lang/String;

.field public mSearchDomainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mUsbTethering:I

.field public volatile mVendorPkgName:Ljava/lang/String;

.field public volatile mVendorUid:I

.field public volatile mVpnClientType:I

.field public mVpnStartTime:J

.field public mVpnStartTimeToConnect:J

.field public volatile markProfileForDeletion:Z

.field public volatile personaId:I

.field public volatile profileId:I

.field public volatile protocolType:Ljava/lang/String;

.field public volatile proxyAuthRequried:I

.field public volatile routeType:I

.field public volatile uidPidSearchEnabled:I

.field public volatile vpnConnectionType:I

.field public volatile vpnType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIsRetry:Z

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 88
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    const/4 v2, 0x0

    .line 90
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    .line 94
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 96
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    .line 100
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Landroid/net/Uri;

    .line 102
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    .line 109
    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    .line 112
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    .line 115
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    .line 118
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterface_type:I

    .line 120
    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxySetupCompleted:Z

    .line 127
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mUsbTethering:I

    .line 129
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    .line 134
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 136
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIpChainName:Ljava/lang/String;

    .line 138
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultNetworkId:I

    .line 140
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isUsbTetheringAuthEnabled:I

    return-void
.end method


# virtual methods
.method public addPackageEntry(Ljava/lang/String;II)V
    .registers 5

    .line 334
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;-><init>(Ljava/lang/String;II)V

    .line 335
    iget-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActivateState()I
    .registers 1

    .line 223
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    return p0
.end method

.method public getAdminId()I
    .registers 1

    .line 183
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    return p0
.end method

.method public getChainingEnabled()I
    .registers 1

    .line 235
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    return p0
.end method

.method public getDefaultInterface()Ljava/lang/String;
    .registers 1

    .line 417
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultNetworkId()I
    .registers 1

    .line 508
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultNetworkId:I

    return p0
.end method

.method public getDnsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDnsList:Ljava/util/List;

    return-object p0
.end method

.method public getExemptPackageList()Ljava/util/HashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    return-object p0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 1

    .line 409
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public getInterfaceType()I
    .registers 1

    .line 458
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterface_type:I

    return p0
.end method

.method public getIpChainName()Ljava/lang/String;
    .registers 1

    .line 484
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIpChainName:Ljava/lang/String;

    return-object p0
.end method

.method public getIsRetry()Z
    .registers 1

    .line 143
    iget-boolean p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIsRetry:Z

    return p0
.end method

.method public getMarkProfileForDeletion()Z
    .registers 1

    .line 231
    iget-boolean p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->markProfileForDeletion:Z

    return p0
.end method

.method public getNetId()I
    .registers 1

    .line 175
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    return p0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .registers 3

    .line 309
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_a
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    return-object p0
.end method

.method public getPackageCount()I
    .registers 1

    .line 326
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public getPackageEntryForUid(I)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .registers 4

    .line 316
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 317
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    .line 318
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_a

    return-object v0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageList()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getPackageMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public getPacurl()Landroid/net/Uri;
    .registers 1

    .line 393
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Landroid/net/Uri;

    return-object p0
.end method

.method public getPersonaId()I
    .registers 1

    .line 191
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    return p0
.end method

.method public getProfileId()I
    .registers 1

    .line 199
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->profileId:I

    return p0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocolType()Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->protocolType:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getProxyInfo()Landroid/net/ProxyInfo;
    .registers 2

    monitor-enter p0

    .line 373
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyPort()I
    .registers 1

    .line 365
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    return p0
.end method

.method public getProxyServer()Ljava/lang/String;
    .registers 1

    .line 357
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    return-object p0
.end method

.method public getProxySetupStatus()Z
    .registers 1

    .line 466
    iget-boolean p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxySetupCompleted:Z

    return p0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .registers 1

    .line 377
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    return-object p0
.end method

.method public getRouteType()I
    .registers 1

    .line 207
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    return p0
.end method

.method public getSearchDomainList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mSearchDomainList:Ljava/util/List;

    return-object p0
.end method

.method public getUidPidSearchEnabled()I
    .registers 1

    .line 245
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->uidPidSearchEnabled:I

    return p0
.end method

.method public getUsbTethering()I
    .registers 1

    .line 517
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mUsbTethering:I

    return p0
.end method

.method public getUsbtetherAuth()I
    .registers 1

    .line 525
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isUsbTetheringAuthEnabled:I

    return p0
.end method

.method public getV6InterfaceAddress()Ljava/lang/String;
    .registers 1

    .line 425
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    return-object p0
.end method

.method public getVendorPkgName()Ljava/lang/String;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getVendorUid()I
    .registers 1

    .line 263
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    return p0
.end method

.method public getVpnConnectionType()I
    .registers 1

    .line 255
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I

    return p0
.end method

.method public getVpnServiceType()I
    .registers 1

    .line 304
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnType:I

    return p0
.end method

.method public getVpnStartTime()J
    .registers 3

    .line 488
    iget-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnStartTime:J

    return-wide v0
.end method

.method public getVpnStartTimeToConnect()J
    .registers 3

    .line 496
    iget-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnStartTimeToConnect:J

    return-wide v0
.end method

.method public getVpnType()I
    .registers 1

    .line 450
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    return p0
.end method

.method public isPackageAddedToProfile(I)Z
    .registers 2

    .line 340
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isProxyAuthRequired()I
    .registers 1

    .line 441
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    return p0
.end method

.method public isproxyCredentialsPreDefined()Z
    .registers 1

    .line 433
    iget-boolean p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    return p0
.end method

.method public proxyCredentialsPreDefined(Z)V
    .registers 2

    .line 429
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    return-void
.end method

.method public removePackageEntry(Ljava/lang/String;)V
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 347
    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 349
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeUidFromExemptList(I)V
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 471
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public setActivateState(I)V
    .registers 2

    .line 227
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    return-void
.end method

.method public setAdminId(I)V
    .registers 2

    .line 187
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    return-void
.end method

.method public setChainingEnabled(I)V
    .registers 2

    .line 239
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    return-void
.end method

.method public setDefaultInterface(Ljava/lang/String;)V
    .registers 2

    .line 413
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    return-void
.end method

.method public setDefaultNetworkId(I)V
    .registers 2

    .line 504
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultNetworkId:I

    return-void
.end method

.method public setDnsList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDnsList:Ljava/util/List;

    return-void
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    return-void
.end method

.method public setInterfaceType(I)V
    .registers 2

    .line 454
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterface_type:I

    return-void
.end method

.method public setIpChainName(Ljava/lang/String;)V
    .registers 2

    .line 480
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIpChainName:Ljava/lang/String;

    return-void
.end method

.method public setIsRetry(Z)V
    .registers 2

    .line 147
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIsRetry:Z

    return-void
.end method

.method public setMarkProfileForDeletion(Z)V
    .registers 2

    .line 272
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->markProfileForDeletion:Z

    return-void
.end method

.method public setNetId(I)V
    .registers 2

    .line 179
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    return-void
.end method

.method public setPacAuthRequired(I)V
    .registers 2

    .line 437
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    return-void
.end method

.method public setPacurl(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_7

    .line 398
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Landroid/net/Uri;

    goto :goto_d

    .line 400
    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Landroid/net/Uri;

    :goto_d
    return-void
.end method

.method public setPersonaId(I)V
    .registers 2

    .line 195
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    return-void
.end method

.method public setProfileId(I)V
    .registers 2

    .line 203
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->profileId:I

    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method public setProtocolType(Ljava/lang/String;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->protocolType:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setProxyInfo(Landroid/net/ProxyInfo;)V
    .registers 2

    monitor-enter p0

    .line 369
    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 370
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .registers 2

    .line 389
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .registers 2

    .line 361
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    return-void
.end method

.method public setProxyServer(Ljava/lang/String;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    return-void
.end method

.method public setProxySetupStatus(Z)V
    .registers 2

    .line 462
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxySetupCompleted:Z

    return-void
.end method

.method public setProxyUsername(Ljava/lang/String;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    return-void
.end method

.method public setRouteType(I)V
    .registers 2

    .line 211
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    return-void
.end method

.method public setSearchDomainList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mSearchDomainList:Ljava/util/List;

    return-void
.end method

.method public setUidPidSearchEnabled(I)V
    .registers 2

    .line 250
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->uidPidSearchEnabled:I

    return-void
.end method

.method public setUsbTetherAuth(I)V
    .registers 2

    .line 521
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isUsbTetheringAuthEnabled:I

    return-void
.end method

.method public setUsbTethering(I)V
    .registers 2

    .line 513
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mUsbTethering:I

    return-void
.end method

.method public setV6InterfaceAddress(Ljava/lang/String;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    return-void
.end method

.method public setVendorPkgName(Ljava/lang/String;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    return-void
.end method

.method public setVendorUid(I)V
    .registers 2

    .line 259
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    return-void
.end method

.method public setVpnConnectionType(I)V
    .registers 2

    .line 268
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I

    return-void
.end method

.method public setVpnServiceType(I)V
    .registers 2

    .line 300
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnType:I

    return-void
.end method

.method public setVpnStartTime(J)V
    .registers 3

    .line 492
    iput-wide p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnStartTime:J

    return-void
.end method

.method public setVpnStartTimeToConnect(J)V
    .registers 3

    .line 500
    iput-wide p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnStartTimeToConnect:J

    return-void
.end method

.method public setVpnType(I)V
    .registers 2

    .line 446
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    return-void
.end method
