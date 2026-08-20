.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "KnoxVpnApiValidation.java"


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "KnoxVpnApiValidation"

.field public static final TETHER_AUTH_TAG:Ljava/lang/String; = "KnoxVpnTetherAuthentication"

.field public static mContext:Landroid/content/Context;

.field public static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field public static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field public static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field public static mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field public mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field public mUserMgr:Landroid/os/UserManager;

.field public vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 84
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->DBG:Z

    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 90
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 92
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 94
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 98
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 100
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 102
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    .line 106
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 108
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 109
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-void
.end method

.method public static getEnterpriseDeviceManager()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 1

    .line 130
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_10

    const-string v0, "enterprise_policy"

    .line 131
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 133
    :cond_10
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v1, :cond_e

    .line 114
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 116
    :cond_e
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 1

    .line 126
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method


# virtual methods
.method public activateVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)I
    .registers 6

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p2, :cond_70

    .line 745
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_70

    .line 750
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_14

    const/16 p0, 0x6c

    return p0

    .line 755
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p2

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq p2, p1, :cond_1f

    const/16 p0, 0x70

    return p0

    .line 761
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result p1

    if-nez p1, :cond_28

    const/16 p0, 0x6d

    return p0

    :cond_28
    if-eqz p3, :cond_34

    .line 768
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3d

    const/16 p0, 0x73

    return p0

    .line 774
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_40

    if-nez p0, :cond_3d

    const/16 p0, 0x74

    return p0

    :cond_3d
    const/16 p0, 0x64

    goto :goto_5b

    :catch_40
    move-exception p0

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at activateVpnProfileValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 785
    :goto_5b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "activateVpnProfileValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_70
    :goto_70
    const/16 p0, 0x68

    return p0
.end method

.method public addAllContainerPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)I
    .registers 9

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p3, :cond_cd

    .line 1188
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_a

    goto/16 :goto_cd

    .line 1193
    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_15

    const/16 p0, 0x6c

    return p0

    .line 1198
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_20

    const/16 p0, 0x70

    return p0

    .line 1202
    :cond_20
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1203
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v3

    const/16 v4, 0x72

    if-eqz v2, :cond_38

    if-nez v3, :cond_38

    const-string p0, "EMM present in work profile trying to configure vpn for user 0"

    .line 1206
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1211
    :cond_38
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_41

    const/16 p0, 0x6d

    return p0

    .line 1217
    :cond_41
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    const/16 p0, 0x2be

    return p0

    .line 1223
    :cond_4b
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v1

    if-nez v1, :cond_54

    const/16 p0, 0x1f5

    return p0

    .line 1229
    :cond_54
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 1241
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 1242
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iget v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eq v1, v2, :cond_6d

    return v4

    .line 1258
    :cond_6d
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1259
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v1, p3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_82

    const/16 p0, 0x7b

    return p0

    .line 1265
    :cond_82
    iget-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {p3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result p3

    if-eqz p3, :cond_9a

    .line 1266
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result p0

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_92} :catch_9d

    if-ne p0, p1, :cond_97

    const/16 p0, 0x75

    return p0

    :cond_97
    const/16 p0, 0x76

    return p0

    :cond_9a
    const/16 p0, 0x64

    goto :goto_b8

    :catch_9d
    move-exception p0

    .line 1276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at addAllContainerPackagesToVpnValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 1279
    :goto_b8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addAllContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_cd
    :goto_cd
    const/16 p0, 0x68

    return p0
.end method

.method public addAllPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 7

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p2, :cond_ba

    .line 1360
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_a

    goto/16 :goto_ba

    .line 1365
    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_15

    const/16 p0, 0x6c

    return p0

    .line 1370
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_20

    const/16 p0, 0x70

    return p0

    .line 1374
    :cond_20
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1375
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v3

    if-eqz v2, :cond_38

    if-nez v3, :cond_38

    const/16 p0, 0x72

    const-string p1, "EMM present in work profile trying to configure vpn for user 0"

    .line 1378
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1383
    :cond_38
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_41

    const/16 p0, 0x6d

    return p0

    .line 1389
    :cond_41
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    const/16 p0, 0x2be

    return p0

    .line 1395
    :cond_4b
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v1

    if-nez v1, :cond_54

    const/16 p0, 0x1f5

    return p0

    .line 1401
    :cond_54
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1402
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_6b

    const/16 p0, 0x7b

    return p0

    .line 1408
    :cond_6b
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result p2

    if-eqz p2, :cond_87

    .line 1409
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget p2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result p0

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7f} :catch_8a

    if-ne p0, p1, :cond_84

    const/16 p0, 0x75

    return p0

    :cond_84
    const/16 p0, 0x76

    return p0

    :cond_87
    const/16 p0, 0x64

    goto :goto_a5

    :catch_8a
    move-exception p0

    .line 1419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at addAllPackagesToVpnValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 1422
    :goto_a5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addAllPackagesToVpnValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_ba
    :goto_ba
    const/16 p0, 0x68

    return p0
.end method

