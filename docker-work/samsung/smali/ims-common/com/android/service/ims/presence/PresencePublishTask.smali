.class public Lcom/android/service/ims/presence/PresencePublishTask;
.super Lcom/android/service/ims/presence/PresenceTask;
.source "PresencePublishTask.java"


# instance fields
.field private blacklist mCreateTimestamp:J

.field private blacklist mRetryCount:I


# direct methods
.method public constructor blacklist <init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "cmdId"    # I
    .param p3, "listener"    # Lcom/android/service/ims/presence/ContactCapabilityResponse;
    .param p4, "contacts"    # [Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/service/ims/presence/PresenceTask;-><init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/service/ims/presence/PresencePublishTask;->mCreateTimestamp:J

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/service/ims/presence/PresencePublishTask;->mRetryCount:I

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/service/ims/presence/PresencePublishTask;->mCreateTimestamp:J

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist getCreateTimestamp()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/android/service/ims/presence/PresencePublishTask;->mCreateTimestamp:J

    return-wide v0
.end method

.method public blacklist getRetryCount()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublishTask;->mRetryCount:I

    return v0
.end method

.method public blacklist setRetryCount(I)V
    .registers 2
    .param p1, "retryCount"    # I

    .line 56
    iput p1, p0, Lcom/android/service/ims/presence/PresencePublishTask;->mRetryCount:I

    .line 57
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/service/ims/presence/PresenceTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCreateTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/service/ims/presence/PresencePublishTask;->mCreateTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/presence/PresencePublishTask;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
