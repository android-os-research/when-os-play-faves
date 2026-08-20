.class public Lorg/simalliance/openmobileapi/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OMA_Lib_Channel"


# instance fields
.field private final mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

.field private final mLock:Ljava/lang/Object;

.field private mSession:Lorg/simalliance/openmobileapi/Session;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V
    .registers 4
    .param p1, "session"    # Lorg/simalliance/openmobileapi/Session;
    .param p2, "channel"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 51
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    .line 52
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 61
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 62
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 65
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_5d

    .line 68
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 69
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_29
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 72
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 73
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->isSet()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 74
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3c} :catch_3f
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3d

    .line 78
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_3c
    goto :goto_58

    .line 79
    :catchall_3d
    move-exception v1

    goto :goto_5a

    .line 76
    :catch_3f
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    :try_start_40
    const-string v2, "OMA_Lib_Channel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing channel. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_58
    monitor-exit v0

    goto :goto_5c

    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_40 .. :try_end_5b} :catchall_3d

    throw v1

    .line 81
    :cond_5c
    :goto_5c
    return-void

    .line 66
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectResponse()[B
    .registers 4

    .line 240
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 241
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 244
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_30

    .line 249
    :try_start_20
    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->getSelectResponse()[B

    move-result-object v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_25

    return-object v0

    .line 250
    :catch_25
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSession()Lorg/simalliance/openmobileapi/Session;
    .registers 2

    .line 226
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    return-object v0
.end method

.method public isBasicChannel()Z
    .registers 4

    .line 121
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 122
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 125
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_30

    .line 129
    :try_start_20
    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isBasicChannel()Z

    move-result v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_25

    return v0

    .line 130
    :catch_25
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isClosed()Z
    .registers 3

    .line 89
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 90
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_2a

    .line 98
    :cond_1e
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v0, :cond_23

    .line 101
    return v1

    .line 105
    :cond_23
    :try_start_23
    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_28

    return v0

    .line 106
    :catch_28
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public selectNext()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 283
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 286
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_62

    .line 290
    :try_start_20
    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z

    move-result v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_57

    if-nez v0, :cond_4f

    .line 295
    nop

    .line 297
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_2a
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 300
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->selectNext(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v2

    .line 301
    .local v2, "response":Z
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->isSet()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 302
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3e} :catch_42
    .catchall {:try_start_2a .. :try_end_3e} :catchall_40

    .line 304
    :cond_3e
    :try_start_3e
    monitor-exit v0

    return v2

    .line 308
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "response":Z
    :catchall_40
    move-exception v1

    goto :goto_4d

    .line 305
    :catch_42
    move-exception v1

    .line 306
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/simalliance/openmobileapi/Channel;
    throw v2

    .line 308
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lorg/simalliance/openmobileapi/Channel;
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_40

    throw v1

    .line 291
    :cond_4f
    :try_start_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/simalliance/openmobileapi/Channel;
    throw v0
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_57} :catch_57

    .line 293
    .restart local p0    # "this":Lorg/simalliance/openmobileapi/Channel;
    :catch_57
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transmit([B)[B
    .registers 13
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 187
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 190
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v0, :cond_7f

    .line 196
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_23
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 199
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 200
    .local v2, "startTime":J
    iget-object v4, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v4, p1, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->transmit([BLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v4

    .line 201
    .local v4, "response":[B
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->isSet()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 202
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V

    .line 205
    :cond_3b
    if-eqz v4, :cond_6e

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_6e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const-wide/32 v9, 0x1adb0

    cmp-long v5, v7, v9

    if-lez v5, :cond_6e

    .line 206
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    .line 207
    .local v5, "sw1":I
    array-length v7, v4

    sub-int/2addr v7, v6

    aget-byte v6, v4, v7

    and-int/lit16 v6, v6, 0xff

    .line 208
    .local v6, "sw2":I
    shl-int/lit8 v7, v5, 0x8

    or-int/2addr v7, v6

    .line 209
    .local v7, "sw":I
    const/16 v8, 0x6881

    if-eq v7, v8, :cond_66

    const/16 v8, 0x6f00

    if-eq v7, v8, :cond_66

    goto :goto_6e

    .line 210
    :cond_66
    new-instance v8, Ljava/io/IOException;

    const-string v9, "communication timeout error"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/simalliance/openmobileapi/Channel;
    .end local p1    # "command":[B
    throw v8
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_6e} :catch_72
    .catchall {:try_start_23 .. :try_end_6e} :catchall_70

    .line 213
    .end local v5    # "sw1":I
    .end local v6    # "sw2":I
    .end local v7    # "sw":I
    .restart local p0    # "this":Lorg/simalliance/openmobileapi/Channel;
    .restart local p1    # "command":[B
    :cond_6e
    :goto_6e
    :try_start_6e
    monitor-exit v0

    return-object v4

    .line 217
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "startTime":J
    .end local v4    # "response":[B
    :catchall_70
    move-exception v1

    goto :goto_7d

    .line 214
    :catch_72
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/simalliance/openmobileapi/Channel;
    .end local p1    # "command":[B
    throw v2

    .line 217
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lorg/simalliance/openmobileapi/Channel;
    .restart local p1    # "command":[B
    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_70

    throw v1

    .line 191
    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
