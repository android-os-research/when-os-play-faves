.class public Lcom/log/handler/instance/ConnsysFWLog;
.super Lcom/log/handler/instance/AbstractLogInstance;
.source "ConnsysFWLog.java"


# static fields
.field private static final COMMAND_SET_BTFW_LOG_LEVEL:Ljava/lang/String; = "set_btfw_log_level"

.field private static final COMMAND_SET_ICSFW_LOG_LEVEL:Ljava/lang/String; = "set_icsfw_log_level"

.field private static final COMMAND_SET_WIFI_FW_LOG_LEVEL:Ljava/lang/String; = "meta_set_fwlog_level,0"

.field public static final PREFIX_SET_BTHOST_DEBUGLOG_ENABLE:Ljava/lang/String; = "set_bthost_debuglog_enable"

.field private static final SYSTEM_PROPERTY_LOG_STATUS:Ljava/lang/String; = "vendor.connsysfw.running"


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
.method public getLogStatusSystemProperty()Ljava/lang/String;
    .registers 2

    .line 34
    const-string v0, "vendor.connsysfw.running"

    return-object v0
.end method

.method public isConnsysFWFeatureSupport()Z
    .registers 3

    .line 64
    const-string v0, "ro.vendor.connsys.dedicated.log"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBTFWLogLevel(Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z
    .registers 4
    .param p1, "btFWLogLevel"    # Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_btfw_log_level,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ConnsysFWLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setICSFWLogLevel(Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;)Z
    .registers 4
    .param p1, "icsFWLogLevel"    # Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_icsfw_log_level,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ConnsysFWLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWiFiFWLogLevel(Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;)Z
    .registers 4
    .param p1, "wifiLogLevel"    # Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "meta_set_fwlog_level,0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ConnsysFWLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized startLog(Ljava/lang/String;)Z
    .registers 3
    .param p1, "logPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 39
    :try_start_1
    sget-object v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->SQC:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    invoke-virtual {p0, p1, v0}, Lcom/log/handler/instance/ConnsysFWLog;->startLog(Ljava/lang/String;Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 39
    .end local p0    # "this":Lcom/log/handler/instance/ConnsysFWLog;
    .end local p1    # "logPath":Ljava/lang/String;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startLog(Ljava/lang/String;Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z
    .registers 4
    .param p1, "logPath"    # Ljava/lang/String;
    .param p2, "btFWLogLevel"    # Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    .line 50
    invoke-virtual {p0, p2}, Lcom/log/handler/instance/ConnsysFWLog;->setBTFWLogLevel(Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z

    .line 51
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/log/handler/instance/AbstractLogInstance;->startLog(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
