.class public Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Default;
.super Ljava/lang/Object;
.source "IOneToOneChatListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IOneToOneChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .registers 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
    .registers 6
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

    .line 13
    return-void
.end method

.method public onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .registers 3
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

    .line 19
    .local p2, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
