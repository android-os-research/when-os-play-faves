.class public Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;
.super Ljava/lang/Object;
.source "KnoxProxyManager.java"


# static fields
.field public static final blacklist DDAR_CACHE_SERVICE:Ljava/lang/String; = "DDAR_CACHE_SERVICE"

.field private static final blacklist INITIALIZE_SECURE_SESSION:Ljava/lang/String; = "INITIALIZE_SECURE_SESSION"

.field public static final blacklist IS_SECURE_API:Ljava/lang/String; = "IS_SECURE_API"

.field public static final blacklist ORIGINATING_SECURE_CLIENT_ID:Ljava/lang/String; = "ORIGINATING_SECURE_CLIENT_ID"

.field public static final blacklist PROXY_SERVICE:Ljava/lang/String; = "knox_adapter_service"

.field private static final blacklist SECURE_CLIENT_ID:Ljava/lang/String; = "SECURE_CLIENT_ID"

.field private static final blacklist SECURE_CLIENT_PUB_KEY:Ljava/lang/String; = "SECURE_CLIENT_PUB_KEY"

.field public static final blacklist SYSTEM_PROXY_AGENT:Ljava/lang/String; = "SYSTEM_PROXY_AGENT"

.field private static final blacklist TAG:Ljava/lang/String; = "DualDAR::ProxyManager"

.field private static final blacklist TERMINATE_SECURE_SESSION:Ljava/lang/String; = "TERMINATE_SECURE_SESSION"

.field private static blacklist mInstance:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;


# instance fields
.field private blacklist _service:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->mInstance:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->_service:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    monitor-enter v0

    .line 55
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->mInstance:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    if-nez v1, :cond_e

    .line 56
    new-instance v1, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->mInstance:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    .line 58
    :cond_e
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->mInstance:Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 54
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized blacklist getService()Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    .registers 3

    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->_service:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    if-nez v0, :cond_11

    .line 69
    const-string v0, "knox_adapter_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->_service:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_14
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    .line 72
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;
    :cond_11
    goto :goto_18

    .line 67
    :catchall_12
    move-exception v0

    goto :goto_27

    .line 70
    :catch_14
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->_service:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    if-nez v0, :cond_23

    .line 75
    const-string v0, "DualDAR::ProxyManager"

    const-string v1, "Error: DualDAR Communication Proxy Service Not Found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->_service:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_12

    monitor-exit p0

    return-object v0

    .line 67
    :goto_27
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public blacklist deregisterAgent(Ljava/lang/String;)V
    .registers 4
    .param p1, "agentName"    # Ljava/lang/String;

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getService()Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    move-result-object v0

    .line 119
    .local v0, "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    if-eqz v0, :cond_a

    .line 120
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;->deregisterAgent(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 121
    return-void

    .line 125
    .end local v0    # "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    :cond_a
    goto :goto_f

    .line 123
    :catch_b
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: deregisterAgent failed. agentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDAR::ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public declared-synchronized blacklist initializeSecureSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    .registers 11
    .param p1, "initClientAlias"    # Ljava/lang/String;
    .param p2, "endClientAgentName"    # Ljava/lang/String;
    .param p3, "endClientSvcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 206
    :try_start_1
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "secureClient":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    const-string v1, "DualDAR::ProxyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "secure connection of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v1, "input":Landroid/os/Bundle;
    const-string v2, "SECURE_CLIENT_ID"

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "SECURE_CLIENT_PUB_KEY"

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->getPublicKeyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "INITIALIZE_SECURE_SESSION"

    invoke-virtual {p0, p2, p3, v2, v1}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 215
    .local v2, "ret":Landroid/os/Bundle;
    if-eqz v2, :cond_6c

    .line 216
    const-string v3, "dual_dar_response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "taProxyPubKey":Ljava/lang/String;
    const-string v4, "DualDAR::ProxyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generating session key w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v0, p3, v3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->initializeSecureSession(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_69} :catch_76
    .catchall {:try_start_1 .. :try_end_69} :catchall_74

    .line 220
    .end local v3    # "taProxyPubKey":Ljava/lang/String;
    nop

    .line 224
    monitor-exit p0

    return-object v0

    .line 221
    .end local p0    # "this":Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;
    :cond_6c
    :try_start_6c
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "initializeSecureSession response null."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "initClientAlias":Ljava/lang/String;
    .end local p2    # "endClientAgentName":Ljava/lang/String;
    .end local p3    # "endClientSvcName":Ljava/lang/String;
    throw v3
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_74} :catch_76
    .catchall {:try_start_6c .. :try_end_74} :catchall_74

    .line 205
    .end local v0    # "secureClient":Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    .end local v1    # "input":Landroid/os/Bundle;
    .end local v2    # "ret":Landroid/os/Bundle;
    :catchall_74
    move-exception p1

    goto :goto_82

    .line 225
    .restart local p1    # "initClientAlias":Ljava/lang/String;
    .restart local p2    # "endClientAgentName":Ljava/lang/String;
    .restart local p3    # "endClientSvcName":Ljava/lang/String;
    :catch_76
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :try_start_77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const-string v1, "DualDAR::ProxyManager"

    const-string v2, "initializeSecureSession failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    throw v0
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_74

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "initClientAlias":Ljava/lang/String;
    .end local p2    # "endClientAgentName":Ljava/lang/String;
    .end local p3    # "endClientSvcName":Ljava/lang/String;
    :goto_82
    monitor-exit p0

    throw p1
