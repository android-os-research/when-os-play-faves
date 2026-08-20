.class public Lcom/samsung/android/gamesdk/core/GameSDKContextManager;
.super Ljava/lang/Object;
.source "GameSDKContextManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDK@ContextManager"


# instance fields
.field private final mContextMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/gamesdk/core/GameSDKContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->mContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 58
    :try_start_0
    const-string v0, "List of stored context :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->mContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 60
    .local v1, "context":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    sget-boolean v2, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v2, :cond_4e

    .line 62
    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->getDumpString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_50

    .line 64
    .end local v1    # "context":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    :cond_4e
    goto :goto_f

    .line 67
    :cond_4f
    goto :goto_54

    .line 65
    :catch_50
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    return-void
.end method

.method public loadContext(I)Lcom/samsung/android/gamesdk/core/GameSDKContext;
    .registers 7
    .param p1, "pid"    # I

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->mContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gamesdk/core/GameSDKContext;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 40
    :catch_d
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "GameSDK@ContextManager"

    const-string v4, "[FAIL] loadContext(): Failed to load GameSDKContext"

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeContext(I)V
    .registers 7
    .param p1, "pid"    # I

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->mContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 53
    goto :goto_1a

    .line 50
    :catch_a
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "GameSDK@ContextManager"

    const-string v4, "[FAIL] removeContext(): Failed to remove GameSDKContext"

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public storeContext(ILcom/samsung/android/gamesdk/core/GameSDKContext;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "context"    # Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 22
    const/16 v0, -0x3e7

    if-ne p1, v0, :cond_5

    .line 23
    return-void

    .line 26
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->mContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 30
    goto :goto_1f

    .line 27
    :catch_f
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "GameSDK@ContextManager"

    const-string v4, "[FAIL] storeContext(): Failed to store GameSDKContext"

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method
