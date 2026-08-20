.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;
.super Ljava/lang/Object;
.source "SemWifiApSmartD2DGattClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;
    }
.end annotation


# static fields
.field private static final DISCONNECT_GATT:I = 0xc

.field private static final DISPLAY_ADDED_TOAST:I = 0xe

.field private static final DISPLAY_FAILED_TO_ADD_TOAST:I = 0xf

.field private static final ST_ADDED_TO_ALLOWED_LIST:I = 0x4

.field private static final ST_BONDING_FAILURE:I = -0x6

.field private static final ST_BONDING_GOINGON:I = -0x4

.field private static final ST_BOND_FAILED:I = -0x2

.field private static final ST_BT_PAIRING:I = 0x2

.field private static final ST_CONNECTION_ALREADY_EXIST:I = -0x3

.field private static final ST_DEVICE_NOT_FOUND:I = -0x1

.field private static final ST_DISCONNECTED:I = 0x0

.field private static final ST_GATT_CONNECTING:I = 0x1

.field private static final ST_GATT_FAILURE:I = -0x5

.field private static final ST_MHS_GATT_CLIENT_TIMEOUT:I = -0x7

.field private static final ST_MHS_GATT_SERVICE_NOT_FOUND:I = -0x8

.field private static final TAG:Ljava/lang/String; = "SemWifiApSmartD2DGattClient"

.field private static final UPDATE_CONNECTION_FAILURES:I = 0xd

.field private static final WAIT_FOR_MTU_CALLBACK:I = 0x10

.field private static mWifiApSmartD2DGattClientIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private DBG:Z

.field private isBondingGoingon:Z

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

.field private mBluetoothIsOn:Z

.field mClientD2DList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

.field private mContext:Landroid/content/Context;

.field private mD2DClient_MAC:Ljava/lang/String;

.field mD2DConnection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFailedBLEConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mLocalLog:Landroid/util/LocalLog;

.field private mPendingDeviceAddress:Ljava/lang/String;

.field private mRequestedToConnect:Z

.field private mSmartAp_BLE_MAC:Ljava/lang/String;

.field private mWifiApSmartD2DGattClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;

.field private mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private mWifiApSmart_D2D_SwitchObserver:Landroid/database/ContentObserver;

.field private requestedToAccept:Z

