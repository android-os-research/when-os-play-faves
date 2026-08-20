.class public Lcom/android/server/companion/presence/BleCompanionDeviceScanner;
.super Ljava/lang/Object;
.source "BleCompanionDeviceScanner.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;,
        Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;
    }
.end annotation


# static fields
.field public static final NOTIFY_DEVICE_LOST_DELAY:I = 0x1d4c0

.field public static final RSSI_FILTER_THRESHOLD:I = -0x4b

.field public static final SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

.field public static final TAG:Ljava/lang/String; = "CompanionDevice_PresenceMonitor_BLE"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field public mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

.field public final mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

.field public final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field public mScanning:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmScanning(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckBleState(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->checkBleState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceFound(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceLost(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnameForBleScanCallbackType(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->nameForBleScanCallbackType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 449
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x6

    .line 450
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 451
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/16 v1, 0x65

    .line 453
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/16 v1, -0x4b

    .line 454
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    .line 325
    new-instance v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 112
    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 113
    iput-object p2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    .line 114
    new-instance p1, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    invoke-direct {p1, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    return-void
.end method

.method public static nameForBleScanCallbackType(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    const-string v0, "Unknown"

    goto :goto_14

    :cond_c
    const-string v0, "MATCH_LOST"

    goto :goto_14

    :cond_f
    const-string v0, "FIRST_MATCH"

    goto :goto_14

    :cond_12
    const-string v0, "ALL_MATCHES"

    .line 419
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nameForBleScanErrorCode(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_32

    const-string v0, "Unknown"

    goto :goto_17

    :pswitch_6
    const-string v0, "SCANNING_TOO_FREQUENTLY"

    goto :goto_17

    :pswitch_9
    const-string v0, "OUT_OF_HARDWARE_RESOURCES"

    goto :goto_17

    :pswitch_c
    const-string v0, "FEATURE_UNSUPPORTED"

    goto :goto_17

    :pswitch_f
    const-string v0, "INTERNAL_ERROR"

    goto :goto_17

    :pswitch_12
    const-string v0, "APPLICATION_REGISTRATION_FAILED"

    goto :goto_17

    :pswitch_15
    const-string v0, "ALREADY_STARTED"

    .line 446
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static nameForBtState(I)Ljava/lang/String;
    .registers 3

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkBleState()V
    .registers 3

    .line 158
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 160
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 164
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_15

    :cond_f
    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_16

    :cond_15
    return-void

    :cond_16
    if-eqz v0, :cond_27

    .line 171
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_23

    return-void

    .line 178
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->startScan()V

    goto :goto_2d

    .line 182
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->stopScanIfNeeded()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    :goto_2d
    return-void
.end method

.method public final enforceInitialized()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_5

    return-void

    .line 322
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_18

    .line 124
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 126
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->checkBleState()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V

    .line 129
    iget-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p1, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    return-void

    .line 122
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is already initialized"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 273
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 277
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;->onBleCompanionDeviceFound(I)V

    goto :goto_e

    :cond_24
    return-void
.end method

.method public final notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 285
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 286
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 290
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;->onBleCompanionDeviceLost(I)V

    goto :goto_e

    :cond_24
    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .registers 3

    .line 149
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 150
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->restartScan()V

    goto :goto_18

    .line 152
    :cond_e
    iget-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    new-instance p2, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_18
    return-void
.end method

.method public final registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V
    .registers 4

    .line 295
    new-instance v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    .line 313
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 314
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 315
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final restartScan()V
    .registers 2

    .line 134
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 137
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_8

    return-void

    .line 142
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->stopScanIfNeeded()V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->startScan()V

    return-void
.end method

.method public final startScan()V
    .registers 5

    .line 189
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 191
    iget-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    if-nez v0, :cond_85

    .line 193
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_7d

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v1}, Lcom/android/server/companion/AssociationStore;->getAssociations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 200
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_1a

    .line 204
    :cond_2d
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 206
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 209
    :cond_37
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    return-void

    .line 219
    :cond_3e
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 222
    invoke-virtual {v3, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v2

    .line 224
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_68
    const-string v0, "CompanionDevice_PresenceMonitor_BLE"

    const-string/jumbo v2, "semSetScanFilterRssiThreshold to:-75"

    .line 227
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    sget-object v2, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    iget-object v3, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    return-void

    .line 193
    :cond_7d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "BLE is not available."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_85
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scan is already in progress."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopScanIfNeeded()V
    .registers 4

    .line 234
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 237
    iget-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    if-nez v0, :cond_8

    return-void

    .line 248
    :cond_8
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopScan semIsBleEnabled state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDevice_PresenceMonitor_BLE"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_34

    .line 257
    :try_start_26
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception v0

    const-string v1, "Exception while stopping BLE scanning"

    .line 261
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_34
    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    return-void
.end method
