.class public final Lcom/gsma/services/rcs/sharing/video/VideoSharingService;
.super Lcom/gsma/services/rcs/RcsService;
.source "VideoSharingService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    .line 99
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    .line 42
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    .line 42
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    .line 42
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    .line 42
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_1b

    .line 219
    :try_start_4
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;

    invoke-direct {v0, p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V

    .line 235
    .local v0, "ilistener":Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    .line 238
    .end local v0    # "ilistener":Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    nop

    .line 242
    return-void

    .line 236
    :catch_10
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .registers 6

    .line 62
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 63
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_56

    .line 67
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->ctx:Landroid/content/Context;

    .line 70
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 67
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 72
    .local v1, "bSuc":Z
    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to vsh service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 64
    .end local v1    # "bSuc":Z
    :cond_56
    :goto_56
    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public deleteVideoSharing(Ljava/lang/String;)V
    .registers 5
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_14

    .line 315
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->deleteVideoSharing(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 318
    nop

    .line 322
    return-void

    .line 316
    :catch_9
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteVideoSharings()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_14

    .line 283
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->deleteVideoSharings()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 286
    nop

    .line 290
    return-void

    .line 284
    :catch_9
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteVideoSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_14

    .line 299
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->deleteVideoSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 302
    nop

    .line 306
    return-void

    .line 300
    :catch_9
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public disconnect()V
    .registers 3

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 83
    goto :goto_c

    .line 81
    :catch_8
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 84
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_14

    .line 124
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->getConfiguration()Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;

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

.method public getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/VideoSharing;
    .registers 5
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_1d

    .line 167
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v0

    .line 168
    .local v0, "sharingIntf":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    if-eqz v0, :cond_10

    .line 169
    new-instance v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing;-><init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 171
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 173
    .end local v0    # "sharingIntf":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
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

.method public getVideoSharings()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/sharing/video/VideoSharing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "sharing":Lcom/gsma/services/rcs/sharing/video/VideoSharing;
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v1, :cond_3b

    .line 143
    :try_start_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 144
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/sharing/video/VideoSharing;>;"
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->getVideoSharings()Ljava/util/List;

    move-result-object v2

    .line 145
    .local v2, "vshList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 146
    .local v4, "binder":Landroid/os/IBinder;
    new-instance v5, Lcom/gsma/services/rcs/sharing/video/VideoSharing;

    invoke-static {v4}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/gsma/services/rcs/sharing/video/VideoSharing;-><init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V

    move-object v0, v5

    .line 147
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2d} :catch_30

    .line 148
    nop

    .end local v4    # "binder":Landroid/os/IBinder;
    goto :goto_14

    .line 149
    :cond_2f
    return-object v1

    .line 150
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/sharing/video/VideoSharing;>;"
    .end local v2    # "vshList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_30
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3b
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_1b

    .line 252
    :try_start_4
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$3;

    invoke-direct {v0, p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$3;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V

    .line 268
    .local v0, "ilistener":Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->removeEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    .line 271
    .end local v0    # "ilistener":Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    nop

    .line 275
    return-void

    .line 269
    :catch_10
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "api"    # Landroid/os/IInterface;

    .line 91
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 93
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    .line 94
    return-void
.end method

.method public shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/VideoPlayer;)Lcom/gsma/services/rcs/sharing/video/VideoSharing;
    .registers 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "player"    # Lcom/gsma/services/rcs/sharing/video/VideoPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_1d

    .line 197
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v0

    .line 198
    .local v0, "sharingIntf":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    if-eqz v0, :cond_10

    .line 199
    new-instance v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing;-><init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 201
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 203
    .end local v0    # "sharingIntf":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    :catch_12
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