.method public addContainerPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "KnoxVpnApiValidation"

    if-eqz v4, :cond_1de

    if-eqz v3, :cond_1de

    .line 832
    :try_start_10
    array-length v7, v3

    const/4 v8, 0x1

    if-lt v7, v8, :cond_1de

    iget-object v7, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_1a

    goto/16 :goto_1de

    .line 837
    :cond_1a
    iget-object v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    if-nez v7, :cond_25

    const/16 v0, 0x6c

    return v0

    .line 842
    :cond_25
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v9, v10, :cond_30

    const/16 v0, 0x70

    return v0

    .line 846
    :cond_30
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 847
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v10

    const/16 v11, 0x72

    if-eqz v9, :cond_48

    if-nez v10, :cond_48

    const-string v0, "EMM present in work profile trying to configure vpn for user 0"

    .line 850
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 855
    :cond_48
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v9

    if-nez v9, :cond_51

    const/16 v0, 0x6d

    return v0

    .line 861
    :cond_51
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result v9

    if-nez v9, :cond_6a

    .line 873
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v9

    .line 874
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    if-eq v9, v10, :cond_6a

    return v11

    .line 890
    :cond_6a
    array-length v9, v3
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_6b} :catch_1ae

    const/4 v11, 0x0

    :goto_6c
    const-string v12, "ADD_ALL_PACKAGES"

    if-ge v11, v9, :cond_117

    :try_start_70
    aget-object v13, v3, v11

    .line 891
    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v2, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    const/16 v14, 0x89

    if-eqz v12, :cond_81

    return v14

    .line 895
    :cond_81
    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v2, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 896
    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 897
    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v15, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v12

    const/16 v15, 0x87

    if-eqz v12, :cond_b5

    .line 898
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b5

    .line 899
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v10

    iget v6, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v10, v6, :cond_aa

    return v15

    .line 902
    :cond_aa
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v6, v10, :cond_b5

    const/16 v0, 0x88

    return v0

    :cond_b5
    if-eqz v12, :cond_ca

    .line 907
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 908
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v6, v10, :cond_ca

    return v15

    .line 913
    :cond_ca
    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v2, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_f2

    .line 915
    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x8b

    if-eqz v10, :cond_e3

    .line 916
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e3

    return v12

    .line 920
    :cond_e3
    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f2

    .line 921
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f2

    return v12

    .line 926
    :cond_f2
    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    move-result v6

    if-eqz v6, :cond_fb

    return v14

    :cond_fb
    const-string v6, "com.knox.vpn.proxyhandler"

    .line 930
    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_104

    return v14

    .line 934
    :cond_104
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_113

    const/16 v0, 0x86

    return v0

    :cond_113
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6c

    .line 941
    :cond_117
    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_1aa

    .line 942
    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v1, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v6, v1, :cond_1a7

    .line 945
    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1aa

    .line 947
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/16 v9, 0x77

    if-nez v6, :cond_149

    .line 948
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_146

    return v9

    :cond_146
    const/16 v1, 0x64

    return v1

    :cond_149
    const/16 v1, 0x64

    .line 956
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v6

    if-ne v6, v8, :cond_154

    const/16 v0, 0x73

    return v0

    .line 960
    :cond_154
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v6

    .line 961
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_15f

    return v9

    .line 965
    :cond_15f
    array-length v8, v3

    const/4 v10, 0x0

    :goto_161
    if-ge v10, v8, :cond_1a1

    aget-object v9, v3, v10

    .line 966
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_19e

    .line 968
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19e

    .line 969
    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removeUidFromExemptList(I)V

    .line 970
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(Ljava/lang/String;I)Z

    .line 971
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "user wide vpn was configured "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "removing uid from exempt list "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19e
    add-int/lit8 v10, v10, 0x1

    goto :goto_161

    .line 975
    :cond_1a1
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUidsToVpnUidRange(Ljava/lang/String;)V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_1a6} :catch_1ae

    goto :goto_1ac

    :cond_1a7
    const/16 v0, 0x78

    return v0

    :cond_1aa
    const/16 v1, 0x64

    :goto_1ac
    move v6, v1

    goto :goto_1c9

    :catch_1ae
    move-exception v0

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at addContainerPackagesToVpnValidation API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x65

    .line 987
    :goto_1c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1de
    :goto_1de
    const/16 v0, 0x68

    return v0
.end method

