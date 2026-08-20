.class public final Lcom/gsma/services/rcs/chat/ChatService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ChatService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/gsma/services/rcs/chat/IChatService;

.field private apiConnection:Landroid/content/ServiceConnection;

.field private mGroupListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/gsma/services/rcs/chat/GroupChatListener;",
            "Lcom/gsma/services/rcs/chat/IGroupChatListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mapForOneToOneListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/chat/OneToOneChatListener;",
            "Lcom/gsma/services/rcs/chat/IOneToOneChatListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/gsma/services/rcs/chat/ChatService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mapForOneToOneListener:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupListenerMap:Ljava/util/HashMap;

    .line 89
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/chat/ChatService$1;-><init>(Lcom/gsma/services/rcs/chat/ChatService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->apiConnection:Landroid/content/ServiceConnection;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/chat/ChatService;

    .line 50
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/chat/ChatService;

    .line 50
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/chat/ChatService;

    .line 50
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/chat/ChatService;

    .line 50
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/chat/GroupChatListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/chat/GroupChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_20

    .line 466
    :try_start_4
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatService$3;

    invoke-direct {v0, p0, p1}, Lcom/gsma/services/rcs/chat/ChatService$3;-><init>(Lcom/gsma/services/rcs/chat/ChatService;Lcom/gsma/services/rcs/chat/GroupChatListener;)V

    .line 546
    .local v0, "iListener":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/chat/IChatService;->addGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_15

    .line 550
    .end local v0    # "iListener":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    nop

    .line 554
    return-void

    .line 548
    :catch_15
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public addEventListener(Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/chat/OneToOneChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_21

    .line 404
    move-object v0, p1

    .line 405
    .local v0, "callBackListener":Lcom/gsma/services/rcs/chat/OneToOneChatListener;
    :try_start_5
    new-instance v1, Lcom/gsma/services/rcs/chat/ChatService$2;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/chat/ChatService$2;-><init>(Lcom/gsma/services/rcs/chat/ChatService;Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V

    .line 425
    .local v1, "iterfaceListener":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/chat/IChatService;->addOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 426
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatService;->mapForOneToOneListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_16

    .line 429
    nop

    .line 433
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/chat/OneToOneChatListener;
    .end local v1    # "iterfaceListener":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    return-void

    .line 427
    :catch_16
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
    :cond_21
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public clearMessageDeliveryExpiration(Ljava/util/Set;)V
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

    .line 617
    .local p1, "msgIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_19

    .line 619
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IChatService;->clearMessageDeliveryExpiration(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_e

    .line 622
    nop

    .line 626
    return-void

    .line 620
    :catch_e
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .registers 6

    .line 110
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 111
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_56

    .line 115
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/chat/IChatService;

    .line 116
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/chat/ChatService;->ctx:Landroid/content/Context;

    .line 118
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/chat/ChatService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 115
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 120
    .local v1, "bSuc":Z
    sget-object v2, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to Chat service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 112
    .end local v1    # "bSuc":Z
    :cond_56
    :goto_56
    sget-object v1, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public deleteGroupChat(Ljava/lang/String;)V
    .registers 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_14

    .line 369
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->deleteGroupChat(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 372
    nop

    .line 376
    return-void

    .line 370
    :catch_9
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteGroupChats()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_14

    .line 335
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatService;->deleteGroupChats()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 338
    nop

    .line 342
    return-void

    .line 336
    :catch_9
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_14

    .line 386
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->deleteMessage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 389
    nop

    .line 393
    return-void

    .line 387
    :catch_9
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_14

    .line 352
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->deleteOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 355
    nop

    .line 359
    return-void

    .line 353
    :catch_9
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteOneToOneChats()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_14

    .line 319
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatService;->deleteOneToOneChats()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 322
    nop

    .line 326
    return-void

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

.method public disconnect()V
    .registers 4

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 131
    goto :goto_12

    .line 129
    :catch_8
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_12
    return-void
.end method

.method public getChatMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .registers 5
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getChatMessage(String msgId)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_20

    .line 193
    :try_start_b
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->getChatMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v0

    .line 194
    .local v0, "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    new-instance v1, Lcom/gsma/services/rcs/chat/ChatMessage;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    return-object v1

    .line 195
    .end local v0    # "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    :catch_15
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getConfiguration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_20

    .line 302
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatService;->getConfiguration()Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    move-result-object v0

    .line 303
    .local v0, "chatServiceConfigInf":Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    new-instance v1, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;-><init>(Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    return-object v1

    .line 304
    .end local v0    # "chatServiceConfigInf":Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    :catch_15
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGroupChat(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat;
    .registers 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getGroupChat(String chatId)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_24

    .line 170
    :try_start_b
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->getGroupChat(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object v0

    .line 171
    .local v0, "chatIntf":Lcom/gsma/services/rcs/chat/IGroupChat;
    if-eqz v0, :cond_17

    .line 172
    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/chat/GroupChat;-><init>(Lcom/gsma/services/rcs/chat/IGroupChat;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_19

    return-object v1

    .line 174
    :cond_17
    const/4 v1, 0x0

    return-object v1

    .line 176
    .end local v0    # "chatIntf":Lcom/gsma/services/rcs/chat/IGroupChat;
    :catch_19
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_24
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/OneToOneChat;
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getChat(String contact)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_24

    .line 145
    :try_start_b
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->getOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/IOneToOneChat;

    move-result-object v0

    .line 146
    .local v0, "chatIntf":Lcom/gsma/services/rcs/chat/IOneToOneChat;
    if-eqz v0, :cond_17

    .line 147
    new-instance v1, Lcom/gsma/services/rcs/chat/OneToOneChat;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/chat/OneToOneChat;-><init>(Lcom/gsma/services/rcs/chat/IOneToOneChat;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_19

    return-object v1

    .line 149
    :cond_17
    const/4 v1, 0x0

    return-object v1

    .line 151
    .end local v0    # "chatIntf":Lcom/gsma/services/rcs/chat/IOneToOneChat;
    :catch_19
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_24
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getUndeliveredMessages(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/Set;
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

    .line 586
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_19

    .line 588
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->getUndeliveredMessages(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;

    move-result-object v0

    .line 589
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    return-object v1

    .line 590
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_e
    move-exception v0

    .line 591
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public initiateGroupChat(Ljava/util/Set;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat;
    .registers 6
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gsma/services/rcs/chat/GroupChat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 258
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/ContactId;>;"
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : initiateGroupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_29

    .line 261
    :try_start_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, p2}, Lcom/gsma/services/rcs/chat/IChatService;->initiateGroupChat(Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object v0

    .line 262
    .local v0, "chatIntf":Lcom/gsma/services/rcs/chat/IGroupChat;
    if-eqz v0, :cond_1c

    .line 263
    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/chat/GroupChat;-><init>(Lcom/gsma/services/rcs/chat/IGroupChat;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_1e

    return-object v1

    .line 265
    :cond_1c
    const/4 v1, 0x0

    return-object v1

    .line 267
    .end local v0    # "chatIntf":Lcom/gsma/services/rcs/chat/IGroupChat;
    :catch_1e
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_29
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAllowedToInitiateGroupChat()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : isAllowedToInitiateGroupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_1b

    .line 215
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatService;->isAllowedToInitiateGroupChat()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    .line 216
    :catch_10
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAllowedToInitiateGroupChat(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : isAllowedToInitiateGroupChat(ContactId contact)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_1b

    .line 236
    :try_start_b
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->canInitiateGroupChat(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    .line 237
    :catch_10
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public markMessageAsRead(Ljava/lang/String;)V
    .registers 5
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_14

    .line 284
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->markMessageAsRead(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 287
    nop

    .line 291
    return-void

    .line 285
    :catch_9
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public markUndeliveredMessagesAsProcessed(Ljava/util/Set;)V
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

    .line 606
    .local p1, "msgIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_19

    .line 608
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IChatService;->markUndeliveredMessagesAsProcessed(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_e

    .line 611
    nop

    .line 615
    return-void

    .line 609
    :catch_e
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/chat/GroupChatListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/chat/GroupChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_20

    .line 565
    :try_start_4
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    .line 566
    .local v0, "iListener":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    if-eqz v0, :cond_13

    .line 567
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/chat/IChatService;->removeGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_15

    .line 571
    .end local v0    # "iListener":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    :cond_13
    nop

    .line 575
    return-void

    .line 569
    :catch_15
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/chat/OneToOneChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_25

    .line 444
    :try_start_4
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mapForOneToOneListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    .line 445
    .local v0, "iterfaceListener":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    if-eqz v0, :cond_13

    .line 446
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/chat/IChatService;->removeOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 448
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mapForOneToOneListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_1a

    .line 451
    nop

    .line 455
    .end local v0    # "iterfaceListener":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    return-void

    .line 449
    :catch_1a
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "api"    # Landroid/os/IInterface;

    .line 81
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 83
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/chat/IChatService;

    iput-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->api:Lcom/gsma/services/rcs/chat/IChatService;

    .line 84
    return-void
.end method
