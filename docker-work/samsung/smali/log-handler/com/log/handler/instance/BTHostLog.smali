.class public Lcom/log/handler/instance/BTHostLog;
.super Lcom/log/handler/instance/AbstractLogInstance;
.source "BTHostLog.java"


# static fields
.field private static final COMMAND_SET_BTFW_LOG_LEVEL:Ljava/lang/String; = "set_btfw_log_level"

.field private static final COMMAND_SET_BTHOST_DEBUGLOG_ENABLE:Ljava/lang/String; = "set_bthost_debuglog_enable"

.field private static final SYSTEM_PROPERTY_LOG_STATUS:Ljava/lang/String; = "vendor.bthcisnoop.running"


# direct methods
.method public constructor <init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V
    .registers 3
    .param p1, "logConnection"    # Lcom/log/handler/connection/ILogConnection;
    .param p2, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/log/handler/instance/AbstractLogInstance;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getLogStatusSystemProperty()Ljava/lang/String;
    .registers 2

    .line 29
    const-string v0, "vendor.bthcisnoop.running"

    return-object v0
.end method

.method public setBTFWLogLevel(Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z
    .registers 4
    .param p1, "btFWLogLevel"    # Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_btfw_log_level,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/BTHostLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBTHostDebuglogEnable(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_bthost_debuglog_enable,"

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

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/BTHostLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
