.class public Lcom/android/service/ims/presence/PresenceBase;
.super Ljava/lang/Object;
.source "PresenceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/service/ims/presence/PresenceBase$PresencePublishState;
    }
.end annotation


# static fields
.field public static final blacklist PUBLISH_STATE_200_OK:I = 0x0

.field public static final blacklist PUBLISH_STATE_NOT_PUBLISHED:I = 0x1

.field public static final blacklist PUBLISH_STATE_OTHER_ERROR:I = 0x5

.field public static final blacklist PUBLISH_STATE_RCS_PROVISION_ERROR:I = 0x3

.field public static final blacklist PUBLISH_STATE_REQUEST_TIMEOUT:I = 0x4

.field public static final blacklist PUBLISH_STATE_VOLTE_PROVISION_ERROR:I = 0x2

.field private static blacklist logger:Lcom/android/ims/internal/Logger;


# instance fields
.field protected blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-string v0, "PresenceBase"

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->getLogger(Ljava/lang/String;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/service/ims/presence/PresenceBase;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method


# virtual methods
.method protected blacklist handleCallback(Lcom/android/service/ims/Task;IZ)V
    .registers 10
    .param p1, "task"    # Lcom/android/service/ims/Task;
    .param p2, "resultCode"    # I
    .param p3, "forCmdStatus"    # Z

    .line 110
    if-nez p1, :cond_a

    .line 111
    sget-object v0, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "task == null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 112
    return-void

    .line 115
    :cond_a
    iget-object v0, p1, Lcom/android/service/ims/Task;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    if-eqz v0, :cond_21

    .line 116
    if-ltz p2, :cond_1a

    .line 117
    if-nez p3, :cond_21

    .line 118
    iget-object v0, p1, Lcom/android/service/ims/Task;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    iget v1, p1, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-interface {v0, v1}, Lcom/android/service/ims/presence/ContactCapabilityResponse;->onSuccess(I)V

    goto :goto_21

    .line 121
    :cond_1a
    iget-object v0, p1, Lcom/android/service/ims/Task;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    iget v1, p1, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-interface {v0, v1, p2}, Lcom/android/service/ims/presence/ContactCapabilityResponse;->onError(II)V

    .line 128
    :cond_21
    :goto_21
    const/4 v0, 0x1

    const-string v1, "handleCallback remove task="

    if-eqz p2, :cond_b9

    .line 129
    instance-of v2, p1, Lcom/android/service/ims/presence/PresencePublishTask;

    if-eqz v2, :cond_99

    .line 130
    move-object v2, p1

    check-cast v2, Lcom/android/service/ims/presence/PresencePublishTask;

    .line 131
    .local v2, "publishTask":Lcom/android/service/ims/presence/PresencePublishTask;
    sget-object v3, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCallback for publishTask="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x2

    if-ne p2, v3, :cond_78

    .line 134
    invoke-virtual {v2}, Lcom/android/service/ims/presence/PresencePublishTask;->getRetryCount()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_6f

    .line 136
    sget-object v0, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    iget v1, p1, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/service/ims/TaskManager;->removeTask(I)V

    goto :goto_97

    .line 140
    :cond_6f
    invoke-virtual {v2}, Lcom/android/service/ims/presence/PresencePublishTask;->getRetryCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/android/service/ims/presence/PresencePublishTask;->setRetryCount(I)V

    goto :goto_97

    .line 143
    :cond_78
    sget-object v0, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    iget v1, p1, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/service/ims/TaskManager;->removeTask(I)V

    .line 146
    .end local v2    # "publishTask":Lcom/android/service/ims/presence/PresencePublishTask;
    :goto_97
    goto/16 :goto_112

    .line 147
    :cond_99
    sget-object v0, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    iget v1, p1, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/service/ims/TaskManager;->removeTask(I)V

    goto :goto_112

    .line 151
    :cond_b9
    if-nez p3, :cond_103

    if-nez p3, :cond_c2

    instance-of v2, p1, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    if-eqz v2, :cond_c2

    goto :goto_103

    .line 159
    :cond_c2
    if-nez p3, :cond_e3

    instance-of v0, p1, Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    if-eqz v0, :cond_e3

    if-nez p2, :cond_e3

    .line 162
    sget-object v0, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCallback PresenceAvailabilityTask cache for 60s task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 164
    return-void

    .line 167
    :cond_e3
    sget-object v0, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    iget v1, p1, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/service/ims/TaskManager;->removeTask(I)V

    goto :goto_112

    .line 152
    :cond_103
    :goto_103
    sget-object v1, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "handleCallback remove task later"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 155
    if-nez p3, :cond_112

    .line 156
    move-object v1, p1

    check-cast v1, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    invoke-virtual {v1, v0}, Lcom/android/service/ims/presence/PresenceCapabilityTask;->setWaitingForNotify(Z)V

    .line 171
    :cond_112
    :goto_112
    return-void
.end method

.method protected blacklist isInConfigList(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .param p1, "errorNo"    # I
    .param p2, "phrase"    # Ljava/lang/String;
    .param p3, "errorArray"    # [Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "inErrorString":Ljava/lang/String;
    sget-object v1, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorArray length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorArray="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 197
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_3d
    if-ge v3, v1, :cond_76

    aget-object v4, p3, v3

    .line 198
    .local v4, "errorStr":Ljava/lang/String;
    if-eqz v4, :cond_73

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "errorPhrase":Ljava/lang/String;
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_71

    .line 204
    :cond_5a
    if-eqz p2, :cond_70

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_63

    goto :goto_70

    .line 208
    :cond_63
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 205
    :cond_70
    :goto_70
    return v2

    .line 201
    :cond_71
    :goto_71
    const/4 v2, 0x1

    return v2

    .line 197
    .end local v1    # "errorPhrase":Ljava/lang/String;
    .end local v4    # "errorStr":Ljava/lang/String;
    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 211
    :cond_76
    return v2
.end method

.method protected blacklist notifyDm()V
    .registers 3

    .line 185
    sget-object v0, Lcom/android/service/ims/presence/PresenceBase;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "notifyDm"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public blacklist onCommandStatusUpdated(III)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "requestId"    # I
    .param p3, "resultCode"    # I

    .line 174
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/service/ims/TaskManager;->getTask(I)Lcom/android/service/ims/Task;

    move-result-object v0

    .line 175
    .local v0, "task":Lcom/android/service/ims/Task;
    if-eqz v0, :cond_17

    .line 176
    iput p2, v0, Lcom/android/service/ims/Task;->mSipRequestId:I

    .line 177
    iput p3, v0, Lcom/android/service/ims/Task;->mCmdStatus:I

    .line 178
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v1

    iget v2, v0, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/service/ims/TaskManager;->putTask(ILcom/android/service/ims/Task;)V

    .line 181
    :cond_17
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lcom/android/service/ims/presence/PresenceBase;->handleCallback(Lcom/android/service/ims/Task;IZ)V

    .line 182
    return-void
.end method
