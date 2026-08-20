.class public Lcom/log/handler/instance/ModemLog;
.super Lcom/log/handler/instance/AbstractLogInstance;
.source "ModemLog.java"


# static fields
.field private static final COMMAND_DEEP_PAUSE:Ljava/lang/String; = "deep_pause"

.field private static final COMMAND_DISABLE_GPS_LOCATION:Ljava/lang/String; = "disable_gps_location"

.field private static final COMMAND_ENABLE_GPS_LOCATION:Ljava/lang/String; = "enable_gps_location"

.field private static final COMMAND_EXTRACT_DEFAULT_FILTER_FILE:Ljava/lang/String; = "extract_filter_file"

.field private static final COMMAND_GET_CCB_BUFFER_CONFIGURE_LIST:Ljava/lang/String; = "get_ccb_gear_id_list"

.field private static final COMMAND_GET_CCB_GEAR_ID:Ljava/lang/String; = "get_ccb_gear_id"

.field private static final COMMAND_GET_FILTER_INFO:Ljava/lang/String; = "get_filter_info"

.field public static final COMMAND_GET_STATUS:Ljava/lang/String; = "getstatus"

.field private static final COMMAND_IS_GPS_SUPPORT:Ljava/lang/String; = "is_gps_support"

.field private static final COMMAND_LOG_FLUSH:Ljava/lang/String; = "log_flush"

.field private static final COMMAND_NOTIFY_TETHER_CHANGE:Ljava/lang/String; = "usbtethering"

.field private static final COMMAND_POLLING:Ljava/lang/String; = "polling"

.field private static final COMMAND_RESET:Ljava/lang/String; = "resetmd"

.field private static final COMMAND_SETAUTO:Ljava/lang/String; = "setauto,"

.field private static final COMMAND_SET_CCB_GEAR_ID:Ljava/lang/String; = "set_ccb_gear_id"

.field private static final COMMAND_SET_EE_LOG_PATH:Ljava/lang/String; = "set_ee_log_path"

.field private static final COMMAND_SET_FILE_SIZE:Ljava/lang/String; = "setfilesize,"

.field private static final COMMAND_SET_FLUSH_LOG_PATH:Ljava/lang/String; = "set_flush_log_path"

.field private static final COMMAND_SET_LOGSIZE:Ljava/lang/String; = "setlogsize,"

.field private static final COMMAND_SET_MINI_DUMP_MUXZ_SIZE:Ljava/lang/String; = "set_mini_dump_muxz_size,"

.field private static final COMMAND_SET_MODEM_LOG_CONFIGURE:Ljava/lang/String; = "set_modem_log_configure,"

.field private static final MODEM_LOG_SERVER_NAME_3G:Ljava/lang/String; = "com.mediatek.mdlogger.socket"

.field private static final RESPONSE_FINISH_MEMORY_DUMP:Ljava/lang/String; = "MEMORYDUMP_DONE"

.field private static final RESPONSE_MEMORYDUMP_FILE:Ljava/lang/String; = "MEMORYDUMP_FILE"

.field private static final RESPONSE_START_MEMORY_DUMP:Ljava/lang/String; = "MEMORYDUMP_START"

.field private static final SYSTEM_PROPERTY_LOG_STATUS:Ljava/lang/String; = "vendor.mdlogger.Running"

.field private static final TAG:Ljava/lang/String; = "LogHandler/ModemLog"


# instance fields
.field private mModem3GLogConnection:Lcom/log/handler/connection/ILogConnection;

.field private mModemEEMonitorList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mModemLogModes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V
    .registers 5
    .param p1, "logConnection"    # Lcom/log/handler/connection/ILogConnection;
    .param p2, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/log/handler/instance/AbstractLogInstance;-><init>(Lcom/log/handler/connection/ILogConnection;Lcom/log/handler/LogHandlerUtils$LogType;)V

    .line 23
    new-instance v0, Lcom/log/handler/connection/LogSocketConnection;

    const-string v1, "com.mediatek.mdlogger.socket"

    invoke-direct {v0, v1}, Lcom/log/handler/connection/LogSocketConnection;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModem3GLogConnection:Lcom/log/handler/connection/ILogConnection;

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModemEEMonitorList:Ljava/util/Set;

    .line 80
    invoke-direct {p0}, Lcom/log/handler/instance/ModemLog;->doInit()V

    .line 81
    return-void
.end method

