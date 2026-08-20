.class public Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
.super Lcom/gsma/services/rcs/extension/MultimediaSession;
.source "MultimediaMessagingSession.java"


# instance fields
.field private sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    .registers 2
    .param p1, "sessionIntf"    # Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    .line 38
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSession;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    .line 40
    return-void
.end method


# virtual methods
.method public abortSession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 47
    const-string v0, "MultimediaMessagingSession"

    const-string v1, "abortSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->abortSession()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 52
    nop

    .line 53
    return-void

    .line 50
    :catch_e
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptInvitation()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 60
    const-string v0, "MultimediaMessagingSession"

    const-string v1, "acceptInvitation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->acceptInvitation()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 65
    nop

    .line 66
    return-void

    .line 63
    :catch_e
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flushMessages()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->flushMessages()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 188
    nop

    .line 189
    return-void

    .line 186
    :catch_7
    move-exception v0

    .line 187
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

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 77
    :catch_7
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 90
    :catch_7
    move-exception v0

    .line 91
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

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getServiceId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 114
    :catch_7
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getSessionId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 126
    :catch_7
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 138
    :catch_7
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rejectInvitation()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 148
    const-string v0, "MultimediaMessagingSession"

    const-string v1, "rejectInvitation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->rejectInvitation()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 153
    nop

    .line 154
    return-void

    .line 151
    :catch_e
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rejectInvitation(Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .registers 5
    .param p1, "reason"    # Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectInvitation reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultimediaMessagingSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_18
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->rejectInvitation2(Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1f

    .line 167
    nop

    .line 168
    return-void

    .line 165
    :catch_1f
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendMessage([BLjava/lang/String;)V
    .registers 6
    .param p1, "content"    # [B
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->sendMessage([BLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 180
    nop

    .line 181
    return-void

    .line 178
    :catch_7
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
