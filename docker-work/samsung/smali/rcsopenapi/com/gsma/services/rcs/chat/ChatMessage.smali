.class public Lcom/gsma/services/rcs/chat/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/gsma/services/rcs/chat/ChatMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    .registers 2
    .param p1, "chatMessageInf"    # Lcom/gsma/services/rcs/chat/IChatMessage;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    .line 53
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

    .line 252
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getChatId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_1b

    .line 255
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getChatId()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    .line 256
    :catch_10
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_14

    .line 94
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getContent()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 95
    :catch_9
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_18

    .line 111
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getDirection()I

    move-result v0

    .line 112
    .local v0, "direct":I
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v1

    .line 113
    .end local v0    # "direct":I
    :catch_d
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_14

    .line 78
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 79
    :catch_9
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_14

    .line 128
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getMimeType()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 129
    :catch_9
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getReasonCode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_1f

    .line 237
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getReasonCode()I

    move-result v0

    .line 238
    .local v0, "value":I
    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return-object v1

    .line 239
    .end local v0    # "value":I
    :catch_14
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
    :cond_1f
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_14

    .line 62
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 63
    :catch_9
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getStatus()Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_1f

    .line 219
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getStatus()I

    move-result v0

    .line 220
    .local v0, "value":I
    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return-object v1

    .line 221
    .end local v0    # "value":I
    :catch_14
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getTimestamp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_14

    .line 146
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getTimestamp()J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-wide v0

    .line 147
    :catch_9
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getTimestampDelivered()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getTimestampDelivered()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_1b

    .line 183
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getTimestampDelivered()J

    move-result-wide v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-wide v0

    .line 184
    :catch_10
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getTimestampDisplayed()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getTimestampDisplayed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_1b

    .line 202
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getTimestampDisplayed()J

    move-result-wide v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-wide v0

    .line 203
    :catch_10
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getTimestampSent()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_14

    .line 164
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->getTimestampSent()J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-wide v0

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

.method public isExpiredDelivery()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : isExpiredDelivery()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_1b

    .line 291
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->isExpiredDelivery()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    .line 292
    :catch_10
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isRead()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : isRead()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatMessage;->mChatMessageInf:Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v0, :cond_1b

    .line 272
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatMessage;->isRead()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    .line 273
    :catch_10
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