.method private doInit()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModem3GLogConnection:Lcom/log/handler/connection/ILogConnection;

    invoke-interface {v0}, Lcom/log/handler/connection/ILogConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_c

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModem3GLogConnection:Lcom/log/handler/connection/ILogConnection;

    goto :goto_10

    .line 87
    :cond_c
    iget-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModem3GLogConnection:Lcom/log/handler/connection/ILogConnection;

    iput-object v0, p0, Lcom/log/handler/instance/ModemLog;->mLogConnection:Lcom/log/handler/connection/ILogConnection;

    .line 89
    :goto_10
    iget-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModem3GLogConnection:Lcom/log/handler/connection/ILogConnection;

    if-eqz v0, :cond_17

    .line 90
    invoke-interface {v0, p0}, Lcom/log/handler/connection/ILogConnection;->addServerObserver(Ljava/util/Observer;)V

    .line 92
    :cond_17
    return-void
.end method


# virtual methods
.method public executeCommand(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "isWaitingResponse"    # Z

    .line 96
    invoke-super {p0, p1, p2}, Lcom/log/handler/instance/AbstractLogInstance;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public extractFilterFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "filterPath"    # Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extract_filter_file,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public forceModemAssert()Z
    .registers 3

    .line 216
    const-string v0, "polling"

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/log/handler/instance/AbstractLogInstance;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCCBBufferConfigureList()Ljava/lang/String;
    .registers 2

    .line 172
    const-string v0, "get_ccb_gear_id_list"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCCBBufferGearID()Ljava/lang/String;
    .registers 2

    .line 179
    const-string v0, "get_ccb_gear_id"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterFileInformation()Ljava/lang/String;
    .registers 2

    .line 193
    const-string v0, "get_filter_info"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogStatusSystemProperty()Ljava/lang/String;
    .registers 2

    .line 101
    const-string v0, "vendor.mdlogger.Running"

    return-object v0
.end method

.method public getStatus()Lcom/log/handler/LogHandlerUtils$ModemLogStatus;
    .registers 4

    .line 223
    const-string v0, "getstatus"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "statusStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 226
    .local v1, "statusId":I
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_d

    move v1, v2

    .line 229
    goto :goto_f

    .line 227
    :catch_d
    move-exception v2

    .line 228
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 230
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_f
    invoke-static {v1}, Lcom/log/handler/LogHandlerUtils$ModemLogStatus;->getModemLogStatusById(I)Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    move-result-object v2

    return-object v2
.end method

.method public isCCBBufferFeatureSupport()Z
    .registers 3

    .line 163
    const-string v0, "is_gps_support"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "isFeatureSupportValue":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    return v1
.end method

.method public isDualModemLogSupport()Z
    .registers 2

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public isSaveGPSLocationFeatureSupport()Z
    .registers 3

    .line 141
    const-string v0, "is_gps_support"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "isFeatureSupportValue":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    return v1
.end method

.method public notifyUSBModeChanged()Z
    .registers 2

    .line 237
    const-string v0, "usbtethering"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerModemEEMonitor(Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;)Z
    .registers 4
    .param p1, "modemEEMonitor"    # Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;

    .line 300
    iget-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModemEEMonitorList:Ljava/util/Set;

    monitor-enter v0

    .line 301
    if-eqz p1, :cond_18

    .line 302
    :try_start_5
    iget-object v1, p0, Lcom/log/handler/instance/ModemLog;->mModemEEMonitorList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 303
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 305
    :cond_10
    iget-object v1, p0, Lcom/log/handler/instance/ModemLog;->mModemEEMonitorList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 307
    :cond_18
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 308
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public resetModem()Z
    .registers 2

    .line 209
    const-string v0, "resetmd"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendCommandToServer(Ljava/lang/String;)Z
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBootupLogSaved(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .line 327
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    invoke-virtual {p0, p1, v0}, Lcom/log/handler/instance/ModemLog;->setBootupLogSaved(ZLcom/log/handler/LogHandlerUtils$ModemLogMode;)Z

    move-result v0

    return v0
.end method

.method public setBootupLogSaved(ZLcom/log/handler/LogHandlerUtils$ModemLogMode;)Z
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "modemMode"    # Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    .line 338
    invoke-virtual {p2}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModemLogModes:[Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setauto,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    iget-object v2, p0, Lcom/log/handler/instance/ModemLog;->mModemLogModes:[Ljava/lang/String;

    aget-object v1, v2, v1

    goto :goto_23

    :cond_1f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCCBBufferGearID(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_ccb_gear_id,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setLogRecycleSize(I)Z
    .registers 4
    .param p1, "logSize"    # I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setlogsize,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiniDumpMuxzFileMaxSize(F)Z
    .registers 6
    .param p1, "size"    # F

    .line 264
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 265
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_7
    const/high16 v0, 0x44800000    # 1024.0f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 268
    .local v0, "sizeInt":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set_mini_dump_muxz_size,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setModemEEPath(Ljava/lang/String;)Z
    .registers 4
    .param p1, "modemEEPath"    # Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_ee_log_path,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModemLogConfigure(I)Z
    .registers 4
    .param p1, "value"    # I

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_modem_log_configure,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModemLogFileSize(I)Z
    .registers 4
    .param p1, "size"    # I

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setfilesize,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSaveGPSLocationToModemLog(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 151
    if-eqz p1, :cond_5

    const-string v0, "enable_gps_location"

    goto :goto_7

    :cond_5
    const-string v0, "disable_gps_location"

    .line 152
    .local v0, "command":Ljava/lang/String;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public declared-synchronized startLog(Ljava/lang/String;)Z
    .registers 3
    .param p1, "logPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 106
    :try_start_1
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->SD:Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    invoke-virtual {p0, p1, v0}, Lcom/log/handler/instance/ModemLog;->startLog(Ljava/lang/String;Lcom/log/handler/LogHandlerUtils$ModemLogMode;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 106
    .end local p0    # "this":Lcom/log/handler/instance/ModemLog;
    .end local p1    # "logPath":Ljava/lang/String;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startLog(Ljava/lang/String;Lcom/log/handler/LogHandlerUtils$ModemLogMode;)Z
    .registers 6
    .param p1, "logPath"    # Ljava/lang/String;
    .param p2, "modemMode"    # Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    .line 121
    invoke-virtual {p2}, Lcom/log/handler/LogHandlerUtils$ModemLogMode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModemLogModes:[Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deep_start,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/log/handler/instance/ModemLog;->mModemLogModes:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "startCommand":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_storage_path,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;Z)Z

    .line 125
    invoke-virtual {p0, v0, v2}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public declared-synchronized stopLog()Z
    .registers 3

    monitor-enter p0

    .line 130
    :try_start_1
    const-string v0, "deep_pause"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    .line 130
    .end local p0    # "this":Lcom/log/handler/instance/ModemLog;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public triggerPLSModeFlush(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "flushLogPath"    # Ljava/lang/String;

    .line 277
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_flush_log_path,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/log/handler/instance/ModemLog;->executeCommand(Ljava/lang/String;Z)Z

    .line 280
    :cond_1f
    const-string v0, "log_flush"

    invoke-virtual {p0, v0}, Lcom/log/handler/instance/ModemLog;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterModemEEMonitor(Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;)Z
    .registers 4
    .param p1, "modemEEMonitor"    # Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;

    .line 317
    iget-object v0, p0, Lcom/log/handler/instance/ModemLog;->mModemEEMonitorList:Ljava/util/Set;

    monitor-enter v0

    .line 318
    if-eqz p1, :cond_15

    :try_start_5
    iget-object v1, p0, Lcom/log/handler/instance/ModemLog;->mModemEEMonitorList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 319
    iget-object v1, p0, Lcom/log/handler/instance/ModemLog;->mModemEEMonitorList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 321
    :cond_15
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 322
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

    .line 353
    const-string v0, ""

    .line 354
    .local v0, "serverResponseStr":Ljava/lang/String;
    if-eqz p2, :cond_b

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 355
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 357
    :cond_b
    const-string v1, "LogHandler/ModemLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update, serverResponseStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, ""

    .line 359
    .local v1, "notifyStr":Ljava/lang/String;
    const-string v2, "MEMORYDUMP_DONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 360
    const-string v2, "MEMORYDUMP_DONE"

    .line 361
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "modemEEPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEMORYDUMP_DONE,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .end local v2    # "modemEEPath":Ljava/lang/String;
    goto :goto_6c

    :cond_4d
    const-string v2, "MEMORYDUMP_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 364
    const-string v1, "MEMORYDUMP_START"

    goto :goto_6c

    .line 365
    :cond_58
    const-string v2, "need_dump_file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 366
    const-string v1, "need_dump_file"

    goto :goto_6c

    .line 367
    :cond_63
    const-string v2, "MEMORYDUMP_FILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 368
    move-object v1, v0

    .line 370
    :cond_6c
    :goto_6c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_90

    .line 371
    iget-object v2, p0, Lcom/log/handler/instance/ModemLog;->mModemEEMonitorList:Ljava/util/Set;

    monitor-enter v2

    .line 372
    :try_start_75
    iget-object v3, p0, Lcom/log/handler/instance/ModemLog;->mModemEEMonitorList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;

    .line 373
    .local v4, "modemEEMonitor":Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;
    invoke-interface {v4, v1}, Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;->modemEEHappened(Ljava/lang/String;)V

    .line 374
    .end local v4    # "modemEEMonitor":Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;
    goto :goto_7b

    .line 375
    :cond_8b
    monitor-exit v2

    goto :goto_90

    :catchall_8d
    move-exception v3

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_8d

    throw v3

    .line 377
    :cond_90
    :goto_90
    invoke-super {p0, p1, p2}, Lcom/log/handler/instance/AbstractLogInstance;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 378
    return-void
.end method
