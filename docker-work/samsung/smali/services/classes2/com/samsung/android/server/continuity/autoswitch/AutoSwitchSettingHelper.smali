.class public Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;
.super Ljava/lang/Object;
.source "AutoSwitchSettingHelper.java"


# static fields
.field public static final ACTION_SETTINGS_NETWORK_RESET:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

.field public static final ACTION_SETTINGS_SOFT_RESET:Ljava/lang/String; = "android.intent.action.SETTINGS_SOFT_RESET"

.field public static final PERMISSION_SETTINGS_NETWORK_RESET:Ljava/lang/String; = "com.sec.android.settings.permission.NETWORK_RESET"

.field public static final PERMISSION_SETTINGS_SOFT_RESET:Ljava/lang/String; = "com.sec.android.settings.permission.SOFT_RESET"

.field public static final SEM_ACTION_AUTO_SWITCH_MODE_CHANGED:Ljava/lang/String; = "com.samsung.bluetooth.device.action.AUTO_SWITCH_MODE_CHANGED"

.field public static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_AutoSwitchSettingHelper"


# instance fields
.field public final mAutoSwitchModeChangedConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mAutoSwitchableDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;",
            ">;"
        }
    .end annotation
.end field

.field public final mBtStateReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mIsAutoSwitchModeEnabled:Z

.field public mIsRegisterBtStateReceiver:Z

.field public final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$8gtLZZFjUHdI1iFq0ZdrSFUx4SU(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->lambda$checkAutoSwitchEnabled$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i6iz1lH6p5fysrPyr4GEqW_s15M(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->lambda$checkAutoSwitchEnabled$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoSwitchableDevices(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddDevice(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckAutoSwitchEnabled(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->checkAutoSwitchEnabled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDevice(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAutoSwitchModeEnabled(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setAutoSwitchModeEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mBtStateReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$2;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchModeChangedConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public static getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 94
    :cond_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 96
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_f
    return-object v0
.end method

.method private synthetic lambda$checkAutoSwitchEnabled$0(Ljava/util/ArrayList;)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->checkAutoSwitchEnabled(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setStandAloneBleMode(Z)V

    return-void
.end method

.method private synthetic lambda$checkAutoSwitchEnabled$1()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb;->retrieveBackupDevices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", bt="

    const-string v2, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    if-eqz v0, :cond_37

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addDevice - already exist name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/continuity/common/Utils;->secureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/continuity/common/Utils;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 106
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDevice - (added) name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/continuity/common/Utils;->secureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/Utils;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_66
    return-void
.end method

.method public final checkAutoSwitchEnabled()V
    .registers 2

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->unregisterBtStateReceiver()V

    .line 167
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    invoke-static {v0}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final checkAutoSwitchEnabled(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;",
            ">;)V"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAutoSwitchEnabled - deviceList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 122
    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_35

    goto :goto_1e

    .line 126
    :cond_35
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 127
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    goto :goto_1e

    .line 129
    :cond_40
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    goto :goto_1e

    .line 132
    :cond_44
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setAutoSwitchModeEnabled()V

    return-void
.end method

.method public disableAutoSwitchDevices()V
    .registers 4

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableAutoSwitchDevices - mAutoSwitchableDevices size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 214
    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 216
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    goto :goto_22

    :cond_44
    return-void
.end method

.method public getAutoSwitchDeviceAddress()Ljava/lang/String;
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 227
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    if-nez p0, :cond_16

    goto :goto_1a

    .line 228
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    return-object v1
.end method

.method public isAutoSwitchModeEnabled()Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    return p0
.end method

.method public final registerBtStateReceiver()V
    .registers 4

    .line 178
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    if-nez v0, :cond_1d

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mBtStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    :cond_1d
    return-void
.end method

.method public final registerObserver()V
    .registers 6

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.bluetooth.device.action.AUTO_SWITCH_MODE_CHANGED"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sec.android.settings.permission.NETWORK_RESET"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v1, p0, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .registers 3

    .line 113
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeDevice - (removed) name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/continuity/common/Utils;->secureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bt="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/continuity/common/Utils;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    .line 114
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public final setAutoSwitchModeEnabled()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 138
    :goto_b
    iget-boolean v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    if-eq v0, v1, :cond_35

    .line 139
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoSwitchModeEnabled - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchModeChangedConsumer:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method public final setStandAloneBleMode(Z)V
    .registers 5

    const-string/jumbo p0, "ro.factory.factory_binary"

    const-string v0, "Unknown"

    .line 146
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "factory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "setStandAloneBleMode - FactoryBinary, ignore!"

    .line 147
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_27

    const-string/jumbo p0, "setStandAloneBleMode - null bluetoothAdapter"

    .line 153
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStandAloneBleMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->semSetStandAloneBleMode(Z)Z

    move-result p0

    if-nez p0, :cond_63

    const-string/jumbo p0, "setStandAloneBleMode - Failed to set StandAlone Ble Mode"

    .line 158
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_48} :catch_49

    goto :goto_63

    :catch_49
    move-exception p0

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStandAloneBleMode - SecurityException "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_63
    return-void
.end method

.method public start()V
    .registers 4

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    if-nez v0, :cond_f

    const-string/jumbo p0, "start - null bluetoothAdapter"

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_f
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    const-string/jumbo v0, "start - BleEnabled true"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setStandAloneBleMode(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->checkAutoSwitchEnabled()V

    goto :goto_29

    .line 56
    :cond_23
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->registerBtStateReceiver()V

    .line 57
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setStandAloneBleMode(Z)V

    .line 59
    :goto_29
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->registerObserver()V

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->unregisterObserver()V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->unregisterBtStateReceiver()V

    return-void
.end method

.method public final unregisterBtStateReceiver()V
    .registers 2

    .line 188
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mBtStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_e
    return-void
.end method

.method public final unregisterObserver()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
