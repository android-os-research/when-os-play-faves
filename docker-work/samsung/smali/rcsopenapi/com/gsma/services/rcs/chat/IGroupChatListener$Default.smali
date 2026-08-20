.class public Lcom/gsma/services/rcs/chat/IGroupChatListener$Default;
.super Ljava/lang/Object;
.source "IGroupChatListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IGroupChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IGroupChatListener;
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

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .registers 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public onDeleted(Ljava/util/List;)V
    .registers 2
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

    .line 62
    .local p1, "chatIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
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

    .line 51
    return-void
.end method

.method public onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
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

    .line 29
    return-void
.end method

.method public onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
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

    .line 65
    .local p2, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V
    .registers 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "status"    # Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;II)V
    .registers 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
