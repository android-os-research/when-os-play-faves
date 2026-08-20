.class public Lcom/android/service/ims/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/service/ims/TaskManager$MessageHandler;,
        Lcom/android/service/ims/TaskManager$MessageData;
    }
.end annotation


# static fields
.field private static final blacklist TASK_MANAGER_ON_TERMINATED:I = 0x1

.field private static final blacklist TASK_MANAGER_ON_TIMEOUT:I = 0x2

.field public static final blacklist TASK_TYPE_GET_AVAILABILITY:I = 0x2

.field public static final blacklist TASK_TYPE_GET_CAPABILITY:I = 0x1

.field public static final blacklist TASK_TYPE_PUBLISH:I = 0x3

.field private static blacklist sMsgHandler:Lcom/android/service/ims/TaskManager$MessageHandler;

.field private static blacklist sTaskManager:Lcom/android/service/ims/TaskManager;


# instance fields
.field private blacklist logger:Lcom/android/ims/internal/Logger;

.field private final blacklist mSyncObj:Ljava/lang/Object;

.field private blacklist mTaskId:I

.field private blacklist mTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/service/ims/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlogger(Lcom/android/service/ims/TaskManager;)Lcom/android/ims/internal/Logger;
    .registers 1

    iget-object p0, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/service/ims/TaskManager;->sTaskManager:Lcom/android/service/ims/TaskManager;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->getLogger(Ljava/lang/String;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/service/ims/TaskManager;->mTaskId:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "TaskManager created."

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MessageHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 82
    .local v0, "messageHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 84
    .local v1, "messageHandlerLooper":Landroid/os/Looper;
    new-instance v2, Lcom/android/service/ims/TaskManager$MessageHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/service/ims/TaskManager$MessageHandler;-><init>(Lcom/android/service/ims/TaskManager;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/service/ims/TaskManager;->sMsgHandler:Lcom/android/service/ims/TaskManager$MessageHandler;

    .line 85
    return-void
.end method

.method public static declared-synchronized blacklist getDefault()Lcom/android/service/ims/TaskManager;
    .registers 2

    const-class v0, Lcom/android/service/ims/TaskManager;

    monitor-enter v0

    .line 88
    :try_start_3
    sget-object v1, Lcom/android/service/ims/TaskManager;->sTaskManager:Lcom/android/service/ims/TaskManager;

    if-nez v1, :cond_e

    .line 89
    new-instance v1, Lcom/android/service/ims/TaskManager;

    invoke-direct {v1}, Lcom/android/service/ims/TaskManager;-><init>()V

    sput-object v1, Lcom/android/service/ims/TaskManager;->sTaskManager:Lcom/android/service/ims/TaskManager;

    .line 92
    :cond_e
    sget-object v1, Lcom/android/service/ims/TaskManager;->sTaskManager:Lcom/android/service/ims/TaskManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized blacklist putTaskInternal(ILcom/android/service/ims/Task;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "task"    # Lcom/android/service/ims/Task;

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/service/ims/Task;

    .line 108
    .local v0, "sameKeyTask":Lcom/android/service/ims/Task;
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added Task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Original same key task:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 109
    monitor-exit p0

    return-void

    .line 105
    .end local v0    # "sameKeyTask":Lcom/android/service/ims/Task;
    .end local p0    # "this":Lcom/android/service/ims/TaskManager;
    .end local p1    # "taskId":I
    .end local p2    # "task":Lcom/android/service/ims/Task;
    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public blacklist addAvailabilityTask(Ljava/lang/String;Lcom/android/service/ims/presence/ContactCapabilityResponse;)I
    .registers 8
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/service/ims/presence/ContactCapabilityResponse;

    .line 124
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/service/ims/TaskManager;->generateTaskId()I

    move-result v0

    .line 125
    .local v0, "taskId":I
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    const/4 v2, 0x1

    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    .line 127
    .local v2, "contacts":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 128
    new-instance v3, Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, p2, v2}, Lcom/android/service/ims/presence/PresenceAvailabilityTask;-><init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;)V

    .line 130
    .local v3, "task":Lcom/android/service/ims/Task;
    invoke-direct {p0, v0, v3}, Lcom/android/service/ims/TaskManager;->putTaskInternal(ILcom/android/service/ims/Task;)V

    .line 131
    .end local v2    # "contacts":[Ljava/lang/String;
    .end local v3    # "task":Lcom/android/service/ims/Task;
    monitor-exit v1

    .line 133
    return v0

    .line 131
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public blacklist addCapabilityTask(Landroid/content/Context;[Ljava/lang/String;Lcom/android/service/ims/presence/ContactCapabilityResponse;J)I
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contacts"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/service/ims/presence/ContactCapabilityResponse;
    .param p4, "timeout"    # J

    .line 113
    move-object v1, p0

    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/service/ims/TaskManager;->generateTaskId()I

    move-result v10

    .line 114
    .local v10, "taskId":I
    iget-object v11, v1, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v11

    .line 115
    :try_start_c
    new-instance v0, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    const/4 v5, 0x1

    move-object v2, v0

    move-object v3, p1

    move v4, v10

    move-object v6, p3

    move-object v7, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/service/ims/presence/PresenceCapabilityTask;-><init>(Landroid/content/Context;IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;J)V

    .line 117
    .local v0, "task":Lcom/android/service/ims/Task;
    invoke-direct {p0, v10, v0}, Lcom/android/service/ims/TaskManager;->putTaskInternal(ILcom/android/service/ims/Task;)V

    .line 118
    .end local v0    # "task":Lcom/android/service/ims/Task;
    monitor-exit v11

    .line 120
    return v10

    .line 118
    :catchall_1e
    move-exception v0

    monitor-exit v11
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public blacklist addPublishTask(Ljava/lang/String;)I
    .registers 8
    .param p1, "contact"    # Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/service/ims/TaskManager;->generateTaskId()I

    move-result v0

    .line 138
    .local v0, "taskId":I
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    const/4 v2, 0x1

    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    .line 140
    .local v2, "contacts":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 141
    new-instance v3, Lcom/android/service/ims/presence/PresenceTask;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5, v2}, Lcom/android/service/ims/presence/PresenceTask;-><init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;)V

    .line 142
    .local v3, "task":Lcom/android/service/ims/Task;
    invoke-direct {p0, v0, v3}, Lcom/android/service/ims/TaskManager;->putTaskInternal(ILcom/android/service/ims/Task;)V

    .line 143
    .end local v2    # "contacts":[Ljava/lang/String;
    .end local v3    # "task":Lcom/android/service/ims/Task;
    monitor-exit v1

    .line 145
    return v0

    .line 143
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public blacklist clearTimeoutAvailabilityTask(J)V
    .registers 19
    .param p1, "availabilityExpire"    # J

    .line 348
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "clearTimeoutAvailabilityTask"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 350
    iget-object v2, v1, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 353
    .local v3, "currentTime":J
    iget-object v0, v1, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 354
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/service/ims/Task;>;>;"
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 355
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 357
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/service/ims/Task;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/service/ims/Task;

    .line 358
    .local v6, "task":Lcom/android/service/ims/Task;
    iget-object v7, v1, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Currently existing Availability task, key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Task: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 361
    if-eqz v6, :cond_c2

    instance-of v7, v6, Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    if-eqz v7, :cond_c2

    .line 362
    move-object v7, v6

    check-cast v7, Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    .line 364
    .local v7, "presenceTask":Lcom/android/service/ims/presence/PresenceAvailabilityTask;
    invoke-virtual {v7}, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->getNotifyTimestamp()J

    move-result-wide v8

    .line 365
    .local v8, "notifyTimestamp":J
    invoke-virtual {v7}, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->getCreateTimestamp()J

    move-result-wide v10

    .line 366
    .local v10, "createTimestamp":J
    iget-object v12, v1, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createTimestamp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " notifyTimestamp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " currentTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 371
    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-eqz v14, :cond_9d

    add-long v14, v8, p1

    cmp-long v14, v14, v3

    if-ltz v14, :cond_a7

    :cond_9d
    cmp-long v12, v8, v12

    if-nez v12, :cond_c2

    add-long v12, v10, p1

    cmp-long v12, v12, v3

    if-gez v12, :cond_c2

    .line 375
    :cond_a7
    iget-object v12, v1, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "remove expired availability task:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 376
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 379
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/service/ims/Task;>;"
    .end local v6    # "task":Lcom/android/service/ims/Task;
    .end local v7    # "presenceTask":Lcom/android/service/ims/presence/PresenceAvailabilityTask;
    .end local v8    # "notifyTimestamp":J
    .end local v10    # "createTimestamp":J
    :cond_c2
    goto/16 :goto_1a

    .line 380
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/service/ims/Task;>;>;"
    .end local v3    # "currentTime":J
    :cond_c4
    monitor-exit v2

    .line 381
    return-void

    .line 380
    :catchall_c6
    move-exception v0

    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_c .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method public declared-synchronized blacklist generateTaskId()I
    .registers 3

    monitor-enter p0

    .line 96
    :try_start_1
    iget v0, p0, Lcom/android/service/ims/TaskManager;->mTaskId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/service/ims/TaskManager;->mTaskId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 96
    .end local p0    # "this":Lcom/android/service/ims/TaskManager;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getAvailabilityTaskByContact(Ljava/lang/String;)Lcom/android/service/ims/presence/PresenceAvailabilityTask;
    .registers 11
    .param p1, "contact"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 386
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 387
    iget-object v3, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    const-string v4, "getTaskByContact keys=null"

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 388
    monitor-exit v0

    return-object v2

    .line 391
    :cond_15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/service/ims/Task;

    .line 393
    .local v5, "task":Lcom/android/service/ims/Task;
    if-nez v5, :cond_30

    .line 394
    goto :goto_19

    .line 397
    :cond_30
    instance-of v6, v5, Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    if-eqz v6, :cond_44

    .line 398
    move-object v6, v5

    check-cast v6, Lcom/android/service/ims/presence/PresenceAvailabilityTask;

    .line 399
    .local v6, "availabilityTask":Lcom/android/service/ims/presence/PresenceAvailabilityTask;
    iget-object v7, v6, Lcom/android/service/ims/presence/PresenceAvailabilityTask;->mContacts:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 400
    monitor-exit v0

    return-object v6

    .line 403
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "task":Lcom/android/service/ims/Task;
    .end local v6    # "availabilityTask":Lcom/android/service/ims/presence/PresenceAvailabilityTask;
    :cond_44
    goto :goto_19

    .line 404
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_45
    monitor-exit v0

    .line 406
    return-object v2

    .line 404
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public blacklist getTask(I)Lcom/android/service/ims/Task;
    .registers 5
    .param p1, "taskId"    # I

    .line 150
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/service/ims/Task;

    monitor-exit v0

    return-object v1

    .line 152
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist getTaskByRequestId(I)Lcom/android/service/ims/Task;
    .registers 8
    .param p1, "sipRequestId"    # I

    .line 192
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 194
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 195
    iget-object v3, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    const-string v4, "getTaskByRequestId keys=null"

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 196
    monitor-exit v0

    return-object v2

    .line 199
    :cond_15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 200
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/service/ims/Task;

    iget v5, v5, Lcom/android/service/ims/Task;->mSipRequestId:I

    if-ne v5, p1, :cond_63

    .line 201
    iget-object v2, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTaskByRequestId, sipRequestId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " task="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    .line 202
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/service/ims/Task;

    monitor-exit v0

    return-object v2

    .line 205
    .end local v4    # "key":Ljava/lang/String;
    :cond_63
    goto :goto_19

    .line 206
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_84

    .line 208
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskByRequestId, sipRequestId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " task=null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 209
    return-object v2

    .line 206
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v1
.end method

