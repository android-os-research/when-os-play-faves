.class public Lcom/log/handler/instance/MobileLog;
.super Lcom/log/handler/instance/AbstractLogInstance;
.source "MobileLog.java"


# static fields
.field public static final COMMAND_GET_SUB_LOG_LIST:Ljava/lang/String; = "get_sublog_list"

.field public static final DEFAULT_SUG_LOG_LIST:Ljava/lang/String; = "AndroidLog_1;KernelLog_1;SCPLog_1;ATFLog_1;BSPLog_1;SSPMLog_1;ADSPLog_1;MCUPMLog_1"

.field public static final PREFIX_CONFIG_SUB_LOG:Ljava/lang/String; = "sublog_"

.field public static final SET_WIFI_DRIVER_LOG_CMD:Ljava/lang/String; = "set_mblog_sub_node,/proc/net/wlan/dbgLevel,"

.field private static final SYSTEM_PROPERTY_LOG_STATUS:Ljava/lang/String; = "vendor.MB.running"


# direct methods
.method public constructor <init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V
    .registers 3
    .param p1, "logConnection"    # Lcom/log/handler/connection/ILogConnection;
    .param p2, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/log/handler/instance/AbstractLogInstance;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getLogStatusSystemProperty()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, "vendor.MB.running"

    return-object v0
.end method

.method public getSubLogList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/log/handler/LogHandlerUtils$MobileSubLog;",
            ">;"
        }
    .end annotation

    .line 84
    const-string v0, "get_sublog_list"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/MobileLog;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "subLogResponse":Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 86
    :cond_e
    const-string v0, "AndroidLog_1;KernelLog_1;SCPLog_1;ATFLog_1;BSPLog_1;SSPMLog_1;ADSPLog_1;MCUPMLog_1"

    .line 88
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "subLogList":Ljava/util/List;, "Ljava/util/List<Lcom/log/handler/LogHandlerUtils$MobileSubLog;>;"
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "subLogs":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_34

    aget-object v5, v2, v4

    .line 91
    .local v5, "subLog":Ljava/lang/String;
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_31

    .line 92
    new-instance v6, Lcom/log/handler/LogHandlerUtils$MobileSubLog;

    invoke-direct {v6, v5}, Lcom/log/handler/LogHandlerUtils$MobileSubLog;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v5    # "subLog":Ljava/lang/String;
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 95
    :cond_34
    return-object v1
.end method

.method public setSubLogEnable(Lcom/log/handler/LogHandlerUtils$MobileSubLog;)Z
    .registers 4
    .param p1, "subLog"    # Lcom/log/handler/LogHandlerUtils$MobileSubLog;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sublog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->getSettingCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/MobileLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setTotalRecycleSize(I)Z
    .registers 3
    .param p1, "logSize"    # I

    .line 66
    invoke-virtual {p0, p1}, Lcom/log/handler/instance/MobileLog;->setLogRecycleSize(I)Z

    move-result v0

    return v0
.end method

.method public setWiFiDriverLogLevel(Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;)Z
    .registers 5
    .param p1, "logLevel"    # Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    .line 109
    const-string v0, ""

    .line 110
    .local v0, "logLevelValue":Ljava/lang/String;
    sget-object v1, Lcom/log/handler/instance/MobileLog$1;->$SwitchMap$com$log$handler$LogHandlerUtils$WiFiLogLevel:[I

    invoke-virtual {p1}, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 121
    const-string v0, ""

    goto :goto_19

    .line 118
    :pswitch_10
    const-string v0, "0xff:0x7f"

    .line 119
    goto :goto_19

    .line 115
    :pswitch_13
    const-string v0, "0xff:0x3f"

    .line 116
    goto :goto_19

    .line 112
    :pswitch_16
    const-string v0, "0xff:0x2f"

    .line 113
    nop

    .line 124
    :goto_19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_mblog_sub_node,/proc/net/wlan/dbgLevel,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/log/handler/instance/MobileLog;->executeCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 127
    :cond_37
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public declared-synchronized startLog(Ljava/lang/String;)Z
    .registers 3
    .param p1, "logPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 100
    const/4 v0, 0x1

    :try_start_2
    invoke-super {p0, p1, v0}, Lcom/log/handler/instance/AbstractLogInstance;->startLog(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    .line 100
    .end local p0    # "this":Lcom/log/handler/instance/MobileLog;
    .end local p1    # "logPath":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
