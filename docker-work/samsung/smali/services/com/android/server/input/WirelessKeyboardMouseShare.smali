.class public Lcom/android/server/input/WirelessKeyboardMouseShare;
.super Ljava/lang/Object;
.source "WirelessKeyboardMouseShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;,
        Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;,
        Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;,
        Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;,
        Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;
    }
.end annotation


# static fields
.field public static final ACTION_REMOTE_INPUT_DEVICE_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.input.REMOTE_INPUT_DEVICE_STATE_CHANGED"

.field public static final ACTION_REMOTE_INPUT_READY_TO_CONNECT:Ljava/lang/String; = "com.samsung.android.input.REMOTE_INPUT_READY_TO_CONNECT"

.field public static final BIT_APP_REGISTER:I = 0x5

.field public static final BIT_CONNECTION:I = 0x0

.field public static final BIT_FOCUSED_DEVICE:I = 0x2

.field public static final BIT_NEED_BT_TURN_ON:I = 0x6

.field public static final BIT_NEED_NOTI:I = 0x7

.field public static final BIT_NEED_NOTI_TABLET:I = 0x8

.field public static final BIT_PLUGGED_DEVICE:I = 0x1

.field public static final BIT_PLUGGED_DEVICELIST:I = 0x3

.field public static final BIT_TO_WHERE:I = 0x4

.field public static final CONNECTED_DISCONNECTED_STATES:[I

.field public static final CONNECTION_FAIL_TIMEOUT:I = 0x1388

.field public static final CONNECTION_FAIL_TIMEOUT_MCF:I = 0xea60

.field public static final CONNECTION_TIMEOUT:I = 0x12c

.field public static final DEBUG:Z

.field public static final MESSAGE_CONNECT_DEVICE:I = 0x9

.field public static final MESSAGE_DEV_CONNECTED:I = 0x2

.field public static final MESSAGE_GET_REPORT_RECEIVED:I = 0x3

.field public static final MESSAGE_NEED_HOST_ROLE:I = 0xb

.field public static final MESSAGE_NEED_TO_INITIALIZING:I = 0x5

.field public static final MESSAGE_REGISTER_APP:I = 0x1

.field public static final MESSAGE_SEND_BROADCAST_TO_MCF:I = 0x8

.field public static final MESSAGE_SEND_STATUS:I = 0x7

.field public static final MESSAGE_SET_REPORT_RECEIVED:I = 0x4

.field public static final MESSAGE_START_HIDDEVICE_BY_KEY:I = 0xa

.field public static final MESSAGE_SWITCH_REMOTE_BT:I = 0x6

.field public static final SHIP_BUILD:Z

.field public static final SPLIT_DELIMITER:Ljava/lang/String; = "/"

.field public static final TAG:Ljava/lang/String; = "WirelessKeyboardMouseShare"


# instance fields
.field public final ADD_EXISTED_DEVICE:I

.field public final ADD_NEW_DEVICE:I

.field public final FAIL_ADD:I

.field public final MAX_DEVICES_NUM:I

.field public final MAX_PAIRED_NUM:I

.field public final innerLock:Ljava/lang/Object;

.field public mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mAddIndex:I

.field public mAppRegistered:Z

.field public final mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

.field public mConnectionState:I

.field public final mContext:Landroid/content/Context;

.field public mDisconnectWithoutUnregister:Z

.field public mExecutor:Ljava/util/concurrent/Executor;

.field public mFinishNewDevice:Z

.field public mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

.field public mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

.field public mInitialized:Z

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public mInputReportCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;

.field public mLastestConnectedName:Ljava/lang/String;

.field public final mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

.field public mNeedNoti:Z

.field public mNeedNotiTablet:Z

.field public mNeedToTurnOnBT:Z

.field public mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field public mNotiTurnOnBT:Z

.field public mOutputReportCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;",
            ">;"
        }
    .end annotation
.end field

.field public mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

.field public mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

.field public mPogoConnected:Z

.field public mProtocol:B

.field public mReadyToConnect:Z

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRegisterAfterRemove:Z

.field public mRetryNum:I

.field public final mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field public mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

.field public mTabletName:Ljava/lang/String;

.field public mToLocalTablet:Z

.field public mToastDialog:Lcom/android/server/input/ToastDialog;

