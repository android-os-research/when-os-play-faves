.class public Lorg/simalliance/openmobileapi/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mReader:Lorg/simalliance/openmobileapi/Reader;

.field private final mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;Lorg/simalliance/openmobileapi/Reader;)V
    .registers 4
    .param p1, "session"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    .param p2, "reader"    # Lorg/simalliance/openmobileapi/Reader;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    .line 48
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 86
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    .line 90
    :cond_11
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_51

    .line 91
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_18
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 94
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 95
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->isSet()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 96
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2b} :catch_2e
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2c

    .line 100
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_2b
    goto :goto_4d

    .line 101
    :catchall_2c
    move-exception v1

    goto :goto_4f

    .line 98
    :catch_2e
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing session. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4d
    monitor-exit v0

    goto :goto_51

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_2f .. :try_end_50} :catchall_2c

    throw v1

    .line 103
    :cond_51
    :goto_51
    return-void
.end method

.method public closeChannels()V
    .registers 6

    .line 123
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    .line 128
    :cond_11
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_51

    .line 129
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_18
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 132
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->closeChannels(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 133
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->isSet()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 134
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2b} :catch_2e
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2c

    .line 138
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_2b
    goto :goto_4d

    .line 139
    :catchall_2c
    move-exception v1

    goto :goto_4f

    .line 136
    :catch_2e
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing channels. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4d
    monitor-exit v0

    goto :goto_51

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_2f .. :try_end_50} :catchall_2c

    throw v1

    .line 141
    :cond_51
    :goto_51
    return-void
.end method

.method public getATR()[B
    .registers 4

    .line 68
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 71
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_28

    .line 75
    :try_start_18
    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->getAtr()[B

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return-object v0

    .line 76
    :catch_1d
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service session is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReader()Lorg/simalliance/openmobileapi/Reader;
    .registers 2

    .line 57
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    return-object v0
.end method

.method public isClosed()Z
    .registers 4

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->isClosed()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_f

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0

    .line 113
    :catch_f
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openBasicChannel([B)Lorg/simalliance/openmobileapi/Channel;
    .registers 3
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simalliance/openmobileapi/Session;->openBasicChannel([BB)Lorg/simalliance/openmobileapi/Channel;

    move-result-object v0

    return-object v0
.end method

.method public openBasicChannel([BB)Lorg/simalliance/openmobileapi/Channel;
    .registers 7
    .param p1, "aid"    # [B
    .param p2, "p2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 209
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 212
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_5a

    .line 216
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_21
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 219
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    iget-object v3, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    .line 222
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/SEService;->getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v3

    .line 219
    invoke-interface {v2, p1, p2, v3, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->openBasicChannel([BBLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v2

    .line 224
    .local v2, "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->isSet()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 225
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3f} :catch_4d
    .catchall {:try_start_21 .. :try_end_3f} :catchall_4b

    .line 227
    :cond_3f
    if-nez v2, :cond_44

    .line 228
    const/4 v3, 0x0

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4b

    return-object v3

    .line 230
    :cond_44
    :try_start_44
    new-instance v3, Lorg/simalliance/openmobileapi/Channel;

    invoke-direct {v3, p0, v2}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4d
    .catchall {:try_start_44 .. :try_end_49} :catchall_4b

    :try_start_49
    monitor-exit v0

    return-object v3

    .line 234
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :catchall_4b
    move-exception v1

    goto :goto_58

    .line 231
    :catch_4d
    move-exception v1

    .line 232
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/simalliance/openmobileapi/Session;
    .end local p1    # "aid":[B
    .end local p2    # "p2":B
    throw v2

    .line 234
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lorg/simalliance/openmobileapi/Session;
    .restart local p1    # "aid":[B
    .restart local p2    # "p2":B
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_4b

    throw v1

    .line 213
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service session is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;
    .registers 3
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simalliance/openmobileapi/Session;->openLogicalChannel([BB)Lorg/simalliance/openmobileapi/Channel;

    move-result-object v0

    return-object v0
.end method

.method public openLogicalChannel([BB)Lorg/simalliance/openmobileapi/Channel;
    .registers 7
    .param p1, "aid"    # [B
    .param p2, "p2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 324
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 327
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v0, :cond_5a

    .line 331
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_21
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 334
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    iget-object v3, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    .line 337
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/SEService;->getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v3

    .line 334
    invoke-interface {v2, p1, p2, v3, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->openLogicalChannel([BBLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v2

    .line 340
    .local v2, "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->isSet()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 341
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3f} :catch_4d
    .catchall {:try_start_21 .. :try_end_3f} :catchall_4b

    .line 343
    :cond_3f
    if-nez v2, :cond_44

    .line 344
    const/4 v3, 0x0

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4b

    return-object v3

    .line 346
    :cond_44
    :try_start_44
    new-instance v3, Lorg/simalliance/openmobileapi/Channel;

    invoke-direct {v3, p0, v2}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4d
    .catchall {:try_start_44 .. :try_end_49} :catchall_4b

    :try_start_49
    monitor-exit v0

    return-object v3

    .line 350
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :catchall_4b
    move-exception v1

    goto :goto_58

    .line 347
    :catch_4d
    move-exception v1

    .line 348
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/simalliance/openmobileapi/Session;
    .end local p1    # "aid":[B
    .end local p2    # "p2":B
    throw v2

    .line 350
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lorg/simalliance/openmobileapi/Session;
    .restart local p1    # "aid":[B
    .restart local p2    # "p2":B
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_4b

    throw v1

    .line 328
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service session is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