.end method

.method public blacklist registerAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "actionName"    # Ljava/lang/String;

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getService()Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    move-result-object v0

    .line 84
    .local v0, "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    if-eqz v0, :cond_b

    .line 85
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;->registerAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 89
    .end local v0    # "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    :cond_b
    goto :goto_10

    .line 87
    :catch_c
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: registerAgentByAction failed. agentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",actionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDAR::ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "metadata"    # Ljava/lang/String;

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getService()Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    move-result-object v0

    .line 101
    .local v0, "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    if-eqz v0, :cond_b

    .line 102
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;->registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 106
    .end local v0    # "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    :cond_b
    goto :goto_10

    .line 104
    :catch_c
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: registerAgentByMetadata failed. agentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",metadata = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDAR::ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getService()Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    move-result-object v0

    .line 134
    .local v0, "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    if-eqz v0, :cond_19

    .line 135
    if-nez p4, :cond_e

    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p4, v1

    .line 138
    :cond_e
    const-string v1, "IS_SECURE_API"

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;->relay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v1

    .line 144
    .end local v0    # "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    :cond_19
    goto :goto_1e

    .line 142
    :catch_1a
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: relayMessage failed. agentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", svcName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDAR::ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist relayMessageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getService()Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    move-result-object v0

    .line 181
    .local v0, "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    if-eqz v0, :cond_19

    .line 182
    if-nez p4, :cond_e

    .line 183
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p4, v1

    .line 185
    :cond_e
    const-string v1, "IS_SECURE_API"

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;->relayAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v1

    .line 191
    .end local v0    # "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    :cond_19
    goto :goto_1e

    .line 189
    :catch_1a
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: relayMessage failed. agentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", svcName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDAR::ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist relayMessageSecurely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;)Landroid/os/Bundle;
    .registers 9
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "secureClient"    # Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getService()Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;

    move-result-object v0

    .line 156
    .local v0, "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    if-eqz v0, :cond_22

    .line 157
    if-nez p4, :cond_e

    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p4, v1

    .line 161
    :cond_e
    const-string v1, "IS_SECURE_API"

    const/4 v2, 0x1

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    const-string v1, "ORIGINATING_SECURE_CLIENT_ID"

    invoke-virtual {p5}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;->relay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    return-object v1

    .line 169
    .end local v0    # "service":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService;
    :cond_22
    goto :goto_27

    .line 167
    :catch_23
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: relayMessage failed. agentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", svcName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDAR::ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist terminateSecureSession(Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "secureClient"    # Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    .param p2, "endClientAgentName"    # Ljava/lang/String;
    .param p3, "endClientSvcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    const-string v0, "DualDAR::ProxyManager"

    if-eqz p1, :cond_40

    .line 240
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroying all session and private keys of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v1, "input":Landroid/os/Bundle;
    const-string v2, "SECURE_CLIENT_ID"

    invoke-virtual {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "TERMINATE_SECURE_SESSION"

    invoke-virtual {p0, p2, p3, v2, v1}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 246
    invoke-virtual {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->destroy()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_34} :catch_35

    goto :goto_40

    .line 248
    .end local v1    # "input":Landroid/os/Bundle;
    :catch_35
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    const-string/jumbo v2, "terminateSecureSession failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    throw v1

    .line 252
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_40
    :goto_40
    nop

    .line 253
    return-void
.end method