.field private tWifiApSmartCallback:Lcom/samsung/android/wifi/ISemWifiApSmartCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetDBG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->DBG:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->isBondingGoingon:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGattService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothIsOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGatt;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mD2DClient_MAC:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mPendingDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestedToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mRequestedToConnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmartAp_BLE_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mSmartAp_BLE_MAC:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartD2DMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestedToAccept(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->requestedToAccept:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->isBondingGoingon:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Landroid/bluetooth/BluetoothGattService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothIsOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mPendingDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestedToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mRequestedToConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApSmartD2DMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrequestedToAccept(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->requestedToAccept:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minvokeCallback(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->invokeCallback(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->setConnectionState(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->shutdownclient()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshutdownclient_1(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->shutdownclient_1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryToConnectToRemoteBLE(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->tryToConnectToRemoteBLE(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DGattClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DGattClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DGattClientIntentFilter:Landroid/content/IntentFilter;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V
    .registers 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->DBG:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->isBondingGoingon:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mD2DConnection:Ljava/util/List;

    .line 75
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mRequestedToConnect:Z

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    .line 306
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 692
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmart_D2D_SwitchObserver:Landroid/database/ContentObserver;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 82
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 83
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DGattClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;

    .line 84
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    move-result p1

    if-nez p1, :cond_83

    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DGattClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;

    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DGattClientIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_ap_smart_d2d_mhs"

    .line 87
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmart_D2D_SwitchObserver:Landroid/database/ContentObserver;

    .line 86
    invoke-virtual {p1, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_8a

    :cond_83
    const-string p0, "SemWifiApSmartD2DGattClient"

    const-string p1, "This devices\'s binary is a factory binary"

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8a
    return-void
.end method

.method private invokeCallback(Ljava/lang/String;I)V
    .registers 7

    .line 668
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->DBG:Z

    if-eqz v0, :cond_3e

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeCallback state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "clientmac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiApSmartD2DGattClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartD2DGattClient:\tsinvokeCallback state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 672
    :cond_3e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->tWifiApSmartCallback:Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    if-eqz p0, :cond_45

    .line 674
    :try_start_42
    invoke-interface {p0, p2, p1}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_45

    :catch_45
    :cond_45
    return-void
.end method

.method private setConnectionState(ILjava/lang/String;)V
    .registers 7

    .line 651
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->DBG:Z

    if-eqz v0, :cond_40

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectionState state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "clientmac "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApSmartD2DGattClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartD2DGattClient:\tsetConnectionState state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "clientmac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_40
    const/4 v0, -0x6

    if-eq p1, v0, :cond_49

    const/4 v0, -0x2

    if-eq p1, v0, :cond_49

    const/4 v0, -0x5

    if-ne p1, v0, :cond_5d

    .line 656
    :cond_49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mSmartAp_BLE_MAC:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->setBLEPairingFailedHistory(Ljava/lang/String;Landroid/util/Pair;)V

    .line 658
    :cond_5d
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->updateClientD2DConnectionStatus(Ljava/lang/String;I)V

    .line 659
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->tWifiApSmartCallback:Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    if-eqz p0, :cond_67

    .line 661
    :try_start_64
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_67

    :catch_67
    :cond_67
    return-void
.end method

.method private shutdownclient()V
    .registers 6

    const-string v0, "SemWifiApSmartD2DGattClient"

    const-string v1, "shutdownclient"

    .line 590
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_22

    .line 592
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const-wide/16 v1, 0x1770

    .line 595
    :try_start_1f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    const/4 v1, 0x0

    .line 599
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mRequestedToConnect:Z

    .line 600
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->requestedToAccept:Z

    const/4 v1, 0x0

    .line 601
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    const-string v1, "vendor.wifiap.autohotspot.btadapterenable"

    const-string v2, "0"

    .line 602
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 603
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_53

    const-string v1, "disabling BT which was enabled through autohotspot"

    .line 605
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_53
    return-void
.end method

.method private shutdownclient_1()V
    .registers 3

    const-string v0, "SemWifiApSmartD2DGattClient"

    const-string v1, "shutdownclient_1"

    .line 566
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_13

    .line 568
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const-wide/16 v0, 0x3e8

    .line 570
    :try_start_10
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    const/4 v0, 0x0

    .line 574
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mRequestedToConnect:Z

    .line 575
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->requestedToAccept:Z

    const/4 v0, 0x0

    .line 576
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method private tryToConnectToRemoteBLE(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 12

    .line 735
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 737
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 738
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 740
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to create a new connection. attempt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SemWifiApSmartD2DGattClient"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemWifiApSmartD2DGattClient\tTrying to create a new connection. attempt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mD2DClient_MAC:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v6, 0x2

    invoke-virtual {p1, v0, p2, v5, v6}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_b1

    const-wide/16 v7, 0x3e8

    .line 747
    :try_start_66
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_69

    .line 750
    :catch_69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mConnectedGatt = null, Trying to create a new connection. attempt:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemWifiApSmartD2DGattClient\tmConnectedGatt = null, Trying to create a new connection. attempt:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 752
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mD2DClient_MAC:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 753
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p2, v3, v0, v6}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p1, :cond_b1

    const-string p1, " mConnectedGatt = null, returning false"

    .line 755
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    const-string p1, "SemWifiApSmartD2DGattClient\tmConnectedGatt = null, returning false"

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v2

    .line 760
    :cond_b1
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mRequestedToConnect:Z

    return v3
.end method

.method private updateClientD2DConnectionStatus(Ljava/lang/String;I)V
    .registers 7

    .line 680
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    monitor-enter v0

    .line 681
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;

    .line 682
    iget-object v3, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 683
    iput p2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 684
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->DBG:Z

    if-eqz p0, :cond_41

    const-string p0, "SemWifiApSmartD2DGattClient"

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update state clientmac:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",state:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 690
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p0
.end method


# virtual methods
.method public connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z
    .registers 16

    .line 492
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 493
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mD2DConnection:Ljava/util/List;

    monitor-enter v0

    .line 494
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    const-string p0, "SemWifiApSmartD2DGattClient"

    const-string p1, "mConnectedGatt is not null"

    .line 495
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    monitor-exit v0

    return v2

    .line 498
    :cond_1b
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->isBondingGoingon:Z

    if-eqz v1, :cond_28

    const-string p0, "SemWifiApSmartD2DGattClient"

    const-string p1, "isBondingGoingon is true"

    .line 499
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    monitor-exit v0

    return v2

    .line 502
    :cond_28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    monitor-enter v1
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_19b

    .line 503
    :try_start_2b
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;

    .line 504
    iget v4, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    if-ne v4, v5, :cond_31

    const-string p0, "SemWifiApSmartD2DGattClient"

    const-string p1, "BLE pairing is going on, return"

    .line 505
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_198

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_19b

    return v2

    .line 509
    :cond_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_198

    .line 510
    :try_start_4d
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mD2DClient_MAC:Ljava/lang/String;

    .line 511
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mSmartAp_BLE_MAC:Ljava/lang/String;

    const-string v1, "SemWifiApSmartD2DGattClient"

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  connectToD2DClient   address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",clientMAC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartD2DGattClient:\tconnectToD2DClient   address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",clientMAC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 514
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->tWifiApSmartCallback:Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    .line 515
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p3, :cond_18f

    if-nez p1, :cond_b3

    goto/16 :goto_18f

    .line 522
    :cond_b3
    invoke-virtual {p3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_c2

    const-string p0, "SemWifiApSmartD2DGattClient"

    const-string p1, "Device not found. Unable to connect."

    .line 525
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    monitor-exit v0

    return v2

    .line 528
    :cond_c2
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    if-eqz p3, :cond_d5

    const/16 v1, 0xd

    .line 529
    invoke-virtual {p3, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->hasMessages(I)Z

    move-result p3

    if-nez p3, :cond_d5

    .line 530
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {p3, v1, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 533
    :cond_d5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p3

    const/16 v1, 0xa

    const/4 v3, 0x1

    if-ne p3, v1, :cond_159

    .line 534
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->removeDuplicateClientMAC(Ljava/lang/String;)V

    .line 535
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    monitor-enter p3
    :try_end_e4
    .catchall {:try_start_4d .. :try_end_e4} :catchall_19b

    .line 536
    :try_start_e4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x2

    move-object v6, v4

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;JI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    monitor-exit p3
    :try_end_f7
    .catchall {:try_start_e4 .. :try_end_f7} :catchall_156

    .line 538
    :try_start_f7
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->invokeCallback(Ljava/lang/String;I)V

    const-string p2, "vendor.wifiap.autohotspot.btadapterenable"

    const-string p3, "0"

    .line 539
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p2, :cond_14c

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p2

    if-ne p2, v1, :cond_14c

    const-string p2, "SemWifiApSmartD2DGattClient"

    .line 541
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device is not bonded, enabling BT adapter,mBluetoothIsOn:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothIsOn:Z

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApSmartD2DGattClient:\tdevice is not bonded, enabling BT adapter,mBluetoothIsOn:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothIsOn:Z

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string p2, "vendor.wifiap.autohotspot.btadapterenable"

    const-string p3, "1"

    .line 543
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 545
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothIsOn:Z

    .line 546
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_18a

    .line 548
    :cond_14c
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mPendingDeviceAddress:Ljava/lang/String;

    .line 549
    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z
    :try_end_155
    .catchall {:try_start_f7 .. :try_end_155} :catchall_19b

    goto :goto_18a

    :catchall_156
    move-exception p0

    .line 537
    :try_start_157
    monitor-exit p3
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_156

    :try_start_158
    throw p0

    .line 552
    :cond_159
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->removeDuplicateClientMAC(Ljava/lang/String;)V

    .line 553
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    monitor-enter p3
    :try_end_15f
    .catchall {:try_start_158 .. :try_end_15f} :catchall_19b

    .line 554
    :try_start_15f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    new-instance v10, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    move-object v4, v10

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;JI)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    monitor-exit p3
    :try_end_172
    .catchall {:try_start_15f .. :try_end_172} :catchall_18c

    .line 556
    :try_start_172
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->invokeCallback(Ljava/lang/String;I)V

    .line 557
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->tryToConnectToRemoteBLE(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p2

    if-nez p2, :cond_18a

    const/4 p2, -0x5

    .line 558
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mD2DClient_MAC:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 559
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_18a
    :goto_18a
    monitor-exit v0
    :try_end_18b
    .catchall {:try_start_172 .. :try_end_18b} :catchall_19b

    return v3

    :catchall_18c
    move-exception p0

    .line 555
    :try_start_18d
    monitor-exit p3
    :try_end_18e
    .catchall {:try_start_18d .. :try_end_18e} :catchall_18c

    :try_start_18e
    throw p0

    :cond_18f
    :goto_18f
    const-string p0, "SemWifiApSmartD2DGattClient"

    const-string p1, "BluetoothAdapter not initialized or unspecified address."

    .line 518
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    monitor-exit v0
    :try_end_197
    .catchall {:try_start_18e .. :try_end_197} :catchall_19b

    return v2

    :catchall_198
    move-exception p0

    .line 509
    :try_start_199
    monitor-exit v1
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_198

    :try_start_19a
    throw p0

    :catchall_19b
    move-exception p0

    .line 562
    monitor-exit v0
    :try_end_19d
    .catchall {:try_start_19a .. :try_end_19d} :catchall_19b

    throw p0
.end method

.method public factoryReset()V
    .registers 5

    const-string v0, "SemWifiApSmartD2DGattClient"

    const-string v1, "network reset settings "

    .line 580
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 583
    :try_start_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "bonded_device_d2dMHSside"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    throw p0
.end method

.method public getSmartD2DClientConnectedStatus(Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 628
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    monitor-enter v1

    .line 629
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;

    .line 630
    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 631
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->DBG:Z

    if-eqz v0, :cond_47

    const-string v0, "SemWifiApSmartD2DGattClient"

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartD2DClientConnectedStatus clientmac:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",:state:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_47
    iget p1, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    if-gez p1, :cond_a0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xafc8

    cmp-long p1, v4, v6

    if-lez p1, :cond_a0

    .line 634
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    if-eqz p1, :cond_a0

    const/16 v0, 0xd

    .line 635
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_a0

    .line 636
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->DBG:Z

    if-eqz p1, :cond_99

    const-string p1, "SemWifiApSmartD2DGattClient"

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartD2DClientConnectedStatus, specialcase:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartD2DGattClient:\tgetSmartD2DClientConnectedStatus, specialcase:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 640
    :cond_99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    const-wide/16 v4, 0xa

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 644
    :cond_a0
    iget p0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    monitor-exit v1

    return p0

    .line 647
    :cond_a4
    monitor-exit v1

    return v0

    :catchall_a6
    move-exception p0

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_7 .. :try_end_a8} :catchall_a6

    throw p0
.end method

.method public handleBootCompleted()V
    .registers 3

    const-string v0, "SemWifiApSmartD2DGattClient"

    const-string v1, "handleBootCompleted"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApSmartD2DGattClientHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 204
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 205
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bonded_device_d2dMHSside"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method removeDuplicateClientMAC(Ljava/lang/String;)V
    .registers 7

    .line 719
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 722
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;

    .line 723
    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_24

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    move v1, v4

    :goto_24
    if-eq v1, v4, :cond_2b

    .line 730
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 732
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method showD2DClientInfo()V
    .registers 7

    .line 703
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    const-string v1, "SemWifiApSmartD2DGattClient"

    const-string v2, "================================================"

    .line 704
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "SemWifiApSmartD2DGattClient:\t================================================"

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string v1, "SemWifiApSmartD2DGattClient"

    const-string v2, "showing D2D Client states"

    .line 706
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "SemWifiApSmartD2DGattClient:\tshowing D2D Client states"

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 708
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->DBG:Z

    if-eqz v1, :cond_62

    .line 709
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;

    const-string v3, "SemWifiApSmartD2DGattClient"

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemWifiApSmartD2DGattClient:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_29

    :cond_62
    const-string v1, "SemWifiApSmartD2DGattClient"

    const-string v2, "================================================"

    .line 714
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "SemWifiApSmartD2DGattClient:\t================================================"

    invoke-virtual {p0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 716
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p0

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw p0
.end method
