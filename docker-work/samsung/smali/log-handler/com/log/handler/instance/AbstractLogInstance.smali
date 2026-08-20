.class public abstract Lcom/log/handler/instance/AbstractLogInstance;
.super Ljava/lang/Object;
.source "AbstractLogInstance.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field protected static final COMMAND_EXECUTE_SUCCESS:Ljava/lang/String; = "1"

.field protected static final COMMAND_SET_LOG_SIZE:Ljava/lang/String; = "logsize="

.field protected static final COMMAND_SET_SAVE_BOOTUP_LOG:Ljava/lang/String; = "autostart="

.field protected static final COMMAND_SET_STORAGE_PATH:Ljava/lang/String; = "set_storage_path,"

.field protected static final COMMAND_START:Ljava/lang/String; = "deep_start"

.field protected static final COMMAND_STOP:Ljava/lang/String; = "deep_stop"

.field private static final TAG:Ljava/lang/String; = "LogHandler/AbstractLogInstance"


# instance fields
.field private mAbnormalEventMonitorList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;",
            ">;"
        }
    .end annotation
.end field

.field protected mLogConnection:Lcom/log/handler/connection/ILogConnection;

.field protected mLogType:Lcom/log/handler/LogHandlerUtils$LogType;

.field private mStartCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V
    .registers 4
    .param p1, "logConnection"    # Lcom/log/handler/connection/ILogConnection;
    .param p2, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const-string v0, "deep_start"

    iput-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mStartCommand:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mAbnormalEventMonitorList:Ljava/util/Set;

    .line 42
    iput-object p1, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogConnection:Lcom/log/handler/connection/ILogConnection;

    .line 43
    iput-object p2, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogType:Lcom/log/handler/LogHandlerUtils$LogType;

    .line 44
    invoke-interface {p1, p0}, Lcom/log/handler/connection/ILogConnection;->addServerObserver(Ljava/util/Observer;)V

    .line 45
    return-void
.end method

.method private getResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "command"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogConnection:Lcom/log/handler/connection/ILogConnection;

    invoke-interface {v0, p1}, Lcom/log/handler/connection/ILogConnection;->getResponseFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "responseStr":Ljava/lang/String;
    const-wide/16 v1, 0x3a98

    .line 103
    .local v1, "timeout":J
    :goto_8
    const-string v3, "LogHandler/AbstractLogInstance"

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 105
    :cond_12
    const-wide/16 v4, 0x64

    :try_start_14
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_19

    .line 106
    sub-long/2addr v1, v4

    .line 109
    goto :goto_1d

    .line 107
    :catch_19
    move-exception v4

    .line 108
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 110
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1d
    iget-object v4, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogConnection:Lcom/log/handler/connection/ILogConnection;

    invoke-interface {v4}, Lcom/log/handler/connection/ILogConnection;->isConnection()Z

    move-result v4

    if-eqz v4, :cond_33

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_2c

    goto :goto_33

    .line 114
    :cond_2c
    iget-object v3, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogConnection:Lcom/log/handler/connection/ILogConnection;

    invoke-interface {v3, p1}, Lcom/log/handler/connection/ILogConnection;->getResponseFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 111
    :cond_33
    :goto_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveFromServer timeout, command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/log/handler/LogHandlerUtils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    nop

    .line 116
    :cond_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResponse, responseStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and waiting time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3a98

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-object v0
.end method


# virtual methods
.method public disConnect()V
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogConnection:Lcom/log/handler/connection/ILogConnection;

    invoke-interface {v0}, Lcom/log/handler/connection/ILogConnection;->disConnect()V

    .line 195
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogConnection:Lcom/log/handler/connection/ILogConnection;

    invoke-interface {v0, p0}, Lcom/log/handler/connection/ILogConnection;->deleteServerObserver(Ljava/util/Observer;)V

    .line 196
    return-void
.end method