.field public mUnregisterWhenConnectionFail:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAddIndex(Lcom/android/server/input/WirelessKeyboardMouseShare;)I
    .registers 1

    iget p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I
    .registers 1

    iget p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisconnectWithoutUnregister(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExecutor(Lcom/android/server/input/WirelessKeyboardMouseShare;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInitialized(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputManager(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/InputManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyboard(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMouse(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNeedToTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextConnectedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOutputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I
    .registers 1

    iget p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToastDialog(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/ToastDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnregisterWhenConnectionFail(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAddIndex(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisconnectWithoutUnregister(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFinishNewDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFocusedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothHidDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInitialized(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastestConnectedName(Lcom/android/server/input/WirelessKeyboardMouseShare;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLastestConnectedName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNeedNoti(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNeedNotiTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNeedToTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotiTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProtocol(Lcom/android/server/input/WirelessKeyboardMouseShare;B)V
    .registers 2

    iput-byte p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mProtocol:B

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUnregisterWhenConnectionFail(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddPairedDevicesListLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->addPairedDevicesListLocked(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdisconnectBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexistBluetoothDeviceLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minitializing(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->initializing()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->storeReportLocked(B[BZ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 86
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    .line 87
    sput-boolean v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->DEBUG:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1226
    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->CONNECTED_DISCONNECTED_STATES:[I

    return-void

    nop

    :array_20
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/ToastDialog;)V
    .registers 9

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 114
    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 117
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    const-string v2, ""

    .line 122
    iput-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLastestConnectedName:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    .line 125
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRegisterAfterRemove:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    .line 135
    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 138
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    const/4 v2, 0x4

    .line 140
    iput v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->MAX_DEVICES_NUM:I

    const/4 v3, 0x3

    .line 141
    iput v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->MAX_PAIRED_NUM:I

    new-array v3, v2, [Landroid/bluetooth/BluetoothDevice;

    .line 143
    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 144
    iput v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    const/4 v2, 0x2

    .line 146
    iput v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->ADD_NEW_DEVICE:I

    .line 147
    iput v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->ADD_EXISTED_DEVICE:I

    .line 148
    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->FAIL_ADD:I

    .line 160
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 164
    new-instance v2, Lcom/android/server/input/WirelessKeyboardMouseShare$1;

    invoke-direct {v2, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$1;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    iput-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mExecutor:Ljava/util/concurrent/Executor;

    .line 171
    iput-byte v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mProtocol:B

    .line 173
    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse-IA;)V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 174
    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard-IA;)V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;

    .line 176
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    .line 178
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    .line 1170
    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$2;

    invoke-direct {v1, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$2;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1200
    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$3;

    invoke-direct {v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$3;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1231
    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$4;

    invoke-direct {v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$4;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    .line 287
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 288
    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 289
    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 290
    iput-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    const-string p2, "WirelessKeyboardMouseShare"

    const-string p3, "WirelessKeyboardMouseShare()"

    .line 292
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iput-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 295
    new-instance p2, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    invoke-direct {p2, p0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo-IA;)V

    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    .line 297
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p2, :cond_b3

    .line 298
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 301
    :cond_b3
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    .line 304
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 305
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 306
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1, v1, p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addDevice(I)Z
    .registers 7

    .line 341
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-gt p1, v1, :cond_8a

    if-nez p1, :cond_b

    goto/16 :goto_8a

    .line 346
    :cond_b
    :try_start_b
    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    .line 347
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3f

    const-string v1, "WirelessKeyboardMouseShare"

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not empty slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object p1, v4, p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 350
    monitor-exit v0

    return v2

    .line 352
    :cond_3f
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v2, 0x1

    if-eqz v1, :cond_53

    .line 353
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v1

    if-ne v1, v2, :cond_53

    .line 354
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V

    .line 357
    :cond_53
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    aput-object v3, v1, p1

    .line 359
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_61

    .line 360
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()Z

    .line 363
    :cond_61
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 364
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 365
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    :cond_72
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 368
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 370
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 372
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 374
    monitor-exit v0

    return v2

    :cond_8a
    :goto_8a
    const-string p0, "WirelessKeyboardMouseShare"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v0

    return v2

    :catchall_a3
    move-exception p0

    .line 375
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_b .. :try_end_a5} :catchall_a3

    throw p0
.end method

.method public final addPairedDevicesListLocked(Landroid/bluetooth/BluetoothDevice;I)I
    .registers 11

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v4, v0

    move v3, v1

    :goto_6
    const/4 v5, 0x4

    const-string v6, "WirelessKeyboardMouseShare"

    if-ge v3, v5, :cond_65

    .line 1027
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v5, v5, v3

    if-eqz v5, :cond_16

    .line 1030
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_17

    :cond_16
    move-object v5, v0

    :goto_17
    if-ne v3, v1, :cond_1b

    move-object v4, v5

    goto :goto_2f

    .line 1035
    :cond_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1038
    :goto_2f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "already exist device slot["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] requested_index="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", device="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1044
    :cond_65
    iput v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    if-eqz v2, :cond_6a

    return v2

    :cond_6a
    const/4 v0, 0x3

    if-gt p2, v0, :cond_cc

    if-nez p2, :cond_70

    goto :goto_cc

    .line 1054
    :cond_70
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v0, v0, p2

    if-eqz v0, :cond_97

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not empty slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_97
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object p1, v0, p2

    const/4 p2, 0x2

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add paired device list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1062
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    return p2

    .line 1050
    :cond_cc
    :goto_cc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cannot add list, index="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public changeHIDDevice(Ljava/lang/String;I)V
    .registers 9

    .line 830
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->findBluetoothDeviceFromString(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 834
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_e

    goto :goto_77

    .line 840
    :cond_e
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 841
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v2, 0x1

    if-eqz v1, :cond_42

    .line 842
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V

    .line 843
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 845
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 846
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 847
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    :cond_34
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 850
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 852
    :cond_42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->removePairedDevicesListLocked(Ljava/lang/String;I)V

    .line 853
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 854
    iput p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    .line 855
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 856
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    goto :goto_75

    :cond_50
    const-string p2, "WirelessKeyboardMouseShare"

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warning: request device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " connected device : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 859
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 858
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :goto_75
    monitor-exit v0

    return-void

    .line 835
    :cond_77
    :goto_77
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    const-string p2, "WirelessKeyboardMouseShare"

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not find device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p0, :cond_96

    const-string p0, ""

    goto :goto_9a

    :cond_96
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 836
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    monitor-exit v0

    return-void

    :catchall_a6
    move-exception p0

    .line 861
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_3 .. :try_end_a8} :catchall_a6

    throw p0
.end method

.method public connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-nez p0, :cond_10

    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "connectByBtDevice mHidDevice is null"

    .line 490
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    monitor-exit v0

    return-void

    :cond_10
    if-nez p1, :cond_1b

    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "connectByBtDevice BluetoothDevice is null"

    .line 494
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    monitor-exit v0

    return-void

    .line 497
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 498
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final disconnectBT(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    .line 958
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v1, :cond_21

    if-eqz p1, :cond_21

    .line 960
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 961
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->clear(Z)V

    .line 962
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    invoke-virtual {v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    .line 964
    :cond_1c
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 966
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 951
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 952
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    .line 953
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 954
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    move v2, v1

    :goto_6
    const/4 v3, 0x4

    if-ge v2, v3, :cond_21

    .line 988
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1e

    .line 989
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_21
    return v0
.end method

.method public final findBluetoothDeviceFromString(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;
    .registers 10

    const/4 v0, 0x0

    const-string v1, " "

    const-string/jumbo v2, "wrong index="

    const-string v3, "WirelessKeyboardMouseShare"

    const/4 v4, 0x3

    if-gt p2, v4, :cond_8c

    if-nez p2, :cond_f

    goto/16 :goto_8c

    .line 1003
    :cond_f
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v4, v4, p2

    if-eqz v4, :cond_3e

    .line 1005
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "find device slot["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] =  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " requested device = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3e
    const/4 v4, 0x1

    :goto_3f
    const/4 v5, 0x4

    if-ge v4, v5, :cond_70

    .line 1011
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v5, v5, v4

    if-eqz v5, :cond_6d

    .line 1012
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1013
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", but find device : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 1018
    :cond_70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not find device index="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1000
    :cond_8c
    :goto_8c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDeviceListSize()I
    .registers 5

    .line 970
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_5
    const/4 v3, 0x4

    if-ge v2, v3, :cond_13

    .line 974
    :try_start_8
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v3, v3, v2

    if-eqz v3, :cond_10

    add-int/lit8 v1, v1, 0x1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 979
    :cond_13
    monitor-exit v0

    return v1

    :catchall_15
    move-exception p0

    .line 980
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getFirstEmptySlot()I
    .registers 4

    .line 939
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :goto_4
    const/4 v2, 0x4

    if-ge v1, v2, :cond_12

    .line 941
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v2, v2, v1

    if-nez v2, :cond_f

    .line 943
    monitor-exit v0

    return v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 946
    :cond_12
    monitor-exit v0

    return v2

    :catchall_14
    move-exception p0

    .line 947
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getLastestConnectedName()Ljava/lang/String;
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLastestConnectedName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 510
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getTabletName()Ljava/lang/String;
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 504
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final initializing()V
    .registers 6

    .line 262
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wireless_keyboard_setting_repository"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 267
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initializing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WirelessKeyboardMouseShare"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 271
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    array-length v2, v0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_40

    return-void

    .line 274
    :cond_40
    aget-object v0, v0, v1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_4a
    const/4 v3, 0x4

    if-ge v2, v3, :cond_71

    .line 276
    array-length v3, v0

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_71

    add-int/lit8 v3, v2, -0x1

    .line 277
    aget-object v3, v0, v3

    const-string v4, ""

    if-eq v3, v4, :cond_69

    .line 278
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_60

    goto :goto_69

    .line 281
    :cond_60
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isBonedDeviceFromString(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    aput-object v3, v4, v2

    goto :goto_6e

    .line 279
    :cond_69
    :goto_69
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_71
    return-void
.end method

.method public isBluetoothOn()Z
    .registers 3

    .line 743
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_d

    .line 745
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 747
    :cond_d
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 748
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final isBonedDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    .line 1148
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1149
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final isBonedDeviceFromString(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 6

    .line 251
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "WirelessKeyboardMouseShare"

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bonded bt device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    .line 257
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "not exist bonded device : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public isConnected()Z
    .registers 3

    .line 752
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_3
    iget p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 754
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public isRegistered()Z
    .registers 2

    .line 737
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 739
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isToLocalTablet()Z
    .registers 2

    .line 469
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 471
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public notifyKeyboardAciton(II)V
    .registers 4

    .line 1134
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v0, :cond_9

    goto :goto_1a

    .line 1138
    :cond_9
    invoke-static {p2}, Lcom/android/server/input/HidKeycodes;->convertScancodeToHidKeycode(I)B

    move-result p2

    if-nez p1, :cond_15

    .line 1141
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;

    invoke-virtual {p0, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->keyDownLocked(B)V

    goto :goto_1a

    .line 1143
    :cond_15
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;

    invoke-virtual {p0, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->keyUpLocked(B)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public notifyMouseAciton(IFFI)V
    .registers 6

    .line 1112
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v0, :cond_9

    goto :goto_3b

    :cond_9
    if-eqz p1, :cond_32

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 p4, 0x2

    if-eq p1, p4, :cond_1e

    const/16 p2, 0x8

    if-eq p1, p2, :cond_16

    goto :goto_3b

    .line 1129
    :cond_16
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    float-to-int p1, p3

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mouseScrollLocked(B)V

    goto :goto_3b

    .line 1118
    :cond_1e
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    float-to-int p1, p2

    int-to-byte p1, p1

    float-to-int p2, p3

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mouseMoveLocked(BB)V

    goto :goto_3b

    .line 1126
    :cond_28
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    float-to-int p1, p2

    int-to-byte p1, p1

    float-to-int p2, p3

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mouseButtonUpLocked(BBI)V

    goto :goto_3b

    .line 1122
    :cond_32
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    float-to-int p1, p2

    int-to-byte p1, p1

    float-to-int p2, p3

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mouseButtonDownLocked(BBI)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public refreshPairedList()V
    .registers 7

    .line 1157
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :goto_4
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3e

    .line 1159
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3b

    .line 1160
    invoke-virtual {p0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isBonedDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "WirelessKeyboardMouseShare"

    .line 1161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not bonded device any more : slot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1166
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 1167
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final registerApp()V
    .registers 6

    .line 914
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "WirelessKeyboardMouseShare"

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerApp(): mAppRegistered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAdapter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_21

    const-string v3, "NULL"

    goto :goto_23

    :cond_21
    const-string v3, "OK"

    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_33

    .line 919
    monitor-exit v0

    return-void

    .line 921
    :cond_33
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v2, :cond_64

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_64

    .line 925
    :cond_3e
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v4, 0x13

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    if-nez v1, :cond_55

    const-string p0, "WirelessKeyboardMouseShare"

    const-string v1, "Cannot obtain profile proxy"

    .line 927
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    monitor-exit v0

    return-void

    :cond_55
    const/4 v1, 0x1

    .line 931
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 932
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 934
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 935
    monitor-exit v0

    return-void

    .line 922
    :cond_64
    :goto_64
    monitor-exit v0

    return-void

    :catchall_66
    move-exception p0

    .line 935
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public removeHIDDevice()V
    .registers 2

    .line 886
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->unregisterApp()V

    .line 888
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public removeHIDDevice(Ljava/lang/String;I)V
    .registers 6

    .line 865
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->findBluetoothDeviceFromString(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_25

    .line 870
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    const-string p0, "WirelessKeyboardMouseShare"

    .line 871
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not find device : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    monitor-exit v0

    return-void

    .line 875
    :cond_25
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v2, :cond_3b

    .line 876
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_38

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 877
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 879
    :cond_38
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 881
    :cond_3b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->removePairedDevicesListLocked(Ljava/lang/String;I)V

    .line 882
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final removePairedDevicesListLocked(Ljava/lang/String;I)V
    .registers 11

    const-string v0, "WirelessKeyboardMouseShare"

    const/4 v1, 0x3

    if-gt p2, v1, :cond_ca

    if-nez p2, :cond_9

    goto/16 :goto_ca

    .line 1073
    :cond_9
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 1075
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1076
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v1, p2

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requested_index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    return-void

    :cond_3f
    const-string v1, ""

    const/4 v3, 0x1

    move-object v5, v1

    move v4, v3

    :goto_44
    const/4 v6, 0x4

    if-ge v4, v6, :cond_a0

    .line 1085
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v6, v6, v4

    if-eqz v6, :cond_52

    .line 1088
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_53

    :cond_52
    move-object v6, v1

    :goto_53
    if-ne v4, v3, :cond_57

    move-object v5, v6

    goto :goto_6b

    .line 1093
    :cond_57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1096
    :goto_6b
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist other slot["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] requested_index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", device="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object v2, p1, v4

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    return-void

    :cond_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 1105
    :cond_a0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to remove "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    return-void

    .line 1070
    :cond_ca
    :goto_ca
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cannot add list, index="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 329
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 330
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_19

    .line 331
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 332
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_19
    return-void
.end method

.method public sendMessageMCF()V
    .registers 4

    .line 337
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendMessageStatus()V
    .registers 2

    .line 325
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendReadyToConnectIntent()V
    .registers 10

    .line 514
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.input.REMOTE_INPUT_READY_TO_CONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    .line 519
    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    if-eqz v3, :cond_15

    .line 520
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v3}, Lcom/android/server/input/ToastDialog;->showToastWKSRegister()V

    :cond_15
    const/4 v3, 0x0

    const/4 v4, 0x1

    move v6, v3

    move v5, v4

    :goto_19
    const/4 v7, 0x4

    if-ge v5, v7, :cond_45

    .line 523
    iget-object v7, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v7, v7, v5

    const-string v8, ""

    if-eqz v7, :cond_2a

    .line 526
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    :cond_2a
    if-ne v5, v4, :cond_2e

    move-object v2, v8

    goto :goto_42

    .line 532
    :cond_2e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 536
    :cond_45
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v5, :cond_4c

    .line 537
    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    goto :goto_54

    :cond_4c
    const/4 v5, 0x3

    if-lt v6, v5, :cond_52

    .line 539
    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    goto :goto_54

    .line 541
    :cond_52
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    :goto_54
    const-string v4, "com.samsung.android.mcfds"

    .line 544
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "ready"

    .line 545
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "hostlist"

    .line 546
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "finishNewDevice"

    .line 547
    iget-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    .line 548
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 549
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "WirelessKeyboardMouseShare"

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReadyToConnect : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mFinishNewDevice"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    .line 554
    monitor-exit v0

    return-void

    :catchall_a0
    move-exception p0

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_a0

    throw p0
.end method

.method public sendWirelessKeyboardShareStatus()V
    .registers 13

    .line 558
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    new-instance v8, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo-IA;)V

    const-string v1, ""

    const/4 v9, 0x1

    move-object v10, v1

    move v1, v9

    :goto_e
    const/4 v11, 0x4

    if-ge v1, v11, :cond_39

    .line 563
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v2, v2, v1

    const-string v3, ""

    if-eqz v2, :cond_1d

    .line 566
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1d
    if-ne v1, v9, :cond_21

    move-object v10, v3

    goto :goto_36

    .line 571
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 575
    :cond_39
    iget v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 576
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    move-result v6

    iget-boolean v7, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    move-object v1, v8

    move-object v5, v10

    .line 575
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->setInfo(ILandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ZZ)V

    .line 588
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    invoke-virtual {v1, v8}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->Equals(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_5e

    .line 589
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    if-nez v2, :cond_5e

    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    if-nez v2, :cond_5e

    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    if-eqz v2, :cond_23f

    :cond_5e
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_73

    .line 591
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 592
    iget v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    if-ne v5, v3, :cond_6e

    const-string/jumbo v5, "true"

    goto :goto_70

    :cond_6e
    const-string v5, "false"

    .line 591
    :goto_70
    invoke-virtual {v2, v4, v5, v9}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_73
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_87

    .line 595
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 596
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v6, :cond_80

    const-string v6, ""

    goto :goto_84

    :cond_80
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    .line 595
    :goto_84
    invoke-virtual {v5, v9, v6, v9}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_87
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_9b

    .line 599
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 600
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v6, :cond_94

    const-string v6, ""

    goto :goto_98

    :cond_94
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    .line 599
    :goto_98
    invoke-virtual {v5, v3, v6, v9}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_9b
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_a5

    .line 603
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v10, v9}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_a5
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_ba

    .line 607
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 608
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    move-result v6

    if-eqz v6, :cond_b5

    const-string/jumbo v6, "true"

    goto :goto_b7

    :cond_b5
    const-string v6, "false"

    .line 607
    :goto_b7
    invoke-virtual {v5, v11, v6, v9}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_ba
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_ce

    .line 611
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v6, 0x5

    .line 612
    iget-boolean v7, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-eqz v7, :cond_c9

    const-string/jumbo v7, "true"

    goto :goto_cb

    :cond_c9
    const-string v7, "false"

    .line 611
    :goto_cb
    invoke-virtual {v5, v6, v7, v9}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 614
    :cond_ce
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    if-eqz v5, :cond_e0

    .line 615
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v7, 0x7

    if-eqz v5, :cond_db

    const-string/jumbo v5, "true"

    goto :goto_dd

    :cond_db
    const-string v5, "false"

    :goto_dd
    invoke-virtual {v6, v7, v5, v9}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 618
    :cond_e0
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    if-eqz v5, :cond_f3

    .line 619
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz v5, :cond_ec

    const-string/jumbo v5, "true"

    goto :goto_ee

    :cond_ec
    const-string v5, "false"

    :goto_ee
    const/16 v7, 0x8

    invoke-virtual {v6, v7, v5, v9}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_f3
    const v5, 0x1040f7f

    if-eqz v2, :cond_12e

    .line 624
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_114

    .line 625
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v6, v9, [Ljava/lang/Object;

    .line 627
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getLastestConnectedName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 625
    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 629
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v6, v2}, Lcom/android/server/input/ToastDialog;->showToastWKSDeviceSwitching(Ljava/lang/String;)V

    goto :goto_12e

    .line 631
    :cond_114
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1040f80

    new-array v7, v9, [Ljava/lang/Object;

    .line 633
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getLastestConnectedName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v4

    .line 631
    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 634
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v6, v2}, Lcom/android/server/input/ToastDialog;->showToastWKSUnregister(Ljava/lang/String;)V

    :cond_12e
    :goto_12e
    if-nez v3, :cond_134

    .line 637
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    if-eqz v2, :cond_151

    :cond_134
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    move-result v2

    if-eqz v2, :cond_151

    .line 638
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    .line 640
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getTabletName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 638
    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 642
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v3, v2}, Lcom/android/server/input/ToastDialog;->showToastWKSDeviceSwitching(Ljava/lang/String;)V

    .line 644
    :cond_151
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    if-eqz v2, :cond_1f7

    .line 645
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040f7a

    new-array v5, v9, [Ljava/lang/Object;

    .line 647
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getTabletName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 645
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 649
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v3, v2}, Lcom/android/server/input/ToastDialog;->showToastWKSParingFail(Ljava/lang/String;)V

    .line 651
    iput-boolean v9, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 652
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 653
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    :cond_180
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 656
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    const-string v3, "SemContinuityService"

    .line 660
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/continuity/SemContinuityManager;

    if-nez v2, :cond_1a3

    const-string v2, "WirelessKeyboardMouseShare"

    const-string v3, "SemContinuityManager is null"

    .line 662
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_1a7

    .line 665
    :cond_1a3
    invoke-virtual {v2, v9}, Lcom/samsung/android/continuity/SemContinuityManager;->getNearbyDeviceCount(I)I

    move-result v2

    .line 667
    :goto_1a7
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1040f7d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1c4

    .line 671
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1040f7e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f2

    .line 674
    :cond_1c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 675
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040f7b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 678
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040f7c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 681
    :goto_1f2
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/input/ToastDialog;->showAlertDialogWKS(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f7
    if-eqz v1, :cond_1fe

    .line 685
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    invoke-virtual {v1, v8}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->setInfo(Ljava/lang/Object;)V

    .line 688
    :cond_1fe
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_205

    const-string v1, ""

    goto :goto_209

    :cond_205
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_209
    const-string v2, "WirelessKeyboardMouseShare"

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " p = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Noti = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    .line 692
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 693
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo v1, "sendWirelessKeyboardShareStatus"

    .line 694
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_23f
    monitor-exit v0

    return-void

    :catchall_241
    move-exception p0

    monitor-exit v0
    :try_end_243
    .catchall {:try_start_3 .. :try_end_243} :catchall_241

    throw p0
.end method

.method public setHostRoleWirelessKeyboardShare()V
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 477
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    :cond_c
    const/4 v1, 0x0

    .line 479
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 480
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 481
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1e
    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo v1, "setHostRoleWirelessKeyboardShare : -> Host role(tablet)"

    .line 483
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public setPogoConnected(Z)V
    .registers 6

    .line 313
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    if-eq v1, p1, :cond_22

    .line 315
    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    const-string v1, "WirelessKeyboardMouseShare"

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPogoConnected mPogoConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-nez p1, :cond_27

    .line 319
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    .line 321
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public setToLocalTablet(Z)Z
    .registers 7

    .line 428
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    if-ne v1, p1, :cond_2d

    const-string p1, "WirelessKeyboardMouseShare"

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not changed remote device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "local tablet"

    goto :goto_1f

    :cond_1c
    const-string/jumbo v2, "remote device"

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    monitor-exit v0

    return p0

    .line 434
    :cond_2d
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_37

    invoke-virtual {p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_ae

    :cond_37
    if-nez p1, :cond_ae

    const-string v1, "WirelessKeyboardMouseShare"

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "last connected device is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_4e

    const-string/jumbo v3, "null."

    goto :goto_65

    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". but not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_aa

    :goto_76
    const/4 v1, 0x4

    if-ge v2, v1, :cond_ae

    .line 439
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v1, v1, v2

    if-eqz v1, :cond_a7

    .line 441
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "WirelessKeyboardMouseShare"

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last connected device must be slot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 447
    :cond_aa
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 448
    monitor-exit v0

    return v2

    :cond_ae
    :goto_ae
    if-eqz p1, :cond_b2

    .line 452
    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 454
    :cond_b2
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v1, :cond_c9

    if-nez p1, :cond_c0

    .line 455
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_c0

    .line 456
    invoke-virtual {p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_c9

    :cond_c0
    if-eqz p1, :cond_c9

    .line 457
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_c9

    .line 458
    invoke-virtual {p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    :cond_c9
    :goto_c9
    const-string v1, "WirelessKeyboardMouseShare"

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try switch remote bt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_dc

    const-string/jumbo p1, "local tablet"

    goto :goto_df

    :cond_dc
    const-string/jumbo p1, "remote device"

    :goto_df
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_ea

    const-string/jumbo p1, "null"

    goto :goto_ee

    :cond_ea
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_ee
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    monitor-exit v0

    return p0

    :catchall_fc
    move-exception p0

    .line 465
    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_3 .. :try_end_fe} :catchall_fc

    throw p0
.end method

.method public startHIDDevice()Z
    .registers 5

    .line 801
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    if-nez v1, :cond_23

    const-string v1, "WirelessKeyboardMouseShare"

    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startHIDDevice mPogoConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 804
    monitor-exit v0

    return p0

    .line 807
    :cond_23
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2d

    .line 808
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 811
    :cond_2d
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_37

    .line 812
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    .line 815
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->registerApp()V

    const-string v1, "WirelessKeyboardMouseShare"

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startHIDDevice mAppRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    monitor-exit v0

    return p0

    :catchall_57
    move-exception p0

    .line 818
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public startHIDDeviceByKey()V
    .registers 2

    .line 797
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopHIDDevice()Z
    .registers 5

    .line 822
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->unregisterApp()V

    const-string v1, "WirelessKeyboardMouseShare"

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopHIDDevice mAppRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 826
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final storeReportLocked(B[BZ)V
    .registers 6

    if-eqz p3, :cond_b

    .line 1720
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    goto :goto_13

    .line 1722
    :cond_b
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    :goto_13
    if-nez v0, :cond_28

    .line 1726
    new-instance v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData-IA;)V

    if-eqz p3, :cond_23

    .line 1728
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_28

    .line 1730
    :cond_23
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1734
    :cond_28
    :goto_28
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    iput-object p0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    return-void
.end method

.method public switchDevice(Ljava/lang/String;I)Z
    .registers 12

    .line 379
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->findBluetoothDeviceFromString(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_d

    move v4, v3

    goto :goto_e

    :cond_d
    move v4, v2

    .line 383
    :goto_e
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_22

    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "switchDevice need to turn on bt."

    .line 384
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    monitor-exit v0

    return v2

    :cond_22
    if-nez v1, :cond_42

    if-nez v4, :cond_42

    .line 389
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    const-string p0, "WirelessKeyboardMouseShare"

    .line 390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not find device : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    monitor-exit v0

    return v2

    .line 394
    :cond_42
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_4a

    const-string/jumbo p1, "null"

    goto :goto_4e

    :cond_4a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4e
    if-nez v1, :cond_54

    const-string/jumbo v5, "null"

    goto :goto_58

    .line 395
    :cond_54
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_58
    const-string v6, "WirelessKeyboardMouseShare"

    .line 396
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "switchDevice : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " index:"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_aa

    .line 398
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_8a

    .line 399
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()Z

    .line 401
    :cond_8a
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_aa

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 402
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 403
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_a3

    move v2, v3

    :cond_a3
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 404
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 405
    monitor-exit v0

    return v3

    .line 409
    :cond_aa
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz p1, :cond_c2

    .line 410
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_bd

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p1

    if-ne p1, v3, :cond_bd

    .line 411
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V

    :cond_bd
    if-nez v4, :cond_c2

    .line 414
    invoke-virtual {p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    :cond_c2
    if-nez v4, :cond_c6

    .line 418
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 420
    :cond_c6
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_cb

    move v2, v3

    :cond_cb
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 421
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 423
    monitor-exit v0

    return v3

    :catchall_d2
    move-exception p0

    .line 424
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_3 .. :try_end_d4} :catchall_d2

    throw p0
.end method

.method public switchRemoteDeviceByKey(Z)Z
    .registers 7

    .line 758
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne p1, v2, :cond_29

    .line 760
    :try_start_8
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 761
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    :cond_15
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 764
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "switchRemoteDevice : -> Host role(tablet)"

    .line 765
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 767
    :cond_29
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_44

    const-string p1, "WirelessKeyboardMouseShare"

    const-string/jumbo v1, "startHIDDeviceByKey need to turn on bt."

    .line 768
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    .line 770
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 792
    :goto_42
    monitor-exit v0

    return v2

    .line 772
    :cond_44
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 773
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 774
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 776
    :cond_53
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 777
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_62

    .line 778
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()Z

    .line 781
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v1

    if-nez v1, :cond_76

    .line 782
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 783
    iput-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 784
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    goto :goto_7d

    .line 786
    :cond_76
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 788
    :goto_7d
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    const/4 p1, 0x0

    .line 789
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setToLocalTablet(Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_87
    move-exception p0

    .line 793
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_8 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public final unregisterApp()V
    .registers 5

    .line 892
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "WirelessKeyboardMouseShare"

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterApp(): mAppRegistered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 896
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 899
    :cond_2b
    iget-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v1, :cond_31

    .line 900
    monitor-exit v0

    return-void

    .line 903
    :cond_31
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v1, :cond_41

    .line 904
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHidDevice;->unregisterApp()Z

    .line 905
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_41
    const/4 v1, 0x0

    .line 908
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 909
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 910
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public updateWirelessKeyboardShareStatus()V
    .registers 9

    .line 700
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, ""

    const/4 v2, 0x1

    move v3, v2

    :goto_7
    const/4 v4, 0x4

    if-ge v3, v4, :cond_31

    .line 704
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v4, v4, v3

    const-string v5, ""

    if-eqz v4, :cond_16

    .line 707
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_16
    if-ne v3, v2, :cond_1a

    move-object v1, v5

    goto :goto_2e

    .line 712
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 716
    :cond_31
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 717
    iget v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3c

    const-string/jumbo v5, "true"

    goto :goto_3e

    :cond_3c
    const-string v5, "false"

    :goto_3e
    const/4 v7, 0x0

    .line 716
    invoke-virtual {v3, v7, v5, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 718
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 719
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_4b

    const-string v5, ""

    goto :goto_4f

    :cond_4b
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    .line 718
    :goto_4f
    invoke-virtual {v3, v2, v5, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 720
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 721
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_5b

    const-string v3, ""

    goto :goto_5f

    :cond_5b
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    .line 720
    :goto_5f
    invoke-virtual {v2, v6, v3, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 722
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 724
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 725
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    move-result v2

    if-eqz v2, :cond_74

    const-string/jumbo v2, "true"

    goto :goto_76

    :cond_74
    const-string v2, "false"

    .line 724
    :goto_76
    invoke-virtual {v1, v4, v2, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 726
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x5

    .line 727
    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-eqz v3, :cond_84

    const-string/jumbo v3, "true"

    goto :goto_86

    :cond_84
    const-string v3, "false"

    .line 726
    :goto_86
    invoke-virtual {v1, v2, v3, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 728
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x7

    .line 729
    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    if-eqz v3, :cond_94

    const-string/jumbo v3, "true"

    goto :goto_96

    :cond_94
    const-string v3, "false"

    .line 728
    :goto_96
    invoke-virtual {v1, v2, v3, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 730
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v2, 0x8

    .line 731
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    if-eqz p0, :cond_a5

    const-string/jumbo p0, "true"

    goto :goto_a7

    :cond_a5
    const-string p0, "false"

    .line 730
    :goto_a7
    invoke-virtual {v1, v2, p0, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo v1, "updateWirelessKeyboardShareStatus"

    .line 732
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    monitor-exit v0

    return-void

    :catchall_b4
    move-exception p0

    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_3 .. :try_end_b6} :catchall_b4

    throw p0
.end method
