.class public Lcom/android/server/desktopmode/DockManager;
.super Ljava/lang/Object;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DockManager$DockMsgState;,
        Lcom/android/server/desktopmode/DockManager$DockHandler;
    }
.end annotation


# static fields
.field public static final MSG_DOCK_ERROR:I = 0xdd

.field public static final MSG_DOCK_ERROR_UNDEFINED:I = 0xdc

.field public static final MSG_DOCK_EXTRA_ERROR_UPDATED:I = 0xf1

.field public static final MSG_DOCK_EXTRA_UNDEFINED:I = 0xf0

.field public static final MSG_DOCK_REQUEST_CREATE:I = 0xc9

.field public static final MSG_DOCK_REQUEST_DESTROY:I = 0xcb

.field public static final MSG_DOCK_REQUEST_POWER_INFO:I = 0xca

.field public static final MSG_DOCK_REQUEST_UNDEFINED:I = 0xc8

.field public static final MSG_DOCK_REQUEST_UPDATE_DOCK_LIB_STATUS:I = 0x96

.field public static final MSG_DOCK_RESPONSE_POWER_INFO:I = 0xd3

.field public static final MSG_DOCK_RESPONSE_UNDEFINED:I = 0xd2

.field public static final MSG_DOCK_VERSION_DSVERSION_UPDATED:I = 0xe7

.field public static final MSG_DOCK_VERSION_UNDEFINED:I = 0xe6

.field public static final MSG_TYPE_ERROR:I = 0x66

.field public static final MSG_TYPE_EXTRA:I = 0x68

.field public static final MSG_TYPE_REQUEST:I = 0x64

.field public static final MSG_TYPE_RESPONSE:I = 0x65

.field public static final MSG_TYPE_VERSION:I = 0x67

.field public static final NO_CHARGER_POWER:I = 0x0

.field public static final TAG:Ljava/lang/String;

.field public static final sDSVersionForDefault:Ljava/lang/String; = "####"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

.field public mDockChargerPower:I

.field public mDockChargerSupport:I

.field public mDockControlLibError:Landroid/util/SparseBooleanArray;

.field public mDockVersion:Ljava/lang/String;

.field public mDockVersionExtra:Ljava/lang/String;

.field public mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

.field public mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

.field public mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