.method public executeCommand(Ljava/lang/String;)Z
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/log/handler/instance/AbstractLogInstance;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public executeCommand(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "isWaitingResponse"    # Z

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->executeCommand(), command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWaitingResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogHandler/AbstractLogInstance"

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogConnection:Lcom/log/handler/connection/ILogConnection;

    invoke-interface {v0, p1}, Lcom/log/handler/connection/ILogConnection;->sendToServer(Ljava/lang/String;)Z

    move-result v0

    .line 67
    .local v0, "sendSuccess":Z
    if-eqz v0, :cond_74

    if-nez p2, :cond_2d

    goto :goto_74

    .line 71
    :cond_2d
    const/4 v2, 0x0

    .line 72
    .local v2, "isSuccess":Z
    invoke-direct {p0, p1}, Lcom/log/handler/instance/AbstractLogInstance;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "response":Ljava/lang/String;
    if-eqz v3, :cond_5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 76
    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<--executeCommand result, isSuccess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/log/handler/LogHandlerUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return v2

    .line 68
    .end local v2    # "isSuccess":Z
    .end local v3    # "response":Ljava/lang/String;
    :cond_74
    :goto_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeCommand result, sendSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/log/handler/LogHandlerUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return v0
.end method

.method public abstract getLogStatusSystemProperty()Ljava/lang/String;
.end method

.method public getLogType()Lcom/log/handler/LogHandlerUtils$LogType;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogType:Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0
.end method

.method protected getStartCommand()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mStartCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getValueFromServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "command"    # Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->getValueFromServer(), command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogHandler/AbstractLogInstance"

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mLogConnection:Lcom/log/handler/connection/ILogConnection;

    invoke-interface {v0, p1}, Lcom/log/handler/connection/ILogConnection;->sendToServer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendToServer failed, command = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, ""

    return-object v0

    .line 91
    :cond_39
    const-string v0, ""

    .line 92
    .local v0, "serverValue":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/log/handler/instance/AbstractLogInstance;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "response":Ljava/lang/String;
    if-eqz v2, :cond_64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<--getValueFromServer(), serverValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method public isLogRunning()Z
    .registers 3

    .line 178
    invoke-virtual {p0}, Lcom/log/handler/instance/AbstractLogInstance;->getLogStatusSystemProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerAbnormalEventMonitor(Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;)Z
    .registers 4
    .param p1, "abnormalEventMonitor"    # Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;

    .line 208
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mAbnormalEventMonitorList:Ljava/util/Set;

    monitor-enter v0

    .line 209
    if-eqz p1, :cond_15

    :try_start_5
    iget-object v1, p0, Lcom/log/handler/instance/AbstractLogInstance;->mAbnormalEventMonitorList:Ljava/util/Set;

    .line 210
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 211
    iget-object v1, p0, Lcom/log/handler/instance/AbstractLogInstance;->mAbnormalEventMonitorList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 213
    :cond_15
    monitor-exit v0

    .line 214
    const/4 v0, 0x0

    return v0

    .line 213
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setBootupLogSaved(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autostart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_10

    const-string v1, "1"

    goto :goto_12

    :cond_10
    const-string v1, "0"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/AbstractLogInstance;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLogRecycleSize(I)Z
    .registers 4
    .param p1, "logSize"    # I

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/AbstractLogInstance;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected setStartCommand(Ljava/lang/String;)V
    .registers 2
    .param p1, "startCommand"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/log/handler/instance/AbstractLogInstance;->mStartCommand:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public declared-synchronized startLog(Ljava/lang/String;)Z
    .registers 3
    .param p1, "logPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 127
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/log/handler/instance/AbstractLogInstance;->startLog(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    .line 127
    .end local p0    # "this":Lcom/log/handler/instance/AbstractLogInstance;
    .end local p1    # "logPath":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startLog(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "logPath"    # Ljava/lang/String;
    .param p2, "waitingSetPathResponse"    # Z

    monitor-enter p0

    .line 138
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_storage_path,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/log/handler/instance/AbstractLogInstance;->executeCommand(Ljava/lang/String;Z)Z

    .line 139
    invoke-virtual {p0}, Lcom/log/handler/instance/AbstractLogInstance;->getStartCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/log/handler/instance/AbstractLogInstance;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return v0

    .line 137
    .end local p0    # "this":Lcom/log/handler/instance/AbstractLogInstance;
    .end local p1    # "logPath":Ljava/lang/String;
    .end local p2    # "waitingSetPathResponse":Z
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopLog()Z
    .registers 3

    monitor-enter p0

    .line 156
    :try_start_1
    const-string v0, "deep_stop"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/log/handler/instance/AbstractLogInstance;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    .line 156
    .end local p0    # "this":Lcom/log/handler/instance/AbstractLogInstance;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterAbnormalEventMonitor(Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;)Z
    .registers 4
    .param p1, "abnormalEventMonitor"    # Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;

    .line 224
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mAbnormalEventMonitorList:Ljava/util/Set;

    monitor-enter v0

    .line 225
    if-eqz p1, :cond_15

    :try_start_5
    iget-object v1, p0, Lcom/log/handler/instance/AbstractLogInstance;->mAbnormalEventMonitorList:Ljava/util/Set;

    .line 226
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 227
    iget-object v1, p0, Lcom/log/handler/instance/AbstractLogInstance;->mAbnormalEventMonitorList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 229
    :cond_15
    monitor-exit v0

    .line 230
    const/4 v0, 0x0

    return v0

    .line 229
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 8
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/log/handler/instance/AbstractLogInstance;->mAbnormalEventMonitorList:Ljava/util/Set;

    monitor-enter v0

    .line 236
    :try_start_3
    iget-object v1, p0, Lcom/log/handler/instance/AbstractLogInstance;->mAbnormalEventMonitorList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;

    .line 237
    .local v2, "abnormalEventMonitor":Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;
    invoke-virtual {p0}, Lcom/log/handler/instance/AbstractLogInstance;->getLogType()Lcom/log/handler/LogHandlerUtils$LogType;

    move-result-object v3

    sget-object v4, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;->WRITE_FILE_FAILED:Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    invoke-interface {v2, v3, v4}, Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;->abnormalEvenHappened(Lcom/log/handler/LogHandlerUtils$LogType;Lcom/log/handler/LogHandlerUtils$AbnormalEvent;)V

    .line 239
    .end local v2    # "abnormalEventMonitor":Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;
    goto :goto_9

    .line 240
    :cond_1f
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method
