.class public Lcom/log/handler/connection/LogHidlConnection;
.super Lcom/log/handler/connection/AbstractLogConnection;
.source "LogHidlConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/log/handler/connection/LogHidlConnection$HidlDeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LogHandler/LogHidlConnection"


# instance fields
.field mHidlDeathRecipient:Lcom/log/handler/connection/LogHidlConnection$HidlDeathRecipient;

.field private mLogCallback:Lvendor/mediatek/hardware/log/V1_0/ILogCallback;

.field private mLogHIDLService:Lvendor/mediatek/hardware/log/V1_0/ILog;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "serverName"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lcom/log/handler/connection/AbstractLogConnection;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/log/handler/connection/LogHidlConnection$HidlDeathRecipient;

    invoke-direct {v0, p0}, Lcom/log/handler/connection/LogHidlConnection$HidlDeathRecipient;-><init>(Lcom/log/handler/connection/LogHidlConnection;)V

    iput-object v0, p0, Lcom/log/handler/connection/LogHidlConnection;->mHidlDeathRecipient:Lcom/log/handler/connection/LogHidlConnection$HidlDeathRecipient;

    .line 99
    new-instance v0, Lcom/log/handler/connection/LogHidlConnection$1;

    invoke-direct {v0, p0}, Lcom/log/handler/connection/LogHidlConnection$1;-><init>(Lcom/log/handler/connection/LogHidlConnection;)V

    iput-object v0, p0, Lcom/log/handler/connection/LogHidlConnection;->mLogCallback:Lvendor/mediatek/hardware/log/V1_0/ILogCallback;

    .line 28
    return-void
.end method


# virtual methods
.method public connect()Z
    .registers 7

    .line 33
    const-string v0, "LogHandler/LogHidlConnection"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogHIDLConnection serverName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/log/handler/connection/LogHidlConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/log/handler/connection/LogHidlConnection;->mServerName:Ljava/lang/String;

    invoke-static {v2}, Lvendor/mediatek/hardware/log/V1_0/ILog;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/log/V1_0/ILog;

    move-result-object v2

    iput-object v2, p0, Lcom/log/handler/connection/LogHidlConnection;->mLogHIDLService:Lvendor/mediatek/hardware/log/V1_0/ILog;

    .line 35
    if-eqz v2, :cond_3b

    .line 36
    iget-object v3, p0, Lcom/log/handler/connection/LogHidlConnection;->mLogCallback:Lvendor/mediatek/hardware/log/V1_0/ILogCallback;

    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/log/V1_0/ILog;->setCallback(Lvendor/mediatek/hardware/log/V1_0/ILogCallback;)V

    .line 37
    iget-object v2, p0, Lcom/log/handler/connection/LogHidlConnection;->mLogHIDLService:Lvendor/mediatek/hardware/log/V1_0/ILog;

    iget-object v3, p0, Lcom/log/handler/connection/LogHidlConnection;->mHidlDeathRecipient:Lcom/log/handler/connection/LogHidlConnection$HidlDeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lvendor/mediatek/hardware/log/V1_0/ILog;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 38
    const-string v2, "mLogHIDLService.setCallback() done!"

    invoke-static {v0, v2}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    nop

    .line 53
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_3b
    const-string v2, "mLogHIDLService get fail!"

    invoke-static {v0, v2}, Lcom/log/handler/LogHandlerUtils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/log/handler/connection/LogHidlConnection;->disConnect()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_43} :catch_4c
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_43} :catch_44

    .line 42
    return v1

    .line 48
    :catch_44
    move-exception v0

    .line 49
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 50
    invoke-virtual {p0}, Lcom/log/handler/connection/LogHidlConnection;->disConnect()V

    .line 51
    return v1

    .line 44
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catch_4c
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    invoke-virtual {p0}, Lcom/log/handler/connection/LogHidlConnection;->disConnect()V

    .line 47
    return v1
.end method

.method public disConnect()V
    .registers 2

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/log/handler/connection/LogHidlConnection;->mLogHIDLService:Lvendor/mediatek/hardware/log/V1_0/ILog;

    .line 82
    invoke-super {p0}, Lcom/log/handler/connection/AbstractLogConnection;->disConnect()V

    .line 83
    return-void
.end method

.method public isConnection()Z
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/log/handler/connection/LogHidlConnection;->mLogHIDLService:Lvendor/mediatek/hardware/log/V1_0/ILog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected sendDataToServer(Ljava/lang/String;)Z
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDataToServer() mServerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/log/handler/connection/LogHidlConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogHandler/LogHidlConnection"

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "sendSuccess":Z
    const-wide/16 v2, 0x32

    :try_start_27
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 68
    iget-object v2, p0, Lcom/log/handler/connection/LogHidlConnection;->mLogHIDLService:Lvendor/mediatek/hardware/log/V1_0/ILog;

    invoke-interface {v2, p1}, Lvendor/mediatek/hardware/log/V1_0/ILog;->sendToServer(Ljava/lang/String;)Z

    move-result v2
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_30} :catch_32

    move v0, v2

    .line 74
    :goto_31
    goto :goto_41

    .line 72
    :catch_32
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_41

    .line 69
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_37
    move-exception v2

    .line 70
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while sending command to native."

    invoke-static {v1, v3, v2}, Lcom/log/handler/LogHandlerUtils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    invoke-virtual {p0}, Lcom/log/handler/connection/LogHidlConnection;->disConnect()V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_31

    .line 75
    :goto_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendToServer done! sendSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/log/handler/LogHandlerUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return v0
.end method
