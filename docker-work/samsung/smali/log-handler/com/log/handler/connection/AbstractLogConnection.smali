.class public abstract Lcom/log/handler/connection/AbstractLogConnection;
.super Ljava/util/Observable;
.source "AbstractLogConnection.java"

# interfaces
.implements Lcom/log/handler/connection/ILogConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "LogHandler/AbstractLogConnection"


# instance fields
.field private mCommandAndResponsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mServerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "serverName"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/log/handler/connection/AbstractLogConnection;->mServerName:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/log/handler/connection/AbstractLogConnection;->mCommandAndResponsMap:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/log/handler/connection/AbstractLogConnection;->mServerName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public addServerObserver(Ljava/util/Observer;)V
    .registers 2
    .param p1, "observer"    # Ljava/util/Observer;

    .line 74
    invoke-virtual {p0, p1}, Lcom/log/handler/connection/AbstractLogConnection;->addObserver(Ljava/util/Observer;)V

    .line 75
    return-void
.end method

.method public abstract connect()Z
.end method

.method public deleteServerObserver(Ljava/util/Observer;)V
    .registers 2
    .param p1, "observer"    # Ljava/util/Observer;

    .line 79
    invoke-virtual {p0, p1}, Lcom/log/handler/connection/AbstractLogConnection;->deleteObserver(Ljava/util/Observer;)V

    .line 80
    return-void
.end method

.method public declared-synchronized disConnect()V
    .registers 2

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/log/handler/connection/AbstractLogConnection;->mCommandAndResponsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 85
    monitor-exit p0

    return-void

    .line 83
    .end local p0    # "this":Lcom/log/handler/connection/AbstractLogConnection;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseFromServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "sendData"    # Ljava/lang/String;

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/log/handler/connection/AbstractLogConnection;->mCommandAndResponsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 69
    .end local p0    # "this":Lcom/log/handler/connection/AbstractLogConnection;
    .end local p1    # "sendData":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract isConnection()Z
.end method

.method protected abstract sendDataToServer(Ljava/lang/String;)Z
.end method

.method public declared-synchronized sendToServer(Ljava/lang/String;)Z
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    monitor-enter p0

    .line 36
    :try_start_1
    const-string v0, "LogHandler/AbstractLogConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendToServer() mServerName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/log/handler/connection/AbstractLogConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/log/handler/connection/AbstractLogConnection;->mCommandAndResponsMap:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lcom/log/handler/connection/AbstractLogConnection;->isConnection()Z

    move-result v0

    if-nez v0, :cond_42

    .line 40
    invoke-virtual {p0}, Lcom/log/handler/connection/AbstractLogConnection;->connect()Z

    move-result v0

    .line 41
    .local v0, "connectSuccess":Z
    if-nez v0, :cond_42

    .line 42
    const-string v1, "LogHandler/AbstractLogConnection"

    const-string v2, "Service is not connect & re-connect failed!"

    invoke-static {v1, v2}, Lcom/log/handler/LogHandlerUtils;->logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_48

    .line 43
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 46
    .end local v0    # "connectSuccess":Z
    .end local p0    # "this":Lcom/log/handler/connection/AbstractLogConnection;
    :cond_42
    :try_start_42
    invoke-virtual {p0, p1}, Lcom/log/handler/connection/AbstractLogConnection;->sendDataToServer(Ljava/lang/String;)Z

    move-result v0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_48

    monitor-exit p0

    return v0

    .line 35
    .end local p1    # "data":Ljava/lang/String;
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setResponseFromServer(Ljava/lang/String;)V
    .registers 7
    .param p1, "serverData"    # Ljava/lang/String;

    monitor-enter p0

    .line 52
    :try_start_1
    const-string v0, "LogHandler/AbstractLogConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResponseFromServer() mServerName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/log/handler/connection/AbstractLogConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serverData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    move-object v0, p1

    .line 55
    .local v0, "commandData":Ljava/lang/String;
    iget-object v1, p0, Lcom/log/handler/connection/AbstractLogConnection;->mCommandAndResponsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "keyCommand":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 57
    move-object v0, v2

    .line 58
    goto :goto_58

    .line 60
    .end local v2    # "keyCommand":Ljava/lang/String;
    :cond_57
    goto :goto_30

    .line 61
    .end local p0    # "this":Lcom/log/handler/connection/AbstractLogConnection;
    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/log/handler/connection/AbstractLogConnection;->mCommandAndResponsMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/log/handler/connection/AbstractLogConnection;->setChanged()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/log/handler/connection/AbstractLogConnection;->notifyObservers(Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    .line 65
    monitor-exit p0

    return-void

    .line 51
    .end local v0    # "commandData":Ljava/lang/String;
    .end local p1    # "serverData":Ljava/lang/String;
    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method
