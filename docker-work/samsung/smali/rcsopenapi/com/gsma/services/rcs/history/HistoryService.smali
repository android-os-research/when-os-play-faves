.class public final Lcom/gsma/services/rcs/history/HistoryService;
.super Lcom/gsma/services/rcs/RcsService;
.source "HistoryService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mApi:Lcom/gsma/services/rcs/history/IHistoryService;

.field private mConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/gsma/services/rcs/history/HistoryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/history/HistoryService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mApi:Lcom/gsma/services/rcs/history/IHistoryService;

    .line 40
    new-instance v0, Lcom/gsma/services/rcs/history/HistoryService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/history/HistoryService$1;-><init>(Lcom/gsma/services/rcs/history/HistoryService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mConnection:Landroid/content/ServiceConnection;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/history/HistoryService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/history/HistoryService;

    .line 22
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/history/HistoryService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/history/HistoryService;

    .line 22
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/history/HistoryService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/history/HistoryService;

    .line 22
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/history/HistoryService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/history/HistoryService;

    .line 22
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .registers 6

    .line 58
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 59
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_56

    .line 63
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/history/HistoryService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/history/IHistoryService;

    .line 64
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/history/HistoryService;->ctx:Landroid/content/Context;

    .line 66
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/history/HistoryService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 63
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 68
    .local v1, "bSuc":Z
    sget-object v2, Lcom/gsma/services/rcs/history/HistoryService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to ish service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 60
    .end local v1    # "bSuc":Z
    :cond_56
    :goto_56
    sget-object v1, Lcom/gsma/services/rcs/history/HistoryService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public createUniqueId(I)J
    .registers 5
    .param p1, "providerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mApi:Lcom/gsma/services/rcs/history/IHistoryService;

    if-eqz v0, :cond_14

    .line 138
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/history/IHistoryService;->createUniqueId(I)J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-wide v0

    .line 139
    :catch_9
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public disconnect()V
    .registers 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/history/HistoryService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 77
    goto :goto_c

    .line 75
    :catch_8
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c
    return-void
.end method

.method public registerExtraHistoryLogMember(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .param p1, "providerId"    # I
    .param p2, "providerUri"    # Landroid/net/Uri;
    .param p3, "database"    # Landroid/net/Uri;
    .param p4, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 98
    .local p5, "columnMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mApi:Lcom/gsma/services/rcs/history/IHistoryService;

    if-eqz v0, :cond_19

    .line 100
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_9
    invoke-interface/range {v0 .. v5}, Lcom/gsma/services/rcs/history/IHistoryService;->registerExtraHistoryLogMember(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 103
    nop

    .line 107
    return-void

    .line 101
    :catch_e
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "api"    # Landroid/os/IInterface;

    .line 29
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 30
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/history/IHistoryService;

    iput-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mApi:Lcom/gsma/services/rcs/history/IHistoryService;

    .line 31
    return-void
.end method

.method public unregisterExtraHistoryLogMember(I)V
    .registers 5
    .param p1, "providerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mApi:Lcom/gsma/services/rcs/history/IHistoryService;

    if-eqz v0, :cond_14

    .line 119
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/history/IHistoryService;->unRegisterExtraHistoryLogMember(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 122
    nop

    .line 126
    return-void

    .line 120
    :catch_9
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
