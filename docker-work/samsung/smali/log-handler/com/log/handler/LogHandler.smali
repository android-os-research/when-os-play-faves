.class public Lcom/log/handler/LogHandler;
.super Ljava/lang/Object;
.source "LogHandler.java"


# static fields
.field private static sInstance:Lcom/log/handler/LogHandler;


# instance fields
.field private mIsExecuteSuccess:Z

.field private mLogHidlConnection:Lcom/log/handler/connection/LogHidlConnection;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsExecuteSuccess(Lcom/log/handler/LogHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/log/handler/LogHandler;->mIsExecuteSuccess:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/log/handler/LogHandler;

    invoke-direct {v0}, Lcom/log/handler/LogHandler;-><init>()V

    sput-object v0, Lcom/log/handler/LogHandler;->sInstance:Lcom/log/handler/LogHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/log/handler/LogHandler;->mIsExecuteSuccess:Z

    return-void
.end method

.method public static getInstance()Lcom/log/handler/LogHandler;
    .registers 1

    .line 30
    sget-object v0, Lcom/log/handler/LogHandler;->sInstance:Lcom/log/handler/LogHandler;

    return-object v0
.end method


# virtual methods
.method public enableNetworkLogRohcCompression(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .line 434
    invoke-static {}, Lcom/log/handler/LogFactory;->getNetworkLogInstance()Lcom/log/handler/instance/NetworkLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/NetworkLog;->enableRohcCompression(Z)Z

    move-result v0

    return v0
.end method

.method public executeMultiLogThreads(Ljava/util/Set;JLcom/log/handler/LogHandlerUtils$ILogExecute;)Z
    .registers 10
    .param p2, "timeout"    # J
    .param p4, "logExecute"    # Lcom/log/handler/LogHandlerUtils$ILogExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/log/handler/LogHandlerUtils$LogType;",
            ">;J",
            "Lcom/log/handler/LogHandlerUtils$ILogExecute;",
            ")Z"
        }
    .end annotation

    .line 124
    .local p1, "logTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/log/handler/LogHandlerUtils$LogType;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_52

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_52

    .line 127
    :cond_a
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 128
    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-interface {p4, v0}, Lcom/log/handler/LogHandlerUtils$ILogExecute;->execute(Lcom/log/handler/LogHandlerUtils$LogType;)Z

    move-result v0

    return v0

    .line 130
    :cond_1e
    iput-boolean v2, p0, Lcom/log/handler/LogHandler;->mIsExecuteSuccess:Z

    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 132
    .local v0, "executorPool":Ljava/util/concurrent/ExecutorService;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/log/handler/LogHandlerUtils$LogType;

    .line 133
    .local v2, "logType":Lcom/log/handler/LogHandlerUtils$LogType;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/log/handler/LogHandler$1;

    invoke-direct {v4, p0, p4, v2}, Lcom/log/handler/LogHandler$1;-><init>(Lcom/log/handler/LogHandler;Lcom/log/handler/LogHandlerUtils$ILogExecute;Lcom/log/handler/LogHandlerUtils$LogType;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    .local v3, "thread":Ljava/lang/Thread;
    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 142
    .end local v2    # "logType":Lcom/log/handler/LogHandlerUtils$LogType;
    .end local v3    # "thread":Ljava/lang/Thread;
    goto :goto_28

    .line 143
    :cond_42
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 145
    :try_start_45
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 148
    goto :goto_4f

    .line 146
    :catch_4b
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 149
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_4f
    iget-boolean v1, p0, Lcom/log/handler/LogHandler;->mIsExecuteSuccess:Z

    return v1

    .line 125
    .end local v0    # "executorPool":Ljava/util/concurrent/ExecutorService;
    :cond_52
    :goto_52
    return v0
.end method

.method public extractFilterFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "filterPath"    # Ljava/lang/String;

    .line 245
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/log/handler/instance/ModemLog;->extractFilterFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public forceModemAssert()Z
    .registers 2

    .line 259
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ModemLog;->forceModemAssert()Z

    move-result v0

    return v0
.end method

.method public getCCBBufferConfigureList()Ljava/lang/String;
    .registers 2

    .line 213
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ModemLog;->getCCBBufferConfigureList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCCBBufferGearID()Ljava/lang/String;
    .registers 2

    .line 220
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ModemLog;->getCCBBufferGearID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobileSubLogList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/log/handler/LogHandlerUtils$MobileSubLog;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/log/handler/LogFactory;->getMobileLogInstance()Lcom/log/handler/instance/MobileLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/MobileLog;->getSubLogList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModemLogFilterFileInformation()Ljava/lang/String;
    .registers 2

    .line 236
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ModemLog;->getFilterFileInformation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemLogStatus()Lcom/log/handler/LogHandlerUtils$ModemLogStatus;
    .registers 2

    .line 306
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ModemLog;->getStatus()Lcom/log/handler/LogHandlerUtils$ModemLogStatus;

    move-result-object v0

    return-object v0
.end method

.method public isCCBBufferFeatureSupport()Z
    .registers 2

    .line 206
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ModemLog;->isCCBBufferFeatureSupport()Z

    move-result v0

    return v0
.end method

.method public isConnsysFWFeatureSupport()Z
    .registers 2

    .line 471
    invoke-static {}, Lcom/log/handler/LogFactory;->getConnsysFWLogInstance()Lcom/log/handler/instance/ConnsysFWLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ConnsysFWLog;->isConnsysFWFeatureSupport()Z

    move-result v0

    return v0
.end method

.method public isNetworkLogRohcCompressionSupport()Z
    .registers 2

    .line 425
    invoke-static {}, Lcom/log/handler/LogFactory;->getNetworkLogInstance()Lcom/log/handler/instance/NetworkLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/NetworkLog;->isRohcCompressionSupport()Z

    move-result v0

    return v0
.end method

.method public isSaveGPSLocationFeatureSupport()Z
    .registers 2

    .line 190
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ModemLog;->isSaveGPSLocationFeatureSupport()Z

    move-result v0

    return v0
.end method

.method public isTypeLogRunning(Lcom/log/handler/LogHandlerUtils$LogType;)Z
    .registers 3
    .param p1, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;

    .line 60
    invoke-static {p1}, Lcom/log/handler/LogFactory;->getTypeLogInstance(Lcom/log/handler/LogHandlerUtils$LogType;)Lcom/log/handler/instance/AbstractLogInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/AbstractLogInstance;->isLogRunning()Z

    move-result v0

    return v0
.end method

.method public notifyUSBModeChanged()Z
    .registers 2

    .line 313
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ModemLog;->notifyUSBModeChanged()Z

    move-result v0

    return v0
.end method

.method public registerLogAbnormalEventMonitor(Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;)Z
    .registers 5
    .param p1, "abnormalEventMonitor"    # Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;

    .line 91
    invoke-static {}, Lcom/log/handler/LogHandlerUtils$LogType;->getAllLogTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/log/handler/LogHandlerUtils$LogType;

    .line 92
    .local v1, "logType":Lcom/log/handler/LogHandlerUtils$LogType;
    invoke-static {v1}, Lcom/log/handler/LogFactory;->getTypeLogInstance(Lcom/log/handler/LogHandlerUtils$LogType;)Lcom/log/handler/instance/AbstractLogInstance;

    move-result-object v2

    .line 93
    invoke-virtual {v2, p1}, Lcom/log/handler/instance/AbstractLogInstance;->registerAbnormalEventMonitor(Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;)Z

    .line 94
    .end local v1    # "logType":Lcom/log/handler/LogHandlerUtils$LogType;
    goto :goto_8

    .line 95
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public registerModemEEMonitor(Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;)Z
    .registers 3
    .param p1, "modemEEMonitor"    # Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;

    .line 293
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->registerModemEEMonitor(Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;)Z

    move-result v0

    return v0
.end method

.method public resetModem()Z
    .registers 2

    .line 252
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/ModemLog;->resetModem()Z

    move-result v0

    return v0
.end method

.method public sendCommandToLogDaemon(Lcom/log/handler/LogHandlerUtils$LogType;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "isWaitingResponse"    # Z

    .line 336
    invoke-static {p1}, Lcom/log/handler/LogFactory;->getTypeLogInstance(Lcom/log/handler/LogHandlerUtils$LogType;)Lcom/log/handler/instance/AbstractLogInstance;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/log/handler/instance/AbstractLogInstance;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public sendCommandToModemLog(Ljava/lang/String;)Z
    .registers 3
    .param p1, "commandStr"    # Ljava/lang/String;

    .line 322
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->sendCommandToServer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBTFWLogLevel(Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z
    .registers 3
    .param p1, "btFWLogLevel"    # Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    .line 490
    invoke-virtual {p0}, Lcom/log/handler/LogHandler;->isConnsysFWFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 491
    invoke-static {}, Lcom/log/handler/LogFactory;->getConnsysFWLogInstance()Lcom/log/handler/instance/ConnsysFWLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ConnsysFWLog;->setBTFWLogLevel(Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z

    move-result v0

    return v0

    .line 493
    :cond_f
    invoke-static {}, Lcom/log/handler/LogFactory;->getBTHostLogInstance()Lcom/log/handler/instance/BTHostLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/BTHostLog;->setBTFWLogLevel(Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z

    move-result v0

    return v0
.end method

.method public setBTHostDebuglogEnable(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .line 481
    invoke-static {}, Lcom/log/handler/LogFactory;->getBTHostLogInstance()Lcom/log/handler/instance/BTHostLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/BTHostLog;->setBTHostDebuglogEnable(Z)Z

    move-result v0

    return v0
.end method

.method public setBootupLogSaved(ZLcom/log/handler/LogHandlerUtils$ModemLogMode;)Z
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "modemMode"    # Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    .line 364
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/log/handler/instance/ModemLog;->setBootupLogSaved(ZLcom/log/handler/LogHandlerUtils$ModemLogMode;)Z

    move-result v0

    return v0
.end method

.method public setBootupTypeLogSaved(Lcom/log/handler/LogHandlerUtils$LogType;Z)Z
    .registers 4
    .param p1, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;
    .param p2, "enable"    # Z

    .line 82
    invoke-static {p1}, Lcom/log/handler/LogFactory;->getTypeLogInstance(Lcom/log/handler/LogHandlerUtils$LogType;)Lcom/log/handler/instance/AbstractLogInstance;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/log/handler/instance/AbstractLogInstance;->setBootupLogSaved(Z)Z

    move-result v0

    return v0
.end method

.method public setCCBBufferGearID(Ljava/lang/String;)Z
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 229
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->setCCBBufferGearID(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConnsysFWLogDuringBootupSaved(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .line 467
    invoke-static {}, Lcom/log/handler/LogFactory;->getConnsysFWLogInstance()Lcom/log/handler/instance/ConnsysFWLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ConnsysFWLog;->setBootupLogSaved(Z)Z

    move-result v0

    return v0
.end method

.method public setICSFWLogLevel(Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;)Z
    .registers 3
    .param p1, "icsFWLogLevel"    # Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    .line 503
    invoke-virtual {p0}, Lcom/log/handler/LogHandler;->isConnsysFWFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 504
    invoke-static {}, Lcom/log/handler/LogFactory;->getConnsysFWLogInstance()Lcom/log/handler/instance/ConnsysFWLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ConnsysFWLog;->setICSFWLogLevel(Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;)Z

    move-result v0

    return v0

    .line 506
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public setMiniDumpMuxzFileMaxSize(F)Z
    .registers 3
    .param p1, "size"    # F

    .line 353
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->setMiniDumpMuxzFileMaxSize(F)Z

    move-result v0

    return v0
.end method

.method public setMobileLogTotalRecycleSize(I)Z
    .registers 3
    .param p1, "size"    # I

    .line 171
    invoke-static {}, Lcom/log/handler/LogFactory;->getMobileLogInstance()Lcom/log/handler/instance/MobileLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/MobileLog;->setTotalRecycleSize(I)Z

    move-result v0

    return v0
.end method

.method public setModemEEPath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "modemEELogPath"    # Ljava/lang/String;

    .line 284
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->setModemEEPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModemLogConfigure(I)Z
    .registers 3
    .param p1, "value"    # I

    .line 373
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->setModemLogConfigure(I)Z

    move-result v0

    return v0
.end method

.method public setModemLogFileSize(I)Z
    .registers 3
    .param p1, "size"    # I

    .line 344
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->setModemLogFileSize(I)Z

    move-result v0

    return v0
.end method

.method public setNetworkLogRohcTotalFileNumber(I)Z
    .registers 3
    .param p1, "totalNumber"    # I

    .line 443
    invoke-static {}, Lcom/log/handler/LogFactory;->getNetworkLogInstance()Lcom/log/handler/instance/NetworkLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/NetworkLog;->setRohcTotalFileNumber(I)Z

    move-result v0

    return v0
.end method

.method public setSaveGPSLocationToModemLog(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .line 199
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->setSaveGPSLocationToModemLog(Z)Z

    move-result v0

    return v0
.end method

.method public setSubMobileLogEnable(Lcom/log/handler/LogHandlerUtils$MobileSubLog;)Z
    .registers 3
    .param p1, "subMobileLog"    # Lcom/log/handler/LogHandlerUtils$MobileSubLog;

    .line 157
    invoke-static {}, Lcom/log/handler/LogFactory;->getMobileLogInstance()Lcom/log/handler/instance/MobileLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/MobileLog;->setSubLogEnable(Lcom/log/handler/LogHandlerUtils$MobileSubLog;)Z

    move-result v0

    return v0
.end method

.method public setTypeLogRecycleSize(Lcom/log/handler/LogHandlerUtils$LogType;I)Z
    .registers 4
    .param p1, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;
    .param p2, "logSize"    # I

    .line 71
    invoke-static {p1}, Lcom/log/handler/LogFactory;->getTypeLogInstance(Lcom/log/handler/LogHandlerUtils$LogType;)Lcom/log/handler/instance/AbstractLogInstance;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/log/handler/instance/AbstractLogInstance;->setLogRecycleSize(I)Z

    move-result v0

    return v0
.end method

.method public setVendorProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lcom/log/handler/LogHandler;->mLogHidlConnection:Lcom/log/handler/connection/LogHidlConnection;

    if-nez v0, :cond_26

    .line 537
    new-instance v0, Lcom/log/handler/connection/LogHidlConnection;

    const-string v1, "LoggerHidlServer"

    invoke-direct {v0, v1}, Lcom/log/handler/connection/LogHidlConnection;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/log/handler/LogHandler;->mLogHidlConnection:Lcom/log/handler/connection/LogHidlConnection;

    .line 538
    const/16 v0, 0x7d0

    .line 539
    .local v0, "connectTimeout":I
    :goto_f
    iget-object v1, p0, Lcom/log/handler/LogHandler;->mLogHidlConnection:Lcom/log/handler/connection/LogHidlConnection;

    invoke-virtual {v1}, Lcom/log/handler/connection/LogHidlConnection;->connect()Z

    move-result v1

    if-nez v1, :cond_26

    if-ltz v0, :cond_26

    .line 542
    add-int/lit16 v0, v0, -0x3e8

    .line 543
    const-wide/16 v1, 0x3e8

    :try_start_1d
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    .line 546
    :goto_20
    goto :goto_f

    .line 544
    :catch_21
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_20

    .line 550
    .end local v0    # "connectTimeout":I
    :cond_26
    iget-object v0, p0, Lcom/log/handler/LogHandler;->mLogHidlConnection:Lcom/log/handler/connection/LogHidlConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_property,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/log/handler/connection/LogHidlConnection;->sendToServer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWiFiDriverLogLevel(Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;)Z
    .registers 3
    .param p1, "level"    # Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    .line 515
    invoke-static {}, Lcom/log/handler/LogFactory;->getMobileLogInstance()Lcom/log/handler/instance/MobileLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/MobileLog;->setWiFiDriverLogLevel(Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;)Z

    move-result v0

    return v0
.end method

.method public setWiFiFWLogLevel(Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;)Z
    .registers 3
    .param p1, "level"    # Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    .line 523
    invoke-static {}, Lcom/log/handler/LogFactory;->getConnsysFWLogInstance()Lcom/log/handler/instance/ConnsysFWLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ConnsysFWLog;->setWiFiFWLogLevel(Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;)Z

    move-result v0

    return v0
.end method

.method public startConnsysFWLog(Ljava/lang/String;Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z
    .registers 4
    .param p1, "logPath"    # Ljava/lang/String;
    .param p2, "btFWLogLevel"    # Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    .line 458
    invoke-static {}, Lcom/log/handler/LogFactory;->getConnsysFWLogInstance()Lcom/log/handler/instance/ConnsysFWLog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/log/handler/instance/ConnsysFWLog;->startLog(Ljava/lang/String;Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;)Z

    move-result v0

    return v0
.end method

.method public startModemLog(Ljava/lang/String;Lcom/log/handler/LogHandlerUtils$ModemLogMode;)Z
    .registers 4
    .param p1, "logPath"    # Ljava/lang/String;
    .param p2, "modemLogMode"    # Lcom/log/handler/LogHandlerUtils$ModemLogMode;

    .line 183
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/log/handler/instance/ModemLog;->startLog(Ljava/lang/String;Lcom/log/handler/LogHandlerUtils$ModemLogMode;)Z

    move-result v0

    return v0
.end method

.method public startNetworkLog(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "logPath"    # Ljava/lang/String;
    .param p2, "recycleSize"    # I
    .param p3, "packageSize"    # I

    .line 409
    invoke-static {}, Lcom/log/handler/LogFactory;->getNetworkLogInstance()Lcom/log/handler/instance/NetworkLog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/log/handler/instance/NetworkLog;->startLog(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public startNetworkLogWithPackageSize(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "logPath"    # Ljava/lang/String;
    .param p2, "packageSize"    # I

    .line 396
    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0, p2}, Lcom/log/handler/LogHandler;->startNetworkLog(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public startNetworkLogWithRecycleSize(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "logPath"    # Ljava/lang/String;
    .param p2, "recycleSize"    # I

    .line 385
    const/16 v0, 0x5a

    invoke-virtual {p0, p1, p2, v0}, Lcom/log/handler/LogHandler;->startNetworkLog(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public startTypeLog(Lcom/log/handler/LogHandlerUtils$LogType;Ljava/lang/String;)Z
    .registers 4
    .param p1, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;
    .param p2, "logPath"    # Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/log/handler/LogFactory;->getTypeLogInstance(Lcom/log/handler/LogHandlerUtils$LogType;)Lcom/log/handler/instance/AbstractLogInstance;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/log/handler/instance/AbstractLogInstance;->startLog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopNetworkLog(Z)Z
    .registers 3
    .param p1, "isCheckEnvironment"    # Z

    .line 418
    invoke-static {}, Lcom/log/handler/LogFactory;->getNetworkLogInstance()Lcom/log/handler/instance/NetworkLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/NetworkLog;->stopLog(Z)Z

    move-result v0

    return v0
.end method

.method public stopTypeLog(Lcom/log/handler/LogHandlerUtils$LogType;)Z
    .registers 3
    .param p1, "logType"    # Lcom/log/handler/LogHandlerUtils$LogType;

    .line 51
    invoke-static {p1}, Lcom/log/handler/LogFactory;->getTypeLogInstance(Lcom/log/handler/LogHandlerUtils$LogType;)Lcom/log/handler/instance/AbstractLogInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/log/handler/instance/AbstractLogInstance;->stopLog()Z

    move-result v0

    return v0
.end method

.method public triggerModemLogPLSModeFlush()Ljava/lang/String;
    .registers 2

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/log/handler/LogHandler;->triggerModemLogPLSModeFlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public triggerModemLogPLSModeFlush(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "logPath"    # Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->triggerPLSModeFlush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterLogAbnormalEventMonitor(Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;)Z
    .registers 5
    .param p1, "abnormalEventMonitor"    # Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;

    .line 104
    invoke-static {}, Lcom/log/handler/LogHandlerUtils$LogType;->getAllLogTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/log/handler/LogHandlerUtils$LogType;

    .line 105
    .local v1, "logType":Lcom/log/handler/LogHandlerUtils$LogType;
    invoke-static {v1}, Lcom/log/handler/LogFactory;->getTypeLogInstance(Lcom/log/handler/LogHandlerUtils$LogType;)Lcom/log/handler/instance/AbstractLogInstance;

    move-result-object v2

    .line 106
    invoke-virtual {v2, p1}, Lcom/log/handler/instance/AbstractLogInstance;->unregisterAbnormalEventMonitor(Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;)Z

    .line 107
    .end local v1    # "logType":Lcom/log/handler/LogHandlerUtils$LogType;
    goto :goto_8

    .line 108
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterModemEEMonitor(Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;)Z
    .registers 3
    .param p1, "modemEEMonitor"    # Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;

    .line 302
    invoke-static {}, Lcom/log/handler/LogFactory;->getModemLogInstance()Lcom/log/handler/instance/ModemLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/log/handler/instance/ModemLog;->unregisterModemEEMonitor(Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;)Z

    move-result v0

    return v0
.end method
