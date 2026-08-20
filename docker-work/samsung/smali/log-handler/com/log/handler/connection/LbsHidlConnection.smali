.class public Lcom/log/handler/connection/LbsHidlConnection;
.super Lcom/log/handler/connection/AbstractLogConnection;
.source "LbsHidlConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LogHandler/LbsHidlConnection"


# instance fields
.field mHidlDeathRecipient:Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;

.field private mLbsCallback:Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback;

.field private mLbsHIDLCallback:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

.field private mLbsHIDLService:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;


# direct methods
.method static bridge synthetic -$$Nest$mcovertArrayListToString(Lcom/log/handler/connection/LbsHidlConnection;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/log/handler/connection/LbsHidlConnection;->covertArrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "serverName"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/log/handler/connection/AbstractLogConnection;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;

    invoke-direct {v0, p0}, Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;-><init>(Lcom/log/handler/connection/LbsHidlConnection;)V

    iput-object v0, p0, Lcom/log/handler/connection/LbsHidlConnection;->mHidlDeathRecipient:Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;

    .line 110
    new-instance v0, Lcom/log/handler/connection/LbsHidlConnection$1;

    invoke-direct {v0, p0}, Lcom/log/handler/connection/LbsHidlConnection$1;-><init>(Lcom/log/handler/connection/LbsHidlConnection;)V

    iput-object v0, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsCallback:Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback;

    .line 30
    return-void
.end method

.method private covertArrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 121
    .local p1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 122
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 123
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 125
    .end local v1    # "i":I
    :cond_1c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private covertStringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "dataStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 130
    .local v0, "bytes":[B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-byte v4, v0, v3

    .line 132
    .local v4, "bytee":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v4    # "bytee":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 134
    :cond_19
    return-object v1
.end method


# virtual methods
.method public connect()Z
    .registers 7

    .line 35
    const-string v0, "LogHandler/LbsHidlConnection"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LbsHidlConnection serverName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/log/handler/connection/LbsHidlConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/log/handler/connection/LbsHidlConnection;->mServerName:Ljava/lang/String;

    invoke-static {v2}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    move-result-object v2

    iput-object v2, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsHIDLService:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    .line 38
    if-nez v2, :cond_41

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get server fail for serverName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/log/handler/connection/LbsHidlConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/log/handler/connection/LbsHidlConnection;->disConnect()V

    .line 41
    return v1

    .line 43
    :cond_41
    iget-object v3, p0, Lcom/log/handler/connection/LbsHidlConnection;->mHidlDeathRecipient:Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 45
    const-string v2, "mtk_mnld2mtklogger"

    invoke-static {v2}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    move-result-object v2

    iput-object v2, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsHIDLCallback:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    .line 46
    if-nez v2, :cond_5b

    .line 47
    const-string v2, "get lbs server fail for mtk_mnld2mtklogger"

    invoke-static {v0, v2}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/log/handler/connection/LbsHidlConnection;->disConnect()V

    .line 49
    return v1

    .line 51
    :cond_5b
    iget-object v3, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsCallback:Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback;

    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->setCallback(Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback;)V

    .line 52
    iget-object v2, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsHIDLCallback:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    iget-object v3, p0, Lcom/log/handler/connection/LbsHidlConnection;->mHidlDeathRecipient:Lcom/log/handler/connection/LbsHidlConnection$HidlDeathRecipient;

    invoke-interface {v2, v3, v4, v5}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 53
    const-string v2, "mLogHIDLService.setCallback() done!"

    invoke-static {v0, v2}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6c} :catch_77
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_6c} :catch_6f

    .line 62
    nop

    .line 63
    const/4 v0, 0x1

    return v0

    .line 58
    :catch_6f
    move-exception v0

    .line 59
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 60
    invoke-virtual {p0}, Lcom/log/handler/connection/LbsHidlConnection;->disConnect()V

    .line 61
    return v1

    .line 54
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catch_77
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 56
    invoke-virtual {p0}, Lcom/log/handler/connection/LbsHidlConnection;->disConnect()V

    .line 57
    return v1
.end method

.method public disConnect()V
    .registers 2

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsHIDLService:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    .line 92
    iput-object v0, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsHIDLCallback:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    .line 93
    invoke-super {p0}, Lcom/log/handler/connection/AbstractLogConnection;->disConnect()V

    .line 94
    return-void
.end method

.method public isConnection()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsHIDLService:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsHIDLCallback:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected sendDataToServer(Ljava/lang/String;)Z
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDataToServer() mServerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/log/handler/connection/LbsHidlConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogHandler/LbsHidlConnection"

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "sendSuccess":Z
    const-wide/16 v2, 0x32

    :try_start_27
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 78
    iget-object v2, p0, Lcom/log/handler/connection/LbsHidlConnection;->mLbsHIDLService:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    invoke-direct {p0, p1}, Lcom/log/handler/connection/LbsHidlConnection;->covertStringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->sendToServer(Ljava/util/ArrayList;)Z

    move-result v2
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_34} :catch_36

    move v0, v2

    .line 84
    :goto_35
    goto :goto_45

    .line 82
    :catch_36
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_45

    .line 79
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_3b
    move-exception v2

    .line 80
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while sending command to native."

    invoke-static {v1, v3, v2}, Lcom/log/handler/LogHandlerUtils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    invoke-virtual {p0}, Lcom/log/handler/connection/LbsHidlConnection;->disConnect()V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_35

    .line 85
    :goto_45
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

    .line 86
    return v0
.end method
