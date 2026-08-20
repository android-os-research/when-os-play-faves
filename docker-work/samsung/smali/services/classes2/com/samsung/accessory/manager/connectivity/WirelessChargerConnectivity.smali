.class public Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "WirelessChargerConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$AdapterStateChangedHandler;
    }
.end annotation


# static fields
.field public static final BIT_CLEAR:I = 0x0

.field public static final STATE_READ:I = 0x2

.field public static final STATE_WRITE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field public final mReadTriggerReceiver:Landroid/content/BroadcastReceiver;

.field public msgState:I

.field public readTriggerIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmsgState(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)I
    .registers 1

    iget p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmsgState(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 31
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->readTriggerIntentFilter:Landroid/content/IntentFilter;

    .line 39
    new-instance p1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    invoke-direct {p1, p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;-><init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 36
    new-instance p1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$AdapterStateChangedHandler;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$AdapterStateChangedHandler-IA;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    return-void
.end method


# virtual methods
.method public final addOneByte([BI)[B
    .registers 6

    add-int/lit8 p0, p2, 0x1

    .line 222
    new-array p0, p0, [B

    const/4 v0, 0x0

    move v1, v0

    .line 223
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_10

    .line 224
    aget-byte v2, p1, v1

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 226
    :cond_10
    aput-byte v0, p0, p2

    return-object p0
.end method

.method public byteArrayToString([B)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_28

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 234
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_23

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 235
    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 237
    :cond_23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const-string p0, "null"

    return-object p0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .registers 2

    .line 259
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 p1, 0x1

    if-eqz p0, :cond_8

    .line 260
    invoke-interface {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V

    :cond_8
    return p1
.end method

.method public final convertSessionState(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    const-string p0, "SESSION_NONE"

    return-object p0

    :pswitch_8
    const-string p0, "SESSION_STATE_ERROR"

    return-object p0

    :pswitch_b
    const-string p0, "SESSION_STATE_STOPPED"

    return-object p0

    :pswitch_e
    const-string p0, "SESSION_STATE_STOPPING"

    return-object p0

    :pswitch_11
    const-string p0, "SESSION_STATE_STARTED"

    return-object p0

    :pswitch_14
    const-string p0, "SESSION_STATE_STARTING"

    return-object p0

    :pswitch_17
    const-string p0, "SESSION_STATE_READY"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public disable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public enable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final includeHeader([B)[B
    .registers 5

    const/16 p0, 0x10

    new-array p0, p0, [B

    .line 134
    array-length v0, p1

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    aput-byte v2, p0, v2

    :goto_c
    if-ge v2, v1, :cond_19

    add-int/lit8 v0, v2, 0x1

    .line 137
    aget-byte v2, p1, v2

    aput-byte v2, p0, v0

    move v2, v0

    goto :goto_c

    :cond_16
    const/4 p1, -0x2

    aput-byte p1, p0, v2

    :cond_19
    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isEnabledInternally()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->wirelesscharger_open()I

    move-result p1

    .line 114
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "register receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->readTriggerIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "open batt_misc ret = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_36

    const-string/jumbo p0, "open fail"

    .line 120
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final sendStateChanged(I)V
    .registers 4

    .line 67
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz p0, :cond_1e

    .line 68
    invoke-interface {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    .line 69
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WirelessCharger State change : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_1e
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    const-string p1, "StateChangedCallback is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendStopAuth()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "close batt_misc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    const-string/jumbo v1, "unregister receiver"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x1

    return p0
.end method

.method public sendStopUsbAuth()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xf

    .line 151
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_5

    .line 154
    :catch_5
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data write msgState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite_batt([B)I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, -0x2

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    new-array v4, v2, [B

    const/4 v6, -0x1

    aput-byte v6, v4, v5

    .line 159
    array-length p1, p1

    if-eq v1, p1, :cond_38

    const-string p0, "command write fail"

    .line 160
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 164
    :cond_38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSessionState: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getSessionState()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->convertSessionState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const-wide/16 v4, 0x64

    .line 167
    :try_start_56
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_59

    .line 170
    :catch_59
    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    const/4 v0, 0x3

    if-eq p1, v2, :cond_64

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getSessionState()I

    move-result p1

    if-eq p1, v0, :cond_54

    .line 172
    :cond_64
    sget-object p1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getSessionState()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->convertSessionState(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getSessionState()I

    move-result p1

    const/4 v6, 0x5

    if-ne p1, v6, :cond_88

    return-object v3

    :cond_88
    const-wide/16 v7, 0x32

    .line 177
    :try_start_8a
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_8d

    .line 181
    :catch_8d
    sget-object p1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bit clear, msgState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_a5
    :try_start_a5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_a5 .. :try_end_a8} :catch_a8

    .line 188
    :catch_a8
    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    if-ne p1, v2, :cond_b2

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getSessionState()I

    move-result p1

    if-eq p1, v0, :cond_a5

    .line 190
    :cond_b2
    sget-object p1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getSessionState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->convertSessionState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getSessionState()I

    move-result v0

    if-ne v0, v6, :cond_d5

    return-object v3

    .line 194
    :cond_d5
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead_batt()[B

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", receive: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    array-length p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->addOneByte([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .registers 2

    .line 78
    invoke-super {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    return-void
.end method