.method public blacklist getTaskForSingleContactQuery(Ljava/lang/String;)Lcom/android/service/ims/Task;
    .registers 11
    .param p1, "contact"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 168
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 169
    iget-object v3, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    const-string v4, "getTaskByContact keys=null"

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 170
    monitor-exit v0

    return-object v2

    .line 173
    :cond_15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 174
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/service/ims/Task;

    .line 175
    .local v5, "task":Lcom/android/service/ims/Task;
    if-nez v5, :cond_30

    .line 176
    goto :goto_19

    .line 179
    :cond_30
    instance-of v6, v5, Lcom/android/service/ims/presence/PresenceTask;

    if-eqz v6, :cond_4a

    .line 180
    move-object v6, v5

    check-cast v6, Lcom/android/service/ims/presence/PresenceTask;

    .line 181
    .local v6, "presenceTask":Lcom/android/service/ims/presence/PresenceTask;
    iget-object v7, v6, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4a

    iget-object v7, v6, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 182
    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 183
    monitor-exit v0

    return-object v5

    .line 186
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "task":Lcom/android/service/ims/Task;
    .end local v6    # "presenceTask":Lcom/android/service/ims/presence/PresenceTask;
    :cond_4a
    goto :goto_19

    .line 187
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4b
    monitor-exit v0

    .line 188
    return-object v2

    .line 187
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public blacklist onTerminated(ILjava/lang/String;)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTerminated requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/service/ims/TaskManager;->getTaskByRequestId(I)Lcom/android/service/ims/Task;

    move-result-object v0

    .line 257
    .local v0, "task":Lcom/android/service/ims/Task;
    if-nez v0, :cond_41

    .line 258
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTerminated Can\'t find request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 259
    return-void

    .line 262
    :cond_41
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_44
    instance-of v2, v0, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    if-eqz v2, :cond_60

    .line 264
    new-instance v2, Lcom/android/service/ims/TaskManager$MessageData;

    invoke-direct {v2, p0}, Lcom/android/service/ims/TaskManager$MessageData;-><init>(Lcom/android/service/ims/TaskManager;)V

    .line 265
    .local v2, "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    move-object v3, v0

    check-cast v3, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    iput-object v3, v2, Lcom/android/service/ims/TaskManager$MessageData;->mTask:Lcom/android/service/ims/presence/PresenceCapabilityTask;

    .line 266
    iput-object p2, v2, Lcom/android/service/ims/TaskManager$MessageData;->mReason:Ljava/lang/String;

    .line 268
    sget-object v3, Lcom/android/service/ims/TaskManager;->sMsgHandler:Lcom/android/service/ims/TaskManager$MessageHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/android/service/ims/TaskManager$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 270
    .local v3, "notifyMessage":Landroid/os/Message;
    sget-object v4, Lcom/android/service/ims/TaskManager;->sMsgHandler:Lcom/android/service/ims/TaskManager$MessageHandler;

    invoke-virtual {v4, v3}, Lcom/android/service/ims/TaskManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    .end local v2    # "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    :cond_60
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_62
    move-exception v2

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_44 .. :try_end_64} :catchall_62

    throw v2
