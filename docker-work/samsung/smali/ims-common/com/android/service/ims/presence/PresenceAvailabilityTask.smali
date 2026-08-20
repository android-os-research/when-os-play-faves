.class public Lcom/android/service/ims/presence/PresenceAvailabilityTask;
.super Lcom/android/service/ims/presence/PresenceTask;
.source "PresenceAvailabilityTask.java"


# instance fields
.field private blacklist logger:Lcom/android/ims/internal/Logger;

.field private blacklist mCreateTimestamp:J

.field private blacklist mNotifyTimeStamp:J


# direct methods
.method public constructor blacklist <init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;)V
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "cmdId"    # I
    .param p3, "listener"    # Lcom/android/service/ims/presence/ContactCapabilityResponse;
    .param p4, "contacts"    # [Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/service/ims/presence/PresenceTask;-><init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->getLogger(Ljava/lang/String;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->logger:Lcom/android/ims/internal/Logger;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mCreateTimestamp:J

    .line 45
    iput-wide v0, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mNotifyTimeStamp:J

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mCreateTimestamp:J

    .line 52
    iput-wide v0, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mNotifyTimeStamp:J

    .line 53
    return-void
.end method


# virtual methods
.method public blacklist getCreateTimestamp()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mCreateTimestamp:J

    return-wide v0
.end method

.method public blacklist getNotifyTimestamp()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mNotifyTimeStamp:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/service/ims/presence/PresenceTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNotifyTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mNotifyTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateNotifyTimestamp()V
    .registers 5

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mNotifyTimeStamp:J

    .line 57
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotifyTimestamp mNotifyTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mNotifyTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 58
    return-void
.end method
