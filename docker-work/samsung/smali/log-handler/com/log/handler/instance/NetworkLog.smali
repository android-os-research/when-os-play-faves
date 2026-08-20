.class public Lcom/log/handler/instance/NetworkLog;
.super Lcom/log/handler/instance/AbstractLogInstance;
.source "NetworkLog.java"


# static fields
.field private static final COMMAND_ENABLE_ROHC_COMPRESSION:Ljava/lang/String; = "enable_rohc_compression"

.field private static final COMMAND_IS_ROHC_COMPRESSION_SUPPORT:Ljava/lang/String; = "is_rohc_compression_support"

.field private static final COMMAND_NETWORKLOG_START:Ljava/lang/String; = "tcpdump_sdcard_start"

.field private static final COMMAND_NETWORKLOG_STOP:Ljava/lang/String; = "tcpdump_sdcard_stop"

.field private static final COMMAND_NETWORKLOG_STOP_WITHOUT_PING:Ljava/lang/String; = "tcpdump_sdcard_stop_noping"

.field private static final COMMAND_SET_ROHC_TOTAL_FILE:Ljava/lang/String; = "set_rohc_total_file"

.field private static final DEFAULT_LOG_RECYCLE_SIZE:I = 0x258

.field private static final SYSTEM_PROPERTY_LOG_STATUS:Ljava/lang/String; = "vendor.mtklog.netlog.Running"


# direct methods
.method public constructor <init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V
    .registers 3
    .param p1, "logConnection"    # Lcom/log/handler/connection/ILogConnection;
    .param p2, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/log/handler/instance/AbstractLogInstance;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    .line 30
    return-void
.end method


# virtual methods
.method public enableRohcCompression(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_rohc_compression,"

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

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/NetworkLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLogStatusSystemProperty()Ljava/lang/String;
    .registers 2

    .line 34
    const-string v0, "vendor.mtklog.netlog.Running"

    return-object v0
.end method

.method public isRohcCompressionSupport()Z
    .registers 3

    .line 98
    const-string v0, "is_rohc_compression_support"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/NetworkLog;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "isSupportValue":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setBootupLogSaved(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public setLogRecycleSize(I)Z
    .registers 3
    .param p1, "logSize"    # I

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public setRohcTotalFileNumber(I)Z
    .registers 4
    .param p1, "totalNumber"    # I

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_rohc_total_file,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/NetworkLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized startLog(Ljava/lang/String;)Z
    .registers 4
    .param p1, "logPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 39
    const/16 v0, 0x258

    const/16 v1, 0x5a

    :try_start_5
    invoke-virtual {p0, p1, v0, v1}, Lcom/log/handler/instance/NetworkLog;->startLog(Ljava/lang/String;II)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 39
    .end local p0    # "this":Lcom/log/handler/instance/NetworkLog;
    .end local p1    # "logPath":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startLog(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "logPath"    # Ljava/lang/String;
    .param p2, "recycleSize"    # I
    .param p3, "packageSize"    # I

    monitor-enter p0

    .line 52
    const/16 v0, 0x64

    if-ge p2, v0, :cond_7

    .line 53
    const/16 p2, 0x258

    .line 55
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tcpdump_sdcard_start_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "startCommand":Ljava/lang/String;
    if-lez p3, :cond_34

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",-s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 59
    .end local p0    # "this":Lcom/log/handler/instance/NetworkLog;
    :cond_34
    invoke-virtual {p0, v0}, Lcom/log/handler/instance/NetworkLog;->setStartCommand(Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Lcom/log/handler/instance/AbstractLogInstance;->startLog(Ljava/lang/String;)Z

    move-result v1
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return v1

    .line 51
    .end local v0    # "startCommand":Ljava/lang/String;
    .end local p1    # "logPath":Ljava/lang/String;
    .end local p2    # "recycleSize":I
    .end local p3    # "packageSize":I
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopLog()Z
    .registers 2

    monitor-enter p0

    .line 65
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/log/handler/instance/NetworkLog;->stopLog(Z)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    .line 65
    .end local p0    # "this":Lcom/log/handler/instance/NetworkLog;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopLog(Z)Z
    .registers 4
    .param p1, "isCheckEnvironment"    # Z

    .line 74
    nop

    .line 75
    if-eqz p1, :cond_6

    const-string v0, "tcpdump_sdcard_stop"

    goto :goto_8

    :cond_6
    const-string v0, "tcpdump_sdcard_stop_noping"

    :goto_8
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/log/handler/instance/NetworkLog;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