.end method

.method public blacklist onTerminated(Ljava/lang/String;)V
    .registers 11
    .param p1, "contact"    # Ljava/lang/String;

    .line 213
    if-nez p1, :cond_3

    .line 214
    return-void

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_6
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 219
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_17

    .line 220
    iget-object v2, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "onTerminated keys is null"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 221
    monitor-exit v0

    return-void

    .line 224
    :cond_17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/service/ims/Task;

    .line 226
    .local v4, "task":Lcom/android/service/ims/Task;
    if-nez v4, :cond_32

    .line 227
    goto :goto_1b

    .line 230
    :cond_32
    instance-of v5, v4, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    if-eqz v5, :cond_72

    .line 231
    move-object v5, v4

    check-cast v5, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    .line 232
    .local v5, "capabilityTask":Lcom/android/service/ims/presence/PresenceCapabilityTask;
    iget-object v6, v5, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mContacts:[Ljava/lang/String;

    if-eqz v6, :cond_72

    iget-object v6, v5, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mContacts:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-eqz v6, :cond_72

    iget-object v6, v5, Lcom/android/service/ims/presence/PresenceCapabilityTask;->mContacts:[Ljava/lang/String;

    aget-object v6, v6, v7

    .line 233
    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 234
    invoke-virtual {v5}, Lcom/android/service/ims/presence/PresenceCapabilityTask;->isWaitingForNotify()Z

    move-result v6

    if-nez v6, :cond_5c

    .line 235
    iget-object v6, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    const-string v7, "onTerminated the tesk is not waiting for NOTIFY yet"

    invoke-virtual {v6, v7}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 236
    goto :goto_1b

    .line 239
    :cond_5c
    new-instance v6, Lcom/android/service/ims/TaskManager$MessageData;

    invoke-direct {v6, p0}, Lcom/android/service/ims/TaskManager$MessageData;-><init>(Lcom/android/service/ims/TaskManager;)V

    .line 240
    .local v6, "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    iput-object v5, v6, Lcom/android/service/ims/TaskManager$MessageData;->mTask:Lcom/android/service/ims/presence/PresenceCapabilityTask;

    .line 241
    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/service/ims/TaskManager$MessageData;->mReason:Ljava/lang/String;

    .line 243
    sget-object v7, Lcom/android/service/ims/TaskManager;->sMsgHandler:Lcom/android/service/ims/TaskManager$MessageHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v6}, Lcom/android/service/ims/TaskManager$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 246
    .local v7, "notifyMessage":Landroid/os/Message;
    sget-object v8, Lcom/android/service/ims/TaskManager;->sMsgHandler:Lcom/android/service/ims/TaskManager$MessageHandler;

    invoke-virtual {v8, v7}, Lcom/android/service/ims/TaskManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "task":Lcom/android/service/ims/Task;
    .end local v5    # "capabilityTask":Lcom/android/service/ims/presence/PresenceCapabilityTask;
    .end local v6    # "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    .end local v7    # "notifyMessage":Landroid/os/Message;
    :cond_72
    goto :goto_1b

    .line 250
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_73
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6 .. :try_end_77} :catchall_75

    throw v1
