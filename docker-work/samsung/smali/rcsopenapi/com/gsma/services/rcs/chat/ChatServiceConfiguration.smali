.class public Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;
.super Ljava/lang/Object;
.source "ChatServiceConfiguration.java"


# instance fields
.field private final mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;)V
    .registers 2
    .param p1, "chatServiceConfig"    # Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    .line 54
    return-void
.end method


# virtual methods
.method public getChatTimeout()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 100
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getChatTimeout()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 101
    :catch_9
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGeolocExpirationTime()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_15

    .line 286
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGeolocExpirationTime()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_a

    int-to-long v0, v0

    return-wide v0

    .line 287
    :catch_a
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGeolocLabelMaxLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 270
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGeolocLabelMaxLength()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 271
    :catch_9
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGroupChatMaxParticipants()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 116
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGroupChatMaxParticipants()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 117
    :catch_9
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGroupChatMessageMaxLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 164
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGroupChatMessageMaxLength()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 165
    :catch_9
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGroupChatMinParticipants()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 132
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGroupChatMinParticipants()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 133
    :catch_9
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGroupChatSubjectMaxLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 181
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGroupChatSubjectMaxLength()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 182
    :catch_9
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getIsComposingTimeout()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_15

    .line 254
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getIsComposingTimeout()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_a

    int-to-long v0, v0

    return-wide v0

    .line 255
    :catch_a
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getOneToOneChatMessageMaxLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 148
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getOneToOneChatMessageMaxLength()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 149
    :catch_9
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isChatSf()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 65
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isChatSf()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 66
    :catch_9
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isChatWarnSF()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 83
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isChatWarnSF()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 84
    :catch_9
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isGroupChatSupported()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 302
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isGroupChatSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 303
    :catch_9
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isRespondToDisplayReportsEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 217
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isRespondToDisplayReportsEnabled()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 218
    :catch_9
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isSmsFallback()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 199
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isSmsFallback()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 200
    :catch_9
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public setRespondToDisplayReports(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mChatServiceConfigInf:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v0, :cond_14

    .line 238
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->setRespondToDisplayReports(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 241
    nop

    .line 245
    return-void

    .line 239
    :catch_9
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
