.class public Lcom/android/server/knox/dar/ddar/DDCache;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "DDCache.java"


# static fields
.field public static final DELETE_DATA_CMD:Ljava/lang/String; = "DELETE_DATA_CMD"

.field public static final DUAL_DAR_KEY:Ljava/lang/String; = "DUAL_DAR_KEY"

.field public static final DUAL_DAR_USER_ID:Ljava/lang/String; = "DUAL_DAR_USER_ID"

.field public static final DUAL_DAR_VALUE:Ljava/lang/String; = "DUAL_DAR_VALUE"

.field public static final GET_DATA_CMD:Ljava/lang/String; = "GET_DATA_CMD"

.field public static final SET_DATA_CMD:Ljava/lang/String; = "SET_DATA_CMD"

.field public static final TAG:Ljava/lang/String; = "DDCache"

.field public static volatile _instance:Lcom/android/server/knox/dar/ddar/DDCache;


# instance fields
.field public context:Landroid/content/Context;

.field public semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/DDCache;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DDCache;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/ddar/DDCache;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/ddar/DDCache;->_instance:Lcom/android/server/knox/dar/ddar/DDCache;

    if-nez v1, :cond_e

    .line 58
    new-instance v1, Lcom/android/server/knox/dar/ddar/DDCache;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/DDCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/ddar/DDCache;->_instance:Lcom/android/server/knox/dar/ddar/DDCache;

    .line 60
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/ddar/DDCache;->_instance:Lcom/android/server/knox/dar/ddar/DDCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final constructuctCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DUALDAR_User_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDCache;->constructuctCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_1c

    :catch_d
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DDCache"

    const-string p2, "get value failed"

    .line 93
    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    :goto_1c
    return-object p0
.end method

.method public final getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_16

    :try_start_4
    const-string/jumbo v0, "persona"

    .line 70
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object p0
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11

    const/4 p1, 0x0

    :try_start_1
    const-string v0, "DDCache"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x1

    .line 111
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xd9160e7

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_4a

    const v4, 0xac391ee

    if-eq v3, v4, :cond_40

    const v4, 0x67175262

    if-eq v3, v4, :cond_37

    goto :goto_54

    :cond_37
    const-string v3, "SET_DATA_CMD"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    goto :goto_55

    :cond_40
    const-string v2, "GET_DATA_CMD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    move v2, v6

    goto :goto_55

    :cond_4a
    const-string v2, "DELETE_DATA_CMD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_99

    if-eqz p2, :cond_54

    move v2, v5

    goto :goto_55

    :cond_54
    :goto_54
    move v2, v1

    :goto_55
    const-string p2, "DUAL_DAR_VALUE"

    const-string v1, "dual_dar_response"

    const-string v3, "DUAL_DAR_KEY"

    const-string v4, "DUAL_DAR_USER_ID"

    if-eqz v2, :cond_86

    if-eq v2, v6, :cond_73

    if-eq v2, v5, :cond_64

    goto :goto_98

    .line 129
    :cond_64
    :try_start_64
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 130
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 131
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/knox/dar/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_98

    .line 121
    :cond_73
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 123
    invoke-virtual {p0, v2, p3}, Lcom/android/server/knox/dar/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_98

    .line 113
    :cond_86
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 114
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/knox/dar/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_98} :catch_99

    :goto_98
    return-object v0

    :catch_99
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public set(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDCache;->constructuctCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_1b

    :catch_c
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DDCache"

    const-string/jumbo p2, "set value failed"

    .line 83
    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1b
    return-void
.end method
