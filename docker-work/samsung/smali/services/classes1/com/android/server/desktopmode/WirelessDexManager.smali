.class public Lcom/android/server/desktopmode/WirelessDexManager;
.super Ljava/lang/Object;
.source "WirelessDexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/WirelessDexManager$StateListener;,
        Lcom/android/server/desktopmode/WirelessDexManager$Receiver;
    }
.end annotation


# static fields
.field public static final DESKTOP_MOUSE_ICON_BIG:I = 0x278e

.field public static final DESKTOP_MOUSE_ICON_DEFAULT:I = 0x2789

.field public static final DESKTOP_MOUSE_ICON_HORIZONTAL_DOUBLE_ARROW:I = 0x278a

.field public static final DESKTOP_MOUSE_ICON_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x278c

.field public static final DESKTOP_MOUSE_ICON_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x278d

.field public static final DESKTOP_MOUSE_ICON_VERTICAL_DOUBLE_ARROW:I = 0x278b

.field public static final DISABLE_LOW_LATENCY_MODE_DELAY:I = 0x1388

.field public static final ENABLE_LOW_LATENCY_MODE_INTERVAL:I = 0x3e8

.field public static final FREQUENCY_5G_MAX:I = 0x16e9

.field public static final FREQUENCY_5G_MIN:I = 0x1428

.field public static final INVALID:I = -0x1

.field public static final NOT_SUPPORTED:I = 0x0

.field public static final SUPPORTED:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static final TV_TIZEN_VERSION_15_YEAR:Ljava/lang/String; = "TIZEN-WFD-SINK"

.field public static final WFD_SEC_CONNECTION_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final WFD_SEC_DEX_MOUSE_SUPPORT:Ljava/lang/String; = "wfd_sec_dex_mouse_support"

.field public static final WFD_SEC_DEX_SUPPORT:Ljava/lang/String; = "wfd_sec_dex_support"

.field public static final WFD_SEC_LOW_LATENCY_MODE:Ljava/lang/String; = "wfd_sec_low_latency_mode"

.field public static final WFD_SEC_OFF:Ljava/lang/String; = "off"

.field public static final WFD_SEC_ON:Ljava/lang/String; = "on"

.field public static final WFD_SEC_TV_TIZEN_VER:Ljava/lang/String; = "tizenVer"

.field public static final WFD_SEC_UIBC_MOUSE_CURSOR_IDX:Ljava/lang/String; = "wfd_sec_uibc_mouse_cursor_idx"

.field public static final WFD_SEC_WEAK_NETWORK_KEY:Ljava/lang/String; = "notify"

.field public static final WFD_SEC_WEAK_NETWORK_VALUE:Ljava/lang/String; = "weak_network"

.field public static final WFD_SEC_YES:Ljava/lang/String; = "yes"

.field public static final WIFI_DISPLAY_STATE_OFF:I


# instance fields
.field public mConnectedDeviceName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mDesktopDisplayId:I

.field public final mDesktopPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mFrequencyValue:I

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsLowLatencyMode:Z

.field public mIsPointerEventListener:Z

.field public mIsPointerIconListener:Z

.field public mIsWirelessDexEntered:Z

.field public mMotionEventStartTime:J

.field public final mPointerIconChangedListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

.field public mPointerIconSync:I

.field public mReducedLatency:I

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mRunnableDisableLowLatencyMode:Ljava/lang/Runnable;

.field public final mRunnableEnableLowLatencyMode:Ljava/lang/Runnable;

.field public mSemWifiDisplayParameterListener:Landroid/hardware/display/SemWifiDisplayParameterListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mTvTizenVersion:Ljava/lang/String;

