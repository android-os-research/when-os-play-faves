.class public Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "BTConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;,
        Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;
    }
.end annotation


# static fields
.field public static final MY_UUID_INSECURE:Ljava/util/UUID;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

.field public mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

.field public mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAdapterStateChangedHandler(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "0172c870-6e31-11e4-9803-0800200c9a66"

    .line 27
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->MY_UUID_INSECURE:Ljava/util/UUID;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 65
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    .line 66
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver-IA;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    if-eqz v0, :cond_c

    .line 155
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    :cond_c
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .registers 4

    .line 100
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v0, 0x1

    .line 103
    :try_start_e
    sget-object v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->MY_UUID_INSECURE:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 104
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 105
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz p0, :cond_20

    .line 106
    invoke-interface {p0, v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    return v0
.end method

.method public disable()Z
    .registers 3

    .line 95
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p0

    return p0
.end method

.method public disconnect()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p0, " Current BTConnectivity state:"

    .line 162
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enable()Z
    .registers 3

    .line 86
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    return v0

    :cond_13
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

    .line 72
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

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

    .line 76
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 4

    .line 120
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    .line 121
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    return-object p0
.end method

.method public sendStopAuth()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

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

.method public sendSync([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendSync"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
