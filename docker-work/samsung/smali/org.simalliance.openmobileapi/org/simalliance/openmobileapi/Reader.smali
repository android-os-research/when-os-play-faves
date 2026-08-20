.class public Lorg/simalliance/openmobileapi/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

.field private final mService:Lorg/simalliance/openmobileapi/SEService;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;Ljava/lang/String;)V
    .registers 5
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;
    .param p2, "reader"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .param p3, "name"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p3, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 48
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    .line 49
    return-void
.end method


# virtual methods
.method public closeSessions()V
    .registers 6

    .line 135
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    .line 139
    :cond_7
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_a
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_22

    .line 142
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_f
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->closeSessions(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_17
    .catchall {:try_start_f .. :try_end_14} :catchall_22

    .line 145
    nop

    .line 146
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_15
    monitor-exit v0

    .line 147
    return-void

    .line 143
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_17
    move-exception v2

    .line 144
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/simalliance/openmobileapi/Reader;
    throw v3

    .line 146
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lorg/simalliance/openmobileapi/Reader;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSEService()Lorg/simalliance/openmobileapi/SEService;
    .registers 2

    .line 127
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    return-object v0
.end method

.method public isSecureElementPresent()Z
    .registers 4

    .line 110
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 115
    :try_start_a
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->isSecureElementPresent()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 116
    :catch_11
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSession()Lorg/simalliance/openmobileapi/Session;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 90
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_d
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 93
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->openSession(Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    move-result-object v2

    .line 94
    .local v2, "session":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->isSet()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 95
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V

    .line 97
    :cond_21
    new-instance v3, Lorg/simalliance/openmobileapi/Session;

    invoke-direct {v3, v2, p0}, Lorg/simalliance/openmobileapi/Session;-><init>(Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;Lorg/simalliance/openmobileapi/Reader;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_26} :catch_2a
    .catchall {:try_start_d .. :try_end_26} :catchall_28

    :try_start_26
    monitor-exit v0

    return-object v3

    .line 101
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "session":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    :catchall_28
    move-exception v1

    goto :goto_35

    .line 98
    :catch_2a
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/simalliance/openmobileapi/Reader;
    throw v2

    .line 101
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lorg/simalliance/openmobileapi/Reader;
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_28

    throw v1

    .line 87
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