.field public final mUiManager:Lcom/android/server/desktopmode/UiManager;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$6FMPsUddn7d-uDPevnfqHQRENlg(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$hYqPE6avxBgX8gBjSlfHK17VxZI(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->lambda$new$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/WirelessDexManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopPointerEventListener(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputManager(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/hardware/input/InputManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mInputManager:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsLowLatencyMode(Lcom/android/server/desktopmode/WirelessDexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPointerEventListener(Lcom/android/server/desktopmode/WirelessDexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerEventListener:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPointerIconListener(Lcom/android/server/desktopmode/WirelessDexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerIconListener:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWirelessDexEntered(Lcom/android/server/desktopmode/WirelessDexManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionEventStartTime(Lcom/android/server/desktopmode/WirelessDexManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mMotionEventStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPointerIconChangedListener(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconChangedListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPointerIconSync(Lcom/android/server/desktopmode/WirelessDexManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunnableDisableLowLatencyMode(Lcom/android/server/desktopmode/WirelessDexManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mRunnableDisableLowLatencyMode:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunnableEnableLowLatencyMode(Lcom/android/server/desktopmode/WirelessDexManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mRunnableEnableLowLatencyMode:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/WirelessDexManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTvTizenVersion(Lcom/android/server/desktopmode/WirelessDexManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/WirelessDexManager;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedDeviceName(Lcom/android/server/desktopmode/WirelessDexManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopDisplayId(Lcom/android/server/desktopmode/WirelessDexManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFrequencyValue(Lcom/android/server/desktopmode/WirelessDexManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mFrequencyValue:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsLowLatencyMode(Lcom/android/server/desktopmode/WirelessDexManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPointerEventListener(Lcom/android/server/desktopmode/WirelessDexManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerEventListener:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPointerIconListener(Lcom/android/server/desktopmode/WirelessDexManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerIconListener:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWirelessDexEntered(Lcom/android/server/desktopmode/WirelessDexManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMotionEventStartTime(Lcom/android/server/desktopmode/WirelessDexManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mMotionEventStartTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPointerIconSync(Lcom/android/server/desktopmode/WirelessDexManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReducedLatency(Lcom/android/server/desktopmode/WirelessDexManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mReducedLatency:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTvTizenVersion(Lcom/android/server/desktopmode/WirelessDexManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveNotifications(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->removeNotifications()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConnectedDeviceName(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->setConnectedDeviceName()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWirelessDeXPointerIcon(Lcom/android/server/desktopmode/WirelessDexManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/WirelessDexManager;->setWirelessDeXPointerIcon(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowQosDialog(Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/WirelessDexManager;->showQosDialog(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowToastToNotifyNetworkDisconnection(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->showToastToNotifyNetworkDisconnection()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowToastWeakNetwork(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->showToastWeakNetwork()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/WirelessDexManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/WirelessDexManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/UiManager;Landroid/hardware/display/DisplayManager;Landroid/hardware/input/InputManager;Lcom/android/server/ServiceThread;Lcom/android/server/wm/WindowManagerService;)V
    .registers 10

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerEventListener:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerIconListener:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mReducedLatency:I

    .line 110
    iput v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    .line 111
    iput v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopDisplayId:I

    .line 112
    iput v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mFrequencyValue:I

    const-string v0, ""

    .line 114
    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mRunnableEnableLowLatencyMode:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mRunnableDisableLowLatencyMode:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/android/server/desktopmode/WirelessDexManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/WirelessDexManager$1;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mSemWifiDisplayParameterListener:Landroid/hardware/display/SemWifiDisplayParameterListener;

    .line 207
    new-instance v0, Lcom/android/server/desktopmode/WirelessDexManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/WirelessDexManager$2;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconChangedListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    .line 216
    new-instance v0, Lcom/android/server/desktopmode/WirelessDexManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/WirelessDexManager$3;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 248
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    .line 250
    iput-object p4, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 251
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mSemWifiDisplayParameterListener:Landroid/hardware/display/SemWifiDisplayParameterListener;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0}, Landroid/hardware/display/DisplayManager;->semRegisterWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;Landroid/os/Handler;)V

    .line 253
    iput-object p5, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 254
    iput-object p7, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 255
    iput-object p2, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 256
    new-instance p1, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;

    invoke-direct {p1, p0, v0}, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/WirelessDexManager$StateListener-IA;)V

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 257
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mHandler:Landroid/os/Handler;

    .line 258
    iput-object p3, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 259
    new-instance p1, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;

    invoke-direct {p1, p0, v0}, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/WirelessDexManager$Receiver-IA;)V

    invoke-virtual {p1}, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->register()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->setLowLatencyModeEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->setLowLatencyModeEnabled(Z)V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 4

    .line 358
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/desktopmode/WirelessDexManager;->TAG:Ljava/lang/String;

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_b
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 360
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 361
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    .line 362
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 363
    :cond_27
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    :cond_2c
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrequencyValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mFrequencyValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsLowLatencyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsWirelessDexEntered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPointerIconSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mReducedLatency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mReducedLatency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTvTizenVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getConnectedDeviceAddress()Ljava/lang/String;
    .registers 1

    .line 348
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 349
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_11
    const-string p0, ""

    :goto_13
    return-object p0
.end method

.method public final isQosDialogClosedDevice()Z
    .registers 5

    .line 337
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wireless_dex_qos_notification_deleted"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_24

    sget-object v1, Lcom/android/server/desktopmode/WirelessDexManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v1, 0x0

    if-nez v0, :cond_28

    return v1

    .line 343
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->getConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    .line 344
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    return v1
.end method

.method public final removeNotifications()V
    .registers 2

    .line 436
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    return-void
.end method

.method public final setConnectedDeviceName()V
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 354
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, ""

    :goto_13
    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDefaultSettings()V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wireless_dex"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 369
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "wireless_dex_scan_device"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setLowLatencyModeEnabled(Z)V
    .registers 3

    .line 289
    iget-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    if-eq v0, p1, :cond_15

    .line 290
    iput-boolean p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    if-eqz p1, :cond_c

    const-string/jumbo p1, "on"

    goto :goto_f

    :cond_c
    const-string/jumbo p1, "off"

    :goto_f
    const-string/jumbo v0, "wfd_sec_low_latency_mode"

    .line 291
    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/WirelessDexManager;->setWifiDisplayParameters(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public final setWifiDisplayParameters(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 296
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/desktopmode/WirelessDexManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiDisplayParameters(key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_28
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-direct {v0, p1, p2}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo p1, "setparams"

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManager;->semRequestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z

    return-void
.end method

.method public final setWirelessDeXPointerIcon(I)V
    .registers 3

    packed-switch p1, :pswitch_data_1e

    goto :goto_12

    :pswitch_4
    const/16 p1, 0x3f8

    goto :goto_12

    :pswitch_7
    const/16 p1, 0x3f9

    goto :goto_12

    :pswitch_a
    const/16 p1, 0x3f7

    goto :goto_12

    :pswitch_d
    const/16 p1, 0x3f6

    goto :goto_12

    :pswitch_10
    const/16 p1, 0x3e8

    .line 285
    :goto_12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wfd_sec_uibc_mouse_cursor_idx"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/WirelessDexManager;->setWifiDisplayParameters(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x2789
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_4
        :pswitch_10
    .end packed-switch
.end method

.method public final showQosDialog(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 314
    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->isQosDialogClosedDevice()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 315
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    const-string v2, "TIZEN-WFD-SINK"

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_30

    .line 319
    :cond_1a
    iget v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mFrequencyValue:I

    const/16 v2, 0x1428

    if-lt v0, v2, :cond_24

    const/16 v2, 0x16e9

    if-le v0, v2, :cond_3b

    .line 321
    :cond_24
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_3b

    .line 317
    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final showToastToNotifyNetworkDisconnection()V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 329
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/server/desktopmode/WirelessDexManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] has been disconnected by something other than the user request."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_29
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    const v1, 0x104042b

    .line 332
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    aput-object p0, v2, v3

    .line 331
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method public final showToastWeakNetwork()V
    .registers 6

    .line 304
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 307
    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    const v2, 0x1040449

    .line 308
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    const v4, 0x1040be9

    .line 309
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 308
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 307
    invoke-static {v0, p0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_40
    return-void
.end method
