.class public Lcom/samsung/android/knox/KnoxInfoImpl;
.super Ljava/lang/Object;
.source "KnoxInfoImpl.java"


# static fields
.field static final greylist INTERVAL_NANO_SEC:J = 0xb2d05e00L

.field static final greylist TAG:Ljava/lang/String; = "KnoxInfoImpl"

.field static greylist cachedTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static greylist cached_knox_info:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist mKnoxInfo:Landroid/os/Bundle;

.field private static greylist m_bIsKnoxInfoInitialized:Z


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized greylist getCachedKnoxInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    const-class v0, Lcom/samsung/android/knox/KnoxInfoImpl;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0xb2d05e00L

    cmp-long v1, v1, v3

    if-gez v1, :cond_2f

    .line 32
    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_4f

    monitor-exit v0

    return-object v1

    .line 34
    :cond_2f
    :try_start_2f
    const-string v1, "KnoxInfoImpl"

    const-string/jumbo v2, "put into cache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, "ret":Landroid/os/Bundle;
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4f

    .line 39
    monitor-exit v0

    return-object v1

    .line 30
    .end local v1    # "ret":Landroid/os/Bundle;
    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_4f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static greylist getKnoxInfo()Landroid/os/Bundle;
    .registers 1

    .line 45
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    .line 47
    :cond_b
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public static greylist getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 293
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static greylist getPersonalModeName(I)Ljava/lang/String;
    .registers 4
    .param p0, "userId"    # I

    .line 80
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 82
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 83
    .local v0, "customName":Ljava/lang/String;
    return-object v0

    .line 84
    .end local v0    # "customName":Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxInfoImpl"

    const-string v2, "getPersonalModeName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getWorkProfileUserId()I
    .registers 10

    .line 310
    const-string v0, ":"

    .line 311
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 312
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    const-string v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_46

    .line 315
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    array-length v6, v4

    if-ge v5, v6, :cond_46

    .line 317
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "info":[Ljava/lang/String;
    if-eqz v6, :cond_43

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_43

    .line 319
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 320
    .local v7, "id":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 321
    .local v8, "flags":I
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-nez v9, :cond_43

    and-int/lit8 v9, v8, 0x20

    if-lez v9, :cond_43

    .line 322
    return v7

    .line 316
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "id":I
    .end local v8    # "flags":I
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 327
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_46
    return v3
.end method
