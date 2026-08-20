.class public Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "UsbConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 26
    new-instance p1, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler-IA;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    return-void
.end method


# virtual methods
.method public final addOneByte([BI)[B
    .registers 6

    add-int/lit8 p0, p2, 0x1

    .line 159
    new-array p0, p0, [B

    const/4 v0, 0x0

    move v1, v0

    .line 160
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_10

    .line 161
    aget-byte v2, p1, v1

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 163
    :cond_10
    aput-byte v0, p0, p2

    return-object p0
.end method

.method public byteArrayToString([B)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_28

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 171
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_23

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 172
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

    .line 174
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

    .line 201
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 p1, 0x1

    if-eqz p0, :cond_8

    .line 202
    invoke-interface {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V

    :cond_8
    return p1
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

    .line 53
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

    .line 58
    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final includeHeader([B)[B
    .registers 5

    const/16 p0, 0x10

    new-array p0, p0, [B

    .line 121
    array-length v0, p1

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    aput-byte v2, p0, v2

    :goto_c
    if-ge v2, v1, :cond_19

    add-int/lit8 v0, v2, 0x1

    .line 124
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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput-byte v1, p1, v0

    .line 78
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_open()I

    move-result v0

    .line 79
    sget-object v1, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open ccic_misc ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_2d

    const-string/jumbo p0, "open fail"

    .line 81
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2d
    const/4 v0, 0x5

    new-array v2, v0, [B

    .line 84
    fill-array-data v2, :array_74

    .line 85
    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    move-result v2

    if-eq v2, v0, :cond_50

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReqS fail. invalid return value: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 91
    :cond_50
    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead()[B

    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atqs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->includeHeader([B)[B

    move-result-object p0

    return-object p0

    nop

    :array_74
    .array-data 1
        0x0t
        0x5at
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final sendStateChanged(I)V
    .registers 4

    .line 37
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz p0, :cond_1e

    .line 38
    invoke-interface {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    .line 39
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB State change : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_1e
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

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

    .line 68
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "close ccic_misc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    const/4 p0, 0x1

    return p0
.end method

.method public sendStopUsbAuth()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    move v2, v0

    :goto_3
    if-ltz v2, :cond_5d

    if-nez v1, :cond_5d

    .line 101
    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_open()I

    move-result v3

    .line 102
    sget-object v4, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "open ccic_misc ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v3, :cond_2d

    const-string/jumbo v3, "open fail for end comd"

    .line 104
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :cond_2d
    new-array v3, v0, [B

    .line 107
    fill-array-data v3, :array_5e

    .line 108
    iget-object v5, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v5, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    move-result v3

    if-eq v3, v0, :cond_4f

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End cmd fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :cond_4f
    const/4 v1, 0x1

    const-string v3, "close ccic_misc"

    .line 114
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    :goto_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5d
    return-void

    :array_5e
    .array-data 1
        0x0t
        -0x22t
        -0x53t
        0x0t
        0x0t
    .end array-data
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xf

    .line 138
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_5

    .line 141
    :catch_5
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, -0x2

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    new-array v1, v1, [B

    const/4 v3, -0x1

    aput-byte v3, v1, v4

    .line 145
    array-length p1, p1

    if-eq v0, p1, :cond_22

    .line 146
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    const-string p1, "command write fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 150
    :cond_22
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2b

    return-object v2

    .line 152
    :cond_2b
    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead()[B

    move-result-object p1

    .line 153
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", receive: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    array-length p2, p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->addOneByte([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    return-void
.end method
