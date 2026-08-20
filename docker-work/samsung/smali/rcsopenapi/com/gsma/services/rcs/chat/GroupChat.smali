.class public Lcom/gsma/services/rcs/chat/GroupChat;
.super Ljava/lang/Object;
.source "GroupChat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;,
        Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;,
        Lcom/gsma/services/rcs/chat/GroupChat$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/gsma/services/rcs/chat/GroupChat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/chat/IGroupChat;)V
    .registers 2
    .param p1, "chatIntf"    # Lcom/gsma/services/rcs/chat/IGroupChat;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    .line 309
    return-void
.end method


# virtual methods
.method public getChatId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getChatId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getChatId()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 336
    :catch_e
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getDirection()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getDirection()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    return-object v0

    .line 392
    :catch_16
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxParticipants()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 596
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getMaxParticipants()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getMaxParticipants()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 599
    :catch_e
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getParticipants()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getParticipants()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;>;"
    :try_start_c
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IGroupChat;->getParticipants()Ljava/util/Map;

    move-result-object v1

    .line 367
    .local v1, "maps":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 368
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 369
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 370
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 371
    .local v4, "key":Ljava/lang/String;
    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 372
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 373
    .local v5, "value":Ljava/lang/Integer;
    new-instance v6, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v6, v4}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_4a} :catch_4c

    .line 375
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_4a
    goto :goto_1a

    .line 378
    .end local v1    # "maps":Ljava/util/Map;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_4b
    goto :goto_50

    .line 376
    :catch_4c
    move-exception v1

    .line 377
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 379
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_50
    return-object v0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getReasonCode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getReasonCode()Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    return-object v0

    .line 437
    :catch_16
    move-exception v0

    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getRemoteContact()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "contact":Ljava/lang/String;
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    return-object v1

    .line 407
    .end local v0    # "contact":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/chat/GroupChat$State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getState()Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/GroupChat$State;->toInt()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/GroupChat$State;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    return-object v0

    .line 422
    :catch_16
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSubject()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 347
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getSubject()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getSubject()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 350
    :catch_e
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimestamp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getTimestamp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getTimestamp()J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 322
    :catch_e
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public inviteParticipants(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 580
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/contact/ContactId;>;"
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : addParticipants()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IGroupChat;->addParticipants(Ljava/util/List;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13

    .line 585
    nop

    .line 586
    return-void

    .line 583
    :catch_13
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAllowedToInviteParticipant(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .registers 6
    .param p1, "participant"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 560
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : canAddParticipants(Set<ContactId>)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v1, 0x0

    .line 563
    .local v1, "isAllowed":Z
    :try_start_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/rcs/contact/ContactId;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v3, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v3, v2}, Lcom/gsma/services/rcs/chat/IGroupChat;->canAddListParticipants(Ljava/util/List;)Z

    move-result v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_2f

    move v1, v3

    .line 568
    .end local v2    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/rcs/contact/ContactId;>;"
    nop

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end : canAddParticipants(Set<ContactId>) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return v1

    .line 566
    :catch_2f
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isAllowedToInviteParticipants()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 541
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : canAddParticipants()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v1, 0x0

    .line 544
    .local v1, "isAllowed":Z
    :try_start_8
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v2}, Lcom/gsma/services/rcs/chat/IGroupChat;->canAddParticipants()Z

    move-result v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_27

    move v1, v2

    .line 547
    nop

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end : canAddParticipants() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v1

    .line 545
    :catch_27
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isAllowedToLeave()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 611
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : isAllowedToLeave()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->isAllowedToLeave()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 614
    :catch_e
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAllowedToSendMessage()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 466
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : canSendMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->canSendMessage()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 469
    :catch_e
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public leave()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 624
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : leave()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->leave()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 629
    nop

    .line 630
    return-void

    .line 627
    :catch_e
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openChat()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : openChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->openChat()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 454
    nop

    .line 455
    return-void

    .line 452
    :catch_e
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendIsComposingEvent(Z)V
    .registers 5
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : sendIsComposingEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->sendIsComposingEvent(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 531
    nop

    .line 532
    return-void

    .line 529
    :catch_e
    move-exception v0

    .line 530
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendMessage(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .registers 5
    .param p1, "geoloc"    # Lcom/gsma/services/rcs/Geoloc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->sendGeoloc(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v0

    .line 508
    .local v0, "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    new-instance v1, Lcom/gsma/services/rcs/chat/ChatMessage;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 509
    .end local v0    # "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    :catch_c
    move-exception v0

    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 485
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : sendMessage(text)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v0

    .line 488
    .local v0, "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    new-instance v1, Lcom/gsma/services/rcs/chat/ChatMessage;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    return-object v1

    .line 489
    .end local v0    # "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    :catch_13
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start : sendMessage   exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setComposingStatus(Z)V
    .registers 5
    .param p1, "ongoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 633
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : setComposingStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->chatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->setComposingStatus(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 638
    nop

    .line 639
    return-void

    .line 636
    :catch_e
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
