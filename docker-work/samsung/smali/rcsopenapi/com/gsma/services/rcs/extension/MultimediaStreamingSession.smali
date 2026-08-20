.class public Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
.super Lcom/gsma/services/rcs/extension/MultimediaSession;
.source "MultimediaStreamingSession.java"


# instance fields
.field private sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V
    .registers 2
    .param p1, "sessionIntf"    # Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    .line 37
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSession;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    .line 39
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
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->abortSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 50
    nop

    .line 51
    return-void

    .line 48
    :catch_7
    move-exception v0

    .line 49
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

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->acceptInvitation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 62
    nop

    .line 63
    return-void

    .line 60
    :catch_7
    move-exception v0

    .line 61
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

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 73
    :catch_7
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getEncoding()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 171
    :catch_7
    move-exception v0

    .line 172
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

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 86
    :catch_7
    move-exception v0

    .line 87
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

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 98
    :catch_7
    move-exception v0

    .line 99
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

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getServiceId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 110
    :catch_7
    move-exception v0

    .line 111
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

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getSessionId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 122
    :catch_7
    move-exception v0

    .line 123
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

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 134
    :catch_7
    move-exception v0

    .line 135
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

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->rejectInvitation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 148
    nop

    .line 149
    return-void

    .line 146
    :catch_7
    move-exception v0

    .line 147
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

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->rejectInvitation2(Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 160
    nop

    .line 161
    return-void

    .line 158
    :catch_7
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendPayload([B)V
    .registers 5
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->sendPayload([B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 181
    nop

    .line 182
    return-void

    .line 179
    :catch_7
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
