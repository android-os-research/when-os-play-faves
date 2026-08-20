.class Lcom/gsma/services/rcs/chat/ChatService$2;
.super Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/chat/ChatService;->addEventListener(Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/chat/ChatService;

.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/ChatService;Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/gsma/services/rcs/chat/ChatService;

    .line 405
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    iput-object p2, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .registers 4
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V

    .line 416
    return-void
.end method

.method public onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
    .registers 12
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "status"    # Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .param p5, "reasonCode"    # Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 411
    return-void
.end method

.method public onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
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

    .line 420
    .local p2, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 421
    .local v0, "setmsgIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->val$callBackListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    .line 422
    return-void
.end method
