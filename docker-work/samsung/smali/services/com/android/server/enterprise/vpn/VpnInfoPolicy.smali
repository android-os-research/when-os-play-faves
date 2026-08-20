.class public Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
.super Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final DNS_SERVERS:I = 0x0

.field public static final FORWARD_ROUTES:I = 0x2

.field public static final OCSP_SERVER:I = 0x3

.field public static final SEARCH_DOMAINS:I = 0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field public mVpnManager:Landroid/net/VpnManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;-><init>()V

    const-string v0, "VpnPolicy"

    .line 106
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 112
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 114
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    .line 158
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 161
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    :cond_20
    return-void
.end method


# virtual methods
.method public allowOnlySecureConnections(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    .line 1352
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 1353
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 1354
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1355
    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_12

    const-string v3, "PPTP"

    .line 1356
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v1, :cond_12

    const-string v2, "CONNECTED"

    .line 1357
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    goto :goto_12

    .line 1363
    :cond_42
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "RESTRICTION"

    const-string v1, "allowOnlySecureVPN"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowUserAddProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    const-string v0, "VpnPolicy"

    const-string v1, "allowUserAddProfiles"

    .line 1784
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1786
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "VPN"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowUserChangeProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    const-string v0, "VpnPolicy"

    const-string v1, "allowUserChangeProfiles"

    .line 1749
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1751
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "VPN"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowUserSetAlwaysOn(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    const-string v0, "VpnPolicy"

    const-string v1, "allowUserSetAlwaysOn"

    .line 1700
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1707
    :try_start_12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "VpnPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_31

    const-string v9, "allowed"

    goto :goto_33

    :cond_31
    const-string v9, "disallowed"

    .line 1709
    :goto_33
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " user to set VPN Always On mode."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1710
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1706
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_56

    .line 1712
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1715
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "VPN"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :catchall_56
    move-exception p0

    .line 1712
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1713
    throw p0
.end method

.method public final canChangeAlwaysOn(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 1842
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "vpnAlwaysOnProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1844
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "vpnAlwaysOnOwner"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_28

    .line 1847
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1848
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    return v2

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method public final checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z
    .registers 6

    const/4 v0, 0x0

    if-lez p2, :cond_2f

    .line 1425
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 1426
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2f

    move p2, v0

    .line 1427
    :goto_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2f

    .line 1428
    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_2b

    if-eqz v1, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :catch_2b
    move-exception p0

    .line 1437
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    return v0
.end method

.method public checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z
    .registers 5

    .line 1375
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1377
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isOnlySecureConnectionsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_6d

    if-eqz p2, :cond_63

    .line 1378
    array-length p0, p2

    if-le p0, p1, :cond_63

    const/4 p0, 0x2

    aget-object v0, p2, p0

    if-eqz v0, :cond_34

    const-string/jumbo v1, "udprsa"

    .line 1379
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    aget-object v0, p2, p0

    const-string/jumbo v1, "hybridrsa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    aget-object p0, p2, p0

    const-string/jumbo v0, "udppsk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    :cond_34
    aget-object p0, p2, p1

    if-eqz p0, :cond_63

    const-string/jumbo v0, "xauthrsa"

    .line 1380
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    aget-object p0, p2, p1

    const-string/jumbo v0, "xauthpsk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    aget-object p0, p2, p1

    const-string/jumbo v0, "ikev2psk"

    .line 1381
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    aget-object p0, p2, p1

    const-string/jumbo p2, "ikev2rsa"

    .line 1382
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    goto :goto_65

    :cond_63
    const/4 p0, 0x0

    move p1, p0

    :cond_65
    :goto_65
    if-nez p1, :cond_6d

    const p0, 0x1040ee6

    .line 1389
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_6d
    return p1
.end method

.method public declared-synchronized createProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z
    .registers 9

    monitor-enter p0

    .line 1019
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d1

    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 1023
    monitor-exit p0

    return v0

    .line 1025
    :cond_a
    :try_start_a
    iget-object v1, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b2

    iget-object v1, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->serverName:Ljava/lang/String;

    .line 1026
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b2

    iget-object v1, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->profileName:Ljava/lang/String;

    .line 1027
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_1b2

    iget-object v1, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->profileName:Ljava/lang/String;

    .line 1028
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    goto/16 :goto_1b2

    .line 1033
    :cond_32
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isProfileTypeAllowed(Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string p1, "VpnPolicy"

    const-string p2, "Vpn type not allowed by CCMode"

    .line 1034
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3f} :catch_1b4
    .catchall {:try_start_a .. :try_end_3f} :catchall_1d1

    .line 1035
    monitor-exit p0

    return v0

    .line 1038
    :cond_41
    :try_start_41
    new-instance v1, Lcom/android/internal/net/VpnProfile;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 1040
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 1041
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 1042
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_61

    move v2, v3

    goto :goto_62

    :cond_61
    move v2, v0

    :goto_62
    iput-boolean v2, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1046
    iget-object v4, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_71
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_7d} :catch_1b4
    .catchall {:try_start_41 .. :try_end_7d} :catchall_1d1

    if-nez v5, :cond_81

    .line 1048
    monitor-exit p0

    return v0

    .line 1050
    :cond_81
    :try_start_81
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 1051
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 1053
    :cond_8a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1054
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_9d

    .line 1055
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1057
    :cond_9d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ab

    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_a7} :catch_1b4
    .catchall {:try_start_81 .. :try_end_a7} :catchall_1d1

    if-nez v4, :cond_ab

    .line 1058
    monitor-exit p0

    return v0

    .line 1060
    :cond_ab
    :try_start_ab
    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 1063
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1064
    iget-object v4, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ba
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c6} :catch_1b4
    .catchall {:try_start_ab .. :try_end_c6} :catchall_1d1

    if-nez v5, :cond_ca

    .line 1066
    monitor-exit p0

    return v0

    .line 1068
    :cond_ca
    :try_start_ca
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 1069
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ba

    .line 1071
    :cond_d3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_e6

    .line 1073
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1075
    :cond_e6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_f0} :catch_1b4
    .catchall {:try_start_ca .. :try_end_f0} :catchall_1d1

    if-nez v4, :cond_f4

    .line 1076
    monitor-exit p0

    return v0

    .line 1078
    :cond_f4
    :try_start_f4
    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1082
    iget-object v4, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_103
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_10f} :catch_1b4
    .catchall {:try_start_f4 .. :try_end_10f} :catchall_1d1

    if-nez v5, :cond_113

    .line 1084
    monitor-exit p0

    return v0

    .line 1086
    :cond_113
    :try_start_113
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 1087
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_103

    .line 1089
    :cond_11c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_12f

    .line 1091
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1093
    :cond_12f
    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 1095
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v2, :cond_137

    .line 1096
    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 1098
    :cond_137
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v2, :cond_13d

    .line 1099
    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 1104
    :cond_13d
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v3, "IPSEC_IKEV2_PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    .line 1105
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecPreSharedKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_14d} :catch_1b4
    .catchall {:try_start_113 .. :try_end_14d} :catchall_1d1

    if-eqz v2, :cond_151

    .line 1106
    monitor-exit p0

    return v0

    :cond_151
    const/4 v2, 0x6

    .line 1108
    :try_start_152
    iput v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1109
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecPreSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1110
    iget-object p2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_198

    .line 1112
    :cond_161
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v3, "IPSEC_IKEV2_RSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b0

    .line 1113
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecUserCertificate:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ae

    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecCaCertificate:Ljava/lang/String;

    .line 1114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17c

    goto :goto_1ae

    :cond_17c
    const/4 v2, 0x7

    .line 1117
    iput v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1118
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecUserCertificate:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1119
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecCaCertificate:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1123
    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    if-eqz v2, :cond_198

    .line 1124
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 1125
    iget-object p2, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_195} :catch_1b4
    .catchall {:try_start_152 .. :try_end_195} :catchall_1d1

    goto :goto_198

    .line 1127
    :cond_196
    monitor-exit p0

    return v0

    .line 1136
    :cond_198
    :goto_198
    :try_start_198
    iget-object p2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_1ac

    .line 1137
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result p2

    if-nez p2, :cond_1ac

    .line 1138
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z

    move-result p1
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_1aa} :catch_1b4
    .catchall {:try_start_198 .. :try_end_1aa} :catchall_1d1

    monitor-exit p0

    return p1

    .line 1145
    :cond_1ac
    monitor-exit p0

    return v0

    .line 1115
    :cond_1ae
    :goto_1ae
    monitor-exit p0

    return v0

    .line 1133
    :cond_1b0
    monitor-exit p0

    return v0

    .line 1029
    :cond_1b2
    :goto_1b2
    monitor-exit p0

    return v0

    :catch_1b4
    move-exception p1

    :try_start_1b5
    const-string p2, "VpnPolicy"

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createProfile exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cf
    .catchall {:try_start_1b5 .. :try_end_1cf} :catchall_1d1

    .line 1143
    monitor-exit p0

    return v0

    :catchall_1d1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .registers 3

    .line 193
    invoke-static {p1, p2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_8
    invoke-static {p0}, Lcom/android/internal/net/VpnProfile;->decrypt(Lcom/android/internal/net/VpnProfile;)V

    return-object p0
.end method

.method public declared-synchronized deleteProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 11

    monitor-enter p0

    .line 714
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndKnoxVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 715
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isKnoxVpnProfile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    const-string p1, "VpnPolicy"

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot delete knox vpn profile through this API "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_d9

    .line 717
    monitor-exit p0

    return v1

    .line 721
    :cond_24
    :try_start_24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 722
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d7

    .line 723
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d7

    move v2, v1

    .line 724
    :goto_37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d7

    .line 725
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 726
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 727
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    if-nez v2, :cond_58

    .line 728
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getVpnManager()V

    .line 730
    :cond_58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_5c} :catch_bc
    .catchall {:try_start_24 .. :try_end_5c} :catchall_d9

    .line 732
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    if-eqz v4, :cond_73

    .line 733
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v4, :cond_73

    .line 734
    iget v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-eqz v4, :cond_73

    .line 735
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 738
    :cond_73
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VpnPolicy"

    .line 739
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alwaysOnProfile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_aa

    .line 740
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_aa

    const-string p2, "VpnPolicy"

    const-string v4, "clearing enterprise db"

    .line 742
    invoke-static {p2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 743
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->releaseAlwaysOnVPNLockdown(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 746
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    if-eqz p1, :cond_aa

    .line 747
    invoke-virtual {p1}, Landroid/net/VpnManager;->updateLockdownVpn()Z

    .line 749
    :cond_aa
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    :try_end_ad
    .catchall {:try_start_5c .. :try_end_ad} :catchall_b3

    .line 751
    :try_start_ad
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_bc
    .catchall {:try_start_ad .. :try_end_b0} :catchall_d9

    .line 753
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_b3
    move-exception p1

    .line 751
    :try_start_b4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 752
    throw p1
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b8} :catch_bc
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_d9

    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_37

    :catch_bc
    move-exception p1

    :try_start_bd
    const-string p2, "VpnPolicy"

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error deleting VPN profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_bd .. :try_end_d7} :catchall_d9

    .line 761
    :cond_d7
    monitor-exit p0

    return v1

    :catchall_d9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized disconnect()V
    .registers 7

    monitor-enter p0

    .line 1560
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    if-nez v0, :cond_8

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getVpnManager()V

    .line 1563
    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    if-eqz v0, :cond_2c

    .line 1564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_28
    .catchall {:try_start_1 .. :try_end_10} :catchall_26

    .line 1566
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    const-string v3, "[Legacy VPN]"

    const-string v4, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/VpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_21

    .line 1568
    :try_start_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1569
    throw v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_28
    .catchall {:try_start_1d .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    goto :goto_2e

    :catch_28
    move-exception v0

    .line 1572
    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    .line 1574
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    :goto_2e
    monitor-exit p0

    throw v0
.end method

.method public disconnectActiveVpnConnections()V
    .registers 1

    .line 1578
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    return-void
.end method

.method public final enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 143
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndKnoxVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5

    .line 138
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_VPN"

    const-string v2, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 133
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_VPN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceSystemUser()V
    .registers 2

    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_b

    return-void

    .line 152
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by system user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 128
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_VPN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAllVpnSettingsProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 968
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndKnoxVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p1, 0x0

    .line 971
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 974
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 975
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isKnoxVpnProfile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 976
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 979
    :cond_2c
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getJsonResultFromSettingsVpnProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_31

    goto :goto_4c

    :catch_31
    move-exception p0

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllSettingsVpnProfiles exception result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VpnPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    return-object p1
.end method

.method public getAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 4

    const-string p1, "VpnPolicy"

    const-string v0, "getAlwaysOnProfile"

    .line 1671
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "LOCKDOWN_VPN"

    .line 1674
    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 1678
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 1679
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1680
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    .line 1681
    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1682
    iget-object p0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    goto :goto_3c

    :cond_3b
    const/4 p0, 0x0

    :goto_3c
    return-object p0
.end method

.method public declared-synchronized getCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 671
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 673
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_37

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 674
    monitor-exit p0

    return-object v0

    .line 676
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 677
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 678
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 679
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 680
    iget-object p1, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_37

    monitor-exit p0

    return-object p1

    .line 684
    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1168
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1160
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 120
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1176
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 460
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 461
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_37

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 462
    monitor-exit p0

    return-object v0

    .line 464
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 465
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 466
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 467
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 468
    iget-object p1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_37

    monitor-exit p0

    return-object p1

    .line 472
    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1331
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1332
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 1334
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_30

    .line 1335
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    .line 1336
    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1337
    iget-object p0, p1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getJsonResultFromSettingsVpnProfiles(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2014
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2016
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 2017
    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->decrypt(Lcom/android/internal/net/VpnProfile;)V

    .line 2018
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2019
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "name"

    .line 2020
    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "server"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 2021
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "username"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 2022
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "password"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 2023
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "mppe"

    iget-boolean v5, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 2024
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "searchDomains"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 2025
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "dnsServer"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 2026
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "frwRoutes"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 2027
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    iget v5, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 2028
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "l2tp_secret"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 2029
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "ipsec_identifier"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 2030
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "ipsec_pre_shared_key"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 2031
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "ipsec_user_certificate"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 2032
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "ipsec_server_certificate"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 2033
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "ipsec_ca_certificate"

    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 2034
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "ocspServerUrl"

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 2035
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ANDROID_VPN_PARAMETERS"

    .line 2036
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2038
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_bb} :catch_bd

    goto/16 :goto_9

    :catch_bd
    move-exception p1

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getJsonResultFromSettingsVpnProfiles exception result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VpnPolicy"

    .line 2041
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    return-object p0
.end method

.method public declared-synchronized getL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 824
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 825
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3d

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 826
    monitor-exit p0

    return-object v0

    .line 828
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 829
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3b

    const/4 v1, 0x0

    .line 830
    :goto_1a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 831
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 833
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_3d

    monitor-exit p0

    return-object p1

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 837
    :cond_3b
    monitor-exit p0

    return-object v0

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 422
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_33

    const/4 p1, 0x0

    if-nez p2, :cond_9

    .line 424
    monitor-exit p0

    return-object p1

    .line 426
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 427
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_31

    .line 428
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 429
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 430
    iget-object p1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_33

    monitor-exit p0

    return-object p1

    .line 434
    :cond_31
    monitor-exit p0

    return-object p1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    .line 1940
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1942
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x0

    .line 1943
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public declared-synchronized getPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 628
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 629
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 630
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 631
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 632
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 633
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 634
    iget-object p1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_39

    monitor-exit p0

    return-object p1

    :cond_36
    const/4 p1, 0x0

    .line 639
    monitor-exit p0

    return-object p1

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_53

    .line 1882
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_53

    .line 1888
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_53

    .line 1889
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_53

    .line 1890
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 1891
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_30

    if-eqz v2, :cond_1a

    move-object v0, v1

    goto :goto_53

    :catch_30
    move-exception p0

    .line 1899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getProfileByName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VpnPolicy"

    .line 1899
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_53
    return-object v0
.end method

.method public final getProfileIndexFromName(Ljava/lang/String;)I
    .registers 4

    .line 1403
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1404
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    const/4 v0, 0x0

    .line 1405
    :goto_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1406
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_25

    if-eqz v1, :cond_22

    return v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :catch_25
    move-exception p0

    .line 1412
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public final getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1241
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1242
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_7b

    .line 1244
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7b

    .line 1245
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    .line 1246
    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1247
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    const-string v0, " "

    if-eqz p3, :cond_69

    const/4 v1, 0x1

    if-eq p3, v1, :cond_58

    const/4 v1, 0x2

    if-eq p3, v1, :cond_47

    const/4 p2, 0x3

    if-eq p3, p2, :cond_41

    goto :goto_7a

    .line 1269
    :cond_41
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 1260
    :cond_47
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p3, p1

    :goto_4e
    if-ge p2, p3, :cond_7a

    aget-object v0, p1, p2

    .line 1261
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_4e

    .line 1255
    :cond_58
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p3, p1

    :goto_5f
    if-ge p2, p3, :cond_7a

    aget-object v0, p1, p2

    .line 1256
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_5f

    .line 1250
    :cond_69
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p3, p1

    :goto_70
    if-ge p2, p3, :cond_7a

    aget-object v0, p1, p2

    .line 1251
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_70

    :cond_7a
    :goto_7a
    return-object p0

    :cond_7b
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 441
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 442
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_37

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 443
    monitor-exit p0

    return-object v0

    .line 445
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 446
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 447
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 448
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 449
    iget-object p1, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_37

    monitor-exit p0

    return-object p1

    .line 453
    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    monitor-enter p0

    .line 479
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_a5

    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 481
    monitor-exit p0

    return-object v0

    :cond_a
    const/4 v1, 0x0

    .line 485
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    .line 486
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_31

    .line 487
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 488
    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_a5

    if-eqz v4, :cond_1c

    move v1, v3

    :cond_31
    if-nez v1, :cond_35

    .line 496
    monitor-exit p0

    return-object v0

    .line 499
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    if-nez v1, :cond_3c

    .line 500
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getVpnManager()V

    .line 502
    :cond_3c
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    if-eqz v1, :cond_9b

    .line 503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 504
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 505
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v1, :cond_5e

    .line 508
    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    :cond_5e
    move-object p1, v0

    :goto_5f
    if-eqz p1, :cond_97

    .line 510
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 511
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget p1, p1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-eqz p1, :cond_93

    if-eq p1, v3, :cond_8f

    const/4 p2, 0x2

    if-eq p1, p2, :cond_8b

    const/4 p2, 0x3

    if-eq p1, p2, :cond_87

    const/4 p2, 0x4

    if-eq p1, p2, :cond_83

    const/4 p2, 0x5

    if-eq p1, p2, :cond_7f

    const-string p1, "IDLE"
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_7d} :catch_9f
    .catchall {:try_start_35 .. :try_end_7d} :catchall_a5

    .line 525
    monitor-exit p0

    return-object p1

    :cond_7f
    :try_start_7f
    const-string p1, "FAILED"
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_81} :catch_9f
    .catchall {:try_start_7f .. :try_end_81} :catchall_a5

    .line 523
    monitor-exit p0

    return-object p1

    :cond_83
    :try_start_83
    const-string p1, "TIMEOUT"
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_85} :catch_9f
    .catchall {:try_start_83 .. :try_end_85} :catchall_a5

    .line 521
    monitor-exit p0

    return-object p1

    :cond_87
    :try_start_87
    const-string p1, "CONNECTED"
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_89} :catch_9f
    .catchall {:try_start_87 .. :try_end_89} :catchall_a5

    .line 519
    monitor-exit p0

    return-object p1

    :cond_8b
    :try_start_8b
    const-string p1, "CONNECTING"
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8d} :catch_9f
    .catchall {:try_start_8b .. :try_end_8d} :catchall_a5

    .line 517
    monitor-exit p0

    return-object p1

    :cond_8f
    :try_start_8f
    const-string p1, "INITIALIZING"
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_91} :catch_9f
    .catchall {:try_start_8f .. :try_end_91} :catchall_a5

    .line 515
    monitor-exit p0

    return-object p1

    :cond_93
    :try_start_93
    const-string p1, "DISCONNECTED"
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_95} :catch_9f
    .catchall {:try_start_93 .. :try_end_95} :catchall_a5

    .line 513
    monitor-exit p0

    return-object p1

    :cond_97
    :try_start_97
    const-string p1, "IDLE"
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_99} :catch_9f
    .catchall {:try_start_97 .. :try_end_99} :catchall_a5

    .line 528
    monitor-exit p0

    return-object p1

    :cond_9b
    :try_start_9b
    const-string p1, "IDLE"
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9d} :catch_9f
    .catchall {:try_start_9b .. :try_end_9d} :catchall_a5

    .line 531
    monitor-exit p0

    return-object p1

    :catch_9f
    move-exception p1

    .line 533
    :try_start_a0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a5

    .line 534
    monitor-exit p0

    return-object v0

    :catchall_a5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSupportedConnectionTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1950
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "IPSEC_IKEV2_PSK"

    .line 1951
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "IPSEC_IKEV2_RSA"

    .line 1952
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public declared-synchronized getType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 381
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 382
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 384
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 385
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 386
    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    if-eqz v0, :cond_50

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    const/4 v1, 0x3

    if-eq v0, v1, :cond_44

    const/4 v1, 0x4

    if-eq v0, v1, :cond_40

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3c

    goto :goto_14

    :cond_3c
    const-string p1, "IPSEC_HYBRID_RSA"
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_57

    .line 398
    monitor-exit p0

    return-object p1

    :cond_40
    :try_start_40
    const-string p1, "IPSEC_XAUTH_RSA"
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_57

    .line 396
    monitor-exit p0

    return-object p1

    :cond_44
    :try_start_44
    const-string p1, "IPSEC_XAUTH_PSK"
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_57

    .line 394
    monitor-exit p0

    return-object p1

    :cond_48
    :try_start_48
    const-string p1, "L2TP_IPSEC"
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_57

    .line 392
    monitor-exit p0

    return-object p1

    :cond_4c
    :try_start_4c
    const-string p1, "L2TP_IPSEC_PSK"
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_57

    .line 390
    monitor-exit p0

    return-object p1

    :cond_50
    :try_start_50
    const-string p1, "PPTP"
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_57

    .line 388
    monitor-exit p0

    return-object p1

    :cond_54
    const/4 p1, 0x0

    .line 415
    monitor-exit p0

    return-object p1

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 768
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 769
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_37

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 770
    monitor-exit p0

    return-object v0

    .line 772
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 773
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 774
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 775
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 776
    iget-object p1, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_37

    monitor-exit p0

    return-object p1

    .line 780
    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 542
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 543
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 544
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 545
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 546
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 547
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 548
    iget-object p1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_35

    monitor-exit p0

    return-object p1

    :cond_32
    const/4 p1, 0x0

    .line 553
    monitor-exit p0

    return-object p1

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserNameById(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 561
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 562
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "VPN"

    const-string v1, "VpnID"

    const-string v2, "UsrName"

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserPwd(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 580
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 581
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 582
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 583
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 584
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 585
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 586
    iget-object p1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_35

    monitor-exit p0

    return-object p1

    :cond_32
    const/4 p1, 0x0

    .line 591
    monitor-exit p0

    return-object p1

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserPwdById(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 571
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 572
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "VPN"

    const-string v1, "VpnID"

    const-string v2, "UsrPwd"

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getVPNList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .registers 5

    .line 945
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 946
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_b

    return-object p1

    .line 952
    :cond_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_12

    return-object p1

    .line 958
    :cond_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 960
    :goto_1a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 961
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2f
    return-object p1
.end method

.method public final declared-synchronized getVpnManager()V
    .registers 3

    monitor-enter p0

    .line 1551
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/VpnManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/VpnManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_10
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_14

    :catchall_e
    move-exception v0

    goto :goto_16

    :catch_10
    move-exception v0

    .line 1553
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    .line 1555
    :goto_14
    monitor-exit p0

    return-void

    :goto_16
    monitor-exit p0

    throw v0
.end method

.method public isAdminProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    .line 920
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 921
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "VPN"

    const-string v0, "VpnID"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_11

    return p1

    :cond_11
    if-nez p2, :cond_14

    return p1

    .line 929
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_27

    goto :goto_18

    .line 934
    :cond_27
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_2f
    return p1
.end method

.method public final isKnoxVpnProfile(Ljava/lang/String;)Z
    .registers 4

    .line 1828
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "profileName"

    .line 1829
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "VpnProfileInfo"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public isL2TPSecretEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    .line 844
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 845
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    return v0

    .line 848
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 849
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3e

    move p1, v0

    .line 850
    :goto_18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3e

    .line 851
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 853
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/net/VpnProfile;

    iget-object p0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_3b
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_3e
    return v0
.end method

.method public isOnlySecureConnectionsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 1369
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1370
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "RESTRICTION"

    const-string v0, "allowOnlySecureVPN"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1371
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPPTPEncryptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    .line 894
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 896
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    return v0

    .line 899
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 900
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_43

    move p1, v0

    .line 901
    :goto_18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_43

    .line 902
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 904
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/net/VpnProfile;

    iget p2, p2, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez p2, :cond_3f

    .line 905
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/net/VpnProfile;

    iget-boolean p0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    return p0

    :cond_3f
    return v0

    :cond_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_43
    return v0
.end method

.method public final isProfileTypeAllowed(Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z
    .registers 5

    const-string/jumbo p0, "restriction_policy"

    .line 1993
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v0, 0x1

    if-eqz p0, :cond_51

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1995
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 1998
    iget-object p0, p1, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_52

    goto :goto_4d

    :sswitch_22
    const-string v1, "IPSEC_IKEV2_RSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_4d

    :cond_2b
    const/4 p1, 0x3

    goto :goto_4d

    :sswitch_2d
    const-string v1, "IPSEC_IKEV2_PSK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_4d

    :cond_36
    const/4 p1, 0x2

    goto :goto_4d

    :sswitch_38
    const-string v1, "IPSEC_XAUTH_RSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_4d

    :cond_41
    move p1, v0

    goto :goto_4d

    :sswitch_43
    const-string v1, "IPSEC_XAUTH_PSK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_4d

    :cond_4c
    move p1, v2

    :goto_4d
    packed-switch p1, :pswitch_data_64

    move v0, v2

    :cond_51
    :pswitch_51
    return v0

    :sswitch_data_52
    .sparse-switch
        -0x4908f06c -> :sswitch_43
        -0x4908e8f4 -> :sswitch_38
        -0x366fb8ad -> :sswitch_2d
        -0x366fb135 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method public isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 4

    const-string p1, "VpnPolicy"

    const-string/jumbo v0, "isUserAddProfilesAllowed"

    .line 1799
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "VPN"

    const-string v0, "allowUserAddProfiles"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1804
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p2, :cond_24

    if-nez p0, :cond_24

    const p1, 0x1040ba9

    .line 1807
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_24
    return p0
.end method

.method public isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 4

    const-string p1, "VpnPolicy"

    const-string/jumbo v0, "isUserChangeProfilesAllowed"

    .line 1763
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "VPN"

    const-string v0, "allowUserChangeProfiles"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1768
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p2, :cond_24

    if-nez p0, :cond_24

    const p1, 0x1040baa

    .line 1771
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_24
    return p0
.end method

.method public isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 4

    const-string p1, "VpnPolicy"

    const-string/jumbo v0, "isUserSetAlwaysOnAllowed"

    .line 1728
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "VPN"

    const-string v0, "allowUserSetAlwaysOn"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1733
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p2, :cond_24

    if-nez p0, :cond_24

    const p1, 0x1040bab

    .line 1736
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_24
    return p0
.end method

.method public final isValidAlwaysOnProfile(Lcom/android/internal/net/VpnProfile;)Z
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_e

    .line 1819
    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    if-eqz v0, :cond_e

    .line 1820
    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result p1

    if-ne p1, p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    .line 1916
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1919
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    .line 1922
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    :cond_14
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final releaseAlwaysOnVPNLockdown(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 11

    const-string p0, "LOCKDOWN_VPN"

    .line 1645
    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 1649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1652
    :try_start_f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "VpnPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has disabled VPN Always On mode."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1655
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1651
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_3a

    .line 1657
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    :catchall_3a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1658
    throw p0

    :cond_3f
    :goto_3f
    return p0
.end method

.method public final removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    .registers 6

    :try_start_0
    const-string v0, "VpnID"

    .line 1499
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1502
    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1505
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "VPN"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1506
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VPN_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p0

    .line 1508
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30
    return-void
.end method

.method public final replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1516
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 1517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z

    .line 1518
    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/net/VpnProfile;

    if-eqz p2, :cond_33

    .line 1520
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z

    :cond_33
    return-void
.end method

.method public final retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "VPN_"

    .line 998
    invoke-static {v1}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 999
    array-length v3, v2

    if-lez v3, :cond_3d

    .line 1000
    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_3d

    aget-object v5, v2, v4

    .line 1001
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 1002
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_3a

    .line 1004
    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 1006
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_3d
    return-object v0
.end method

.method public final saveAlwaysOnProfileToDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    const-string p2, ""

    .line 1865
    :goto_5
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "vpnAlwaysOnProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    .line 1868
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1869
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "vpnAlwaysOnOwner"

    .line 1868
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    and-int/2addr p0, p2

    return p0
.end method

.method public final saveProfileToStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "VpnID"

    const-string v1, "adminUid"

    const/4 v2, 0x0

    .line 1470
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/android/internal/net/VpnProfile;->encode(Z)[B

    move-result-object v5

    invoke-static {v3, v5}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1473
    iget-object v5, p2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1474
    iget-object v6, p2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserPwd(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1475
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 1479
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v8, v7, v4

    .line 1481
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1482
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1483
    iget-object p2, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UsrName"

    .line 1484
    invoke-virtual {v4, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UsrPwd"

    .line 1485
    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "VPN"

    invoke-virtual {p0, p1, v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_67} :catch_68

    return p0

    :catch_68
    move-exception p0

    .line 1489
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6c
    return v2
.end method

.method public setAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 13

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAlwaysOnProfile - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1596
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_aa

    if-eqz p2, :cond_84

    .line 1598
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_84

    .line 1601
    :cond_2b
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 1602
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isValidAlwaysOnProfile(Lcom/android/internal/net/VpnProfile;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 1604
    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-static {v1, v0}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1610
    :try_start_4c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "VpnPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has enabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " VPN profile to Always On mode."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1613
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1609
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_7b
    .catchall {:try_start_4c .. :try_end_7b} :catchall_7f

    .line 1615
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_88

    :catchall_7f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1616
    throw p0

    .line 1599
    :cond_84
    :goto_84
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->releaseAlwaysOnVPNLockdown(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    :cond_88
    :goto_88
    move v1, v0

    :cond_89
    if-eqz v1, :cond_aa

    .line 1624
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    .line 1627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1629
    :try_start_93
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    if-nez v0, :cond_9a

    .line 1630
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getVpnManager()V

    .line 1632
    :cond_9a
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mVpnManager:Landroid/net/VpnManager;

    if-eqz p0, :cond_a1

    .line 1633
    invoke-virtual {p0}, Landroid/net/VpnManager;->updateLockdownVpn()Z
    :try_end_a1
    .catchall {:try_start_93 .. :try_end_a1} :catchall_a5

    .line 1635
    :cond_a1
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_aa

    :catchall_a5
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1636
    throw p0

    :cond_aa
    :goto_aa
    return v1
.end method

.method public declared-synchronized setCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    .line 648
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 649
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 651
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 652
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 653
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 654
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 655
    iput-object p3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_33

    .line 657
    :try_start_2a
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f
    .catchall {:try_start_2a .. :try_end_2d} :catchall_33

    const/4 v1, 0x1

    goto :goto_31

    .line 660
    :catch_2f
    monitor-exit p0

    return v1

    .line 664
    :cond_31
    :goto_31
    monitor-exit p0

    return v1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1164
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public setDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1156
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 7

    monitor-enter p0

    .line 866
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 867
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3a

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 868
    monitor-exit p0

    return v1

    .line 871
    :cond_e
    :try_start_e
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 872
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 873
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_38

    .line 874
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    if-eqz v0, :cond_38

    .line 875
    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v2, :cond_38

    .line 877
    iput-boolean p3, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_3a

    .line 879
    :try_start_2c
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_32
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    const/4 p1, 0x1

    .line 880
    monitor-exit p0

    return p1

    :catch_32
    move-exception p1

    .line 882
    :try_start_33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    .line 883
    monitor-exit p0

    return v1

    .line 887
    :cond_38
    monitor-exit p0

    return v1

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1172
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    monitor-enter p0

    .line 207
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_84

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 208
    monitor-exit p0

    return v1

    .line 210
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 211
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_84

    .line 213
    :try_start_13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 215
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 216
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_82

    .line 217
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    if-eqz v2, :cond_82

    .line 218
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_82

    const/4 v3, 0x1

    .line 219
    invoke-virtual {v2, v3}, Lcom/android/internal/net/VpnProfile;->encode(Z)[B

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object p3

    if-eqz p3, :cond_82

    .line 220
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v2

    if-nez v2, :cond_82

    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    const-string p2, "adminUid"

    .line 222
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "VpnID"

    .line 223
    iget-object v2, p3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "adminUid"

    const-string v2, "VpnID"

    .line 224
    filled-new-array {p2, v2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 225
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    iget-object p1, p3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object p1, v2, v3

    .line 228
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p3, "VPN"

    invoke-virtual {p1, p3, p2, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_7c} :catch_7e
    .catchall {:try_start_13 .. :try_end_7c} :catchall_84

    monitor-exit p0

    return p1

    :catch_7e
    move-exception p1

    .line 235
    :try_start_7f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_84

    .line 238
    :cond_82
    monitor-exit p0

    return v1

    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 1308
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1309
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_43

    if-eqz p3, :cond_43

    .line 1310
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 1311
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 1312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 1313
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1314
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1315
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 1317
    :try_start_37
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3c

    const/4 p0, 0x1

    return p0

    :catch_3c
    const-string p0, "VpnPolicy"

    const-string p1, "VpnInfoPolicy.setIpSecIdentifier() - failed to save profile !"

    .line 1319
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return v1
.end method

.method public declared-synchronized setL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 8

    monitor-enter p0

    .line 789
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 790
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_44

    .line 791
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 792
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 793
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 794
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    if-eqz v0, :cond_42

    if-eqz p3, :cond_2f

    .line 798
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 799
    iput-object p4, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto :goto_35

    :cond_2f
    if-nez p3, :cond_40

    const-string p3, ""

    .line 801
    iput-object p3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_46

    .line 806
    :goto_35
    :try_start_35
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3b
    .catchall {:try_start_35 .. :try_end_38} :catchall_46

    const/4 p1, 0x1

    .line 807
    monitor-exit p0

    return p1

    :catch_3b
    move-exception p1

    .line 809
    :try_start_3c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_46

    goto :goto_44

    .line 803
    :cond_40
    monitor-exit p0

    return v1

    .line 812
    :cond_42
    monitor-exit p0

    return v1

    .line 816
    :cond_44
    :goto_44
    monitor-exit p0

    return v1

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 245
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_46

    .line 247
    :try_start_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 248
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_43

    .line 249
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 250
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 252
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    if-eqz v0, :cond_43

    .line 256
    iput-object p3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 257
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result p3

    if-nez p3, :cond_43

    .line 258
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3f
    .catchall {:try_start_5 .. :try_end_3c} :catchall_46

    const/4 p1, 0x1

    .line 259
    monitor-exit p0

    return p1

    :catch_3f
    move-exception p1

    .line 265
    :try_start_40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_46

    :cond_43
    const/4 p1, 0x0

    .line 267
    monitor-exit p0

    return p1

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1927
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p3, :cond_a

    const-string p3, ""

    .line 1933
    :cond_a
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x3

    .line 1934
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    .line 600
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 602
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_35

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_37

    if-nez v0, :cond_35

    .line 605
    :try_start_12
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 606
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 607
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 608
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    if-eqz v0, :cond_33

    .line 612
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 613
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_33} :catch_35
    .catchall {:try_start_12 .. :try_end_33} :catchall_37

    :cond_33
    const/4 p1, 0x1

    move v1, p1

    .line 621
    :catch_35
    :cond_35
    monitor-exit p0

    return v1

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setProfileId()J
    .registers 7

    .line 1447
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "VPN_"

    .line 1448
    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    const/4 v2, 0x0

    move v3, v2

    .line 1450
    :goto_e
    array-length v4, p0

    if-ge v3, v4, :cond_24

    .line 1451
    aget-object v4, p0, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_25

    if-eqz v4, :cond_21

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    move v3, v2

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_24
    return-wide v0

    :catch_25
    move-exception p0

    .line 1459
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1182
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_ac

    if-nez p3, :cond_f

    goto/16 :goto_ac

    .line 1187
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1188
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_29

    return v1

    .line 1192
    :cond_29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 1193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 1195
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1196
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_46

    .line 1197
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_46
    if-nez p4, :cond_55

    .line 1199
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_55

    invoke-virtual {p0, p3, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_55

    return v1

    :cond_55
    const/4 v0, 0x2

    if-ne p4, v0, :cond_65

    .line 1202
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_65

    invoke-virtual {p0, p3, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_65

    return v1

    :cond_65
    const/4 v3, 0x3

    if-ne p4, v3, :cond_75

    .line 1205
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_75

    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    return v1

    .line 1209
    :cond_75
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 1210
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_ac

    .line 1211
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ac

    .line 1212
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    if-eqz v4, :cond_ac

    if-eqz p4, :cond_9f

    if-eq p4, v2, :cond_9c

    if-eq p4, v0, :cond_99

    if-eq p4, v3, :cond_96

    goto :goto_a1

    .line 1225
    :cond_96
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    goto :goto_a1

    .line 1222
    :cond_99
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    goto :goto_a1

    .line 1219
    :cond_9c
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    goto :goto_a1

    .line 1216
    :cond_9f
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 1229
    :goto_a1
    :try_start_a1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    return v2

    :catch_a5
    const-string p0, "VpnPolicy"

    const-string p1, "VpnInfoPolicy.setProfileProperty() - Error to save profile !"

    .line 1231
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    :goto_ac
    return v1
.end method

.method public declared-synchronized setServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    .line 274
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4a

    .line 276
    :try_start_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 277
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v0

    .line 278
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_47

    .line 280
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    if-eqz v1, :cond_47

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 285
    iput-object p3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    if-eqz v2, :cond_3d

    .line 286
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isValidAlwaysOnProfile(Lcom/android/internal/net/VpnProfile;)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 288
    :cond_3d
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_43
    .catchall {:try_start_5 .. :try_end_40} :catchall_4a

    const/4 p1, 0x1

    .line 289
    monitor-exit p0

    return p1

    :catch_43
    move-exception p1

    .line 295
    :try_start_44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4a

    :cond_47
    const/4 p1, 0x0

    .line 297
    monitor-exit p0

    return p1

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    .line 693
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 694
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 696
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 697
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 698
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 699
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 700
    iput-object p3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_33

    .line 702
    :try_start_2a
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f
    .catchall {:try_start_2a .. :try_end_2d} :catchall_33

    const/4 v1, 0x1

    goto :goto_31

    .line 705
    :catch_2f
    monitor-exit p0

    return v1

    .line 709
    :cond_31
    :goto_31
    monitor-exit p0

    return v1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    .line 305
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 306
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 307
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_7e

    const/4 v2, 0x0

    if-nez v1, :cond_7c

    .line 309
    :try_start_11
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 310
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 311
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7c

    .line 312
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    if-eqz v1, :cond_7c

    .line 314
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_35

    .line 315
    iput-object p3, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 316
    iput-boolean v4, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    goto :goto_3b

    .line 318
    :cond_35
    iput-boolean v2, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    const-string p3, ""

    .line 319
    iput-object p3, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 321
    :goto_3b
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    const-string p2, "adminUid"

    .line 322
    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "VpnID"

    .line 323
    iget-object p3, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UsrName"

    .line 324
    iget-object p3, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "adminUid"

    const-string p3, "VpnID"

    .line 325
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 328
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 329
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    iget-object p1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object p1, p3, v4

    .line 333
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    invoke-virtual {p1, v1, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p1
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_76} :catch_78
    .catchall {:try_start_11 .. :try_end_76} :catchall_7e

    monitor-exit p0

    return p1

    :catch_78
    move-exception p1

    .line 338
    :try_start_79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7e

    .line 341
    :cond_7c
    monitor-exit p0

    return v2

    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    .line 349
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_71

    const/4 v0, 0x0

    if-eqz p3, :cond_6f

    .line 351
    :try_start_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 352
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result p2

    .line 353
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 354
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6f

    .line 355
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    if-eqz v1, :cond_6f

    .line 359
    iput-object p3, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 360
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 361
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string p3, "UsrPwd"

    .line 362
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "adminUid"

    .line 363
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "VpnID"

    .line 364
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "adminUid"

    const-string v2, "VpnID"

    .line 365
    filled-new-array {p3, v2}, [Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 366
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v1, v2, p1

    .line 367
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    invoke-virtual {p1, v1, p3, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p1
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_69} :catch_6b
    .catchall {:try_start_8 .. :try_end_69} :catchall_71

    monitor-exit p0

    return p1

    :catch_6b
    move-exception p1

    .line 372
    :try_start_6c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_71

    .line 374
    :cond_6f
    monitor-exit p0

    return v0

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .registers 2

    monitor-enter p0

    const/4 p1, 0x0

    .line 1531
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    const/4 p1, 0x0

    .line 1546
    monitor-exit p0

    return p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final validateAddresses(Ljava/lang/String;Z)Z
    .registers 12

    const/4 p0, 0x0

    :try_start_1
    const-string v0, " "

    .line 1282
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v1, p0

    :goto_9
    const/4 v2, 0x1

    if-ge v1, v0, :cond_61

    aget-object v3, p1, v1

    .line 1283
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_5d

    :cond_15
    const/4 v4, 0x2

    const/16 v5, 0x20

    if-eqz p2, :cond_2c

    const-string v6, "/"

    .line 1289
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1290
    aget-object v6, v3, p0

    .line 1291
    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v8, v6

    move v6, v3

    move-object v3, v8

    goto :goto_2d

    :cond_2c
    move v6, v5

    .line 1293
    :goto_2d
    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v7, 0x3

    .line 1294
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v7

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    aget-byte v4, v3, p0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    .line 1296
    array-length v3, v3
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_62

    const/4 v4, 0x4

    if-ne v3, v4, :cond_60

    if-ltz v6, :cond_60

    if-gt v6, v5, :cond_60

    if-ge v6, v5, :cond_5d

    shl-int/2addr v2, v6

    if-eqz v2, :cond_5d

    goto :goto_60

    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_60
    :goto_60
    return p0

    :cond_61
    return v2

    :catch_62
    return p0
.end method

.method public final validateUrl(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_10

    .line 1960
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 1962
    :try_start_9
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 p0, 0x0

    :cond_10
    :goto_10
    return p0
.end method
