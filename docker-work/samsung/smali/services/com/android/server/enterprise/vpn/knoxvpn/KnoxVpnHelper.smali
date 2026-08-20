.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
.super Ljava/lang/Object;
.source "KnoxVpnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$ProfileState;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static final INVALID_CONTAINER_ID:I = 0x0

.field public static final INVALID_UID:I = -0x1

.field public static final TAG:Ljava/lang/String; = "FW-KnoxVpnHelper"

.field public static mContext:Landroid/content/Context;

.field public static mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field public static mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field public static mNotificationManager:Landroid/app/NotificationManager;


# instance fields
.field public mNetworkManagementService:Landroid/os/INetworkManagementService;

.field public mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

.field public final vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 106
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    const/4 v0, 0x0

    .line 110
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 112
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    .line 114
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 116
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 122
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 120
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 135
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 120
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 135
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 153
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 155
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object p0

    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v0

    .line 138
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-nez v1, :cond_e

    .line 140
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 142
    :cond_e
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .registers 1

    .line 146
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v0, :cond_c

    .line 147
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 149
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    return-object v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 177
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 1150
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "profileName"

    .line 1151
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "packageName"

    .line 1152
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "packageUid"

    .line 1153
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1154
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo p1, "vpnExemptInfo"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_42

    :catch_26
    move-exception p0

    .line 1156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addExemptedListToDatabase : Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_42
    return p0
.end method

