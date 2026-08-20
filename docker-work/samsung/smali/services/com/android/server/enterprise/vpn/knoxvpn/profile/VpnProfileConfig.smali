.class public Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
.super Ljava/lang/Object;
.source "VpnProfileConfig.java"


# static fields
.field public static final DBG:Z

.field public static TAG:Ljava/lang/String;

.field public static vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# instance fields
.field public vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 51
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->DBG:Z

    const-string v0, "FW-VpnProfileConfig"

    .line 53
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 2

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    monitor-enter v0

    .line 61
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v1, :cond_e

    .line 62
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-direct {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 64
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_13

    if-nez p2, :cond_6

    goto :goto_13

    .line 102
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    .line 100
    monitor-exit p0

    return-object p1
.end method

.method public checkAdminForProfile(ILjava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p2, :cond_1a

    .line 172
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxVPN : Profile null :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 175
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_38

    .line 178
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KnoxVpn: Profile does not exist. profile : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_79

    .line 180
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result p0

    if-eq p1, p0, :cond_5e

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_47

    goto :goto_5e

    .line 184
    :cond_47
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxVpn: Admin does not have permissions for this profile : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 181
    :cond_5e
    :goto_5e
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->DBG:Z

    if-eqz p0, :cond_78

    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KnoxVpn: Profile admin validation success. profile : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    const/4 v0, 0x0

    :goto_79
    return v0
.end method

.method public checkPersonaForProfile(ILjava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    if-nez p2, :cond_1a

    .line 216
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxVPN : Profile null :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 219
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_38

    .line 222
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KnoxVpn persona check: Profile does not exist. profile : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_86

    .line 224
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result p0

    if-ne p1, p0, :cond_56

    .line 225
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KnoxVpn: persona validation success. profile : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_86

    .line 228
    :cond_56
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxVpn: Persona does not belong to this profile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->DBG:Z

    if-eqz p0, :cond_86

    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxVpn: Persona does not belong to this personaId : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    return v0
.end method

.method public checkVendorForProfile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    if-nez p2, :cond_34

    .line 192
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxVPN : Profile or vendor null. profileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->DBG:Z

    if-eqz p0, :cond_33

    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxVPN : Profile or vendor null. vendor = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return v0

    .line 197
    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-nez p0, :cond_52

    .line 200
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KnoxVpn: Profile does not exist. profile : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_ad

    .line 202
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    const-string p0, "Knox_Framework"

    .line 203
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    goto :goto_96

    .line 207
    :cond_65
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxVpn: Profile does not belong to this vendor profile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->DBG:Z

    if-eqz p0, :cond_ad

    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxVpn: Profile does not belong to this vendor : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 204
    :cond_96
    :goto_96
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KnoxVpn: Profile vendor validation success. profile : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_ad
    :goto_ad
    return v0
.end method

.method public containsProfileEntry(Ljava/lang/String;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized getContainerVpnProfile(I)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 150
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v2

    .line 151
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_26

    if-ne v2, p1, :cond_b

    .line 153
    monitor-exit p0

    return-object v1

    :cond_23
    const/4 p1, 0x0

    .line 156
    monitor-exit p0

    return-object p1

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProfileCount()I
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public getProfileEntries()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    .line 88
    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    return-object p0
.end method

.method public declared-synchronized getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 136
    monitor-exit p0

    return-object v0

    .line 138
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 139
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_2a

    if-eqz v2, :cond_10

    .line 142
    monitor-exit p0

    return-object v3

    .line 145
    :cond_28
    monitor-exit p0

    return-object v0

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProfileNameForUid(I)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 161
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageEntryForUid(I)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    move-result-object v3

    if-nez v3, :cond_27

    .line 163
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isPackageAddedToProfile(I)Z

    move-result v1
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2c

    if-eqz v1, :cond_b

    .line 164
    :cond_27
    monitor-exit p0

    return-object v2

    :cond_29
    const/4 p1, 0x0

    .line 167
    monitor-exit p0

    return-object p1

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProfileNames()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized removePackageFromProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_20

    if-nez p2, :cond_6

    goto :goto_20

    .line 126
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 127
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    if-eqz p1, :cond_1b

    .line 129
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1d

    .line 132
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 124
    :cond_20
    :goto_20
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 107
    monitor-exit p0

    return-object v0

    .line 109
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_1a

    if-nez v1, :cond_10

    .line 110
    monitor-exit p0

    return-object v0

    .line 112
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
