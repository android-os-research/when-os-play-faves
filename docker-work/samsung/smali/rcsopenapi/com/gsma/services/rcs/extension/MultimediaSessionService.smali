.class public final Lcom/gsma/services/rcs/extension/MultimediaSessionService;
.super Lcom/gsma/services/rcs/RcsService;
.source "MultimediaSessionService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultimediaSessionService"


# instance fields
.field private api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

.field private apiConnection:Landroid/content/ServiceConnection;

.field private final mapForMMSListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;",
            "Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mapForMSSListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;",
            "Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMMSListener:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMSSListener:Ljava/util/Map;

    .line 60
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;-><init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    .line 45
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    .line 45
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    .line 45
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    .line 45
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_21

    .line 304
    move-object v0, p1

    .line 305
    .local v0, "callBackListener":Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;
    :try_start_5
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;-><init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V

    .line 325
    .local v1, "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->addEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 326
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMMSListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_16

    .line 329
    nop

    .line 333
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;
    .end local v1    # "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    return-void

    .line 327
    :catch_16
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public addEventListener(Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_21

    .line 364
    move-object v0, p1

    .line 365
    .local v0, "callBackListener":Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;
    :try_start_5
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;-><init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V

    .line 379
    .local v1, "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->addEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 380
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMSSListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_16

    .line 383
    nop

    .line 387
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;
    .end local v1    # "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    return-void

    .line 381
    :catch_16
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .registers 7

    .line 91
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 92
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    const-string v2, "MultimediaSessionService"

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_56

    .line 96
    :cond_15
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->ctx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    .line 97
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v4, "com.sec.imsservice"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->ctx:Landroid/content/Context;

    .line 99
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "packages"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 96
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 100
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 93
    .end local v1    # "result":Z
    :cond_56
    :goto_56
    const-string v1, "TAPI is not available or not activated!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public disconnect()V
    .registers 3

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    const-string v0, "MultimediaSessionService"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f

    .line 113
    goto :goto_13

    .line 110
    :catch_f
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_13
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_14

    .line 124
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 125
    :catch_9
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1d

    .line 167
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v0

    .line 168
    .local v0, "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    if-eqz v0, :cond_10

    .line 169
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 171
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 173
    .end local v0    # "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    :catch_12
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMessagingSessions(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_39

    .line 142
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 143
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getMessagingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 145
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    .line 146
    invoke-static {v3}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V

    .line 147
    .local v4, "session":Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2e

    .line 148
    nop

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "session":Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    goto :goto_13

    .line 149
    :cond_2d
    return-object v0

    .line 150
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;>;"
    .end local v1    # "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_2e
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1d

    .line 215
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v0

    .line 216
    .local v0, "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    if-eqz v0, :cond_10

    .line 217
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 219
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 221
    .end local v0    # "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    :catch_12
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getStreamingSessions(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_39

    .line 190
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 191
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getStreamingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 193
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    .line 194
    invoke-static {v3}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V

    .line 195
    .local v4, "session":Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2e

    .line 196
    nop

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "session":Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    goto :goto_13

    .line 197
    :cond_2d
    return-object v0

    .line 198
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;>;"
    .end local v1    # "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_2e
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    .registers 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateMessagingSession serviceId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultimediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v0, "text/plain"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "acceptType":[Ljava/lang/String;
    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "acceptWrappedType":[Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    move-result-object v2

    return-object v2
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    .registers 9
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "acceptType"    # [Ljava/lang/String;
    .param p4, "acceptWrappedType"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateMessagingSession serviceId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultimediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    if-eqz p3, :cond_36

    array-length v2, p3

    if-lez v2, :cond_36

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " acceptType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_36
    if-eqz p4, :cond_53

    array-length v2, p4

    if-lez v2, :cond_53

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " acceptWrappedType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_53
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_70

    .line 281
    :try_start_57
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v0

    .line 283
    .local v0, "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    if-eqz v0, :cond_63

    .line 284
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_62} :catch_65

    return-object v1

    .line 286
    :cond_63
    const/4 v1, 0x0

    return-object v1

    .line 288
    .end local v0    # "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    :catch_65
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_70
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    .registers 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1d

    .line 247
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v0

    .line 248
    .local v0, "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    if-eqz v0, :cond_10

    .line 249
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 251
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 253
    .end local v0    # "sessionIntf":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    :catch_12
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_25

    .line 343
    :try_start_4
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMMSListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    .line 344
    .local v0, "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    if-eqz v0, :cond_13

    .line 345
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->removeEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 347
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMMSListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_1a

    .line 350
    nop

    .line 354
    .end local v0    # "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    return-void

    .line 348
    :catch_1a
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_25

    .line 397
    :try_start_4
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMSSListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    .line 398
    .local v0, "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    if-eqz v0, :cond_13

    .line 399
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->removeEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 401
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mapForMSSListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_1a

    .line 404
    nop

    .line 408
    .end local v0    # "interfaceListener":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    return-void

    .line 402
    :catch_1a
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V
    .registers 8
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "content"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_14

    .line 426
    :try_start_4
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 429
    nop

    .line 433
    return-void

    .line 427
    :catch_9
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "api"    # Landroid/os/IInterface;

    .line 440
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 442
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    .line 443
    return-void
.end method

.method public setInactivityTimeout(J)V
    .registers 6
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->api:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_14

    .line 413
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->setInactivityTimeout(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 416
    nop

    .line 420
    return-void

    .line 414
    :catch_9
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