.method public addOrRemoveAppsFromBatteryOptimization(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    if-eqz p2, :cond_b

    const-string v0, "com.samsung.sVpn"

    .line 1989
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1992
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, "deviceidle"

    const-string/jumbo v3, "power"

    if-eqz p3, :cond_38

    .line 1995
    :try_start_16
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 1997
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 1998
    invoke-virtual {p0, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_57

    .line 2000
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1999
    invoke-static {p0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p0

    .line 2001
    invoke-interface {p0, p2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    goto :goto_57

    .line 2005
    :cond_38
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 2006
    invoke-virtual {p0, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 2008
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 2007
    invoke-static {p0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p0

    .line 2009
    invoke-interface {p0, p2}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_51} :catch_57
    .catchall {:try_start_16 .. :try_end_51} :catchall_52

    goto :goto_57

    :catchall_52
    move-exception p0

    .line 2015
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2016
    throw p0

    .line 2015
    :catch_57
    :cond_57
    :goto_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public addOrRemoveSystemAppFromBatteryOptimization(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 1954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1956
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android"

    .line 1957
    invoke-interface {v2, v3, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_6c
    .catchall {:try_start_4 .. :try_end_e} :catchall_67

    if-eqz v2, :cond_14

    .line 1983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_14
    const-string v2, "deviceidle"

    const-string/jumbo v3, "power"

    if-eqz p3, :cond_4d

    .line 1961
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-eqz p0, :cond_6c

    .line 1963
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyServer()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne p1, p3, :cond_33

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Landroid/net/Uri;

    move-result-object p0

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq p0, p1, :cond_6c

    .line 1964
    :cond_33
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 1965
    invoke-virtual {p0, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6c

    .line 1967
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1966
    invoke-static {p0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p0

    .line 1968
    invoke-interface {p0, p2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    goto :goto_6c

    .line 1973
    :cond_4d
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 1974
    invoke-virtual {p0, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6c

    .line 1976
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1975
    invoke-static {p0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p0

    .line 1977
    invoke-interface {p0, p2}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_66} :catch_6c
    .catchall {:try_start_1b .. :try_end_66} :catchall_67

    goto :goto_6c

    :catchall_67
    move-exception p0

    .line 1983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1984
    throw p0

    .line 1983
    :catch_6c
    :cond_6c
    :goto_6c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public addOrRemoveSystemAppFromDataSaverWhitelist(Ljava/lang/String;IZ)V
    .registers 8

    .line 2021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_26

    .line 2024
    :try_start_6
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 2026
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyServer()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne v2, v3, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Landroid/net/Uri;

    move-result-object p1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq p1, v2, :cond_2d

    .line 2027
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p3, p2}, Landroid/os/INetworkManagementService;->addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V

    goto :goto_2d

    .line 2031
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p3, p2}, Landroid/os/INetworkManagementService;->addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_31

    .line 2036
    :cond_2d
    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_39

    :catchall_31
    :try_start_31
    const-string p0, "FW-KnoxVpnHelper"

    const-string p1, "No permission to update the data-saver list"

    .line 2034
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3a

    goto :goto_2d

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    .line 2036
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2037
    throw p0
.end method

.method public final addUidsToVpnUidRange(Ljava/lang/String;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2212
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2217
    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2219
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v2

    .line 2220
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v5

    .line 2221
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2223
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v3

    .line 2224
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_26

    .line 2226
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p2, :cond_26

    .line 2227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 2231
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const-string v3, "com.samsung.sVpn"

    const/4 v4, 0x1

    if-nez p2, :cond_b7

    .line 2233
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->AID_EXEMPT_LIST:[Ljava/lang/Integer;

    array-length v7, v6

    const/4 v11, 0x0

    :goto_53
    if-ge v11, v7, :cond_65

    aget-object v12, v6, v11

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2234
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_53

    .line 2236
    :cond_65
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/16 v2, 0x3f8

    .line 2239
    :cond_71
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v3

    if-ne v3, v4, :cond_8e

    .line 2240
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNonChainedVendoUid(I)I

    move-result v0

    if-lez v0, :cond_8e

    .line 2241
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_8e

    .line 2242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8e
    if-ne v5, p2, :cond_97

    .line 2246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2250
    :cond_97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2251
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v3

    move-object v4, p1

    move v6, p2

    invoke-interface/range {v3 .. v8}, Landroid/net/IVpnManager;->updateUidRangesToUserVpnWithBlackList(Ljava/lang/String;II[ILjava/lang/String;)V

    goto :goto_111

    .line 2255
    :cond_b7
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 2256
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v3

    const/4 v6, 0x1

    move-object v4, p1

    move v7, p2

    invoke-interface/range {v3 .. v8}, Landroid/net/IVpnManager;->updateUidRangesToUserVpn(Ljava/lang/String;IZILjava/lang/String;)V

    goto :goto_111

    .line 2258
    :cond_cc
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v3

    if-ne v3, v4, :cond_e9

    .line 2259
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNonChainedVendoUid(I)I

    move-result v0

    if-lez v0, :cond_e9

    .line 2260
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_e9

    .line 2261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e9
    if-ne v5, p2, :cond_f2

    .line 2265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2269
    :cond_f2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2270
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 2272
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v3

    move-object v4, p1

    move v6, p2

    invoke-interface/range {v3 .. v8}, Landroid/net/IVpnManager;->updateUidRangesToUserVpnWithBlackList(Ljava/lang/String;II[ILjava/lang/String;)V

    .line 2275
    :goto_111
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public addVpnProfileToDatabase(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 358
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    const-string v4, "FW-KnoxVpnHelper"

    if-eqz v3, :cond_21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "jsonProfile value is <-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_21
    iget v5, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 360
    iget-object v6, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 361
    iget v1, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 362
    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 368
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    .line 370
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    .line 374
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "KNOX_VPN_PARAMETERS"

    .line 375
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "profile_attribute"

    .line 376
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "knox"

    .line 377
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v11, "Inside addVpnProfileToDatabase <-->"

    .line 378
    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-eqz v9, :cond_189

    if-eqz v3, :cond_58

    const-string v14, "Inside knox specific AttrObj != null <-->"

    .line 380
    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    const-string v14, "chaining_enabled"

    .line 381
    invoke-virtual {v9, v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    if-eqz v3, :cond_74

    .line 382
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value for chainingEnabled <-->"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    const-string/jumbo v11, "proxy-server"

    .line 383
    invoke-virtual {v9, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_91

    .line 384
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Value for proxyServer <-->"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    const-string/jumbo v11, "proxy-port"

    .line 385
    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v3, :cond_ae

    .line 386
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value for proxyPort <-->"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    const-string/jumbo v12, "pac-url"

    .line 387
    invoke-virtual {v9, v12, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_cb

    .line 388
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Value for pacurl <-->"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    const-string/jumbo v12, "proxy-auth"

    .line 389
    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz v3, :cond_e8

    .line 390
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value for proxy_auth <-->"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    const-string/jumbo v13, "uidpid_search_enabled"

    const/4 v15, 0x0

    .line 391
    invoke-virtual {v9, v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    if-eqz v3, :cond_109

    .line 392
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    const-string v7, "Value for uidPidSearchEnabled <-->"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10b

    :cond_109
    move-object/from16 v17, v7

    :goto_10b
    const-string v7, "allow_usb_over_vpn_tethering"

    const/4 v15, 0x0

    .line 393
    invoke-virtual {v9, v7, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v3, :cond_12b

    .line 394
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v8

    const-string v8, "Value for usb_tethering <-->"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    :cond_12b
    move-object/from16 v18, v8

    :goto_12d
    :try_start_12d
    const-string v8, "connectionType"

    .line 397
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_149

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connection type value = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_149
    const-string/jumbo v3, "keepon"

    .line 399
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    goto :goto_168

    :cond_157
    const-string/jumbo v3, "ondemand"

    .line 401
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_162} :catch_168

    if-eqz v3, :cond_166

    const/4 v15, 0x1

    goto :goto_169

    :cond_166
    const/4 v15, -0x1

    goto :goto_169

    :catch_168
    :goto_168
    const/4 v15, 0x0

    .line 408
    :goto_169
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v3, :cond_181

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Value for vpnConnectionType <-->"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_181
    move v9, v7

    move v3, v15

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move v15, v13

    goto :goto_18f

    :cond_189
    const/4 v3, -0x1

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_18f
    const-string/jumbo v13, "profileName"

    move-object/from16 v17, v4

    .line 411
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "vpn_type"

    .line 412
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "vpn_route_type"

    .line 413
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1ab

    const/16 v16, 0x1

    goto :goto_1ad

    :cond_1ab
    const/16 v16, 0x0

    .line 419
    :goto_1ad
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 420
    invoke-virtual {v10, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v13, "adminUid"

    invoke-virtual {v10, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v5, "personaId"

    invoke-virtual {v10, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "vendorName"

    .line 423
    invoke-virtual {v10, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v5, "profileId"

    invoke-virtual {v10, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "protocolType"

    .line 425
    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "defaultRoute"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "activateState"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, -0x1

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vpnServiceType"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "chainingEnabled"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "uidPidSearch"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vpnConnectionType"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "proxyServer"

    .line 432
    invoke-virtual {v10, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "proxyPort"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "pacurl"

    .line 434
    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "proxyAuth"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "usbTethering"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "profileJson"

    move-object/from16 v1, p2

    .line 437
    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 439
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v1, "VpnProfileInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 442
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v1, :cond_278

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add profile in database : status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "profile Name is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_278
    return v0
.end method

.method public addVpnProfileToMap(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "FW-KnoxVpnHelper"

    .line 447
    iget v3, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 448
    iget-object v4, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 449
    iget v1, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 450
    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    .line 457
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    .line 459
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    const/4 v8, 0x0

    .line 463
    :try_start_17
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v10, p2

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "KNOX_VPN_PARAMETERS"

    .line 464
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "profile_attribute"

    .line 465
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "knox"

    .line 466
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const/4 v12, -0x1

    if-eqz v9, :cond_124

    const-string v13, "chaining_enabled"

    .line 469
    invoke-virtual {v9, v13, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 470
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v14, :cond_53

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value for chainingEnabled <-->"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    const-string/jumbo v11, "proxy-server"

    .line 471
    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v14, :cond_70

    .line 472
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Value for proxyServer <-->"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    const-string/jumbo v11, "proxy-port"

    .line 473
    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v14, :cond_8d

    .line 474
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value for proxyPort <-->"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    const-string/jumbo v12, "proxy-username"

    .line 475
    invoke-virtual {v9, v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "proxy-password"

    .line 476
    invoke-virtual {v9, v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v15, "pac-url"

    .line 477
    invoke-virtual {v9, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v15, "proxy-auth"

    .line 478
    invoke-virtual {v9, v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_a9} :catch_1af

    :try_start_a9
    const-string v8, "connectionType"

    .line 481
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v14, :cond_c8

    .line 482
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b6} :catch_e9

    move-object/from16 v16, v5

    :try_start_b8
    const-string v5, "connection type value = "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    :cond_c8
    move-object/from16 v16, v5

    :goto_ca
    const-string/jumbo v5, "keepon"

    .line 484
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d8

    goto :goto_eb

    :cond_d8
    const-string/jumbo v5, "ondemand"

    .line 486
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_e3} :catch_eb

    if-eqz v5, :cond_e7

    const/4 v5, 0x1

    goto :goto_ec

    :cond_e7
    const/4 v5, -0x1

    goto :goto_ec

    :catch_e9
    move-object/from16 v16, v5

    :catch_eb
    :goto_eb
    const/4 v5, 0x0

    :goto_ec
    :try_start_ec
    const-string/jumbo v8, "uidpid_search_enabled"

    const/4 v14, 0x0

    .line 493
    invoke-virtual {v9, v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 494
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v14, :cond_10f

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p2, v5

    const-string v5, "Admin has enabled id tracking feature in addVpnProfileToMap"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    :cond_10f
    move/from16 p2, v5

    :goto_111
    const-string v5, "allow_usb_over_vpn_tethering"

    const/4 v14, 0x0

    .line 495
    invoke-virtual {v9, v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_118} :catch_1af

    move v9, v5

    move v14, v8

    move-object/from16 v5, v16

    move-object/from16 v16, v2

    move-object v8, v7

    move-object v7, v6

    move-object v6, v12

    move/from16 v12, p2

    goto :goto_12e

    :cond_124
    move-object/from16 v16, v2

    move-object v8, v7

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    :goto_12e
    :try_start_12e
    const-string/jumbo v2, "profileName"

    .line 497
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 p2, v15

    const-string/jumbo v15, "vpn_type"

    .line 498
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v9

    const-string/jumbo v9, "vpn_route_type"

    .line 499
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_14b

    const/4 v10, 0x1

    goto :goto_14c

    :cond_14b
    const/4 v10, 0x0

    :goto_14c
    if-eqz v2, :cond_1ab

    move-object/from16 v18, v8

    .line 504
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    invoke-direct {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;-><init>()V

    .line 505
    invoke-virtual {v8, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProfileName(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setAdminId(I)V

    .line 507
    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPersonaId(I)V

    .line 508
    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorPkgName(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUidForPackageName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorUid(I)V

    move/from16 v1, p3

    .line 510
    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProfileId(I)V

    .line 511
    invoke-virtual {v8, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProtocolType(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setActivateState(I)V

    .line 513
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setRouteType(I)V

    const/4 v1, 0x0

    .line 515
    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setMarkProfileForDeletion(Z)V

    .line 516
    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVpnConnectionType(I)V

    .line 517
    invoke-virtual {v8, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setChainingEnabled(I)V

    .line 518
    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUidPidSearchEnabled(I)V

    .line 519
    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyServer(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyPort(I)V

    .line 521
    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyUsername(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyPassword(Ljava/lang/String;)V

    move-object/from16 v1, v18

    .line 523
    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPacurl(Ljava/lang/String;)V

    move/from16 v5, v17

    .line 524
    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUsbTethering(I)V

    if-eqz v6, :cond_1a1

    if-eqz v7, :cond_1a1

    const/4 v1, 0x1

    .line 525
    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyCredentialsPreDefined(Z)V

    :cond_1a1
    move/from16 v15, p2

    .line 526
    invoke-virtual {v8, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPacAuthRequired(I)V

    .line 527
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v2, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_1ab} :catch_1ad

    :cond_1ab
    const/4 v0, 0x1

    return v0

    :catch_1ad
    move-exception v0

    goto :goto_1b2

    :catch_1af
    move-exception v0

    move-object/from16 v16, v2

    .line 530
    :goto_1b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get profilename from json : Error parsing JSON \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public applyBlockingRulesToUidRange(Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2331
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_27

    if-nez v2, :cond_10

    .line 2339
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2335
    :cond_10
    :try_start_10
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v3

    .line 2336
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2337
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object p0

    invoke-interface {p0, p1, v3, p2, v2}, Landroid/net/IVpnManager;->applyBlockingRulesToUidRange(Ljava/lang/String;IZLjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_27

    .line 2339
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2340
    throw p0
.end method

.method public chainingForAddAll(Ljava/lang/String;I)Z
    .registers 12

    const-string/jumbo v0, "packageName"

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chainingForAddAll: profileName value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 814
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v5, "VpnPackageInfo"

    const-string/jumbo v6, "packageCid"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    .line 818
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v8, v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    .line 814
    invoke-virtual {v4, v5, v6, v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_a8

    .line 822
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a8

    .line 823
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_a8

    .line 824
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v4, :cond_4d

    const-string v5, "chainingForAddAll: checkIfProfileHasChainingFeature value is true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_4d
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_6c

    if-eqz v4, :cond_6b

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "chainingForAddAll: profile hashmap value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    return v1

    .line 830
    :cond_6c
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_70
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    .line 831
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 832
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v4, :cond_98

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chainingForAddAll: packageName value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_98
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_70

    const-string p0, "chainingForAddAll: packageName and vendorName are same"

    .line 834
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 843
    :cond_a8
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p0, :cond_d8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_be} :catch_bf

    goto :goto_d8

    :catch_bf
    move-exception p0

    .line 845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at enableChainingForAddAll API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    :goto_d8
    return v1
.end method

.method public checKIfUidIsExempted(I)Z
    .registers 7

    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x0

    .line 1647
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_c

    return v1

    .line 1651
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1652
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1653
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_2b

    const-string v2, "Check to see if Captive portal is being added to exempted list returns true"

    .line 1655
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_46

    move v1, v4

    :cond_43
    if-eqz v1, :cond_10

    goto :goto_4b

    :catch_46
    const-string p0, "Error occured while trying to check if the app Id is added to exempt list"

    .line 1666
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return v1
.end method

.method public checkForSystemUIDApplicationForVpn(Ljava/lang/String;I)Z
    .registers 9

    const-string p0, "FW-KnoxVpnHelper"

    .line 308
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 311
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 312
    invoke-interface {v0, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 313
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p1, :cond_19

    .line 315
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1a

    :cond_19
    const/4 p1, -0x1

    .line 317
    :goto_1a
    sget-boolean p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p2, :cond_32

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "check system UID : uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_32
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_3c

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_55

    const/4 v1, 0x1

    goto :goto_55

    :catch_3c
    move-exception p1

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in checkForSystemUIDApplicationForVpn : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return v1
.end method

.method public checkIfAddAllPackage(Ljava/lang/String;)Z
    .registers 4

    .line 939
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ADD_ALL_PACKAGES"

    .line 940
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public checkIfAllProfilesDeactivated()Z
    .registers 3

    .line 1729
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    .line 1730
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1731
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    :cond_1e
    return v1
.end method

.method public checkIfChainingEnabledForVendor(IZ)I
    .registers 7

    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, -0x2

    .line 868
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 869
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v3

    if-ne v3, p1, :cond_d

    const/4 v3, -0x1

    if-eqz p2, :cond_29

    .line 871
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v2

    if-eq v2, v3, :cond_d

    goto :goto_2f

    .line 877
    :cond_29
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_31

    if-ne v2, v3, :cond_d

    :goto_2f
    move v1, v2

    goto :goto_4e

    :catch_31
    move-exception p0

    .line 886
    sget-boolean p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p2, :cond_4e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at checkIfChainingEnabledForVendor "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_4e
    :goto_4e
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p0, :cond_6f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "is chaining feature enabled  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "for vendor "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return v1
.end method

.method public checkIfPlatformSigned(ILjava/lang/String;)Z
    .registers 8

    .line 2167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p0, 0x0

    .line 2169
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/16 v3, 0x80

    .line 2170
    invoke-interface {v2, p2, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 2172
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    :goto_15
    const/16 p2, 0x3e8

    .line 2174
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_24
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    if-nez p1, :cond_24

    const/4 p0, 0x1

    goto :goto_24

    :catchall_1f
    move-exception p0

    .line 2180
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2181
    throw p0

    .line 2180
    :catch_24
    :cond_24
    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    .line 703
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_36

    .line 705
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v1

    if-ne v1, p1, :cond_12

    move v0, p1

    goto :goto_36

    .line 707
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1b

    if-nez p0, :cond_36

    const/4 p0, 0x0

    move v0, p0

    goto :goto_36

    :catch_1b
    move-exception p0

    .line 712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception at checkIfProfileHasChainingFeature"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return v0
.end method

.method public checkIfProfileListEmpty()Z
    .registers 5

    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x1

    .line 908
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v2, "VpnProfileInfo"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 909
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_17

    if-lez p0, :cond_30

    const/4 p0, 0x0

    move v1, p0

    goto :goto_30

    :catch_17
    move-exception p0

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at checkIfProfileListEmpty API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_30
    :goto_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfProfileListEmpty:profileListEmpty value is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public checkIfUidHasInternetPermission(I)I
    .registers 12

    const-string/jumbo v0, "packageUid"

    const-string v1, "FW-KnoxVpnHelper"

    const/4 v2, 0x2

    .line 1312
    :try_start_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-interface {v3, v4, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    .line 1314
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v4, "vpnNoInternetPermission"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 1318
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1314
    invoke-virtual {p0, v4, v5, v7, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 1322
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_3c

    if-lez p0, :cond_37

    if-nez v3, :cond_41

    move v2, v9

    goto :goto_41

    :cond_37
    if-nez v3, :cond_3a

    goto :goto_41

    :cond_3a
    move v2, v6

    goto :goto_41

    :catch_3c
    const-string p0, "Error occured while checking if uid has been upgraded with internet permission"

    .line 1334
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_41
    :goto_41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkIfUidHasInternetPermission for uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " return value is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public checkIfUidIsBlackListed(II)Z
    .registers 8

    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x0

    move v2, v1

    .line 922
    :goto_4
    :try_start_4
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 923
    aget-object v4, v3, v2

    invoke-virtual {p0, p2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_2d

    .line 924
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p0, :cond_2b

    .line 925
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkIfUidIsBlackListed: mBlacklistedApplication value is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v3, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_30

    :cond_2b
    const/4 v1, 0x1

    goto :goto_49

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_30
    move-exception p0

    .line 931
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception at checkIfUidIsBlackListed API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_49
    :goto_49
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p0, :cond_61

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkIfUidIsBlackListed: isUidBackListed value is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return v1
.end method

.method public checkIfVpnProfileTableIsEmpty(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x1

    .line 684
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v2, "VpnProfileInfo"

    const-string/jumbo v3, "vendorName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x0

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 688
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_22

    if-lez p0, :cond_3b

    move v1, v5

    goto :goto_3b

    :catch_22
    move-exception p0

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at checkIfKnoxVpnDatabaseIsEmpty API: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_3b
    :goto_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkIfKnoxVpnDatabaseIsEmpty: tableEmpty value is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    .registers 9

    const-string/jumbo v0, "packageName"

    const-string v1, "FW-KnoxVpnHelper"

    const/4 v2, 0x0

    .line 332
    :try_start_6
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnPackageInfo"

    const-string/jumbo v4, "packageCid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 336
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4a

    .line 340
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4a

    .line 341
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v2, p1, [Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_4a
    const-string/jumbo p0, "getting container package list in database : DB read for packages returned NULL"

    .line 347
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_50} :catch_51

    goto :goto_6b

    :catch_51
    move-exception p0

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getting container package list in database : Exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    return-object v2
.end method

.method public enableKnoxVpnFlagForTether(Z)V
    .registers 6

    .line 2186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2188
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->enableKnoxVpnFlagForTether(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_11
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 2192
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_f
    move-exception p0

    goto :goto_29

    :catch_11
    :try_start_11
    const-string p0, "FW-KnoxVpnHelper"

    .line 2190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error at enableKnoxVpnFlagForTether "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_f

    goto :goto_b

    :goto_28
    return-void

    .line 2192
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2193
    throw p0
.end method

.method public final excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .line 2138
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 2140
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2141
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    return-object p0
.end method

.method public getActiveNetworkInterface()Ljava/lang/String;
    .registers 6

    const-string v0, "FW-KnoxVpnHelper"

    .line 1090
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1092
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/net/IVpnManager;->getActiveDefaultInterface()Ljava/lang/String;

    move-result-object v3

    .line 1093
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The active interface name is "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_24

    goto :goto_29

    :catchall_24
    :try_start_24
    const-string p0, "Exception occured while trying to get the active interface details"

    .line 1095
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2d

    .line 1097
    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_2d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1098
    throw p0
.end method

.method public getAdminIdForUserVpn(I)I
    .registers 7

    .line 574
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 575
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 576
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 577
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p0

    return p0

    .line 582
    :cond_3f
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    const/4 v0, -0x1

    if-eqz p0, :cond_62

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdminIdForUserVpn: admin id value is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "for user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return v0
.end method

.method public getAdminIdFromPackageName(Ljava/lang/String;)I
    .registers 4

    .line 1707
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 1708
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1709
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1710
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p0

    goto :goto_34

    :cond_33
    const/4 p0, -0x1

    :goto_34
    return p0
.end method

.method public getAdminPackageNameForVpnClient(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1690
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    .line 1691
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1692
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1693
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p0

    goto :goto_26

    :cond_25
    const/4 p0, -0x1

    .line 1698
    :goto_26
    :try_start_26
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    const/4 p0, 0x0

    :goto_30
    return-object p0
.end method

.method public getAdminUidForPersona(I)I
    .registers 4

    .line 654
    new-instance p0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 658
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public getChainingValueForProfile(Ljava/lang/String;)I
    .registers 2

    .line 1912
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1914
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, -0x1

    :goto_e
    return p0
.end method

.method public getConnectionType(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 1742
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 1744
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move v0, p0

    goto :goto_25

    .line 1747
    :catch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occured while trying to fetch the profile list for the vpn client "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return v0
.end method

.method public getContainerIdFromPackageName(Ljava/lang/String;)I
    .registers 3

    const/4 p0, -0x1

    if-eqz p1, :cond_10

    :try_start_3
    const-string v0, "_"

    .line 641
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 643
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    return p0
.end method

.method public getDefaultNetworkInterface(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1850
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1851
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getActiveNetworkInterface()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    move-object v0, p0

    :catch_15
    :cond_15
    return-object v0
.end method

.method public getExemptedListFromDatabase(Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v0, "packageUid"

    const-string v1, "FW-KnoxVpnHelper"

    .line 1209
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    if-nez v2, :cond_e

    return-void

    .line 1213
    :cond_e
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v2

    .line 1215
    :try_start_12
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v3, "vpnExemptInfo"

    const-string/jumbo v4, "profileName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2c} :catch_68

    if-eqz p0, :cond_81

    .line 1225
    :try_start_2e
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1226
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4d} :catch_4e

    goto :goto_32

    :catch_4e
    move-exception p0

    .line 1230
    :try_start_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getExemptedListFromDatabase "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_67} :catch_68

    goto :goto_81

    :catch_68
    move-exception p0

    .line 1234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getExemptedListFromDatabase : Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    :goto_81
    return-void
.end method

.method public getInstalledPackages(I)[Ljava/lang/String;
    .registers 7

    .line 205
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 208
    invoke-interface {p0, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 209
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 211
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 213
    :cond_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    .line 216
    aput-object v1, p0, p1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4e

    move p1, v2

    goto :goto_3b

    :cond_4d
    return-object p0

    :catch_4e
    move-exception p0

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in getInstalledPackages : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceNameForUsbtethering()Ljava/lang/String;
    .registers 9

    .line 2120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 2122
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object p0

    .line 2123
    array-length v3, p0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_39

    aget-object v5, p0, v4

    .line 2124
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->USB_TETHERING_IFACE:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_2e
    .catchall {:try_start_5 .. :try_end_25} :catchall_2c

    if-eqz v6, :cond_29

    move-object v2, v5

    goto :goto_39

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :catchall_2c
    move-exception p0

    goto :goto_3d

    .line 2130
    :catch_2e
    :try_start_2e
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p0, :cond_39

    const-string p0, "FW-KnoxVpnHelper"

    const-string v3, "Exception at getInterfaceNameForUsbtethering"

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_2c

    .line 2132
    :cond_39
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    throw p0
.end method

.method public getIpAddressForUsbTetheringInterface()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 2093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2096
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object p0

    .line 2097
    array-length v3, p0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_5e

    aget-object v5, p0, v4

    .line 2098
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->USB_TETHERING_IFACE:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 2099
    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0

    .line 2100
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InterfaceAddress;

    .line 2101
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 2102
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_4e

    goto :goto_37

    .line 2105
    :cond_4e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_51} :catch_57
    .catchall {:try_start_9 .. :try_end_51} :catchall_55

    goto :goto_37

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :catchall_55
    move-exception p0

    goto :goto_62

    :catch_57
    :try_start_57
    const-string p0, "FW-KnoxVpnHelper"

    const-string v3, "Exception at getIpAddressForUsbTetheringInterface"

    .line 2111
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_55

    .line 2113
    :cond_5e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2114
    throw p0
.end method

.method public getIpChainNameAfterUpgrade(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2082
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2083
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 2084
    :goto_a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_25

    .line 2085
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/16 v1, 0x12

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const-string v1, "STUVWXYZ1234567890"

    .line 2086
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 2088
    :cond_25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIpChainNameForProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1719
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_20

    .line 1721
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error occured while trying to fetch the profile list for the vpn client "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1724
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getIpChainName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getListOfActiveUsers()Ljava/util/HashSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string p0, "FW-KnoxVpnHelper"

    .line 1104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1107
    :try_start_b
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1108
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 1109
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the list of active users are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_51
    .catchall {:try_start_b .. :try_end_4a} :catchall_4f

    goto :goto_1e

    .line 1116
    :cond_4b
    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6b

    :catchall_4f
    move-exception p0

    goto :goto_6c

    :catch_51
    move-exception v3

    .line 1114
    :try_start_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured while trying to get the list of active users "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_4f

    goto :goto_4b

    :goto_6b
    return-object v0

    .line 1116
    :goto_6c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    throw p0
.end method

.method public getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x0

    .line 951
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p1

    if-eqz p1, :cond_89

    .line 953
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_84

    .line 954
    :try_start_10
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 955
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ADD_ALL_PACKAGES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 956
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v1

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "knox vpn proxy settings is going to be applied for the user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 961
    :cond_57
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUidForPackageName(Ljava/lang/String;)I

    move-result v1

    .line 962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "knox vpn proxy settings is going to be applied for the app whose uid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_18

    .line 964
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_80} :catch_83

    goto :goto_18

    :cond_81
    move-object v1, v2

    goto :goto_89

    :catch_83
    move-object v1, v2

    :catch_84
    const-string p0, "Exception occured while getting the list of uid added to the vpn profile"

    .line 969
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return-object v1
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    const-string/jumbo v0, "network_management"

    .line 167
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 169
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_13

    .line 170
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 173
    :cond_13
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public final getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .registers 4

    .line 2344
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    .line 2345
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->maskRawAddress([BI)V

    .line 2349
    :try_start_7
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 2351
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNetworkPart error - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNetworkPartWithMask(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 2147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2149
    :try_start_5
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 2151
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .line 2154
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v2

    .line 2155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4e} :catch_4f

    goto :goto_17

    :catch_4f
    move-exception p0

    .line 2159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return-object v0
.end method

.method public getNonChainedVendoUid(I)I
    .registers 5

    .line 1836
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

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

    .line 1837
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v1

    if-nez v1, :cond_a

    .line 1838
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 1839
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result p0

    goto :goto_30

    :cond_2f
    const/4 p0, -0x1

    :goto_30
    return p0
.end method

.method public getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 665
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    const-string v0, "FW-KnoxVpnHelper"

    if-eqz p0, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Passed string is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const-string/jumbo v1, "sec_container_"

    .line 666
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 667
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .line 673
    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_55

    .line 674
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Returned string is :"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-object p1

    :cond_56
    return-object p2
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .registers 3

    .line 297
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 298
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_25

    :catch_9
    move-exception p0

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in getPackageNameForUid : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_25
    return-object p0
.end method

.method public getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, "FW-KnoxVpnHelper"

    .line 620
    :try_start_2
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "vpn getPersonifiedName : container id is regular device"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p1

    .line 624
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception getting getPersonifiedName : Error :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfileNameForExemptedUid(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 1590
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1591
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1592
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v2

    .line 1593
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1594
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_32

    move-object v0, p0

    goto :goto_4e

    :catch_32
    move-exception p0

    .line 1601
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getProfileNameForExemptedUid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public getProfileNameForPermissionUpdatedApp(I)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 1343
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v2, "vpnNoInternetPermission"

    const-string/jumbo v3, "packageUid"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1347
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    .line 1343
    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 1351
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_47

    .line 1352
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    .line 1353
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_40

    move-object v1, p0

    goto :goto_47

    :catch_40
    const-string p0, "FW-KnoxVpnHelper"

    const-string p1, "Error occured while checking if uid has been upgraded with internet permission"

    .line 1358
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-object v1
.end method

.method public getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 539
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "KNOX_VPN_PARAMETERS"

    .line 540
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo p1, "profile_attribute"

    .line 541
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo p1, "profileName"

    .line 542
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_36

    :catch_1a
    move-exception p0

    .line 544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get profilename from json : Error parsing JSON \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_36
    return-object p0
.end method

.method public getProfileOfVendor(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 788
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v2, "VpnProfileInfo"

    const-string/jumbo v3, "vendorName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 796
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_55

    .line 797
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 798
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    goto :goto_29

    :catch_3a
    move-exception p0

    .line 802
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception at getProfileOwningThePackage "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-object v1
.end method

.method public getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 720
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v2, "VpnPackageInfo"

    const-string/jumbo v3, "packageName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 728
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_55

    .line 729
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 730
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    goto :goto_29

    :catch_3a
    move-exception p0

    .line 734
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception at getProfileOwningThePackage "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-object v1
.end method

.method public getProfileOwningTheUid(I)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 743
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v2, "VpnPackageInfo"

    const-string/jumbo v3, "packageUid"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 747
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    .line 743
    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 751
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_59

    .line 752
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 753
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_3e

    goto :goto_2d

    :catch_3e
    move-exception p0

    .line 757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception at getProfileOwningTheUid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-object v1
.end method

.method public getProfileOwningTheUidFromCache(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 1755
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    .line 1756
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1757
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1758
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_1f

    .line 1759
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_38

    :cond_35
    if-eqz v0, :cond_b

    goto :goto_4e

    .line 1767
    :catch_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occured while trying to fetch the profileName for uid for on-demand use-case"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 765
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v2, "vpnNoInternetPermission"

    const-string/jumbo v3, "packageUid"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 769
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    .line 765
    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 773
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5a

    .line 774
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 775
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_3f

    goto :goto_2e

    :catch_3f
    move-exception p0

    .line 779
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception at getProfileOwningTheUidWithNoInternetPermission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-object v1
.end method

.method public getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_f

    const-string p0, "_"

    .line 632
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningUidList(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FW-KnoxVpnHelper"

    .line 1923
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_10

    return-object v1

    .line 1929
    :cond_10
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1930
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1931
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3e

    const/4 v4, 0x0

    .line 1933
    :goto_26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 1934
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1938
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_46
    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1939
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v3

    .line 1940
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The uid added to the profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is currently in running state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_83} :catch_84

    goto :goto_46

    .line 1946
    :catch_84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occured while trying to get the RunningUidList for profile "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    return-object v1
.end method

.method public getTetherAuthDetailsFromDatabase(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    .line 1532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1533
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v1, "profileName"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "VpnProfileInfo"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_f3

    .line 1539
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f3

    .line 1540
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    const-string/jumbo v1, "tetherLoginpage"

    .line 1541
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1542
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key-tether-auth-login-page"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    const-string/jumbo v1, "tetherResponsePage"

    .line 1545
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1546
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key-tether-auth-response-page"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    const-string/jumbo v1, "tetherClientCertIssuerCN"

    .line 1549
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1550
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key-tether-client-certificate-issuer-cn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    const-string/jumbo v1, "tetherClientCertIssuedCN"

    .line 1553
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 1554
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key-tether-client-certificate-issued-cn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    const-string/jumbo v1, "tetherCaptivePortalAlias"

    .line 1557
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 1558
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key-tether-captive-portal-alias"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    const-string/jumbo v1, "tetherCaptivePortalCert"

    .line 1561
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1562
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "key-tether-captive-portal-certificate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_a5
    const-string/jumbo v1, "tetherCAlias"

    .line 1565
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 1566
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key-tether-ca-alias"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    const-string/jumbo v1, "tetherCACert"

    .line 1569
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 1570
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "key-tether-ca-certificate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_cb
    const-string/jumbo v1, "tetherServerCert"

    .line 1573
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 1574
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "key-tether-user-certificate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_de
    const-string/jumbo v1, "tetherServerAlias"

    .line 1577
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1578
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "key-tether-user-alias"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    :cond_f3
    return-object v0
.end method

.method public getTransformedUIDForPackage(II)I
    .registers 3

    .line 291
    invoke-static {p1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public getUIDForPackage(ILjava/lang/String;)I
    .registers 9

    const-string p0, "FW-KnoxVpnHelper"

    .line 270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    .line 273
    :try_start_7
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x80

    .line 274
    invoke-interface {v3, p2, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 275
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v3, :cond_29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application uid for info :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-eqz p2, :cond_2e

    .line 277
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2f

    :cond_2e
    move p2, v2

    :goto_2f
    if-eqz v3, :cond_4d

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application uid for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4d} :catch_54
    .catchall {:try_start_7 .. :try_end_4d} :catchall_52

    .line 285
    :cond_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, p2

    goto :goto_70

    :catchall_52
    move-exception p0

    goto :goto_71

    :catch_54
    move-exception p1

    .line 282
    :try_start_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getUIDForPackage : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_52

    .line 285
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_70
    return v2

    :goto_71
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    throw p0
.end method

.method public getUidForPackageName(Ljava/lang/String;)I
    .registers 8

    .line 851
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    const-string v1, "FW-KnoxVpnHelper"

    if-eqz v0, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUidForPackageName: transformedPackageName value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v2, -0x1

    .line 854
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_37

    .line 855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUidForPackageName: userIdOfVendor value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_74

    .line 857
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getUidForPackageName: uidOfVendor value is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_56} :catch_57

    goto :goto_74

    :catch_57
    move-exception p0

    .line 859
    sget-boolean p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p1, :cond_74

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception at getUidForPackageName API "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    :goto_74
    return v2
.end method

.method public getUninsalledAppsFromExemptedList(ILjava/lang/String;)Ljava/util/HashSet;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "packageName"

    const-string/jumbo v1, "packageUid"

    const-string v2, "FW-KnoxVpnHelper"

    .line 1239
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1241
    :try_start_d
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v5, "vpnExemptInfo"

    const-string/jumbo v6, "profileName"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_86

    if-eqz p2, :cond_9f

    .line 1251
    :try_start_29
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2d
    :goto_2d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1252
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2d

    .line 1254
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1255
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p1, :cond_2d

    .line 1256
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding uninstalledPackage to exempt list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6b} :catch_6c

    goto :goto_2d

    :catch_6c
    move-exception p0

    .line 1263
    :try_start_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getExemptedListFromDatabase "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_85} :catch_86

    goto :goto_9f

    :catch_86
    move-exception p0

    .line 1267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getExemptedListFromDatabase : Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    return-object v3
.end method

.method public getUninsalledAppsFromExemptedList(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "packageName"

    const-string/jumbo v1, "packageUid"

    .line 1273
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1275
    :try_start_b
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v3, "vpnExemptInfo"

    const-string/jumbo v4, "profileName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 1285
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1286
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2b

    .line 1288
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 1290
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4b} :catch_4c

    goto :goto_2b

    :catch_4c
    :cond_4c
    return-object v2
.end method

.method public getUsbTetheringAuthConfig(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    const/4 v0, 0x0

    .line 1501
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v1, "VpnProfileInfo"

    const-string/jumbo v2, "profileName"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v0

    new-array p1, v3, [Ljava/lang/String;

    aput-object p2, p1, v0

    invoke-virtual {p0, v1, v2, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 1509
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_47

    .line 1510
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    if-nez p3, :cond_3b

    .line 1512
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_47

    :goto_39
    move v0, v3

    goto :goto_47

    :cond_3b
    if-ne p3, v3, :cond_47

    .line 1517
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_47

    .line 1518
    array-length p0, p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_47

    if-lez p0, :cond_47

    goto :goto_39

    :catch_47
    :cond_47
    :goto_47
    return v0
.end method

.method public getUserPackageListForProfile(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 11

    .line 226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 229
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    .line 231
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    .line 232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    .line 234
    invoke-interface {p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v4, 0x0

    if-eqz p2, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_4e

    .line 239
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 240
    iget v7, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_39

    const/4 v4, 0x1

    :cond_4e
    if-eqz v4, :cond_51

    goto :goto_22

    .line 248
    :cond_51
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 255
    :cond_57
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    new-array v2, p0, [Ljava/lang/String;

    .line 257
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_61
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_90

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    add-int/lit8 p2, v4, 0x1

    .line 258
    aput-object p1, v2, v4
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_71} :catch_75
    .catchall {:try_start_5 .. :try_end_71} :catchall_73

    move v4, p2

    goto :goto_61

    :catchall_73
    move-exception p0

    goto :goto_94

    :catch_75
    move-exception p0

    :try_start_76
    const-string p1, "FW-KnoxVpnHelper"

    .line 261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getInstalledPackages : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_76 .. :try_end_90} :catchall_73

    .line 263
    :cond_90
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_94
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    throw p0
.end method

.method public final getVpnManagerService()Landroid/net/IVpnManager;
    .registers 1

    const-string/jumbo p0, "vpn_management"

    .line 163
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object p0

    return-object p0
.end method

.method public getpackageCountByUserId(Ljava/lang/String;I)I
    .registers 5

    .line 1899
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2c

    .line 1901
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1902
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v1

    if-ne v1, p2, :cond_11

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v0

    if-lez v0, :cond_11

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_2c
    return p1
.end method

.method public getuidListForProfile(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1863
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 1865
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1866
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result p1

    if-lez p1, :cond_15

    .line 1868
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_2f

    goto :goto_15

    :catch_2f
    :cond_2f
    return-object v0
.end method

.method public getuserIdForExemptedUidByProfile(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1628
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1630
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_e

    return-object v0

    .line 1634
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1635
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1636
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_32

    goto :goto_16

    :catch_32
    const-string p0, "FW-KnoxVpnHelper"

    const-string p1, "Error occured at getuserIdForExemptedUidByProfile"

    .line 1639
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-object v0
.end method

.method public getuserIdForExemptedUids()Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1607
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1609
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_e

    return-object v0

    .line 1613
    :cond_e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1614
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 1615
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1616
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1617
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_49

    goto :goto_2d

    :catch_49
    const-string p0, "FW-KnoxVpnHelper"

    const-string v1, "Error occured while trying to fetch the list of userId for exempted uids"

    .line 1622
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-object v0
.end method

.method public getuserIdListForProfile(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1881
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 1883
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1884
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_15

    .line 1886
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result p1

    .line 1887
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_34

    goto :goto_15

    :catch_34
    :cond_34
    return-object v0
.end method

.method public isCallerNonChainedVendor(I)Z
    .registers 4

    .line 1823
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1824
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v1

    if-nez v1, :cond_a

    .line 1825
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v1

    if-ne v1, p1, :cond_a

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v1, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method public isKnoxVpnProfile(Ljava/lang/String;)Z
    .registers 2

    .line 1794
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isNativeVpnClient(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 1775
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_41

    .line 1777
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v2

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v3

    .line 1779
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_27

    const-string v2, "com.samsung.sVpn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1780
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVpnType(I)V

    move v0, v1

    goto :goto_41

    .line 1783
    :cond_27
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVpnType(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_41

    .line 1787
    :catch_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occured while trying to check if profile is configured by native vpn client "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    return v0
.end method

.method public isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z
    .registers 5

    .line 895
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 896
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_21

    .line 898
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method public isPackageInstalled(Ljava/lang/String;I)Z
    .registers 9

    const-string p0, "FW-KnoxVpnHelper"

    .line 182
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 185
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 186
    invoke-interface {v0, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 187
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p2, :cond_35

    .line 189
    sget-boolean p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p1, :cond_33

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "package present. application uid for user 100 = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 p0, 0x1

    return p0

    .line 192
    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "package not present : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4a} :catch_4b

    return v1

    :catch_4b
    const-string p1, "Exception in isPackageInstalled"

    .line 196
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return v1
.end method

.method public isUsbTetheringConfigured(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1807
    :cond_4
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "KNOX_VPN_PARAMETERS"

    .line 1808
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "knox"

    .line 1809
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "allow_usb_over_vpn_tethering"

    .line 1811
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_20

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    move p0, v0

    :catch_20
    :cond_20
    return p0
.end method

.method public isUsingKnoxPackageExists(I)Z
    .registers 10

    const-string/jumbo v0, "packageName"

    const/4 v1, 0x0

    .line 590
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnPackageInfo"

    const-string/jumbo v4, "packageCid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    .line 594
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    .line 590
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 599
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6d

    .line 600
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_51

    move v3, v1

    :goto_2d
    :try_start_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 601
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ADD_ALL_PACKAGES"

    .line 602
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_47} :catch_4e

    if-eqz v3, :cond_4a

    goto :goto_6d

    :cond_4a
    move v3, v5

    goto :goto_2d

    :cond_4c
    move v1, v3

    goto :goto_6d

    :catch_4e
    move-exception p0

    move v1, v3

    goto :goto_52

    :catch_51
    move-exception p0

    .line 612
    :goto_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isUsingKnoxPackageExists \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    :goto_6d
    return v1
.end method

.method public isWideVpnExists(I)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ADD_ALL_PACKAGES"

    .line 553
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 554
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v1, "VpnPackageInfo"

    const-string/jumbo v2, "packageName"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v0

    const-string/jumbo p1, "profileName"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 562
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2c

    if-lez p0, :cond_48

    move v0, v3

    goto :goto_48

    :catch_2c
    move-exception p0

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isPackageExists \n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    return v0
.end method

.method public final maskRawAddress([BI)V
    .registers 5

    if-ltz p2, :cond_25

    .line 2357
    array-length p0, p1

    mul-int/lit8 p0, p0, 0x8

    if-gt p2, p0, :cond_25

    .line 2362
    div-int/lit8 p0, p2, 0x8

    .line 2363
    rem-int/lit8 p2, p2, 0x8

    const/16 v0, 0xff

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v0, p2

    int-to-byte p2, p2

    .line 2366
    array-length v0, p1

    if-ge p0, v0, :cond_1b

    aget-byte v0, p1, p0

    and-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, p0

    :cond_1b
    :goto_1b
    add-int/lit8 p0, p0, 0x1

    .line 2370
    array-length p2, p1

    if-ge p0, p2, :cond_24

    const/4 p2, 0x0

    .line 2371
    aput-byte p2, p1, p0

    goto :goto_1b

    :cond_24
    return-void

    .line 2358
    :cond_25
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IP address with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes has invalid prefix length "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public profileListForClient(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 1672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    .line 1675
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1676
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1677
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1678
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_33

    goto :goto_f

    .line 1682
    :catch_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occured while trying to fetch the profile list for the vpn client "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-object v0
.end method

.method public registerNetdTetherEventListener(Z)V
    .registers 6

    .line 2197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_e

    .line 2200
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/INetworkManagementService;->registerNetdTetherEventListener()V

    goto :goto_15

    .line 2202
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/INetworkManagementService;->unregisterNetdTetherEventListener()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_1b
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    .line 2207
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_32

    :catchall_19
    move-exception p0

    goto :goto_33

    :catch_1b
    :try_start_1b
    const-string p0, "FW-KnoxVpnHelper"

    .line 2205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error at registerNetdTetherEventListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_19

    goto :goto_15

    :goto_32
    return-void

    .line 2207
    :goto_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2208
    throw p0
.end method

.method public removeExemptedListToDatabase(Ljava/lang/String;I)Z
    .registers 6

    const/4 p1, 0x0

    .line 1189
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v0, "vpnExemptInfo"

    const-string/jumbo v1, "packageUid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1190
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 1189
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_37

    :catch_1b
    move-exception p0

    .line 1192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeExemptedListToDatabase : Exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FW-KnoxVpnHelper"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return p1
.end method

.method public removeExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 p1, 0x0

    .line 1200
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v0, "vpnExemptInfo"

    const-string/jumbo v1, "packageName"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    goto :goto_33

    :catch_17
    move-exception p0

    .line 1203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeExemptedListToDatabase : Exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FW-KnoxVpnHelper"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return p1
.end method

.method public removePackagesFromPermissionDb(Ljava/lang/String;I)V
    .registers 11

    const-string/jumbo v0, "vpnNoInternetPermission"

    const-string/jumbo v1, "packageUid"

    .line 1373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    :try_start_b
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v4, "profileName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, v4, v6, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 1383
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_53

    .line 1384
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1385
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2e

    .line 1386
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_2e

    .line 1387
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1390
    :cond_53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1391
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    .line 1392
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v7

    .line 1391
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_78} :catch_79

    goto :goto_57

    :catch_79
    :cond_79
    return-void
.end method

.method public removeProfileCredentials(Ljava/lang/String;)V
    .registers 5

    const-string p0, "_"

    .line 1053
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "proxy-username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "proxy-password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1057
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "captivecert_pwd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1059
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cacert_pwd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1061
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "servercert_pwd"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8c} :catch_8d

    goto :goto_ac

    :catch_8d
    move-exception p0

    .line 1064
    sget-boolean p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p1, :cond_ac

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception occured while removing the profile credentials "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    :goto_ac
    return-void
.end method

.method public retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1071
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_3d

    :catch_1d
    move-exception p0

    .line 1073
    sget-boolean p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p1, :cond_3c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occured while Retrieve the profile credentials "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    return-object p0
.end method

.method public saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1081
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_29

    :catch_9
    move-exception p0

    .line 1083
    sget-boolean p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz p1, :cond_28

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occured while saving the profile credentials "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public sendProxyConfigBroadcast(Ljava/util/HashMap;ILjava/util/HashSet;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "FW-KnoxVpnHelper"

    .line 989
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 991
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_164

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 992
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x24000000

    .line 993
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 995
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v1, :cond_46

    .line 996
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping sending the broadcast which contains proxy configuration to vpn client for per-app use-case "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_46
    move-object/from16 v8, p1

    .line 998
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_119

    .line 999
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 1000
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstalledPackages(I)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15e

    .line 1002
    array-length v12, v11

    const/4 v13, 0x0

    :goto_64
    if-ge v13, v12, :cond_15e

    aget-object v14, v11, v13

    .line 1004
    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_85

    .line 1005
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skipping sending the broadcast which contains proxy configuration to vpn client for addAll use-case "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_111

    .line 1008
    :cond_85
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    :goto_8b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1009
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_dc

    .line 1010
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b0

    goto :goto_df

    .line 1013
    :cond_b0
    array-length v1, v0

    const/4 v10, 0x0

    :goto_b2
    if-ge v10, v1, :cond_dc

    move/from16 v17, v1

    aget-object v1, v0, v10

    .line 1014
    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d7

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "skipping sending the broadcast which contains proxy configuration to exempted uid for addAll use-case "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_dc

    :cond_d7
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v17

    goto :goto_b2

    :cond_dc
    :goto_dc
    if-eqz v16, :cond_df

    goto :goto_e4

    :cond_df
    :goto_df
    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_8b

    :cond_e4
    :goto_e4
    if-eqz v16, :cond_e7

    goto :goto_111

    .line 1027
    :cond_e7
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_100

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sending proxy broadcast to the app added to knox vpn profile for addAll use-case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_100
    invoke-virtual {v7, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v1, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_111
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto/16 :goto_64

    .line 1033
    :cond_119
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15e

    .line 1035
    array-length v1, v0

    const/4 v10, 0x0

    :goto_129
    if-ge v10, v1, :cond_15e

    aget-object v9, v0, v10

    .line 1036
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v11, :cond_146

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sending proxy broadcast to the app added to knox vpn profile for per use-case "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_146
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v7, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15b} :catch_16a
    .catchall {:try_start_a .. :try_end_15b} :catchall_168

    add-int/lit8 v10, v10, 0x1

    goto :goto_129

    :cond_15e
    move-object/from16 v0, p0

    move/from16 v1, p2

    goto/16 :goto_12

    .line 1046
    :cond_164
    :goto_164
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_184

    :catchall_168
    move-exception v0

    goto :goto_185

    :catch_16a
    move-exception v0

    .line 1044
    :try_start_16b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured while sending proxy broadcast to knox vpn apps "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catchall {:try_start_16b .. :try_end_183} :catchall_168

    goto :goto_164

    :goto_184
    return-void

    .line 1046
    :goto_185
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1047
    throw v0
.end method

.method public setProxyFlagForEmail(IZ)V
    .registers 3

    const-string/jumbo p0, "net.vpn.proxy.email."

    if-eqz p2, :cond_1a

    .line 982
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 984
    :cond_1a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public setRandomIpChainName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2047
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2048
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x1

    .line 2050
    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_26

    .line 2051
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/16 v4, 0x24

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    .line 2052
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 2054
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2056
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2057
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_34

    .line 2060
    :cond_4b
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getIpChainName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v2, 0x0

    :cond_56
    if-eqz v2, :cond_0

    .line 2067
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 2069
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setIpChainName(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateIpChainNameForProfile(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2073
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occured while trying to get the setRandomIpChainName for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FW-KnoxVpnHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startUid(I)I
    .registers 5

    const-string p0, "FW-KnoxVpnHelper"

    const v0, 0x186a0

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 1125
    :try_start_8
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_22

    goto :goto_3c

    :catch_22
    move-exception v0

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUidOfPersona Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return p1
.end method

.method public stopUid(I)I
    .registers 6

    const-string p0, "FW-KnoxVpnHelper"

    const v0, 0x186a0

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    const/4 v0, -0x1

    .line 1137
    :try_start_9
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v1, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    add-int/lit8 p1, p1, -0x1

    const v0, 0x1869f

    add-int/2addr v0, p1

    if-eqz v1, :cond_5a

    .line 1139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopUid - The last uid for the persona for which dns is going to be applied is"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3f} :catch_40

    goto :goto_5a

    :catch_40
    move-exception p1

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUidOfPersona Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    return v0
.end method

.method public updateExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13

    const-string/jumbo p1, "packageUid"

    const-string/jumbo v0, "packageName"

    const-string v1, "FW-KnoxVpnHelper"

    const-string/jumbo v2, "vpnExemptInfo"

    const/4 v3, 0x0

    .line 1164
    :try_start_c
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    aput-object p2, v7, v3

    const-string/jumbo v8, "profileName"

    filled-new-array {v8, p1}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v2, v5, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_78

    .line 1168
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_78

    .line 1169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updating exempted application details after install-uninstall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1171
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v4, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1172
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    new-array p3, v6, [Ljava/lang/String;

    aput-object p2, p3, v3

    .line 1178
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    invoke-virtual {p0, v2, p1, p3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5c} :catch_5e

    move v3, p0

    goto :goto_78

    :catch_5e
    move-exception p0

    .line 1181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateExemptedListToDatabase : Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    :goto_78
    return v3
.end method

.method public updateIpChainNameForProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1364
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "vpnIpChainName"

    .line 1365
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "profileName"

    .line 1366
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1368
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string p1, "VpnProfileInfo"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    .line 1369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateIpChainNameForProfile "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateProxyList(IZ)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 975
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 976
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public updateUidsToVpnUidRange(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2281
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2285
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v3

    .line 2286
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2289
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v4

    invoke-interface {v4, p1, v3, v6}, Landroid/net/IVpnManager;->resetUidListInNetworkCapabilities(Ljava/lang/String;ILjava/lang/String;)V

    .line 2290
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2292
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2294
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 2295
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v5

    const/4 v7, -0x2

    if-ne v5, v7, :cond_4b

    .line 2297
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v4

    .line 2298
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addUidsToVpnUidRange(Ljava/lang/String;I)V

    goto :goto_30

    :cond_4b
    if-lez v5, :cond_30

    .line 2301
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 2307
    :cond_55
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_87

    .line 2308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2309
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    .line 2311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2313
    :try_start_75
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v1

    const/4 v4, 0x1

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Landroid/net/IVpnManager;->updateUidRangesToPerAppVpn(Ljava/lang/String;IZ[ILjava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_82

    .line 2315
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_87

    :catchall_82
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2316
    throw p0

    .line 2319
    :cond_87
    :goto_87
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_92

    .line 2320
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->applyBlockingRulesToUidRange(Ljava/lang/String;Z)V

    goto :goto_96

    :cond_92
    const/4 v0, 0x0

    .line 2322
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->applyBlockingRulesToUidRange(Ljava/lang/String;Z)V

    :goto_96
    return-void
.end method

.method public updateUsbTetherAuthDetails(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 20

    move-object/from16 v0, p2

    .line 1409
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "usbTetheringAuth"

    const-string/jumbo v5, "tetherServerAlias"

    const-string/jumbo v6, "tetherServerCert"

    const-string/jumbo v7, "tetherCAlias"

    const-string/jumbo v8, "tetherCACert"

    const-string/jumbo v9, "tetherCaptivePortalAlias"

    const-string/jumbo v10, "tetherCaptivePortalCert"

    const-string/jumbo v11, "tetherClientCertIssuedCN"

    const-string/jumbo v12, "tetherClientCertIssuerCN"

    const-string/jumbo v13, "tetherResponsePage"

    const-string/jumbo v14, "tetherLoginpage"

    if-eqz p3, :cond_ff

    .line 1411
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "key-tether-auth-login-page"

    .line 1413
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_44

    .line 1414
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 1416
    :cond_44
    invoke-virtual {v1, v14}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_47
    const-string/jumbo v4, "key-tether-auth-response-page"

    .line 1419
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_58

    .line 1420
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 1422
    :cond_58
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_5b
    const-string/jumbo v4, "key-tether-client-certificate-issuer-cn"

    .line 1425
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6c

    .line 1426
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 1428
    :cond_6c
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_6f
    const-string/jumbo v4, "key-tether-client-certificate-issued-cn"

    .line 1431
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_80

    .line 1432
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 1434
    :cond_80
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_83
    const-string/jumbo v4, "key-tether-captive-portal-alias"

    .line 1437
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_94

    .line 1438
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    .line 1440
    :cond_94
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_97
    const-string/jumbo v4, "key-tether-captive-portal-certificate"

    .line 1443
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 1444
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_ab

    .line 1446
    :cond_a8
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_ab
    const-string/jumbo v4, "key-tether-ca-alias"

    .line 1449
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bc

    .line 1450
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    .line 1452
    :cond_bc
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_bf
    const-string/jumbo v4, "key-tether-ca-certificate"

    .line 1455
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 1456
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_d3

    .line 1458
    :cond_d0
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_d3
    const-string/jumbo v4, "key-tether-user-certificate"

    .line 1461
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 1462
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_e7

    .line 1464
    :cond_e4
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_e7
    const-string/jumbo v4, "key-tether-user-alias"

    .line 1467
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fb

    const-string/jumbo v4, "key-tether-user-alias"

    .line 1468
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_124

    .line 1470
    :cond_fb
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_124

    .line 1473
    :cond_ff
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    invoke-virtual {v1, v14}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_124
    const-string/jumbo v0, "profileName"

    .line 1491
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    move-object/from16 v3, p0

    .line 1493
    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v4, "VpnProfileInfo"

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 1494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update db with usbTetheringAuthConfig result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FW-KnoxVpnHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateUsbTetheringForProfileInDb(Ljava/lang/String;I)V
    .registers 6

    .line 1400
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1401
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "usbTethering"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "profileName"

    .line 1402
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1404
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string p1, "VpnProfileInfo"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    .line 1405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateUsbTetheringForProfileInDb "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
