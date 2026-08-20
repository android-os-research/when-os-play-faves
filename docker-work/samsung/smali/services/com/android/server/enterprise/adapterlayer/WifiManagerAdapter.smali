.class public Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
.super Ljava/lang/Object;
.source "WifiManagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WifiManagerAdapter"

.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field public static mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public static mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    if-nez v1, :cond_26

    .line 63
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 64
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    .line 65
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "sem_wifi"

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 68
    :cond_26
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static retrieveWifiManagerObjectWithAttributionSource(Landroid/content/Context;ILjava/lang/String;)Landroid/net/wifi/WifiManager;
    .registers 4

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_32

    .line 120
    new-instance p0, Landroid/content/AttributionSource$Builder;

    invoke-direct {p0, p1}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 121
    invoke-virtual {p0, p2}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p0

    .line 123
    sget-object p1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    const-class p2, Landroid/permission/PermissionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/permission/PermissionManager;

    .line 124
    invoke-virtual {p1, p0}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p0

    .line 125
    sget-object p1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/ContextParams$Builder;

    invoke-direct {p2}, Landroid/content/ContextParams$Builder;-><init>()V

    .line 126
    invoke-virtual {p2, p0}, Landroid/content/ContextParams$Builder;->setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/ContextParams$Builder;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object p0

    .line 125
    invoke-virtual {p1, p0}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object p0

    .line 129
    :cond_32
    const-class p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method


# virtual methods
.method public connect(I)V
    .registers 3

    .line 134
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 137
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_33

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setConnectionAttemptInfo(IZ)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_33

    :catch_18
    move-exception p0

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to connect to network "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiManagerAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    return-void
.end method

.method public enableNetwork(IZ)V
    .registers 3

    .line 165
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_21

    :catch_6
    move-exception p0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to enable network "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiManagerAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public forget(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    .line 89
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const-string p0, "WifiManagerAdapter"

    const-string p1, "forget - failed to get wifi service"

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 149
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_c

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-object p0

    :catch_d
    move-exception p0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfiguredNetworks - failed to get networks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiManagerAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 1

    .line 76
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApState()I
    .registers 1

    .line 80
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p0

    return p0
.end method

.method public resetSoftAp()V
    .registers 2

    .line 84
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->resetSoftAp(Landroid/os/Message;)V

    return-void
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)I
    .registers 5

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 101
    :cond_4
    :try_start_4
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->retrieveWifiManagerObjectWithAttributionSource(Landroid/content/Context;ILjava/lang/String;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    .line 103
    iget p3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p3, p0, :cond_13

    .line 104
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0

    .line 106
    :cond_13
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    return p0

    :catch_18
    move-exception p1

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "save - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiManagerAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 2

    .line 72
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method
