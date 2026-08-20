.class public final Lcom/gsma/services/rcs/filetransfer/FileTransferService;
.super Lcom/gsma/services/rcs/RcsService;
.source "FileTransferService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

.field private apiConnection:Landroid/content/ServiceConnection;

.field private final mapForGroupListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;",
            "Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mapForOneToOneListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;",
            "Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForOneToOneListener:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForGroupListener:Ljava/util/Map;

    .line 131
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;-><init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 59
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 59
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 59
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 59
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_21

    .line 499
    move-object v0, p1

    .line 500
    .local v0, "callBackListener":Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;
    :try_start_5
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;-><init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V

    .line 548
    .local v1, "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 549
    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForGroupListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_16

    .line 552
    nop

    .line 556
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;
    .end local v1    # "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    return-void

    .line 550
    :catch_16
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public addEventListener(Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_21

    .line 429
    move-object v0, p1

    .line 430
    .local v0, "callBackListener":Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;
    :try_start_5
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;-><init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V

    .line 456
    .local v1, "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 457
    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForOneToOneListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_16

    .line 460
    nop

    .line 464
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;
    .end local v1    # "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    return-void

    .line 458
    :catch_16
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public clearFileTransferDeliveryExpiration(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 723
    .local p1, "transferIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1b

    .line 725
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 726
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->clearFileTransferDeliveryExpiration(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    .line 729
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 733
    return-void

    .line 727
    :catch_10
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .registers 6

    .line 93
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 94
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_56

    .line 98
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    .line 99
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->ctx:Landroid/content/Context;

    .line 101
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 98
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 103
    .local v1, "bSuc":Z
    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to FT service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 95
    .end local v1    # "bSuc":Z
    :cond_56
    :goto_56
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public deleteFileTransfer(Ljava/lang/String;)V
    .registers 5
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_14

    .line 661
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteFileTransfer(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 664
    nop

    .line 668
    return-void

    .line 662
    :catch_9
    move-exception v0

    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteGroupFileTransfers()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_14

    .line 605
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteGroupFileTransfers()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 608
    nop

    .line 612
    return-void

    .line 606
    :catch_9
    move-exception v0

    .line 607
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteGroupFileTransfers(Ljava/lang/String;)V
    .registers 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_14

    .line 643
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteGroupFileTransfersByChatId(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 646
    nop

    .line 650
    return-void

    .line 644
    :catch_9
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteOneToOneFileTransfers()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_14

    .line 588
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteOneToOneFileTransfers()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 591
    nop

    .line 595
    return-void

    .line 589
    :catch_9
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteOneToOneFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_14

    .line 624
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteOneToOneFileTransfersByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 627
    nop

    .line 631
    return-void

    .line 625
    :catch_9
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public disconnect()V
    .registers 3

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 114
    goto :goto_c

    .line 112
    :catch_8
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 115
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1d

    .line 406
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    move-result-object v0

    .line 407
    .local v0, "ftInf":Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    if-eqz v0, :cond_10

    .line 408
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 410
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 412
    .end local v0    # "ftInf":Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    :catch_12
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .registers 5
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1d

    .line 185
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v0

    .line 186
    .local v0, "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    if-eqz v0, :cond_10

    .line 187
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 189
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 191
    .end local v0    # "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :catch_12
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getFileTransfers()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer;",
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

    .line 158
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_39

    .line 160
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/filetransfer/FileTransfer;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getFileTransfers()Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "ftList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 163
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-static {v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V

    .line 164
    .local v4, "ft":Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2e

    .line 165
    nop

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "ft":Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    goto :goto_13

    .line 166
    :cond_2d
    return-object v0

    .line 167
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/filetransfer/FileTransfer;>;"
    .end local v1    # "ftList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_2e
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/Set;
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
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

    .line 680
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_19

    .line 682
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;

    move-result-object v0

    .line 683
    .local v0, "ftList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    return-object v1

    .line 684
    .end local v0    # "ftList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_e
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_14

    .line 746
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 747
    :catch_9
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 751
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAllowedToTransferFileToGroupChat(Ljava/lang/String;)Z
    .registers 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_14

    .line 319
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->canTransferFileToGroupChat(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 320
    :catch_9
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_14

    .line 209
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 210
    :catch_9
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public markFileTransferAsRead(Ljava/lang/String;)V
    .registers 5
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_14

    .line 388
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->markFileTransferAsRead(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 391
    nop

    .line 395
    return-void

    .line 389
    :catch_9
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public markUndeliveredFileTransfersAsProcessed(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    .local p1, "transferIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1b

    .line 704
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 705
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->markUndeliveredFileTransfersAsProcessed(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    .line 708
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 712
    return-void

    .line 706
    :catch_10
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 710
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_25

    .line 567
    :try_start_4
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForGroupListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    .line 568
    .local v0, "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    if-eqz v0, :cond_13

    .line 569
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 571
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForGroupListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_1a

    .line 574
    nop

    .line 578
    .end local v0    # "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    return-void

    .line 572
    :catch_1a
    move-exception v0

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_25

    .line 476
    :try_start_4
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForOneToOneListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    .line 478
    .local v0, "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    if-eqz v0, :cond_13

    .line 479
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 481
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mapForOneToOneListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_1a

    .line 484
    nop

    .line 488
    .end local v0    # "iterfaceListener":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    return-void

    .line 482
    :catch_1a
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "api"    # Landroid/os/IInterface;

    .line 123
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    .line 126
    return-void
.end method

.method public transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .registers 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1d

    .line 294
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v0

    .line 295
    .local v0, "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    if-eqz v0, :cond_10

    .line 296
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 298
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 300
    .end local v0    # "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :catch_12
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
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .registers 8
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "disposition"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .param p4, "attachFileicon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_25

    .line 262
    nop

    .line 263
    if-nez p3, :cond_c

    :try_start_7
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    goto :goto_d

    .line 270
    :catch_a
    move-exception v0

    goto :goto_1b

    .line 263
    :cond_c
    move-object v1, p3

    .line 262
    :goto_d
    invoke-interface {v0, p1, p2, v1, p4}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v0

    .line 265
    .local v0, "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    if-eqz v0, :cond_19

    .line 266
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_a

    return-object v1

    .line 268
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1b
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "attachFileIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    move-result-object v0

    return-object v0
.end method

.method public transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .registers 8
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "disposition"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .param p4, "attachFileIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->api:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_25

    .line 363
    nop

    .line 364
    if-nez p3, :cond_c

    :try_start_7
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    goto :goto_d

    .line 371
    :catch_a
    move-exception v0

    goto :goto_1b

    .line 364
    :cond_c
    move-object v1, p3

    .line 363
    :goto_d
    invoke-interface {v0, p1, p2, v1, p4}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v0

    .line 366
    .local v0, "ftIntf":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    if-eqz v0, :cond_19

    .line 367
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_a

    return-object v1

    .line 369
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1b
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .registers 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "attachFileIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    move-result-object v0

    return-object v0
.end method
