.class Lcom/gsma/services/rcs/chat/ChatService$3;
.super Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/chat/ChatService;->addEventListener(Lcom/gsma/services/rcs/chat/GroupChatListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/chat/ChatService;

.field final synthetic val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/ChatService;Lcom/gsma/services/rcs/chat/GroupChatListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/gsma/services/rcs/chat/ChatService;

    .line 466
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    iput-object p2, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .registers 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V

    .line 528
    return-void
.end method

.method public onDeleted(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    .local p1, "chatIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 533
    .local v0, "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 534
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_9

    .line 536
    :cond_19
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v1, v0}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onDeleted(Ljava/util/Set;)V

    .line 537
    return-void
.end method

.method public onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 23
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    .line 486
    .local v0, "enum_status":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    invoke-static {}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_1a

    aget-object v5, v1, v4

    .line 487
    .local v5, "s":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    invoke-virtual {v5}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->ordinal()I

    move-result v6

    move/from16 v7, p5

    if-ne v6, v7, :cond_17

    .line 488
    move-object v0, v5

    .line 489
    goto :goto_1c

    .line 486
    .end local v5    # "s":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1a
    move/from16 v7, p5

    .line 493
    :goto_1c
    sget-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 494
    .local v1, "enum_reasonCode":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    invoke-static {}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    move-result-object v2

    array-length v4, v2

    :goto_23
    if-ge v3, v4, :cond_34

    aget-object v5, v2, v3

    .line 495
    .local v5, "r":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    invoke-virtual {v5}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->ordinal()I

    move-result v6

    move/from16 v15, p6

    if-ne v6, v15, :cond_31

    .line 496
    move-object v1, v5

    .line 497
    goto :goto_36

    .line 494
    .end local v5    # "r":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_34
    move/from16 v15, p6

    .line 501
    :goto_36
    move-object/from16 v2, p0

    iget-object v8, v2, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v0

    move-object v14, v1

    invoke-virtual/range {v8 .. v14}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 503
    return-void
.end method

.method public onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    .line 478
    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v4

    .line 479
    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v5

    .line 477
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 480
    return-void
.end method

.method public onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    .local p2, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 542
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessagesDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 543
    return-void
.end method

.method public onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V
    .registers 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "info"    # Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V

    .line 472
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;II)V
    .registers 10
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->INITIATING:Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 509
    .local v0, "enum_state":Lcom/gsma/services/rcs/chat/GroupChat$State;
    :try_start_2
    invoke-static {p2}, Lcom/gsma/services/rcs/chat/GroupChat$State;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_8

    move-object v0, v1

    .line 512
    goto :goto_27

    .line 510
    :catch_8
    move-exception v1

    .line 511
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/gsma/services/rcs/chat/ChatService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid GroupChat State - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_27
    sget-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    .line 516
    .local v1, "enum_reasonCode":Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    :try_start_29
    invoke-static {p3}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v2
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_2d} :catch_2f

    move-object v1, v2

    .line 519
    goto :goto_4e

    .line 517
    :catch_2f
    move-exception v2

    .line 518
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/gsma/services/rcs/chat/ChatService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid GroupChat ReasonCode - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4e
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->val$listener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v2, p1, v0, v1}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V

    .line 522
    return-void
.end method
