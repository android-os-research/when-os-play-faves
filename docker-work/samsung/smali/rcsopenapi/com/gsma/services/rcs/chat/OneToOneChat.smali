.class public Lcom/gsma/services/rcs/chat/OneToOneChat;
.super Ljava/lang/Object;
.source "OneToOneChat.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/gsma/services/rcs/chat/OneToOneChat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/chat/IOneToOneChat;)V
    .registers 2
    .param p1, "chatIntf"    # Lcom/gsma/services/rcs/chat/IOneToOneChat;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    .line 45
    return-void
.end method


# virtual methods
.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getRemoteContact()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 69
    :catch_e
    move-exception v0

    .line 70
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

    .line 80
    sget-object v0, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : isAllowedToSendMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->isAllowedToSendMessage()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 83
    :catch_e
    move-exception v0

    .line 84
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

    .line 52
    sget-object v0, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : openChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->openChat()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :catch_e
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resendMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : resendMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->resendMessage(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 147
    nop

    .line 148
    return-void

    .line 145
    :catch_e
    move-exception v0

    .line 146
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

    .line 127
    sget-object v0, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : sendIsComposingEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->sendIsComposingEvent(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :catch_e
    move-exception v0

    .line 131
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

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->sendGeoloc(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v0

    .line 113
    .local v0, "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    new-instance v1, Lcom/gsma/services/rcs/chat/ChatMessage;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 114
    .end local v0    # "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    :catch_c
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : sendMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v0

    .line 98
    .local v0, "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    new-instance v1, Lcom/gsma/services/rcs/chat/ChatMessage;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    return-object v1

    .line 99
    .end local v0    # "chatMessageInf":Lcom/gsma/services/rcs/chat/IChatMessage;
    :catch_13
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 157
    sget-object v0, Lcom/gsma/services/rcs/chat/OneToOneChat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : setComposingStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->chatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->setComposingStatus(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 162
    nop

    .line 163
    return-void

    .line 160
    :catch_e
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