.end method

.method public blacklist onTimeout(I)V
    .registers 7
    .param p1, "taskId"    # I

    .line 276
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeout taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/service/ims/TaskManager;->getTask(I)Lcom/android/service/ims/Task;

    move-result-object v0

    .line 279
    .local v0, "task":Lcom/android/service/ims/Task;
    if-nez v0, :cond_26

    .line 280
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "onTimeout task = null"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 281
    return-void

    .line 283
    :cond_26
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_29
    instance-of v2, v0, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    if-eqz v2, :cond_48

    .line 285
    new-instance v2, Lcom/android/service/ims/TaskManager$MessageData;

    invoke-direct {v2, p0}, Lcom/android/service/ims/TaskManager$MessageData;-><init>(Lcom/android/service/ims/TaskManager;)V

    .line 286
    .local v2, "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    move-object v3, v0

    check-cast v3, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    iput-object v3, v2, Lcom/android/service/ims/TaskManager$MessageData;->mTask:Lcom/android/service/ims/presence/PresenceCapabilityTask;

    .line 287
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/service/ims/TaskManager$MessageData;->mReason:Ljava/lang/String;

    .line 289
    sget-object v3, Lcom/android/service/ims/TaskManager;->sMsgHandler:Lcom/android/service/ims/TaskManager$MessageHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/android/service/ims/TaskManager$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 291
    .local v3, "timeoutMessage":Landroid/os/Message;
    sget-object v4, Lcom/android/service/ims/TaskManager;->sMsgHandler:Lcom/android/service/ims/TaskManager$MessageHandler;

    invoke-virtual {v4, v3}, Lcom/android/service/ims/TaskManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    nop

    .end local v2    # "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    .end local v3    # "timeoutMessage":Landroid/os/Message;
    goto :goto_60

    .line 293
    :cond_48
    iget-object v2, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not PresenceCapabilityTask, taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 295
    :goto_60
    monitor-exit v1

    .line 296
    return-void

    .line 295
    :catchall_62
    move-exception v2

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_29 .. :try_end_64} :catchall_62

    throw v2
.end method

.method public blacklist putTask(ILcom/android/service/ims/Task;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "task"    # Lcom/android/service/ims/Task;

    .line 100
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/service/ims/TaskManager;->putTaskInternal(ILcom/android/service/ims/Task;)V

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist removeTask(I)V
    .registers 7
    .param p1, "taskId"    # I

    .line 156
    iget-object v0, p0, Lcom/android/service/ims/TaskManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Lcom/android/service/ims/TaskManager;->mTaskMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/service/ims/Task;

    .line 158
    .local v1, "task":Lcom/android/service/ims/Task;
    instance-of v2, v1, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    if-eqz v2, :cond_19

    .line 159
    move-object v2, v1

    check-cast v2, Lcom/android/service/ims/presence/PresenceCapabilityTask;

    invoke-virtual {v2}, Lcom/android/service/ims/presence/PresenceCapabilityTask;->cancelTimer()V

    .line 161
    :cond_19
    iget-object v2, p0, Lcom/android/service/ims/TaskManager;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed Task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 162
    .end local v1    # "task":Lcom/android/service/ims/Task;
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method
