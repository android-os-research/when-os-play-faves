.class public final Lcom/gsma/services/rcs/contact/ContactService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ContactService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/gsma/services/rcs/contact/IContactService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/gsma/services/rcs/contact/ContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    .line 105
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/contact/ContactService$1;-><init>(Lcom/gsma/services/rcs/contact/ContactService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->apiConnection:Landroid/content/ServiceConnection;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/contact/ContactService;

    .line 46
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/contact/ContactService;

    .line 46
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/contact/ContactService;

    .line 46
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/contact/ContactService;

    .line 46
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "blockContact"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_1b

    .line 224
    :try_start_b
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/contact/IContactService;->blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 227
    nop

    .line 231
    return-void

    .line 225
    :catch_10
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .registers 6

    .line 66
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 67
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_56

    .line 71
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/contact/IContactService;

    .line 72
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/contact/ContactService;->ctx:Landroid/content/Context;

    .line 74
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/contact/ContactService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 71
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 76
    .local v1, "result":Z
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

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

    .line 77
    return-void

    .line 68
    .end local v1    # "result":Z
    :cond_56
    :goto_56
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public disconnect()V
    .registers 3

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 85
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f

    .line 89
    goto :goto_13

    .line 86
    :catch_f
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 90
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_13
    return-void
.end method

.method public getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRcsContact"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_1b

    .line 134
    :try_start_b
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    .line 135
    :catch_10
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getRcsContacts()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRcsContacts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_5a

    .line 153
    :try_start_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 154
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContacts()Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    if-eqz v1, :cond_49

    .line 158
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 159
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/contact/RcsContact;

    .line 160
    .local v3, "contact":Lcom/gsma/services/rcs/contact/RcsContact;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    nop

    .end local v3    # "contact":Lcom/gsma/services/rcs/contact/RcsContact;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 162
    .end local v2    # "i":I
    :cond_2c
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result.size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v0

    .line 156
    :cond_49
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    .end local p0    # "this":Lcom/gsma/services/rcs/contact/ContactService;
    throw v2
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_4f} :catch_4f

    .line 164
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    .end local v1    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    .restart local p0    # "this":Lcom/gsma/services/rcs/contact/ContactService;
    :catch_4f
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5a
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getRcsContactsOnline()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRcsContactsOnline"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_25

    .line 182
    :try_start_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContactsOnline()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1a

    .line 184
    return-object v0

    .line 185
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    :catch_1a
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRcsContactsSupporting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_25

    .line 204
    :try_start_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 205
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1a

    .line 206
    return-object v0

    .line 207
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    :catch_1a
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "api"    # Landroid/os/IInterface;

    .line 97
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 99
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/contact/IContactService;

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    .line 100
    return-void
.end method

.method public unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unblockContact"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_1b

    .line 241
    :try_start_b
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/contact/IContactService;->unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 244
    nop

    .line 248
    return-void

    .line 242
    :catch_10
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