.field public mLastDockVersion:Ljava/lang/String;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDockChargerPower(Lcom/android/server/desktopmode/DockManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockControlLibError(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmISDCDeviceController(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastDockControlLibMsgState(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDockChargerPower(Lcom/android/server/desktopmode/DockManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockChargerSupport(Lcom/android/server/desktopmode/DockManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockVersionExtra(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateDockControlLib(Lcom/android/server/desktopmode/DockManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DockManager;->createDockControlLib(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdestroyDockControlLib(Lcom/android/server/desktopmode/DockManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DockManager;->destroyDockControlLib(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitialize(Lcom/android/server/desktopmode/DockManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DockManager;->initialize()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestConnectedPowerChargerInfoUpdate(Lcom/android/server/desktopmode/DockManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestUpdateDockLibStatus(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DockManager;->requestUpdateDockLibStatus(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDockLibStatus(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DockManager;->updateDockLibStatus(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDockVersionToSettings(Lcom/android/server/desktopmode/DockManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DockManager;->updateDockVersionToSettings(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smdockControlErrorToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DockManager;->isDexPadConnected(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DockManager;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V
    .registers 10

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 79
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    .line 84
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 88
    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    .line 91
    new-instance v0, Lcom/android/server/desktopmode/DockManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DockManager$1;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 121
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    .line 123
    iput-object p3, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 124
    invoke-interface {p3, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 126
    new-instance p3, Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p0, p2}, Lcom/android/server/desktopmode/DockManager$DockHandler;-><init>(Lcom/android/server/desktopmode/DockManager;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 127
    new-instance p2, Lcom/android/server/desktopmode/DockManager$DockMsgState;

    const/16 v1, 0xc8

    const/16 v2, 0xd2

    const/16 v3, 0xdc

    const/16 v4, 0xe6

    const/16 v5, 0xf0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/DockManager$DockMsgState;-><init>(IIIII)V

    iput-object p2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    .line 131
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    .line 133
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 134
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 135
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/android/server/desktopmode/DockManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DockManager$2;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static dockControlErrorToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_28

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "SET_FAST_CHARGING_UVDM_FAILED"

    return-object p0

    :pswitch_18
    const-string p0, "CHARGING_MODE_UPDATE_UVDM_FAILED"

    return-object p0

    :pswitch_1b
    const-string p0, "CONNECTED_POWER_CHARGER_INFO_UPDATE_UVDM_FAILED"

    return-object p0

    :pswitch_1e
    const-string p0, "SET_FAST_CHARGING_DEX_BUSY"

    return-object p0

    :pswitch_21
    const-string p0, "CONNECTED_POWER_CHARGER_INFO_UPDATE_DEX_BUSY"

    return-object p0

    :pswitch_24
    const-string p0, "FAN_LEVEL_CONTROL_DEX_BUSY"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch -0x6
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static isDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    .registers 1

    .line 331
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final createDockControlLib(I)V
    .registers 7

    const v0, 0xa029

    const v1, 0xa020

    if-eq p1, v1, :cond_17

    if-ne p1, v0, :cond_b

    goto :goto_17

    .line 276
    :cond_b
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_5a

    sget-object p0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string p1, "createDockControlLib is not supported"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 202
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    if-nez v1, :cond_22

    .line 203
    new-instance v1, Lcom/android/server/desktopmode/DockManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DockManager$3;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    .line 265
    :cond_22
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    if-nez v1, :cond_5a

    .line 266
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_40

    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDockControlLib dockType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_40
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    const/16 v2, 0x64

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    .line 268
    new-instance v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    invoke-direct {v1, v2, p1, v3}, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;-><init>(Landroid/content/Context;ILcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    if-ne p1, v0, :cond_5a

    .line 272
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final destroyDockControlLib(I)V
    .registers 6

    .line 281
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 282
    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    .line 284
    :cond_7
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    if-eqz v0, :cond_31

    .line 285
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string v2, "destroyDockControlLib"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_16
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    const/16 v2, 0x64

    const/16 v3, 0xcb

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->destroy()V

    .line 288
    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    const v0, 0xa029

    if-ne p1, v0, :cond_31

    .line 291
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->setDockLowChargerState(I)V

    :cond_31
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 343
    const-class v0, Lcom/android/server/desktopmode/DockManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDockVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDockVersionExtra="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDockChargerPower="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDockChargerSupport="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastDockVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 352
    :goto_b4
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->-$$Nest$fgetmMsgState(Lcom/android/server/desktopmode/DockManager$DockMsgState;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_de

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastDockControlLibMsgState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 355
    :cond_de
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 356
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final initialize()V
    .registers 3

    .line 335
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string v1, "DockManager initialize()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    const/4 v0, 0x0

    .line 338
    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 339
    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    return-void
.end method

.method public final requestConnectedPowerChargerInfoUpdate()V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final requestCreateDockControlLib(I)V
    .registers 4

    .line 297
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final requestDestroyDockControlLib(I)V
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final requestUpdateDockLibStatus(Ljava/lang/String;)V
    .registers 5

    .line 154
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestUpdateDockLibStatus, reason - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1b
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    const/16 v0, 0x96

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 157
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updateDockLibStatus(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 161
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_67

    .line 162
    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDockLibStatus(), isDesktopDockConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDexPadConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPrevDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDockChargerPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDockChargerSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_67
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v0

    const/16 v1, 0x2711

    const v2, 0xa020

    if-ne v0, v1, :cond_7a

    .line 172
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DockManager;->requestCreateDockControlLib(I)V

    goto :goto_ba

    .line 173
    :cond_7a
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v0

    const v1, 0xa029

    if-eqz v0, :cond_8b

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DockManager;->requestCreateDockControlLib(I)V

    goto :goto_ba

    .line 175
    :cond_8b
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 176
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 177
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DockManager;->requestDestroyDockControlLib(I)V

    goto :goto_ba

    .line 178
    :cond_a3
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DockManager;->requestDestroyDockControlLib(I)V

    :cond_ba
    :goto_ba
    return-void
.end method

.method public final updateDockVersionToSettings(Z)V
    .registers 5

    if-eqz p1, :cond_47

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/sys/class/dp_sec/dex_ver"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/sys/class/sec/ccic/acc_device_version"

    .line 186
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 187
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    if-eqz p1, :cond_42

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 190
    :cond_42
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    goto :goto_4a

    :cond_47
    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 194
    :goto_4a
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_67

    sget-object p1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDockVersionToSettings(), mDockVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_67
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    const-string v0, "dock_version"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
