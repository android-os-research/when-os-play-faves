.class public Lcom/android/service/ims/presence/PresenceCapabilityTask;
.super Lcom/android/service/ims/presence/PresenceTask;
.source "PresenceCapabilityTask.java"


# static fields
.field public static final blacklist ACTION_TASK_TIMEOUT_ALARM:Ljava/lang/String; = "com.android.service.ims.presence.task.timeout"

.field static blacklist sAlarmManager:Landroid/app/AlarmManager;


# instance fields
.field private blacklist logger:Lcom/android/ims/internal/Logger;

.field blacklist mAlarmIntent:Landroid/app/PendingIntent;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCreatedTimeStamp:J

.field public blacklist mResultCode:I

.field private blacklist mTimeout:J

.field blacklist mTimerStarted:Z

.field public blacklist mWaitingForNotify:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->sAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;J)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I
    .param p3, "cmdId"    # I
    .param p4, "listener"    # Lcom/android/service/ims/presence/ContactCapabilityResponse;
    .param p5, "contacts"    # [Ljava/lang/String;
    .param p6, "timeout"    # J

    .line 76
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/service/ims/presence/PresenceTask;-><init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->getLogger(Ljava/lang/String;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->logger:Lcom/android/ims/internal/Logger;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mContext:Landroid/content/Context;

    .line 62
    iput-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTimerStarted:Z

    .line 77
    iput-object p1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mContext:Landroid/content/Context;

    .line 78
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mWaitingForNotify:Z

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mCreatedTimeStamp:J

    .line 81
    iput-wide p6, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTimeout:J

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gtz v0, :cond_30

    .line 88
    const-wide/32 v0, 0x8ca0

    iput-wide v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTimeout:J

    .line 91
    :cond_30
    if-eqz p4, :cond_35

    .line 92
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresenceCapabilityTask;->startTimer()V

    .line 94
    :cond_35
    return-void
.end method

.method private blacklist startTimer()V
    .registers 9

    .line 103
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 104
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "startTimer mContext is null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 105
    return-void

    .line 108
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.service.ims.presence.task.timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget v1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTaskId:I

    const-string v2, "taskId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x44000000    # 512.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 114
    .local v1, "mAlarmIntent":Landroid/app/PendingIntent;
    sget-object v2, Lcom/android/service/ims/presence/PresenceCapabilityTask;->sAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_3c

    .line 115
    iget-object v2, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    sput-object v2, Lcom/android/service/ims/presence/PresenceCapabilityTask;->sAlarmManager:Landroid/app/AlarmManager;

    .line 118
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTimeout:J

    add-long/2addr v2, v4

    .line 119
    .local v2, "triggerAt":J
    iget-object v4, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->logger:Lcom/android/ims/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTimer taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTimeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTimeout:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " triggerAt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAlarmIntent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 121
    sget-object v4, Lcom/android/service/ims/presence/PresenceCapabilityTask;->sAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 122
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTimerStarted:Z

    .line 123
    return-void
.end method


# virtual methods
.method public blacklist cancelTimer()V
    .registers 4

    .line 126
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTimerStarted:Z

    if-eqz v0, :cond_2c

    .line 127
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTimer, taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_29

    sget-object v1, Lcom/android/service/ims/presence/PresenceCapabilityTask;->sAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_29

    .line 129
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 131
    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTimerStarted:Z

    .line 133
    :cond_2c
    return-void
.end method

.method public blacklist isWaitingForNotify()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mWaitingForNotify:Z

    return v0
.end method

.method public blacklist onTerminated(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 152
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mWaitingForNotify:Z

    if-nez v0, :cond_1d

    .line 153
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTerminated mWaitingForNotify is false. task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 154
    return-void

    .line 157
    :cond_1d
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresenceCapabilityTask;->cancelTimer()V

    .line 158
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    if-eqz v0, :cond_2b

    .line 159
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    iget v1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTaskId:I

    invoke-interface {v0, v1}, Lcom/android/service/ims/presence/ContactCapabilityResponse;->onFinish(I)V

    .line 162
    :cond_2b
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/service/ims/TaskManager;->removeTask(I)V

    .line 163
    return-void
.end method

.method public blacklist onTimeout()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeout, taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    if-eqz v0, :cond_25

    .line 138
    iget-object v0, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    iget v1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTaskId:I

    invoke-interface {v0, v1}, Lcom/android/service/ims/presence/ContactCapabilityResponse;->onTimeout(I)V

    .line 140
    :cond_25
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/service/ims/TaskManager;->removeTask(I)V

    .line 141
    return-void
.end method

.method public blacklist setWaitingForNotify(Z)V
    .registers 2
    .param p1, "waitingForNotify"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mWaitingForNotify:Z

    .line 145
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/service/ims/presence/PresenceTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCreatedTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mCreatedTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