.method public addPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "KnoxVpnApiValidation"

    if-eqz v3, :cond_201

    if-eqz v2, :cond_201

    const/16 v5, 0x64

    .line 483
    :try_start_10
    array-length v6, v2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_201

    iget-object v6, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1a

    goto/16 :goto_201

    .line 488
    :cond_1a
    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    if-nez v6, :cond_25

    const/16 v0, 0x6c

    return v0

    .line 493
    :cond_25
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_30

    const/16 v0, 0x70

    return v0

    .line 497
    :cond_30
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v9

    if-eqz v8, :cond_48

    if-nez v9, :cond_48

    const/16 v0, 0x72

    const-string v1, "EMM present in work profile trying to configure vpn for user 0"

    .line 501
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 506
    :cond_48
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    if-nez v8, :cond_51

    const/16 v0, 0x6d

    return v0

    .line 512
    :cond_51
    array-length v8, v2
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_52} :catch_1d1

    const/4 v10, 0x0

    :goto_53
    const-string v11, "ADD_ALL_PACKAGES"

    if-ge v10, v8, :cond_106

    :try_start_57
    aget-object v12, v2, v10

    .line 513
    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v14, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v13, v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const/16 v13, 0x89

    if-eqz v11, :cond_6a

    return v13

    .line 517
    :cond_6a
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v14, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v14, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 518
    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 519
    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v11

    const/16 v14, 0x87

    if-eqz v11, :cond_a0

    .line 520
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a0

    .line 521
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v15

    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v15, v9, :cond_95

    return v14

    .line 524
    :cond_95
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v15, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v9, v15, :cond_a0

    const/16 v0, 0x88

    return v0

    :cond_a0
    if-eqz v11, :cond_b5

    .line 529
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 530
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v9, v11, :cond_b5

    return v14

    .line 535
    :cond_b5
    iget-object v9, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v9, v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    if-lez v9, :cond_df

    .line 537
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x8b

    if-eqz v11, :cond_d0

    .line 538
    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d0

    return v14

    .line 542
    :cond_d0
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_df

    .line 543
    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_df

    return v14

    .line 548
    :cond_df
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v14, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v9, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    move-result v9

    if-eqz v9, :cond_ea

    return v13

    :cond_ea
    const-string v9, "com.knox.vpn.proxyhandler"

    .line 552
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f3

    return v13

    .line 556
    :cond_f3
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_102

    const/16 v0, 0x86

    return v0

    :cond_102
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_53

    .line 563
    :cond_106
    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_1ec

    .line 564
    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_1ce

    .line 566
    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1ec

    .line 568
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x77

    if-nez v9, :cond_13c

    .line 569
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_13b

    return v10

    :cond_13b
    return v5

    .line 577
    :cond_13c
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v8

    if-ne v8, v7, :cond_145

    const/16 v0, 0x73

    return v0

    .line 581
    :cond_145
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v7

    .line 582
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_150

    return v10

    .line 586
    :cond_150
    array-length v8, v2

    const/4 v9, 0x0

    :goto_152
    if-ge v9, v8, :cond_1c8

    aget-object v10, v2, v9

    .line 587
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v12, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v12, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1c5

    .line 589
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c5

    .line 590
    invoke-virtual {v6, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removeUidFromExemptList(I)V

    .line 591
    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v3, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(Ljava/lang/String;I)Z

    move-result v12

    .line 592
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "user wide vpn was configured "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "removing uid from exempt list "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x5

    const/4 v13, 0x5

    const/4 v14, 0x1

    .line 594
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "KnoxVpnApiValidation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " added to vpn for profile "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Removed from exempt list"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    move/from16 v18, v10

    .line 593
    invoke-static/range {v12 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_1c5
    add-int/lit8 v9, v9, 0x1

    goto :goto_152

    .line 600
    :cond_1c8
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUidsToVpnUidRange(Ljava/lang/String;)V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_1cd} :catch_1d1

    goto :goto_1ec

    :cond_1ce
    const/16 v0, 0x78

    return v0

    :catch_1d1
    move-exception v0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at addPackagesToVpnValidation API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    .line 613
    :cond_1ec
    :goto_1ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_201
    :goto_201
    const/16 v0, 0x68

    return v0
.end method

.method public allowUsbTetheringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "com.samsung.knox.vpn.tether.auth"

    const-string v5, "KnoxVpnApiValidation"

    const-string/jumbo v6, "key-tether-client-certificate-issued-cn"

    const-string/jumbo v7, "key-tether-client-certificate-issuer-cn"

    const-string/jumbo v8, "key-tether-auth-response-page"

    const-string/jumbo v9, "key-tether-auth-login-page"

    const-string/jumbo v10, "key-tether-ca-certificate"

    const-string/jumbo v11, "key-tether-captive-portal-certificate"

    const-string/jumbo v12, "key-tether-user-certificate"

    const-string/jumbo v13, "key-tether-ca-cert-password"

    const-string/jumbo v14, "key-tether-captive-portal-cert-password"

    if-eqz v2, :cond_415

    .line 1570
    :try_start_29
    iget-object v15, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v15, :cond_2f

    goto/16 :goto_415

    .line 1575
    :cond_2f
    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v15, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v15
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_3e1

    if-nez v15, :cond_3a

    const/16 v0, 0x6c

    return v0

    :cond_3a
    move-object/from16 v16, v5

    .line 1580
    :try_start_3c
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    move-object/from16 v17, v12

    iget v12, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v5, v12, :cond_49

    const/16 v0, 0x70

    return v0

    .line 1586
    :cond_49
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v5

    if-nez v5, :cond_52

    const/16 v0, 0x6d

    return v0

    .line 1592
    :cond_52
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v5

    const/16 v12, 0x385

    if-nez v5, :cond_5b

    return v12

    .line 1598
    :cond_5b
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v5

    move-object/from16 v18, v13

    const/4 v13, 0x1

    if-ne v5, v13, :cond_65

    return v12

    .line 1604
    :cond_65
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v5

    if-ne v5, v13, :cond_6c

    return v12

    .line 1611
    :cond_6c
    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_a9

    .line 1612
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_a9

    .line 1613
    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_84
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1614
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v12

    if-ne v12, v13, :cond_a6

    .line 1615
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a3

    const/16 v0, 0x385

    return v0

    :cond_a3
    const/16 v12, 0x64

    return v12

    :cond_a6
    const/16 v12, 0x385

    goto :goto_84

    :cond_a9
    const/16 v12, 0x64

    if-eqz v3, :cond_3db

    .line 1625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3db

    .line 1628
    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v4, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v5
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_bb} :catch_3df

    const-string v13, "KnoxVpnTetherAuthentication"

    if-nez v5, :cond_c8

    :try_start_bf
    const-string/jumbo v0, "knox vpn usb tether auth application not installed"

    .line 1629
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1634
    :cond_c8
    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v1, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_db

    const-string/jumbo v0, "knox vpn usb tether auth application is not signed with proper key"

    .line 1635
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1640
    :cond_db
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 1642
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f0

    const-string/jumbo v0, "loginpage string value is null"

    .line 1643
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1648
    :cond_f0
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_103

    const-string/jumbo v0, "loginpage string value is empty"

    .line 1649
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1655
    :cond_103
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 1657
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_118

    const-string/jumbo v0, "responsepage string value is null"

    .line 1658
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1663
    :cond_118
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12b

    const-string/jumbo v0, "responsepage string value is empty"

    .line 1664
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1670
    :cond_12b
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 1672
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13f

    const-string v0, "client cert issuer CN string value is null"

    .line 1673
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1678
    :cond_13f
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_151

    const-string v0, "client cert issuer CN string value is empty"

    .line 1679
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1685
    :cond_151
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_177

    .line 1687
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_165

    const-string v0, "client cert issued CN string value is null"

    .line 1688
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1693
    :cond_165
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_177

    const-string v0, "client cert issued CN string value is empty"

    .line 1694
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1701
    :cond_177
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_17b} :catch_3df

    const-string/jumbo v4, "key-tether-captive-portal-alias"

    if-eqz v1, :cond_18e

    :try_start_180
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const-string v0, "config contains both captive portal cert and alias"

    .line 1702
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1707
    :cond_18e
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 1709
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a2

    const-string v0, "captiveAlias string value is null"

    .line 1710
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1715
    :cond_1a2
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b4

    const-string v0, "captiveAlias string value is empty"

    .line 1716
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1722
    :cond_1b4
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 1724
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1c8

    const-string v0, "captiveCert value is null"

    .line 1725
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1730
    :cond_1c8
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_1d7

    const-string v0, "captiveCert length is not valid"

    .line 1731
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1737
    :cond_1d7
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_1db} :catch_3df

    const-string v4, "_"

    if-eqz v1, :cond_22a

    .line 1739
    :try_start_1df
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1ed

    const-string v0, "captiveCert credential value is null"

    .line 1740
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1745
    :cond_1ed
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1ff

    const-string v0, "captiveCert credential value is empty"

    .line 1746
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1750
    :cond_1ff
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1751
    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "captivecert_pwd"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_227

    const-string v0, "Saving the captive cert credential inside keystore failed"

    .line 1753
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1757
    :cond_227
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1761
    :cond_22a
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_22e} :catch_3df

    const-string/jumbo v5, "key-tether-ca-alias"

    if-eqz v1, :cond_241

    :try_start_233
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_241

    const-string v0, "config contains both ca cert and alias"

    .line 1762
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1767
    :cond_241
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_267

    .line 1769
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_255

    const-string v0, "caAlias string value is null"

    .line 1770
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1775
    :cond_255
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_267

    const-string v0, "caAlias string value is empty"

    .line 1776
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1782
    :cond_267
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28a

    .line 1784
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_27b

    const-string v0, "caCert value is null"

    .line 1785
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1790
    :cond_27b
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_28a

    const-string v0, "caCert length is not valid"

    .line 1791
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    :cond_28a
    move-object/from16 v1, v18

    .line 1797
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2db

    .line 1799
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_296} :catch_3df

    const-string v6, "caCert credential value is empty"

    if-nez v5, :cond_2a0

    .line 1800
    :try_start_29a
    invoke-static {v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1805
    :cond_2a0
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2b0

    .line 1806
    invoke-static {v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1810
    :cond_2b0
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1811
    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "cacert_pwd"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d8

    const-string v0, "Saving the ca cert credential inside keystore failed"

    .line 1813
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1817
    :cond_2d8
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2db
    move-object/from16 v1, v17

    .line 1821
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_29a .. :try_end_2e1} :catch_3df

    const-string/jumbo v6, "key-tether-user-alias"

    if-eqz v5, :cond_2f4

    :try_start_2e6
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f4

    const-string v0, "config contains both server cert and alias"

    .line 1822
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1827
    :cond_2f4
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31c

    .line 1829
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_309

    const-string/jumbo v0, "serverAlias string value is null"

    .line 1830
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1835
    :cond_309
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_31c

    const-string/jumbo v0, "serverAlias string value is empty"

    .line 1836
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1842
    :cond_31c
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5
    :try_end_320
    .catch Ljava/lang/Exception; {:try_start_2e6 .. :try_end_320} :catch_3df

    const-string/jumbo v6, "key-tether-user-cert-password"

    if-eqz v5, :cond_387

    .line 1844
    :try_start_325
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_334

    const-string/jumbo v0, "serverCert value is null"

    .line 1845
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1850
    :cond_334
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    if-gtz v5, :cond_344

    const-string/jumbo v0, "serverCert length is not valid"

    .line 1851
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1856
    :cond_344
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v5, ""

    .line 1857
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "PKCS12"

    .line 1858
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 1859
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_359
    .catch Ljava/lang/Exception; {:try_start_325 .. :try_end_359} :catch_3df

    if-nez v5, :cond_360

    const/4 v1, 0x0

    .line 1862
    :try_start_35c
    invoke-virtual {v7, v8, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_367

    .line 1864
    :cond_360
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_367
    .catch Ljava/io/IOException; {:try_start_35c .. :try_end_367} :catch_37b
    .catch Ljava/lang/Exception; {:try_start_35c .. :try_end_367} :catch_3df

    .line 1872
    :goto_367
    :try_start_367
    invoke-virtual {v7}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 1873
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_387

    .line 1874
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1875
    invoke-virtual {v7, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    goto :goto_387

    .line 1867
    :catch_37b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    const-string/jumbo v0, "serverCert pwd is incorrect"

    .line 1868
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1880
    :cond_387
    :goto_387
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3db

    .line 1882
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_39c

    const-string/jumbo v0, "serverCert credential value is null"

    .line 1883
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1888
    :cond_39c
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3af

    const-string/jumbo v0, "serverCert credential value is empty"

    .line 1889
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1893
    :cond_3af
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1894
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "servercert_pwd"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d8

    const-string v0, "Saving the server cert password inside keystore failed"

    .line 1896
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x385

    return v0

    .line 1900
    :cond_3d8
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_3db
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_3db} :catch_3df

    :cond_3db
    move v15, v12

    move-object/from16 v1, v16

    goto :goto_400

    :catch_3df
    move-exception v0

    goto :goto_3e4

    :catch_3e1
    move-exception v0

    move-object/from16 v16, v5

    .line 1904
    :goto_3e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at enableUsbTethering API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0x65

    .line 1907
    :goto_400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbTethering : validationResult value is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_415
    :goto_415
    const/16 v0, 0x68

    return v0
.end method

.method public createVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "keepon"

    const-string v4, "chaining_enabled"

    const-string/jumbo v5, "proxy-password"

    const-string/jumbo v6, "proxy-username"

    const-string v7, "KnoxVpnApiValidation"

    if-eqz v2, :cond_35d

    .line 169
    :try_start_15
    iget-object v8, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v8, :cond_1b

    goto/16 :goto_35d

    .line 174
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getAdminId()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v9

    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createVpnProfileValidation:vpnClientUserId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " adminUserId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x72

    if-nez v9, :cond_4a

    if-eqz v8, :cond_77

    return v10

    .line 192
    :cond_4a
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v8

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createVpnProfileValidation:containerOwner "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " adminuid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_77

    return v10

    .line 200
    :cond_77
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "KNOX_VPN_PARAMETERS"

    .line 201
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v8, "profile_attribute"

    .line 202
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "knox"

    .line 203
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v9, "profileName"

    .line 205
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "vpn_type"

    .line 206
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "vpn_route_type"

    .line 207
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v11, -0x1

    .line 209
    invoke-virtual {v2, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "uidpid_search_enabled"

    .line 210
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "connectionType"

    .line 211
    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "proxy-server"

    .line 213
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    invoke-virtual {v2, v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_c0
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_c0} :catch_32c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_c0} :catch_30c

    move-object/from16 v16, v7

    :try_start_c2
    const-string/jumbo v7, "proxy-port"

    move-object/from16 v17, v11

    const/4 v11, -0x1

    .line 214
    invoke-virtual {v2, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 215
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    move-object/from16 v18, v4

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {v2, v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v5

    const-string/jumbo v5, "pac-url"

    move-object/from16 v20, v6

    .line 217
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v11

    const-string/jumbo v11, "ipv6-enable"

    move-object/from16 v22, v4

    const/4 v4, 0x0

    .line 218
    invoke-virtual {v2, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v1, "proxy-auth"

    .line 219
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "allow_usb_over_vpn_tethering"

    .line 220
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_100
    .catch Lorg/json/JSONException; {:try_start_c2 .. :try_end_100} :catch_308
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_100} :catch_306

    if-eqz v9, :cond_303

    if-eqz v10, :cond_303

    const/4 v10, 0x1

    if-eq v8, v10, :cond_10b

    if-eqz v8, :cond_10b

    goto/16 :goto_303

    :cond_10b
    const/16 v24, 0x2be

    const-string/jumbo v4, "ondemand"

    const/16 v25, 0x385

    if-nez v8, :cond_133

    if-eqz v12, :cond_130

    if-ne v12, v10, :cond_119

    goto :goto_130

    .line 232
    :cond_119
    :try_start_119
    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_120

    return v24

    :cond_120
    const/16 v8, 0x321

    if-nez v15, :cond_12f

    const/4 v10, -0x1

    if-eq v7, v10, :cond_128

    goto :goto_12f

    :cond_128
    if-eq v5, v6, :cond_12b

    return v8

    :cond_12b
    const/4 v8, 0x1

    if-ne v1, v8, :cond_133

    return v25

    :cond_12f
    :goto_12f
    return v8

    :cond_130
    :goto_130
    const/16 v0, 0x1f9

    return v0

    :cond_133
    const/4 v8, -0x1

    if-eq v12, v8, :cond_13e

    if-eqz v12, :cond_13e

    const/4 v8, 0x1

    if-eq v12, v8, :cond_13f

    const/16 v0, 0x1f5

    return v0

    :cond_13e
    const/4 v8, 0x1

    :cond_13f
    if-eq v13, v8, :cond_146

    if-eqz v13, :cond_146

    const/16 v0, 0x259

    return v0

    .line 260
    :cond_146
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_155

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_155

    const/16 v0, 0x2bd

    return v0

    .line 265
    :cond_155
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15e

    if-nez v12, :cond_15e

    return v24

    :cond_15e
    if-eqz v11, :cond_166

    const/4 v3, 0x1

    if-eq v11, v3, :cond_166

    const/16 v0, 0x325

    return v0

    :cond_166
    const-string v3, "\\s"

    .line 276
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 277
    invoke-virtual {v3, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 278
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_179

    const/16 v0, 0x6a

    return v0

    .line 284
    :cond_179
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x1

    if-lt v3, v8, :cond_300

    const/16 v8, 0x80

    if-le v3, v8, :cond_186

    goto/16 :goto_300

    .line 290
    :cond_186
    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    if-eqz v3, :cond_19e

    .line 292
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v0

    move-object/from16 v3, p1

    iget v1, v3, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v0, v1, :cond_19b

    const/16 v0, 0x6f

    return v0

    :cond_19b
    const/16 v0, 0x70

    return v0

    :cond_19e
    move-object/from16 v3, p1

    .line 301
    iget-object v8, v3, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 302
    iget v3, v3, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    move-object/from16 v10, v18

    const/4 v11, -0x1

    .line 304
    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_1bf

    .line 306
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v3

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v2

    if-eq v2, v8, :cond_1bc

    if-nez v2, :cond_1d0

    :cond_1bc
    const/16 v0, 0x1f7

    return v0

    .line 312
    :cond_1bf
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v2
    :try_end_1ca
    .catch Lorg/json/JSONException; {:try_start_119 .. :try_end_1ca} :catch_308
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_1ca} :catch_306

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d0

    const/16 v0, 0x1f8

    return v0

    :cond_1d0
    const-string v8, "_"

    const/16 v10, 0x324

    move-object/from16 v11, v17

    if-eq v5, v6, :cond_246

    if-ne v15, v11, :cond_244

    const/4 v2, -0x1

    if-ne v7, v2, :cond_244

    .line 320
    :try_start_1dd
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e4

    goto :goto_244

    :cond_1e4
    if-nez v12, :cond_1e7

    return v10

    :cond_1e7
    if-eqz v22, :cond_246

    if-eqz v21, :cond_246

    .line 329
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_242

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_242

    if-nez v23, :cond_1fa

    return v10

    .line 334
    :cond_1fa
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move/from16 v20, v13

    move-object/from16 v13, v22

    invoke-virtual {v2, v10, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21d

    const/16 v2, 0x322

    return v2

    .line 339
    :cond_21d
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v4

    move-object/from16 v4, v19

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v14

    move-object/from16 v14, v21

    invoke-virtual {v2, v10, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_254

    const/16 v2, 0x323

    return v2

    :cond_242
    move v0, v10

    return v0

    :cond_244
    :goto_244
    move v0, v10

    return v0

    :cond_246
    move-object/from16 v3, v20

    move/from16 v20, v13

    move-object/from16 v13, v22

    move-object/from16 v22, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v14

    move-object/from16 v14, v21

    :cond_254
    if-eqz v15, :cond_2b9

    if-ne v15, v11, :cond_25b

    const/4 v2, -0x1

    if-eq v7, v2, :cond_2b9

    :cond_25b
    if-ne v5, v6, :cond_2b6

    .line 352
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_264

    goto :goto_2b6

    :cond_264
    if-nez v12, :cond_269

    const/16 v2, 0x324

    return v2

    :cond_269
    if-eqz v13, :cond_2b9

    if-eqz v14, :cond_2b9

    .line 362
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b3

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b3

    .line 363
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_296

    const/16 v2, 0x322

    return v2

    .line 368
    :cond_296
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b9

    const/16 v2, 0x323

    return v2

    :cond_2b3
    const/16 v0, 0x324

    return v0

    :cond_2b6
    :goto_2b6
    const/16 v0, 0x324

    return v0

    :cond_2b9
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2fb

    if-nez v12, :cond_2bf

    return v25

    :cond_2bf
    move-object/from16 v1, v19

    move-object/from16 v3, v22

    .line 386
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2ca

    return v25

    :cond_2ca
    move/from16 v1, v20

    if-ne v1, v2, :cond_2cf

    return v25

    .line 397
    :cond_2cf
    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_2fb

    .line 398
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2fb

    .line 399
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 400
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v1
    :try_end_2f7
    .catch Lorg/json/JSONException; {:try_start_1dd .. :try_end_2f7} :catch_308
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_2f7} :catch_306

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e7

    return v25

    :cond_2fb
    const/16 v0, 0x64

    move-object/from16 v1, v16

    goto :goto_348

    :cond_300
    :goto_300
    const/16 v0, 0x6b

    return v0

    :cond_303
    :goto_303
    const/16 v0, 0x69

    return v0

    :catch_306
    move-exception v0

    goto :goto_30f

    :catch_308
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_32e

    :catch_30c
    move-exception v0

    move-object/from16 v16, v7

    .line 412
    :goto_30f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at createVpnProfileValidation API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    goto :goto_348

    :catch_32c
    move-exception v0

    move-object v1, v7

    .line 409
    :goto_32e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException at createVpnProfileValidation API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x67

    .line 415
    :goto_348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createVpnProfileValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_35d
    :goto_35d
    const/16 v0, 0x68

    return v0
.end method

.method public disallowUsbTetheringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 8

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p2, :cond_a9

    const/16 v1, 0x64

    .line 1914
    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_c

    goto/16 :goto_a9

    .line 1919
    :cond_c
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    if-nez v2, :cond_17

    const/16 p0, 0x6c

    return p0

    .line 1924
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, p1, :cond_22

    const/16 p0, 0x70

    return p0

    .line 1930
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result p1

    if-nez p1, :cond_2b

    const/16 p0, 0x6d

    return p0

    .line 1936
    :cond_2b
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result p1

    const/16 v3, 0x385

    if-nez p1, :cond_34

    return v3

    .line 1942
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result p1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3c

    return v3

    .line 1948
    :cond_3c
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result p1

    if-ne p1, v4, :cond_43

    return v3

    .line 1955
    :cond_43
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 1956
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_94

    .line 1957
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1958
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v2

    if-ne v2, v4, :cond_5b

    .line 1959
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_75} :catch_79

    if-nez p0, :cond_78

    return v3

    :cond_78
    return v1

    :catch_79
    move-exception p0

    .line 1969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at enableUsbTethering API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x65

    .line 1972
    :cond_94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "enableUsbTethering : validationResult value is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a9
    :goto_a9
    const/16 p0, 0x68

    return p0
.end method

.method public getAllContainerPackagesInVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const-string v1, "KnoxVpnApiValidation"

    if-eqz p3, :cond_69

    .line 1131
    :try_start_5
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_69

    .line 1136
    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    if-nez v2, :cond_18

    const-string p0, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    .line 1138
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1141
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_26

    const-string p0, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    .line 1142
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1145
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1146
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v4

    if-eqz v3, :cond_3c

    if-nez v4, :cond_3c

    const-string p0, "EMM present in work profile trying to configure vpn for user 0"

    .line 1148
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1153
    :cond_3c
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_48

    const-string p0, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    .line 1155
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1159
    :cond_48
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result p0

    if-nez p0, :cond_66

    .line 1170
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 1171
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-eq p0, p1, :cond_66

    const-string p0, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    .line 1172
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_66
    return-object p3

    :catch_67
    move-exception p0

    goto :goto_6f

    :cond_69
    :goto_69
    const-string p0, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    .line 1132
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6e} :catch_67

    return-object v0

    .line 1177
    :goto_6f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at getAllContainerPackagesInVpnProfileValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-string v1, "KnoxVpnApiValidation"

    if-eqz p2, :cond_4b

    .line 792
    :try_start_5
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_4b

    .line 797
    :cond_a
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    .line 799
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 802
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_26

    const-string p0, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    .line 803
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 806
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 807
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result p1

    if-eqz v2, :cond_3c

    if-nez p1, :cond_3c

    const-string p0, "EMM present in work profile trying to configure vpn for user 0"

    .line 809
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 814
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result p0

    if-nez p0, :cond_48

    const-string p0, "getAllPackagesInVpnProfileValidation: profile is of system type"

    .line 816
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_48
    return-object p2

    :catch_49
    move-exception p0

    goto :goto_51

    :cond_4b
    :goto_4b
    const-string p0, "getAllPackagesInVpnProfileValidation: profileName value is null"

    .line 793
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_49

    return-object v0

    .line 821
    :goto_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at getAllPackagesInVpnProfileValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getErrorStringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "KnoxVpnApiValidation"

    if-eqz p2, :cond_28

    .line 1493
    :try_start_5
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_28

    .line 1497
    :cond_a
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, "getErrorStringValidation: profileInfo value is null"

    .line 1499
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1502
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p0

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq p0, p1, :cond_46

    const-string p0, "getErrorStringValidation: Not the same admin"

    .line 1503
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_26
    move-exception p0

    goto :goto_2e

    :cond_28
    :goto_28
    const-string p0, "getErrorStringValidation: profileName value is null"

    .line 1494
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_26

    return-object v0

    .line 1508
    :goto_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception at getErrorStringValidation API "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-object p2
.end method

.method public final getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 1

    .line 137
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez p0, :cond_c

    .line 138
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object p0

    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 140
    :cond_c
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object p0
.end method

.method public getStateValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 5

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p2, :cond_53

    .line 1469
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_53

    .line 1473
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_14

    const/16 p0, 0x6c

    return p0

    .line 1478
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p0

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_22

    if-eq p0, p1, :cond_1f

    const/16 p0, 0x70

    return p0

    :cond_1f
    const/16 p0, 0x64

    goto :goto_3d

    :catch_22
    move-exception p0

    .line 1484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at getStateValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 1487
    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "getStateValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_53
    :goto_53
    const/16 p0, 0x68

    return p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 145
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    .line 147
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    return-object p0
.end method

.method public getVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 5

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p2, :cond_53

    .line 1545
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_53

    .line 1549
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_14

    const/16 p0, 0x6c

    return p0

    .line 1554
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p0

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_22

    if-eq p0, p1, :cond_1f

    const/16 p0, 0x70

    return p0

    :cond_1f
    const/16 p0, 0x64

    goto :goto_3d

    :catch_22
    move-exception p0

    .line 1560
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at getVpnModeOfOperationValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 1563
    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "getVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_53
    :goto_53
    const/16 p0, 0x68

    return p0
.end method

.method public getVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "KnoxVpnApiValidation"

    if-eqz p2, :cond_2a

    .line 422
    :try_start_5
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_2a

    .line 427
    :cond_a
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_19

    const-string/jumbo p0, "getVpnProfileValidation: profileInfo value is null"

    .line 429
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 432
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p0

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq p0, p1, :cond_49

    const-string/jumbo p0, "getVpnProfileValidation: Not the same admin"

    .line 433
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_28
    move-exception p0

    goto :goto_31

    :cond_2a
    :goto_2a
    const-string/jumbo p0, "getVpnProfileValidation: profileName value is null"

    .line 423
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_28

    return-object v0

    .line 438
    :goto_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception at getVpnProfileValidation API "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-object p2
.end method

.method public isUsbTetheringOverVpnEnabledValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 5

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p2, :cond_74

    .line 1979
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_74

    .line 1984
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_14

    const/16 p0, 0x6c

    return p0

    .line 1989
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p2

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq p2, p1, :cond_1f

    const/16 p0, 0x70

    return p0

    .line 1995
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result p1

    if-nez p1, :cond_28

    const/16 p0, 0x6d

    return p0

    .line 2001
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result p1

    const/16 p2, 0x385

    if-nez p1, :cond_31

    return p2

    .line 2007
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_39

    return p2

    .line 2013
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_43

    if-ne p0, v1, :cond_40

    return p2

    :cond_40
    const/16 p0, 0x64

    goto :goto_5e

    :catch_43
    move-exception p0

    .line 2019
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at isUsbTetheringOverVpnEnabledValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 2022
    :goto_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isUsbTetheringOverVpnEnabledValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_74
    :goto_74
    const/16 p0, 0x68

    return p0
.end method

.method public final isUserTypeAppSeparation(I)Z
    .registers 4

    .line 152
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getUserManager()Landroid/os/UserManager;

    .line 153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 155
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 156
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1c

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    .line 160
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    throw p0
.end method

.method public removeAllContainerPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)I
    .registers 8

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p3, :cond_8e

    .line 1289
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_a

    goto/16 :goto_8e

    .line 1294
    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p3

    if-nez p3, :cond_15

    const/16 p0, 0x6c

    return p0

    .line 1299
    :cond_15
    invoke-virtual {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v1

    iget v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v1, v2, :cond_20

    const/16 p0, 0x70

    return p0

    .line 1303
    :cond_20
    invoke-virtual {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1304
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v2

    const/16 v3, 0x72

    if-eqz v1, :cond_38

    if-nez v2, :cond_38

    const-string p0, "EMM present in work profile trying to configure vpn for user 0"

    .line 1307
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1312
    :cond_38
    invoke-virtual {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result p3

    if-nez p3, :cond_41

    const/16 p0, 0x6d

    return p0

    .line 1318
    :cond_41
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result p0

    if-nez p0, :cond_5a

    .line 1330
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 1331
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_57} :catch_5d

    if-eq p0, p1, :cond_5a

    return v3

    :cond_5a
    const/16 p0, 0x64

    goto :goto_78

    :catch_5d
    move-exception p0

    .line 1348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 1351
    :goto_78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_8e
    :goto_8e
    const/16 p0, 0x68

    return p0
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 5

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p2, :cond_74

    .line 1430
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_74

    .line 1435
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_14

    const/16 p0, 0x6c

    return p0

    .line 1440
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p2

    iget v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq p2, v1, :cond_1f

    const/16 p0, 0x70

    return p0

    .line 1444
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1445
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result p1

    if-eqz p2, :cond_37

    if-nez p1, :cond_37

    const/16 p0, 0x72

    const-string p1, "EMM present in work profile trying to configure vpn for user 0"

    .line 1448
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1453
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_43

    if-nez p0, :cond_40

    const/16 p0, 0x6d

    return p0

    :cond_40
    const/16 p0, 0x64

    goto :goto_5e

    :catch_43
    move-exception p0

    .line 1459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 1462
    :goto_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_74
    :goto_74
    const/16 p0, 0x68

    return p0
.end method

.method public removeContainerPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 15

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p4, :cond_192

    if-eqz p3, :cond_192

    const/16 v1, 0x64

    .line 995
    :try_start_8
    array-length v2, p3

    const/4 v3, 0x1

    if-lt v2, v3, :cond_192

    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_12

    goto/16 :goto_192

    .line 1000
    :cond_12
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    if-nez v2, :cond_1d

    const/16 p0, 0x6c

    return p0

    .line 1005
    :cond_1d
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v4, v5, :cond_28

    const/16 p0, 0x70

    return p0

    .line 1009
    :cond_28
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1010
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v5

    const/16 v6, 0x72

    if-eqz v4, :cond_40

    if-nez v5, :cond_40

    const-string p0, "EMM present in work profile trying to configure vpn for user 0"

    .line 1013
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1018
    :cond_40
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    if-nez v4, :cond_49

    const/16 p0, 0x6d

    return p0

    .line 1024
    :cond_49
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result v4

    if-nez v4, :cond_62

    .line 1036
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v4

    .line 1037
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget v5, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v4, v5, :cond_62

    return v6

    .line 1054
    :cond_62
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b5

    .line 1055
    array-length v4, p3

    move v6, v5

    :goto_6d
    if-ge v6, v4, :cond_b5

    aget-object v7, p3, v6

    .line 1056
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1057
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_8a

    if-eqz v9, :cond_8a

    .line 1059
    invoke-virtual {v9, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8a

    const/16 p0, 0x81

    return p0

    .line 1064
    :cond_8a
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v7

    if-lez v7, :cond_b2

    .line 1066
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8b

    if-eqz v8, :cond_a3

    .line 1067
    invoke-virtual {v8, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a3

    return v9

    .line 1071
    :cond_a3
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b2

    .line 1072
    invoke-virtual {v7, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b2

    return v9

    :cond_b2
    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    .line 1080
    :cond_b5
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v4

    if-eqz v4, :cond_17c

    .line 1081
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v4

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v4, p1, :cond_15e

    .line 1083
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v4, "ADD_ALL_PACKAGES"

    invoke-virtual {p1, p2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17c

    .line 1085
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e7

    .line 1086
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v3, :cond_e6

    const/16 p0, 0x79

    return p0

    :cond_e6
    return v1

    .line 1094
    :cond_e7
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result p1

    if-ne p1, v3, :cond_f0

    const/16 p0, 0x73

    return p0

    .line 1098
    :cond_f0
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object p1

    .line 1099
    array-length v2, p3

    :goto_f5
    if-ge v5, v2, :cond_158

    aget-object v3, p3, v5

    .line 1100
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_ff} :catch_161

    const/4 v6, -0x1

    const-string v7, "adding uid to exempt list "

    const-string/jumbo v8, "user wide vpn was configured "

    if-eq v4, v6, :cond_132

    .line 1102
    :try_start_107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1103
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1104
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p4, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 1107
    :cond_132
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1108
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p4, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_155
    add-int/lit8 v5, v5, 0x1

    goto :goto_f5

    .line 1112
    :cond_158
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUidsToVpnUidRange(Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_15d} :catch_161

    goto :goto_17c

    :cond_15e
    const/16 p0, 0x7a

    return p0

    :catch_161
    move-exception p0

    .line 1122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at removeContainerPackagesFromVpnValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x65

    .line 1125
    :cond_17c
    :goto_17c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_192
    :goto_192
    const/16 p0, 0x68

    return p0
.end method

.method public removePackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "KnoxVpnApiValidation"

    if-eqz v3, :cond_217

    if-eqz v2, :cond_217

    const/16 v5, 0x64

    .line 621
    :try_start_10
    array-length v6, v2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_217

    iget-object v6, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1a

    goto/16 :goto_217

    .line 626
    :cond_1a
    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    if-nez v6, :cond_25

    const/16 v0, 0x6c

    return v0

    .line 631
    :cond_25
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_30

    const/16 v0, 0x70

    return v0

    .line 635
    :cond_30
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v9

    if-eqz v8, :cond_48

    if-nez v9, :cond_48

    const/16 v0, 0x72

    const-string v1, "EMM present in work profile trying to configure vpn for user 0"

    .line 639
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 644
    :cond_48
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    if-nez v8, :cond_51

    const/16 v0, 0x6d

    return v0

    .line 650
    :cond_51
    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_aa

    .line 651
    array-length v8, v2

    move v10, v9

    :goto_5e
    if-ge v10, v8, :cond_aa

    aget-object v11, v2, v10

    .line 652
    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 653
    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v12, :cond_7d

    if-eqz v13, :cond_7d

    .line 655
    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7d

    const/16 v0, 0x81

    return v0

    .line 660
    :cond_7d
    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v11

    if-lez v11, :cond_a7

    .line 662
    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x8b

    if-eqz v12, :cond_98

    .line 663
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_98

    return v13

    .line 667
    :cond_98
    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a7

    .line 668
    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a7

    return v13

    :cond_a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5e

    .line 676
    :cond_aa
    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_1e3

    .line 677
    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v10, :cond_1e0

    .line 679
    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v11, "ADD_ALL_PACKAGES"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1e3

    .line 681
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e2

    .line 682
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_e1

    const/16 v0, 0x79

    return v0

    :cond_e1
    return v5

    .line 690
    :cond_e2
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v8

    if-ne v8, v7, :cond_eb

    const/16 v0, 0x73

    return v0

    .line 694
    :cond_eb
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v6

    .line 695
    array-length v7, v2

    :goto_f0
    if-ge v9, v7, :cond_1da

    aget-object v8, v2, v9

    .line 696
    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v10, v11, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v10

    .line 698
    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    if-nez v11, :cond_110

    const-string v11, "com.android.networkstack"

    .line 699
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_110

    const-string/jumbo v10, "network stack uid is exempted by the Admin"

    .line 700
    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10e} :catch_1e6

    const/16 v10, 0x431

    :cond_110
    const/4 v11, -0x1

    const-string v12, ". Added to exempt list"

    const-string v13, " removed from vpn for profile "

    const-string v14, " "

    const-string v15, "adding uid to exempt list "

    const-string/jumbo v5, "user wide vpn was configured "

    if-eq v10, v11, :cond_17c

    .line 706
    :try_start_11e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v2, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v2, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 708
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v3, v2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 709
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    .line 711
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    iget v2, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    move/from16 v22, v2

    .line 710
    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1d2

    .line 715
    :cond_17c
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v2, v11, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 716
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v3, v2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 717
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    .line 719
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    iget v2, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    move/from16 v22, v2

    .line 718
    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_1d2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    const/16 v5, 0x64

    goto/16 :goto_f0

    .line 724
    :cond_1da
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUidsToVpnUidRange(Ljava/lang/String;)V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_1df} :catch_1e6

    goto :goto_1e3

    :cond_1e0
    const/16 v0, 0x7a

    return v0

    :cond_1e3
    :goto_1e3
    const/16 v5, 0x64

    goto :goto_201

    :catch_1e6
    move-exception v0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at removePackagesFromVpnValidation API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    .line 737
    :goto_201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_217
    :goto_217
    const/16 v0, 0x68

    return v0
.end method

.method public removeVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 5

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p2, :cond_63

    .line 449
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_63

    .line 454
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_14

    const/16 p0, 0x6c

    return p0

    .line 459
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p2

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq p2, p1, :cond_1f

    const/16 p0, 0x70

    return p0

    .line 465
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result p1

    .line 466
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_32

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2f

    if-ne p0, p2, :cond_2f

    const/16 p0, 0x7d

    goto :goto_4d

    :cond_2f
    const/16 p0, 0x64

    goto :goto_4d

    :catch_32
    move-exception p0

    .line 472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at removeVpnProfileValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 475
    :goto_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_63
    :goto_63
    const/16 p0, 0x68

    return p0
.end method

.method public setVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)I
    .registers 6

    const-string v0, "KnoxVpnApiValidation"

    if-eqz p2, :cond_5b

    .line 1516
    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_5b

    .line 1520
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_14

    const/16 p0, 0x6c

    return p0

    .line 1525
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p0

    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_2a

    if-eq p0, p1, :cond_1f

    const/16 p0, 0x70

    return p0

    :cond_1f
    if-eqz p3, :cond_27

    const/4 p0, 0x1

    if-eq p3, p0, :cond_27

    const/16 p0, 0x8a

    return p0

    :cond_27
    const/16 p0, 0x64

    goto :goto_45

    :catch_2a
    move-exception p0

    .line 1535
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at setVpnModeOfOperationValidation API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    .line 1538
    :goto_45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_5b
    :goto_5b
    const/16 p0, 0x68

    return p0
.end method
