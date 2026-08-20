.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$DexEmulator;,
        Lcom/android/server/display/DisplayManagerService$PresentationDisplay;,
        Lcom/android/server/display/DisplayManagerService$Clock;,
        Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;,
        Lcom/android/server/display/DisplayManagerService$BrightnessPair;,
        Lcom/android/server/display/DisplayManagerService$DeviceStateListener;,
        Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;,
        Lcom/android/server/display/DisplayManagerService$LocalService;,
        Lcom/android/server/display/DisplayManagerService$BinderService;,
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$Injector;,
        Lcom/android/server/display/DisplayManagerService$SyncRoot;,
        Lcom/android/server/display/DisplayManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DISPLAY_MODE_RETURNS_PHYSICAL_REFRESH_RATE:J = 0xa29ae4eL

.field public static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field public static final MSG_DELIVER_DEVICE_EVENT:I = 0x14

.field public static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field public static final MSG_DELIVER_DISPLAY_EVENT_FRAME_RATE_OVERRIDE:I = 0x7

.field public static final MSG_DELIVER_DISPLAY_GROUP_EVENT:I = 0x8

.field public static final MSG_DELIVER_VOLUME_EVENT:I = 0x16

.field public static final MSG_DELIVER_VOLUME_KEY_EVENT:I = 0x17

.field public static final MSG_DELIVER_WIFIDISPLAY_PARAMETER:I = 0x19

.field public static final MSG_INITIALIZE_WIFIDISPLAY_MCF_MANAGER:I = 0x1c

.field public static final MSG_LOAD_BRIGHTNESS_CONFIGURATIONS:I = 0x6

.field public static final MSG_PRESENTATION_DISPLAY_INFO:I = 0x15

.field public static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field public static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTERS:I = 0x1

.field public static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field public static final MSG_UPDATE_MIRRORED_SURFACE:I = 0x1e

.field public static final MSG_UPDATE_VIEWPORT:I = 0x5

.field public static final PROP_DEFAULT_DISPLAY_TOP_INSET:Ljava/lang/String; = "persist.sys.displayinset.top"

.field public static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final THRESHOLD_FOR_REFRESH_RATES_DIVISORS:F = 9.0E-4f

.field public static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L


# instance fields
.field public dateFormat:Ljava/text/SimpleDateFormat;

.field public final mAllowNonNativeRefreshRateOverride:Z

.field public mAreUserDisabledHdrTypesAllowed:Z

.field public final mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

.field public mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mConnectedExternalDisplayId:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDefaultDisplayDefaultColorMode:I

.field public mDefaultDisplayTopInset:I

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

.field public final mDexEmulator:Lcom/android/server/display/DisplayManagerService$DexEmulator;

.field public final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayBlanker:Lcom/android/server/display/DisplayBlanker;

.field public final mDisplayBrightnessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayBrightnesses:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSyncRoot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayManagerService$BrightnessPair;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

.field public mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public final mDisplayPowerControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayPowerController;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayStateLimitLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayStateLimits:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSyncRoot"
        }
    .end annotation
.end field

.field public final mDisplayStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSyncRoot"
        }
    .end annotation
.end field

.field public final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayWindowPolicyControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/companion/virtual/IVirtualDevice;",
            "Landroid/window/DisplayWindowPolicyController;",
            ">;>;"
        }
    .end annotation
.end field

.field public mDssController:Lcom/android/server/DssController;

.field public mDualScreenPolicy:I

.field public mEnabledDexDisplay:Lcom/android/server/display/LogicalDisplay;

.field public mFlexibleDisplayThread:Landroid/os/HandlerThread;

.field public final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public final mIdleModeReceiver:Landroid/content/BroadcastReceiver;

.field public final mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

.field public mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public mIsDocked:Z

.field public mIsDreaming:Z

.field public final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public final mMaximumBrightnessCurve:Landroid/hardware/display/Curve;

.field public final mMaximumBrightnessSpline:Landroid/util/Spline;

.field public mMinimalPostProcessingAllowed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSyncRoot"
        }
    .end annotation
.end field

.field public final mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

.field public final mMinimumBrightnessSpline:Landroid/util/Spline;

.field public mNeedSkipDozeState:Z

.field public mOnlyCore:Z

.field public mPendingTraversal:Z

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public mPowerHandler:Landroid/os/Handler;

.field public mPresentationDisplays:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/display/DisplayManagerService$PresentationDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public final mRequestDisplayStateLock:Ljava/lang/Object;

.field public mRequestedStateLimitForEarlyWakeUp:I

.field public mSafeMode:Z

.field public final mScreenExtendedBrightnessRangeMaximum:F

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

.field public mStableDisplaySize:Landroid/graphics/Point;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mSystemReady:Z

.field public final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field public final mUiHandler:Landroid/os/Handler;

.field public mUserDisabledHdrTypes:[I

.field public mUserPreferredMode:Landroid/view/Display$Mode;

.field public final mViewports:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSyncRoot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field public mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field public mVolumeController:Lcom/android/server/display/VolumeController;

.field public final mWideColorSpace:Landroid/graphics/ColorSpace;

.field public mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field public mWifiDisplayScanRequestCount:I

.field public final mWifiReceiver:Landroid/content/BroadcastReceiver;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$-6L_Y6ZPnvQgCBeVuU-f2WbsKfc(Lcom/android/server/display/DisplayManagerService;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$performTraversalLocked$10(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4EqyJtbY6M88VUF_w6by8gmbLKM(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->lambda$addPresentationDisplay$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$6YNzI_ht4mNUhKBAFUn-U8rjvZs(Ljava/io/PrintWriter;Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$dumpInternal$15(Ljava/io/PrintWriter;Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7hYBvdm6kWx1NPE-EtbTnj6tXHE(Lcom/android/server/display/DisplayManagerService;Landroid/companion/virtual/IVirtualDevice;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$handleLogicalDisplayRemovedLocked$5(Landroid/companion/virtual/IVirtualDevice;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8l8-5rjlgizMs972wduhsnvV7I4(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$dumpInternal$14(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9jibzSzCpCm04vwYt9P8cw2clZU(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->lambda$removePresentationDisplay$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$BxHWBwpZG8Xyvlzub7TU4RGpOhM(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$handleLogicalDisplaySwappedLocked$7(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BzumbuQ4kDzj6r64tvp0IoCZQtc(Lcom/android/server/display/DisplayManagerService;[ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$setUserDisabledHdrTypesInternal$1([ILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CA1eJ4CWfP-JJv2TXNHO3_6zF5k(Ljava/io/PrintWriter;Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$dumpInternal$16(Ljava/io/PrintWriter;Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HCeyadPRHKih1z6E835HZFogGP4(Lcom/android/server/display/DisplayManagerService;[ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$setAreUserDisabledHdrTypesAllowedInternal$2([ILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HfR64IfFZ3AunROaoGkUrsheVDc(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleBrightnessAnimation(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LMpw6h1mjggvMu498NG1F3ofAYg(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->lambda$handleLogicalDisplayAddedLocked$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$NILdYAR2aOL2yDuxZECfjLJEFEg(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$addDisplayPowerControllerLocked$18(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0NzCSo9ewYYgQaQ8wZwdVtlIr8(Lcom/android/server/display/DisplayManagerService;ZIILcom/android/server/display/LogicalDisplay;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->lambda$onUserSwitching$0(ZIILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ret6RwiqCIgySI2Vt1kaLxrRAkU(Lcom/android/server/display/DisplayManagerService;ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$loadBrightnessConfigurations$9(ILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wogu778S3mmURZubIoCNylLodrY(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$X-DTfBNau6Kk93oHzXn-4d0dsj4(Lcom/android/server/display/DisplayManagerService;Ljava/util/List;Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$setDisplayStateLimitInternal$17(Ljava/util/List;Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ymyn8Ddft6mjSo6bJs2veKy2R8k(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->lambda$handleLogicalDisplayRemovedLocked$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$blkD86Pa3eTp0bxU70Yrbd3ywUQ(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$msEYrb6lyN2-4vy8Cix4S8e0DF8(Lcom/android/server/display/DisplayManagerService;Landroid/view/Display$Mode;Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$storeModeInGlobalSettingsLocked$8(Landroid/view/Display$Mode;Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqd1OB12syW_T2WX5zu-pNTMrf0(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$resetBrightnessConfigurations$11(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAreUserDisabledHdrTypesAllowed(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStateManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/devicestate/DeviceStateManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDexEmulator(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DexEmulator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDexEmulator:Lcom/android/server/display/DisplayManagerService$DexEmulator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceRepo(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayDeviceRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayGroupListeners(Lcom/android/server/display/DisplayManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayModeDirector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayModeDirector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayStateLimitLocks(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimitLocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayStateLimits(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimits:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDualScreenPolicy(Lcom/android/server/display/DisplayManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDocked(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDreaming(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/PersistentDataStore;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPresentationDisplays(Lcom/android/server/display/DisplayManagerService;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestDisplayStateLock(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mRequestDisplayStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiHandler(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserDisabledHdrTypes(Lcom/android/server/display/DisplayManagerService;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeController(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/VolumeController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiDisplayAdapter(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDocked(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDreaming(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPowerHandler(Lcom/android/server/display/DisplayManagerService;Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSensorManager(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/SensorManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateSpegVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;ILandroid/hardware/display/IVirtualDisplayCallback;)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->createSpegVirtualDisplayInternal(Ljava/lang/String;ILandroid/hardware/display/IVirtualDisplayCallback;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdeliverDeviceEvent(Lcom/android/server/display/DisplayManagerService;Landroid/os/Bundle;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDeviceEvent(Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverDisplayEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/util/ArraySet;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(ILandroid/util/ArraySet;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayGroupEvent(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverDisplayVolumeEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayVolumeEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverDisplayVolumeKeyEvent(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayVolumeKeyEvent(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverPresentationDisplayInfoEvent(Lcom/android/server/display/DisplayManagerService;IILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->deliverPresentationDisplayInfoEvent(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverWifiDisplayParameterEvent(Lcom/android/server/display/DisplayManagerService;ILjava/util/List;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverWifiDisplayParameterEvent(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforgetWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBrightnessConfigForDisplayWithPdsFallbackLocked(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayDecorationSupportInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayDecorationSupportInternal(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;III)Landroid/view/DisplayInfo;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(III)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayToken(Lcom/android/server/display/DisplayManagerService;I)Landroid/os/IBinder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDpcFromUniqueIdLocked(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNonOverrideDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetStableDisplaySizeInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getStableDisplaySizeInternal()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserManager(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetWifiDisplayStatusInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayRemovedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayRemovedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplaySwappedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplaySwappedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->handleSettingsChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeDisplayPowerControllersLocked(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->initializeDisplayPowerControllersLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeWifiDisplayMcfManager(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->initializeWifiDisplayMcfManager()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misUidPresentOnDisplayInternal(Lcom/android/server/display/DisplayManagerService;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misValidBrightness(Lcom/android/server/display/DisplayManagerService;F)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->isValidBrightness(F)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mloadBrightnessConfigurations(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->loadBrightnessConfigurations()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCallbackDied(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpauseWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterAdditionalDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterCallbackInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;IIJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDefaultDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapters()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDisplayBrightnessListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayBrightnessListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDisplayStateListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayStateListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrenameWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestColorModeInternal(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestColorModeInternal(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->requestDisplayStateInternal(IIFF)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresizeVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresumeWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrotateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->rotateVirtualDisplayInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayGroupEvent(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAreUserDisabledHdrTypesAllowedInternal(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setAreUserDisabledHdrTypesAllowedInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrightnessConfigurationForDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrightnessConfigurationForUserWithStatsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForUserWithStatsInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayAccessUIDsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayOffsetsInternal(Lcom/android/server/display/DisplayManagerService;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayPropertiesInternal(Lcom/android/server/display/DisplayManagerService;IZFIFFZZ)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/display/DisplayManagerService;->setDisplayPropertiesInternal(IZFIFFZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayScalingDisabledInternal(Lcom/android/server/display/DisplayManagerService;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayScalingDisabledInternal(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayStateLimitInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayStateLimitInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserDisabledHdrTypesInternal(Lcom/android/server/display/DisplayManagerService;[I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setUserDisabledHdrTypesInternal([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVirtualDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVirtualDisplaySurfaceInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msystemScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->systemScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$munregisterDisplayBrightnessListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayBrightnessListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterDisplayStateListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayStateListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDisplayStateLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$muserScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->userScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mvalidatePackageName(Lcom/android/server/display/DisplayManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->validatePackageName(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 703
    new-instance v0, Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 708
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    new-array v1, v9, [I

    .line 319
    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    const/4 v10, 0x1

    .line 320
    iput-boolean v10, v0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 330
    new-instance v5, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v5}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 341
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 348
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 367
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 371
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 375
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 378
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mRequestDisplayStateLock:Ljava/lang/Object;

    .line 381
    new-instance v1, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 511
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 515
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimits:Landroid/util/SparseIntArray;

    .line 520
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 543
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 560
    new-instance v1, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v1}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 564
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 568
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 575
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 580
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 582
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd, HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 606
    new-instance v2, Lcom/android/server/display/DisplayManagerService$2;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayManagerService$2;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    .line 661
    new-instance v2, Lcom/android/server/display/DisplayManagerService$DexEmulator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayManagerService$DexEmulator;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$DexEmulator-IA;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDexEmulator:Lcom/android/server/display/DisplayManagerService$DexEmulator;

    .line 670
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimitLocks:Ljava/util/ArrayList;

    .line 671
    iput v9, v0, Lcom/android/server/display/DisplayManagerService;->mRequestedStateLimitForEarlyWakeUp:I

    const/4 v11, -0x1

    .line 675
    iput v11, v0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 685
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    .line 691
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    .line 695
    iput v11, v0, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    .line 788
    new-instance v2, Lcom/android/server/display/DisplayManagerService$3;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayManagerService$3;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v14, p2

    .line 716
    iput-object v14, v0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 717
    iput-object v8, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 718
    new-instance v15, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v15, v0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v15, v0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 719
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 720
    new-instance v7, Lcom/android/server/display/DisplayDeviceRepository;

    invoke-direct {v7, v5, v1}, Lcom/android/server/display/DisplayDeviceRepository;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v7, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 721
    new-instance v6, Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v4, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;

    invoke-direct {v4, v0, v3}, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener-IA;)V

    new-instance v16, Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>()V

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v10, v6

    move-object v6, v15

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/LogicalDisplayMapper;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;)V

    iput-object v10, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 723
    new-instance v1, Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {v1, v8, v15}, Lcom/android/server/display/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    .line 724
    new-instance v1, Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {v1, v8}, Lcom/android/internal/display/BrightnessSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    const-string/jumbo v2, "persist.sys.displayinset.top"

    .line 728
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    const v2, 0x10700f2

    .line 729
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    const v3, 0x10700f3

    .line 731
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 733
    new-instance v4, Landroid/hardware/display/Curve;

    invoke-direct {v4, v2, v3}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 734
    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    const v2, 0x10700f0

    .line 737
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    const v3, 0x10700f1

    .line 739
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 741
    new-instance v3, Landroid/hardware/display/Curve;

    invoke-direct {v3, v2, v1}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mMaximumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 742
    invoke-static {v2, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mMaximumBrightnessSpline:Landroid/util/Spline;

    .line 745
    iput v9, v0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 746
    invoke-static {}, Landroid/view/SurfaceControl;->getCompositionColorSpaces()[Landroid/graphics/ColorSpace;

    move-result-object v1

    const/4 v2, 0x1

    .line 747
    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 748
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/DisplayManagerService$Injector;->getAllowNonNativeRefreshRateOverride()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayManagerService;->mAllowNonNativeRefreshRateOverride:Z

    .line 751
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v1, :cond_19a

    .line 752
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDssController:Lcom/android/server/DssController;

    .line 757
    :cond_19a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 759
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0109

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 761
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/server/display/DisplayManagerService;->mScreenExtendedBrightnessRangeMaximum:F

    .line 766
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v2, 0x30000006

    const-string v3, "DisplayDeviceRepository.mHDMIWakeLock"

    .line 767
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v2, v17

    iput-object v1, v2, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 777
    iput-boolean v9, v0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create DisplayManagerService took to complete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    .line 781
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5

    .line 3440
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3441
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 3443
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3445
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static isResolutionAndRefreshRateValid(Landroid/view/Display$Mode;)Z
    .registers 2

    .line 3653
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    if-lez v0, :cond_17

    .line 3654
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static isValidRefreshRate(F)Z
    .registers 2

    .line 5428
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static isValidResolution(Landroid/graphics/Point;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 5424
    iget v0, p0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_c

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-lez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$addDisplayPowerControllerLocked$18(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 3735
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleBrightnessChange(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method private synthetic lambda$addPresentationDisplay$12()V
    .registers 3

    .line 3155
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START_SMARTVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$applyDualScreenPolicyInternal$19(I)V
    .registers 2

    .line 6416
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onTransitionStarted(I)V

    return-void
.end method

.method public static synthetic lambda$dumpInternal$14(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/display/DisplayDevice;)V
    .registers 5

    .line 3365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic lambda$dumpInternal$15(Ljava/io/PrintWriter;Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .registers 4

    .line 3412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpInternal$16(Ljava/io/PrintWriter;Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 4

    .line 3421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleLogicalDisplayAddedLocked$3()V
    .registers 4

    .line 2091
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 2092
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2093
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 2094
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10405d7

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2095
    invoke-virtual {p0, v1}, Landroid/widget/Toast;->semSetPreferredDisplayType(I)V

    .line 2096
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$handleLogicalDisplayRemovedLocked$4()V
    .registers 4

    .line 2169
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 2170
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2171
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 2172
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10405d8

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2173
    invoke-virtual {p0, v1}, Landroid/widget/Toast;->semSetPreferredDisplayType(I)V

    .line 2174
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$handleLogicalDisplayRemovedLocked$5(Landroid/companion/virtual/IVirtualDevice;I)V
    .registers 4

    .line 2186
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2187
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V

    return-void
.end method

.method private synthetic lambda$handleLogicalDisplaySwappedLocked$6(Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    .line 2207
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2208
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p0

    .line 2209
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    if-eqz p0, :cond_d

    .line 2211
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    .line 2209
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$handleLogicalDisplaySwappedLocked$7(Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    .line 2217
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2218
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p0

    .line 2219
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    if-eqz p0, :cond_d

    .line 2221
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    .line 2219
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$loadBrightnessConfigurations$9(ILcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 2587
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 2589
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 2591
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 2592
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p2

    .line 2591
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_1f

    .line 2594
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    :cond_1f
    return-void
.end method

.method private synthetic lambda$onUserSwitching$0(ZIILcom/android/server/display/LogicalDisplay;)V
    .registers 7

    .line 915
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return-void

    .line 918
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 919
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    .line 918
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    if-nez v0, :cond_19

    return-void

    :cond_19
    if-eqz p1, :cond_2e

    .line 923
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez p1, :cond_2e

    .line 927
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    .line 929
    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 931
    :cond_2e
    invoke-virtual {v0, p3}, Lcom/android/server/display/DisplayPowerController;->onSwitchUser(I)V

    return-void
.end method

.method private synthetic lambda$performTraversalLocked$10(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 2614
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 2616
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V

    .line 2617
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayDevice;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$removePresentationDisplay$13()V
    .registers 3

    .line 3171
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP_SMARTVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$resetBrightnessConfigurations$11(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 2826
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return-void

    .line 2829
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2830
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2831
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2830
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setAreUserDisabledHdrTypesAllowedInternal$2([ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 1610
    invoke-virtual {p2, p1}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 1611
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method private synthetic lambda$setDisplayStateLimitInternal$17(Ljava/util/List;Lcom/android/server/display/DisplayDevice;)V
    .registers 5

    .line 3566
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 3567
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 3568
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 3570
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method private synthetic lambda$setUserDisabledHdrTypesInternal$1([ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 1574
    invoke-virtual {p2, p1}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 1575
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method private synthetic lambda$storeModeInGlobalSettingsLocked$8(Landroid/view/Display$Mode;Lcom/android/server/display/DisplayDevice;)V
    .registers 4

    .line 2442
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2443
    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredResolution(Lcom/android/server/display/DisplayDevice;)Landroid/graphics/Point;

    move-result-object v0

    .line 2444
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2445
    invoke-virtual {p0, p2}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;)F

    move-result p0

    .line 2446
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->isValidResolution(Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2447
    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->isValidRefreshRate(F)Z

    move-result p0

    if-nez p0, :cond_1b

    .line 2448
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public addBrightnessWeights(FFFF)V
    .registers 7

    .line 3603
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3604
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayPowerController;->addBrightnessWeights(FFFF)V

    .line 3606
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 16

    .line 3722
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 3726
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v0, :cond_13

    .line 3727
    new-instance v0, Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 3730
    :cond_13
    new-instance v11, Lcom/android/server/display/BrightnessSetting;

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v11, v0, p1, v1}, Lcom/android/server/display/BrightnessSetting;-><init>(Lcom/android/server/display/PersistentDataStore;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayManagerService$SyncRoot;)V

    .line 3732
    new-instance v0, Lcom/android/server/display/DisplayPowerController;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayBlanker;

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    new-instance v12, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v12, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    new-instance v13, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v13, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    move-object v3, v0

    move-object v9, p1

    invoke-direct/range {v3 .. v13}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 3737
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final addPresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V
    .registers 4

    .line 3145
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DisplayManagerService"

    if-eqz v0, :cond_10

    const-string p0, "Presentation has been added already"

    .line 3146
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3149
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 3150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to add presentation("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->-$$Nest$fgetpackageName(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3154
    :cond_42
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_55

    .line 3155
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_55
    return-void
.end method

.method public applyDualScreenPolicyInternal(Z)V
    .registers 3

    .line 6407
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 6408
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->applyDualScreenPolicy(Z)V

    .line 6419
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 4

    if-eqz p1, :cond_12

    .line 1714
    :try_start_2
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_a

    if-eqz p1, :cond_12

    const/4 p0, 0x1

    return p0

    :catch_a
    move-exception p1

    const-string v0, "DisplayManagerService"

    const-string v1, "Unable to query projection service for permissions"

    .line 1718
    invoke-static {v0, v1, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    const-string p1, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    const-string v0, "canProjectSecureVideo()"

    .line 1721
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    .line 1698
    :try_start_3
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_7} :catch_a

    if-eqz v1, :cond_12

    return v0

    :catch_a
    move-exception v1

    const-string v2, "DisplayManagerService"

    const-string v3, "Unable to query projection service for permissions"

    .line 1702
    invoke-static {v2, v3, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    const-string v1, "android.permission.CAPTURE_VIDEO_OUTPUT"

    const-string v2, "canProjectVideo()"

    .line 1705
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return v0

    .line 1708
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result p0

    return p0
.end method

.method public final checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1725
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1728
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    .line 1730
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final clampBrightness(IF)F
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move p2, v0

    goto :goto_18

    :cond_6
    cmpl-float p1, p2, v0

    if-eqz p1, :cond_11

    cmpg-float p1, p2, v0

    if-gez p1, :cond_11

    const/high16 p2, 0x7fc00000    # Float.NaN

    goto :goto_18

    .line 1119
    :cond_11
    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mScreenExtendedBrightnessRangeMaximum:F

    cmpl-float p1, p2, p0

    if-lez p1, :cond_18

    move p2, p0

    :cond_18
    :goto_18
    return p2
.end method

.method public final clearUserDisabledHdrTypesLocked()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1256
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 1257
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1258
    :try_start_8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "user_disabled_hdr_formats"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1260
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final clearViewportsLocked()V
    .registers 1

    .line 2895
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .registers 4

    .line 2305
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-ne v0, p2, :cond_1c

    .line 2306
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore;->getColorMode(Lcom/android/server/display/DisplayDevice;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_19

    .line 2308
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p2

    if-nez p2, :cond_18

    .line 2309
    iget p2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    .line 2314
    :cond_19
    :goto_19
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    :cond_1c
    return-void
.end method

.method public final configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V
    .registers 8

    .line 2930
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 2931
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    .line 2935
    :goto_f
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v4, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    if-nez v1, :cond_4f

    .line 2937
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->isWindowManagerMirroringLocked()Z

    move-result v1

    if-nez v1, :cond_4f

    if-eqz v4, :cond_47

    .line 2939
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v1

    if-nez v1, :cond_47

    .line 2941
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayDeviceRepository;->isDisplayDeviceForHiddenSpaceLocked(Lcom/android/server/display/DisplayDeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 2942
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplayMapper;->getHiddenDisplayLocked()Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 2943
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplayMapper;->getHiddenDisplayLocked()Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    goto :goto_46

    .line 2948
    :cond_3c
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 2949
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayIdToMirrorLocked()I

    move-result v4

    .line 2948
    invoke-virtual {v1, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    :goto_46
    move-object v4, v1

    :cond_47
    if-nez v4, :cond_4f

    .line 2953
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    :cond_4f
    if-nez v4, :cond_6c

    .line 2987
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Missing logical display to use for physical display device: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    .line 2987
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2991
    :cond_6c
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-ne v1, v2, :cond_71

    goto :goto_72

    :cond_71
    move v2, v3

    :goto_72
    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/display/LogicalDisplay;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V

    .line 2994
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object p1

    .line 2995
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 2996
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/display/DisplayManagerService;->populateViewportLocked(IILcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDeviceInfo;)V

    :cond_90
    return-void
.end method

.method public final configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 2319
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 2320
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2321
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredResolution(Lcom/android/server/display/DisplayDevice;)Landroid/graphics/Point;

    move-result-object v0

    .line 2322
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;)F

    move-result p0

    if-nez v0, :cond_19

    .line 2323
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    .line 2326
    :cond_19
    new-instance v1, Landroid/view/Display$Mode$Builder;

    invoke-direct {v1}, Landroid/view/Display$Mode$Builder;-><init>()V

    if-eqz v0, :cond_27

    .line 2328
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/view/Display$Mode$Builder;->setResolution(II)Landroid/view/Display$Mode$Builder;

    .line 2330
    :cond_27
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2331
    invoke-virtual {v1, p0}, Landroid/view/Display$Mode$Builder;->setRefreshRate(F)Landroid/view/Display$Mode$Builder;

    .line 2333
    :cond_30
    invoke-virtual {v1}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    return-void
.end method

.method public final connectWifiDisplayInternal(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .registers 4

    .line 1650
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1651
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_a

    .line 1652
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V

    .line 1654
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final connectWifiDisplayInternal(Ljava/lang/String;)V
    .registers 3

    .line 1489
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1490
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_a

    .line 1491
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V

    .line 1493
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final createSpegVirtualDisplayInternal(Ljava/lang/String;ILandroid/hardware/display/IVirtualDisplayCallback;)I
    .registers 16

    .line 3765
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 3766
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_18

    if-eqz v0, :cond_18

    const-string p0, "SPEG"

    const-string p1, "Try to create display from unprivileged uid"

    .line 3768
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_18
    const/4 v1, 0x0

    .line 3773
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 3774
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    const-string v2, "SpegVirtualDisplay"

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    const v0, 0x401c8

    .line 3776
    invoke-virtual {v1, v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 3777
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 3779
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3781
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_57

    const/4 v6, 0x0

    const/4 v9, 0x0

    const v10, 0x401c8

    .line 3783
    :try_start_43
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v11

    move-object v4, p0

    move-object v5, p3

    move v7, p2

    move-object v8, p1

    .line 3782
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I

    move-result p0

    .line 3784
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_54

    .line 3787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_54
    move-exception p0

    .line 3785
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p0

    .line 3787
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3788
    throw p0
.end method

.method public final createVirtualDisplayInternal(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
    .registers 20

    move-object v0, p0

    move-object/from16 v3, p3

    move-object/from16 v9, p4

    .line 1737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v5, p6

    .line 1738
    invoke-virtual {p0, v4, v5}, Lcom/android/server/display/DisplayManagerService;->validatePackageName(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_180

    if-eqz p2, :cond_178

    if-eqz p1, :cond_16f

    .line 1747
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getSurface()Landroid/view/Surface;

    move-result-object v6

    .line 1748
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getFlags()I

    move-result v1

    if-eqz v9, :cond_3b

    .line 1750
    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1751
    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1752
    invoke-virtual {v2, v9}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isValidVirtualDevice(Landroid/companion/virtual/IVirtualDevice;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1755
    invoke-virtual {v2, v9}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_3b

    .line 1753
    :cond_33
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid virtual device"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :goto_3b
    if-eqz v6, :cond_4c

    .line 1758
    invoke-virtual {v6}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_4c

    .line 1759
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface can\'t be single-buffered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    :goto_4c
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_5f

    or-int/lit8 v1, v1, 0x10

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_57

    goto :goto_5f

    .line 1767
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Public display must not be marked as SHOW_WHEN_LOCKED_INSECURE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    :goto_5f
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_65

    and-int/lit8 v1, v1, -0x11

    :cond_65
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_6b

    and-int/lit16 v1, v1, -0x801

    :cond_6b
    if-eqz v3, :cond_8d

    .line 1780
    :try_start_6d
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1783
    invoke-interface {v3, v1}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I

    move-result v1

    goto :goto_8d

    .line 1781
    :cond_7c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid media projection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_84} :catch_84

    .line 1785
    :catch_84
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "unable to validate media projection or flags"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    :goto_8d
    const/16 v2, 0x3e8

    if-eq v4, v2, :cond_a4

    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_a4

    .line 1791
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerService;->canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v7

    if-eqz v7, :cond_9c

    goto :goto_a4

    .line 1792
    :cond_9c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    :goto_a4
    if-eq v4, v2, :cond_b9

    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_b9

    .line 1800
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v7

    if-eqz v7, :cond_b1

    goto :goto_b9

    .line 1811
    :cond_b1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b9
    :goto_b9
    if-eq v4, v2, :cond_ec

    and-int/lit16 v7, v1, 0x400

    if-eqz v7, :cond_ec

    const-string v7, "android.permission.ADD_TRUSTED_DISPLAY"

    const-string v8, "createVirtualDisplay()"

    .line 1819
    invoke-virtual {p0, v7, v8}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ca

    goto :goto_ec

    :cond_ca
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "162627132"

    aput-object v3, v1, v2

    .line 1820
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "Attempt to create a trusted display without holding permission!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1822
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ADD_TRUSTED_DISPLAY permission to create a trusted virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ec
    :goto_ec
    if-eq v4, v2, :cond_107

    and-int/lit16 v7, v1, 0x800

    if-eqz v7, :cond_107

    if-nez v9, :cond_107

    const-string v7, "android.permission.ADD_TRUSTED_DISPLAY"

    const-string v8, "createVirtualDisplay()"

    .line 1831
    invoke-virtual {p0, v7, v8}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ff

    goto :goto_107

    .line 1832
    :cond_ff
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ADD_TRUSTED_DISPLAY permission to create a virtual display which is not in the default DisplayGroup."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_107
    :goto_107
    and-int/lit16 v7, v1, 0x1000

    if-eqz v7, :cond_120

    if-eq v4, v2, :cond_120

    const-string v2, "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"

    const-string v7, "createVirtualDisplay()"

    .line 1839
    invoke-virtual {p0, v2, v7}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_118

    goto :goto_120

    .line 1841
    :cond_118
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ADD_ALWAYS_UNLOCKED_DISPLAY permission to create an always unlocked virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_120
    :goto_120
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_126

    and-int/lit16 v1, v1, -0x201

    :cond_126
    move v7, v1

    and-int/lit16 v1, v7, 0x600

    const/16 v2, 0x200

    if-ne v1, v2, :cond_140

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v2, "createVirtualDisplay()"

    .line 1861
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_138

    goto :goto_140

    .line 1862
    :cond_138
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1865
    :cond_140
    :goto_140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1867
    :try_start_144
    iget-object v12, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v12
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_16a

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move-object v8, p1

    .line 1868
    :try_start_14e
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_162

    if-eqz v9, :cond_162

    if-eqz p5, :cond_162

    .line 1871
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 1872
    invoke-static/range {p4 .. p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1871
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1874
    :cond_162
    monitor-exit v12
    :try_end_163
    .catchall {:try_start_14e .. :try_end_163} :catchall_167

    .line 1877
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_167
    move-exception v0

    .line 1875
    :try_start_168
    monitor-exit v12
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    :try_start_169
    throw v0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_16a

    :catchall_16a
    move-exception v0

    .line 1877
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1878
    throw v0

    .line 1745
    :cond_16f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "virtualDisplayConfig must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1742
    :cond_178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1739
    :cond_180
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "packageName must match the calling uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I
    .registers 21

    move-object v0, p0

    .line 1884
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    const-string v2, "DisplayManagerService"

    const/4 v3, -0x1

    if-nez v1, :cond_e

    const-string v0, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    .line 1885
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_e
    const/4 v4, 0x0

    .line 1893
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayManagerService;->getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    .line 1892
    invoke-virtual {v1, v4}, Lcom/android/server/display/VirtualDisplayAdapter;->setDefaultDisplayDeviceInfoLocked(Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 1897
    iget-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    move-object v6, p1

    move-object v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/display/VirtualDisplayAdapter;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    if-nez v1, :cond_2b

    return v3

    .line 1912
    :cond_2b
    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 1915
    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v4, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 1917
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    return v0

    :cond_3e
    const-string v4, "Rejecting request to create virtual display because the logical display was not created."

    .line 1921
    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    .line 1924
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    return v3
.end method

.method public final deliverDeviceEvent(Landroid/os/Bundle;I)V
    .registers 9

    const-string v0, "DisplayManagerService"

    .line 3262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering device event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3267
    :try_start_19
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3268
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_26
    if-ge v3, v1, :cond_38

    .line 3270
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 3272
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_4f

    :goto_39
    if-ge v2, v1, :cond_49

    .line 3276
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDeviceEventAsync(Landroid/os/Bundle;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 3278
    :cond_49
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_4f
    move-exception p0

    .line 3272
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final deliverDisplayEvent(ILandroid/util/ArraySet;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 3097
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3098
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3099
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_38

    if-eqz p2, :cond_28

    .line 3101
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    iget v4, v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3102
    :cond_28
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3105
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_55

    .line 3108
    :goto_39
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_4f

    .line 3109
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 3111
    :cond_4f
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_55
    move-exception p0

    .line 3105
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public final deliverDisplayGroupEvent(II)V
    .registers 5

    .line 3118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering display group event: groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_54

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3e

    const/4 v0, 0x3

    if-eq p2, v0, :cond_28

    goto :goto_6a

    .line 3136
    :cond_28
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 3137
    invoke-interface {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupRemoved(I)V

    goto :goto_2e

    .line 3130
    :cond_3e
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 3131
    invoke-interface {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupChanged(I)V

    goto :goto_44

    .line 3124
    :cond_54
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 3125
    invoke-interface {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupAdded(I)V

    goto :goto_5a

    :cond_6a
    :goto_6a
    return-void
.end method

.method public final deliverDisplayVolumeEvent(ILandroid/os/Bundle;)V
    .registers 9

    .line 3194
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3195
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3196
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 3198
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3200
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_3e

    :goto_23
    if-ge v2, v1, :cond_33

    .line 3204
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayVolumeEventAsync(ILandroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 3206
    :cond_33
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3208
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    invoke-virtual {p0, p2}, Lcom/android/server/display/VolumeController;->notifyDisplayVolumeEvnet(Landroid/os/Bundle;)V

    return-void

    :catchall_3e
    move-exception p0

    .line 3200
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final deliverDisplayVolumeKeyEvent(I)V
    .registers 8

    .line 3218
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3219
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3220
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 3222
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3224
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_39

    :goto_23
    if-ge v2, v1, :cond_33

    .line 3228
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayVolumeKeyEventAsync(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 3230
    :cond_33
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_39
    move-exception p0

    .line 3224
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final deliverPresentationDisplayInfoEvent(IILjava/lang/String;)V
    .registers 5

    .line 3177
    new-instance v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    invoke-direct {v0, p1, p3}, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;-><init>(ILjava/lang/String;)V

    .line 3178
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_11

    .line 3180
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->addPresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V

    goto :goto_16

    :catchall_f
    move-exception p0

    goto :goto_18

    :cond_11
    if-nez p2, :cond_16

    .line 3182
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->removePresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V

    .line 3184
    :cond_16
    :goto_16
    monitor-exit p1

    return-void

    :goto_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_f

    throw p0
.end method

.method public final deliverWifiDisplayParameterEvent(ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    .line 3240
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3242
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 3244
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3246
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_39

    :goto_23
    if-ge v2, v1, :cond_33

    .line 3250
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyWifiDisplayParameterEventAsync(ILjava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 3252
    :cond_33
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_39
    move-exception p0

    .line 3246
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final disconnectWifiDisplayInternal()V
    .registers 2

    .line 1513
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1514
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_a

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 1517
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public doShortTermReset()V
    .registers 3

    .line 3590
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3591
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->doShortTermReset()V

    .line 3592
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 11

    const-string v0, "DISPLAY MANAGER (dumpsys display)"

    .line 3294
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3296
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3297
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOnlyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSafeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingTraversal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mViewports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDefaultDisplayDefaultColorMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWifiDisplayScanRequestCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStableDisplaySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumBrightnessCurve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3306
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v1, :cond_d2

    .line 3307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUserPreferredMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3310
    :cond_d2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3311
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_110

    .line 3312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mUserDisabledHdrTypes: size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3313
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v3, v1

    move v4, v2

    :goto_f5
    if-ge v4, v3, :cond_110

    aget v5, v1, v4

    .line 3314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f5

    .line 3318
    :cond_110
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3319
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display States: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_12e
    if-ge v3, v1, :cond_19f

    .line 3322
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3323
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 3324
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 3325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Display Id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Display State="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Display Brightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Display SdrBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12e

    .line 3332
    :cond_19f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3333
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display State Limit Locks: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_1bd
    if-ge v3, v1, :cond_1e4

    .line 3336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1bd

    .line 3341
    :cond_1e4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3342
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimits:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display State Limits: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_202
    if-ge v3, v1, :cond_23f

    .line 3345
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimits:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3346
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimits:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 3347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Display Id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Display State Limit="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_202

    .line 3352
    :cond_23f
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "    "

    invoke-direct {v1, p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3353
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3355
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Adapters: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3357
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_294

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayAdapter;

    .line 3358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3359
    invoke-virtual {v4, v1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_26c

    .line 3362
    :cond_294
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Devices: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDeviceRepository;->sizeLocked()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3364
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 3371
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrimaryPhysicalDisplayId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3373
    invoke-static {}, Landroid/view/SurfaceControl;->getPrimaryPhysicalDisplayId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3372
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InternalPhysicalDisplayId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3375
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalPhysicalDisplayId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3374
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3380
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 3382
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3383
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callbacks: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_314
    if-ge v3, v1, :cond_353

    .line 3386
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 3387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": mPid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mWifiDisplayScanRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mWifiDisplayScanRequestedTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequestedTime:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_314

    .line 3393
    :cond_353
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3394
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Power Controllers: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_371
    if-ge v3, v1, :cond_381

    .line 3397
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v4, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_371

    .line 3399
    :cond_381
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v1, :cond_38d

    .line 3400
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3401
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 3403
    :cond_38d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3404
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    .line 3407
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3bf

    .line 3409
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDisplayBrightnessListeners: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3411
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 3416
    :cond_3bf
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3e9

    .line 3418
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDisplayStateListenerInfo: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3420
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 3425
    :cond_3e9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3426
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Window Policy Controllers: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_406
    if-ge v2, v1, :cond_43b

    .line 3430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3431
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/window/DisplayWindowPolicyController;

    const-string v4, "  "

    invoke-virtual {v3, v4, p1}, Landroid/window/DisplayWindowPolicyController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_406

    .line 3433
    :cond_43b
    monitor-exit v0
    :try_end_43c
    .catchall {:try_start_8 .. :try_end_43c} :catchall_44a

    .line 3434
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3435
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector;->dump(Ljava/io/PrintWriter;)V

    .line 3436
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-virtual {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_44a
    move-exception p0

    .line 3433
    :try_start_44b
    monitor-exit v0
    :try_end_44c
    .catchall {:try_start_44b .. :try_end_44c} :catchall_44a

    throw p0
.end method

.method public final findDisplayStateLimitLockIndex(Landroid/os/IBinder;)I
    .registers 5

    .line 3518
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 3520
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public final forgetWifiDisplayInternal(Ljava/lang/String;)V
    .registers 3

    .line 1529
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1530
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_a

    .line 1531
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 1533
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getActiveDisplayModeAtStart(I)Landroid/view/Display$Mode;
    .registers 3

    .line 2865
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2866
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    .line 2868
    monitor-exit v0

    return-object p0

    .line 2870
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 2871
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getAmbientBrightnessInfo(F)Ljava/lang/String;
    .registers 4

    .line 3583
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3584
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->getAmbientBrightnessInfo(F)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 3586
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 4

    .line 3795
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 3796
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfigurationForDisplayLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    if-nez p1, :cond_e

    .line 3800
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p2}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    :cond_e
    return-object p1
.end method

.method public final getCopyOfArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_b

    const-string p0, "DisplayManagerService"

    const-string p1, "getCopyOfArrayList: error : null"

    .line 3478
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3482
    :cond_b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final getDesiredStateLimitLocked(Ljava/util/ArrayList;ILcom/android/server/display/DisplayDeviceInfo;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;",
            ">;I",
            "Lcom/android/server/display/DisplayDeviceInfo;",
            ")I"
        }
    .end annotation

    .line 3491
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;

    .line 3492
    iget v0, v0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mLastRequestedState:I

    if-ne v0, v2, :cond_4

    move p1, v2

    goto :goto_19

    :cond_18
    move p1, v1

    :goto_19
    if-eq p1, v2, :cond_1e

    if-ne p2, v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, p1

    .line 3504
    :goto_1f
    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    const/high16 p1, 0x800000

    if-nez p0, :cond_2b

    iget p2, p3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_2b

    goto :goto_35

    :cond_2b
    const/4 p2, 0x1

    if-ne p0, p2, :cond_34

    .line 3507
    iget p0, p3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr p0, p1

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    return v1
.end method

.method public final getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;
    .registers 2

    .line 3755
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 3756
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public final getDisplayDecorationSupportInternal(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 2

    .line 2494
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2498
    :cond_8
    invoke-static {p0}, Landroid/view/SurfaceControl;->getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3685
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3686
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 3688
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    .line 3689
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    .line 3691
    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    .line 3692
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public getDisplayDeviceRepository()Lcom/android/server/display/DisplayDeviceRepository;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1021
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    return-object p0
.end method

.method public getDisplayHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1016
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object p0
.end method

.method public getDisplayIdToMirrorInternal(I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3697
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3698
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 3700
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    .line 3701
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayIdToMirrorLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_15
    const/4 p0, -0x1

    .line 3703
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 3704
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final getDisplayInfoForFrameRateOverride([Landroid/view/DisplayEventReceiver$FrameRateOverride;Landroid/view/DisplayInfo;I)Landroid/view/DisplayInfo;
    .registers 15

    .line 1277
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v0, :cond_c

    .line 1278
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRateMode()I

    move-result v0

    iput v0, p2, Landroid/view/DisplayInfo;->refreshRateMode:I

    .line 1282
    :cond_c
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1e

    aget-object v4, p1, v2

    .line 1283
    iget v5, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    if-ne v5, p3, :cond_1b

    .line 1284
    iget p1, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    goto :goto_1f

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1e
    move p1, v3

    :goto_1f
    cmpl-float v0, p1, v3

    if-nez v0, :cond_24

    return-object p2

    .line 1295
    :cond_24
    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    div-float/2addr v2, p1

    .line 1297
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 1298
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a6bedfa    # 9.0E-4f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3f

    return-object p2

    .line 1301
    :cond_3f
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    div-float/2addr v2, p1

    .line 1303
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    .line 1304
    invoke-virtual {p1, p2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1305
    iget-object v4, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v5, v4

    :goto_4f
    const-wide/32 v6, 0xa29ae4e

    if-ge v1, v5, :cond_87

    aget-object v8, v4, v1

    .line 1306
    invoke-virtual {v8, v0}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v9

    if-nez v9, :cond_5d

    goto :goto_84

    .line 1310
    :cond_5d
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    sub-float v10, v2, v3

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_84

    .line 1311
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    add-float v10, v2, v3

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_84

    .line 1316
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    iput p0, p1, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 1318
    invoke-static {v6, v7, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_83

    .line 1320
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    iput p0, p1, Landroid/view/DisplayInfo;->modeId:I

    :cond_83
    return-object p1

    :cond_84
    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 1326
    :cond_87
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mAllowNonNativeRefreshRateOverride:Z

    if-eqz p0, :cond_c4

    .line 1327
    iput v2, p1, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 1328
    invoke-static {v6, v7, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_c3

    .line 1330
    iget-object p0, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length p2, p0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display$Mode;

    iput-object p0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 1332
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    new-instance p3, Landroid/view/Display$Mode;

    const/16 v1, 0xff

    .line 1334
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget v3, p1, Landroid/view/DisplayInfo;->refreshRateOverride:F

    invoke-direct {p3, v1, v2, v0, v3}, Landroid/view/Display$Mode;-><init>(IIIF)V

    aput-object p3, p0, p2

    .line 1336
    iget-object p0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    aget-object p0, p0, p2

    .line 1338
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    iput p0, p1, Landroid/view/DisplayInfo;->modeId:I

    :cond_c3
    return-object p1

    :cond_c4
    return-object p2
.end method

.method public final getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .registers 6

    .line 1348
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1350
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(III)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0

    .line 1353
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1354
    :try_start_d
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 1357
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    move-result-object v2

    .line 1358
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1357
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoForFrameRateOverride([Landroid/view/DisplayEventReceiver$FrameRateOverride;Landroid/view/DisplayInfo;I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1359
    invoke-virtual {v1, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1360
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 1361
    :cond_2d
    monitor-exit v0

    return-object v1

    :cond_2f
    const/4 p0, 0x0

    .line 1364
    monitor-exit v0

    return-object p0

    :catchall_32
    move-exception p0

    .line 1365
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final getDisplayInfoInternal(III)Landroid/view/DisplayInfo;
    .registers 7

    .line 1372
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1373
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 1377
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    move-result-object v2

    .line 1378
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1377
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoForFrameRateOverride([Landroid/view/DisplayEventReceiver$FrameRateOverride;Landroid/view/DisplayInfo;I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1379
    invoke-virtual {v1, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1380
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 1383
    :cond_24
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {p1, p3}, Lcom/android/server/DssController;->isScaledApp(I)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 1384
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {p0, p3}, Lcom/android/server/DssController;->getScalingFactor(I)F

    move-result p0

    .line 1385
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1, v1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 1386
    iget p2, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1388
    iget p2, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    mul-float/2addr p2, p0

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 1389
    iget p2, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    mul-float/2addr p2, p0

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 1390
    iget p2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1391
    iget p2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1392
    iget p2, p1, Landroid/view/DisplayInfo;->appHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/DisplayInfo;->appHeight:I

    .line 1393
    iget p2, p1, Landroid/view/DisplayInfo;->appWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p2, p3

    float-to-int p0, p2

    iput p0, p1, Landroid/view/DisplayInfo;->appWidth:I

    move-object v1, p1

    .line 1396
    :cond_72
    monitor-exit v0

    return-object v1

    :cond_74
    const/4 p0, 0x0

    .line 1399
    monitor-exit v0

    return-object p0

    :catchall_77
    move-exception p0

    .line 1400
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public final getDisplayToken(I)Landroid/os/IBinder;
    .registers 3

    .line 2733
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2741
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2743
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2745
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 2748
    :cond_17
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final getDisplayTokenForCurrentLayerStackLocked(I)Landroid/os/IBinder;
    .registers 4

    .line 6170
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 6174
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    if-nez v1, :cond_11

    return-object v0

    .line 6178
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 6179
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->layerStack:I

    .line 6178
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/DisplayDeviceRepository;->getDisplayTokenForCurrentLayerStackLocked(Lcom/android/server/display/DisplayDevice;I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2814
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2818
    :cond_8
    invoke-static {p0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2793
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2797
    :cond_8
    invoke-static {p0}, Landroid/view/SurfaceControl;->getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;
    .registers 3

    .line 2548
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 2549
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 2551
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 2552
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaximumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .registers 1

    .line 2377
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mMaximumBrightnessCurve:Landroid/hardware/display/Curve;

    return-object p0
.end method

.method public getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2372
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    return-object p0
.end method

.method public final getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V
    .registers 4

    .line 1080
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1081
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1083
    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 1085
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getPreferredWideGamutColorSpaceIdInternal()I
    .registers 1

    .line 2383
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getId()I

    move-result p0

    return p0
.end method

.method public final getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 2

    .line 3282
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "media_projection"

    .line 3283
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3284
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 3286
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object p0
.end method

.method public getRefreshRateSwitchingTypeInternal()I
    .registers 1

    .line 2490
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->getModeSwitchingType()I

    move-result p0

    return p0
.end method

.method public final getStableDisplaySizeInternal()Landroid/graphics/Point;
    .registers 4

    .line 1043
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1044
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1045
    :try_start_8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_15

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-lez p0, :cond_15

    .line 1046
    invoke-virtual {v0, v2, p0}, Landroid/graphics/Point;->set(II)V

    .line 1048
    :cond_15
    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception p0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getSystemPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;
    .registers 3

    .line 2467
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2468
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    .line 2470
    monitor-exit v0

    return-object p0

    .line 2472
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 2473
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 3290
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;
    .registers 4

    .line 2454
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    .line 2456
    :try_start_6
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    monitor-exit v0

    return-object p0

    .line 2458
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    .line 2460
    monitor-exit v0

    return-object p0

    .line 2462
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    .line 2463
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;
    .registers 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    .line 3011
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot call getViewportByTypeLocked for type "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    invoke-static {p1}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    .line 3011
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3017
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_46

    .line 3019
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 3020
    iget v3, v2, Landroid/hardware/display/DisplayViewport;->type:I

    if-ne v3, p1, :cond_43

    iget-object v3, v2, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    return-object v2

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 3026
    :cond_46
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 3027
    iput p1, v0, Landroid/hardware/display/DisplayViewport;->type:I

    .line 3028
    iput-object p2, v0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 3029
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayDeviceInfo;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2900
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;ZZ)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getViewportType(Lcom/android/server/display/DisplayDeviceInfo;ZZ)Ljava/util/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayDeviceInfo;",
            "ZZ)",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2913
    iget p0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 p2, 0x1

    if-eq p0, p2, :cond_46

    const/4 p2, 0x2

    if-eq p0, p2, :cond_3d

    const/4 p2, 0x3

    if-eq p0, p2, :cond_c

    goto :goto_1d

    .line 2919
    :cond_c
    iget-object p0, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1d

    .line 2920
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 2924
    :cond_1d
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Display "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not support input device matching."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 2917
    :cond_3d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 2915
    :cond_46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualDisplaySurfaceInternal(Landroid/os/IBinder;)Landroid/view/Surface;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3709
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3710
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    .line 3711
    monitor-exit v0

    return-object p0

    .line 3713
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 3714
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    .registers 2

    .line 1537
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1538
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_d

    .line 1539
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1541
    :cond_d
    new-instance p0, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {p0}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 1542
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final handleBrightnessAnimation(Z)V
    .registers 4

    .line 3747
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_20

    .line 3748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleBrightnessAnimation: started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->requestPassiveMode(Z)V

    :cond_20
    return-void
.end method

.method public final handleBrightnessChange(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 3741
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    return-void
.end method

.method public final handleLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 10

    .line 2042
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2043
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v3

    .line 2045
    :goto_f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 2046
    iget-boolean v5, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v5, :cond_1b

    .line 2047
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    invoke-virtual {p1, v5}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    :cond_1b
    if-eqz v4, :cond_23

    .line 2050
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2051
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2053
    :cond_23
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v5, :cond_2b

    .line 2054
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    goto :goto_2e

    .line 2056
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2058
    :goto_2e
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2060
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 2063
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->type:I

    if-ne v5, v2, :cond_43

    .line 2064
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimits:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 2068
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 2069
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    invoke-direct {v7, p0, v5, v5}, Lcom/android/server/display/DisplayManagerService$BrightnessPair;-><init>(Lcom/android/server/display/DisplayManagerService;FF)V

    invoke-virtual {v6, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2072
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    if-eqz v4, :cond_5d

    .line 2076
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2079
    :cond_5d
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 2081
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 2083
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2085
    :cond_69
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2088
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_91

    .line 2089
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    .line 2090
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2098
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceRepository;->isDexDisplayDeviceEnabledLocked()Z

    move-result p1

    if-nez p1, :cond_91

    .line 2099
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iput-boolean v2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    :cond_91
    return-void
.end method

.method public final handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 2107
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2109
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    if-nez v0, :cond_19

    .line 2111
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2113
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    if-eqz v1, :cond_19

    .line 2114
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    .line 2115
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 2114
    invoke-virtual {v1, v0, v2}, Lcom/android/server/display/DisplayModeDirector;->updateResolutionLocked(ILandroid/view/DisplayInfo;)V

    :cond_19
    const/4 v1, 0x2

    .line 2122
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    const/4 v1, 0x0

    .line 2123
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2124
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2126
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_33

    .line 2128
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged()V

    .line 2132
    :cond_33
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v0, :cond_3c

    .line 2133
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDexEmulator:Lcom/android/server/display/DisplayManagerService$DexEmulator;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->-$$Nest$monLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService$DexEmulator;Lcom/android/server/display/LogicalDisplay;)V

    :cond_3c
    return-void
.end method

.method public final handleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 2237
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 2238
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_11

    .line 2242
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged()V

    :cond_11
    return-void
.end method

.method public final handleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 2140
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 2144
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventFrameRateOverrideLocked(I)V

    const/4 p1, 0x0

    .line 2145
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method public final handleLogicalDisplayRemovedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 2149
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 2150
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    if-eqz v1, :cond_11

    .line 2152
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->stop()V

    .line 2154
    :cond_11
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2156
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_24

    .line 2157
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimits:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2160
    :cond_24
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 2161
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    const/4 p1, 0x3

    .line 2162
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    const/4 p1, 0x0

    .line 2163
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2166
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v1, :cond_4d

    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    if-ne v1, v0, :cond_4d

    const/4 v1, -0x1

    .line 2167
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    .line 2168
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2177
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iput-boolean p1, v1, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 2181
    :cond_4d
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 2182
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/companion/virtual/IVirtualDevice;

    if-eqz p1, :cond_6d

    .line 2185
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/companion/virtual/IVirtualDevice;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6d
    return-void
.end method

.method public final handleLogicalDisplaySwappedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 2194
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2201
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2226
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 2227
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_1f

    .line 2229
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged()V

    .line 2231
    :cond_1f
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2232
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2233
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public final handleSettingsChange()V
    .registers 3

    .line 1217
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1218
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateSettingsLocked()V

    const/4 v1, 0x0

    .line 1219
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1220
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public hideCutoutForFoldableInternal(Z)V
    .registers 8

    .line 6385
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 6386
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 6388
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-eqz v1, :cond_3f

    if-nez v2, :cond_16

    goto :goto_3f

    :cond_16
    const-string v3, "DisplayManagerService"

    .line 6395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hideCutoutForFoldableInternal, hideCutout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6396
    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplay;->setMaskingCutout(Z)V

    .line 6397
    invoke-virtual {v2, p1}, Lcom/android/server/display/LogicalDisplay;->setMaskingCutout(Z)V

    .line 6399
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    .line 6400
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v2, p0}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    .line 6401
    monitor-exit v0

    return-void

    .line 6392
    :cond_3f
    :goto_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    .line 6401
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final initializeDisplayPowerControllersLocked()V
    .registers 3

    .line 3718
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final initializeWifiDisplayMcfManager()V
    .registers 1

    .line 3256
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_7

    .line 3257
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->initializeMcfManager()V

    :cond_7
    return-void
.end method

.method public final isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 8

    .line 2571
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object p1

    .line 2572
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    .line 2573
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    const/4 v1, 0x0

    move v2, v1

    .line 2574
    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_24

    .line 2575
    aget v3, p1, v2

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    return v1
.end method

.method public final isSubsetOf([I[I)Z
    .registers 6

    .line 1582
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_11

    aget v2, p2, v1

    .line 1583
    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public final isUidPresentOnDisplayInternal(II)Z
    .registers 4

    .line 2725
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2726
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/IntArray;

    if-eqz p0, :cond_16

    .line 2727
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    .line 2728
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final isValidBrightness(F)Z
    .registers 3

    .line 5416
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_13

    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mScreenExtendedBrightnessRangeMaximum:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final loadBrightnessConfigurations()V
    .registers 5

    .line 2583
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 2584
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 2585
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 2598
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final loadStableDisplayValuesLocked()V
    .registers 4

    .line 1025
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1026
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_14

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_14

    .line 1029
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_2f

    .line 1031
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0124

    .line 1032
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x10e0123

    .line 1034
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v1, :cond_2f

    if-lez v0, :cond_2f

    .line 1037
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onBootPhase(I)V
    .registers 10

    const/16 v0, 0x64

    if-ne p1, v0, :cond_5e

    .line 878
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 879
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 880
    invoke-virtual {p1}, Lcom/android/server/display/DisplayManagerService$Injector;->getDefaultDisplayDelayTimeout()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 881
    :catch_12
    :goto_12
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p1, :cond_20

    goto :goto_22

    .line 898
    :cond_20
    monitor-exit v0

    goto :goto_6c

    .line 883
    :cond_22
    :goto_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_5b

    sub-long v4, v1, v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_34

    .line 894
    :try_start_2e
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {p1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_12
    .catchall {:try_start_2e .. :try_end_33} :catchall_5b

    goto :goto_12

    .line 885
    :cond_34
    :try_start_34
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for default display to be initialized. DefaultDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 887
    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mVirtualDisplayAdapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_5b
    move-exception p0

    .line 898
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_34 .. :try_end_5d} :catchall_5b

    throw p0

    :cond_5e
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_6c

    .line 900
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector;->onBootCompleted()V

    .line 901
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->onBootCompleted()V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public final onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5

    .line 1428
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1429
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1430
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1431
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onStart()V
    .registers 4

    const-string v0, "DisplayManagerService"

    const-string v1, "DisplayManagerService onStart"

    .line 838
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 847
    :try_start_a
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 848
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->loadStableDisplayValuesLocked()V

    .line 849
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_31

    .line 862
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    const-string v0, "display"

    .line 864
    new-instance v1, Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 866
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 870
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_31
    move-exception p0

    .line 849
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 7

    .line 907
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 908
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p2

    .line 909
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 910
    :try_start_f
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq v1, p1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_1a

    .line 912
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 914
    :cond_1a
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/DisplayManagerService;ZII)V

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 933
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->handleSettingsChange()V

    .line 936
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz p1, :cond_30

    .line 937
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->onUserSwitching()V

    .line 940
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_32

    throw p0
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 945
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/16 p1, 0x1c

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final pauseWifiDisplayInternal()V
    .registers 2

    .line 1497
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1498
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_a

    .line 1499
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V

    .line 1501
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1090
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1091
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v1, :cond_9

    .line 1092
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 1094
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 1097
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 1107
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 1108
    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_16

    :cond_26
    return-void

    :catchall_27
    move-exception p0

    .line 1097
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 2604
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 2613
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 2622
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz p1, :cond_17

    .line 2623
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_17
    return-void
.end method

.method public final populateViewportLocked(IILcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 6

    .line 3035
    iget-object v0, p4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;

    move-result-object p0

    .line 3036
    invoke-virtual {p3, p0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V

    const/4 p1, 0x1

    .line 3037
    iput-boolean p1, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 3038
    iput p2, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 3039
    iget p1, p4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {p1}, Landroid/view/Display;->isActiveState(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    return-void
.end method

.method public final recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 2340
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-gtz v1, :cond_19

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_19

    .line 2341
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 2342
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    :cond_19
    return-void
.end method

.method public final recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 2350
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1e

    if-nez p1, :cond_7

    goto :goto_1e

    .line 2353
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 2354
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    if-ne p1, v0, :cond_12

    return-void

    .line 2357
    :cond_12
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 2358
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "persist.sys.displayinset.top"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final registerAdditionalDisplayAdapters()V
    .registers 3

    .line 2002
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2003
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 2007
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;IIJ)V
    .registers 15

    .line 1406
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1407
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz v1, :cond_12

    .line 1410
    invoke-virtual {v1, p4, p5}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->updateEventsMask(J)V

    .line 1411
    monitor-exit v0

    return-void

    .line 1414
    :cond_12
    new-instance v8, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;IILandroid/hardware/display/IDisplayManagerCallback;J)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_33

    .line 1416
    :try_start_1d
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x0

    .line 1417
    invoke-interface {p1, v8, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_2c
    .catchall {:try_start_1d .. :try_end_25} :catchall_33

    .line 1423
    :try_start_25
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1424
    monitor-exit v0

    return-void

    :catch_2c
    move-exception p0

    .line 1420
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_33
    move-exception p0

    .line 1424
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final registerDefaultDisplayAdapters()V
    .registers 7

    .line 1978
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1980
    :try_start_3
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1988
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/display/DisplayManagerService$Injector;->getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-eqz v1, :cond_2f

    .line 1991
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1994
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p0}, Lcom/android/server/display/VirtualDisplayAdapter;->setLogicalDisplayMapperLocked(Lcom/android/server/display/LogicalDisplayMapper;)V

    .line 1998
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .registers 2

    .line 2037
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    return-void
.end method

.method public final registerDisplayBrightnessListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .registers 3

    .line 3451
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3452
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3453
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final registerDisplayStateListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 3

    .line 3465
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3466
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3467
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    .line 1055
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerOverlayDisplayAdapterLocked()V
    .registers 8

    .line 2011
    new-instance v6, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    return-void
.end method

.method public final registerWifiDisplayAdapterLocked()V
    .registers 9

    .line 2016
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, -0x1

    const-string/jumbo v1, "persist.debug.wfd.enable"

    .line 2018
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 2019
    :cond_1a
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 2022
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    :cond_2f
    return-void
.end method

.method public final releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .registers 4

    .line 1951
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1952
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 1953
    monitor-exit v0

    return-void

    .line 1957
    :cond_9
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1960
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 1963
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final removePresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V
    .registers 4

    .line 3161
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DisplayManagerService"

    if-nez v0, :cond_10

    const-string p0, "Presentation is not included in Set"

    .line 3162
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3165
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 3166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove presentation("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->-$$Nest$fgetpackageName(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3170
    :cond_42
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 3171
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_54
    return-void
.end method

.method public final renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1521
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1522
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_a

    .line 1523
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final requestColorModeInternal(II)V
    .registers 5

    .line 1617
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 1620
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getRequestedColorModeLocked()I

    move-result v1

    if-eq v1, p2, :cond_18

    .line 1621
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    const/4 p1, 0x0

    .line 1622
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1624
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final requestDisplayStateInternal(IIFF)V
    .registers 12

    const/4 v0, 0x2

    if-nez p2, :cond_4

    move p2, v0

    .line 1132
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/DisplayManagerService;->clampBrightness(IF)F

    move-result p3

    .line 1133
    invoke-virtual {p0, p2, p4}, Lcom/android/server/display/DisplayManagerService;->clampBrightness(IF)F

    move-result p4

    .line 1140
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1141
    :try_start_f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_19

    const/4 v3, 0x0

    goto :goto_21

    .line 1144
    :cond_19
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    :goto_21
    if-ltz v2, :cond_e9

    .line 1145
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-ne v4, p2, :cond_39

    iget v4, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    cmpl-float v4, v4, p3

    if-nez v4, :cond_39

    iget v4, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    cmpl-float v4, v4, p4

    if-nez v4, :cond_39

    goto/16 :goto_e9

    .line 1154
    :cond_39
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-eq v4, p2, :cond_48

    .line 1155
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    :cond_48
    if-nez p1, :cond_53

    .line 1163
    iget v0, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_53

    .line 1165
    invoke-virtual {p0, p3}, Lcom/android/server/display/DisplayManagerService;->sendDisplayBrightnessEventLocked(F)V

    .line 1170
    :cond_53
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    if-eq v0, p2, :cond_8f

    const-string v0, "DisplayManagerService"

    .line 1171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display_state requestDisplayStateInternal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 1172
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1171
    invoke-static {v0, v4}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestDisplayStateInternal("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", brightness="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", sdrBrightness="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v4, 0x20000

    .line 1182
    invoke-static {v4, v5, v0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1184
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 1185
    iput p3, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 1186
    iput p4, v3, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 1187
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p2, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p2

    .line 1188
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p2

    .line 1187
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p0

    .line 1189
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_f .. :try_end_e0} :catchall_eb

    if-eqz p0, :cond_e5

    .line 1196
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1198
    :cond_e5
    invoke-static {v4, v5, v0, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    .line 1148
    :cond_e9
    :goto_e9
    :try_start_e9
    monitor-exit v1

    return-void

    :catchall_eb
    move-exception p0

    .line 1189
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_eb

    throw p0
.end method

.method public resetBrightnessConfigurations()V
    .registers 6

    .line 2822
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2823
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2824
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2823
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 2825
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 2833
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    .registers 6

    .line 1931
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1932
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p0, :cond_9

    .line 1933
    monitor-exit v0

    return-void

    .line 1936
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V

    .line 1937
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final resumeWifiDisplayInternal()V
    .registers 2

    .line 1505
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1506
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_a

    .line 1507
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V

    .line 1509
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final rotateVirtualDisplayInternal(Landroid/os/IBinder;I)V
    .registers 5

    .line 1630
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1631
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 1632
    monitor-exit v0

    return-void

    .line 1634
    :cond_9
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->getVirtualDisplayDeviceLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    move-result-object p1

    if-nez p1, :cond_11

    .line 1636
    monitor-exit v0

    return-void

    .line 1638
    :cond_11
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 1640
    monitor-exit v0

    return-void

    .line 1642
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 1643
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_26

    .line 1646
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->freezeDisplayRotation(II)V

    return-void

    :catchall_26
    move-exception p0

    .line 1643
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final scheduleTraversalLocked(Z)V
    .registers 3

    .line 3078
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 3079
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez p1, :cond_13

    .line 3081
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method

.method public final sendDisplayBrightnessEventLocked(F)V
    .registers 6

    .line 3630
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 3635
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v1, :cond_1a

    const/high16 v1, 0x42c80000    # 100.0f

    rem-float v2, p1, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    div-float/2addr p1, v1

    :cond_1a
    :goto_1a
    if-nez v0, :cond_32

    .line 3644
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    .line 3645
    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;->onChanged(F)V

    goto :goto_22

    :cond_32
    return-void
.end method

.method public final sendDisplayEventFrameRateOverrideLocked(I)V
    .registers 5

    .line 3070
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3072
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendDisplayEventLocked(II)V
    .registers 5

    .line 3060
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3061
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendDisplayGroupEvent(II)V
    .registers 5

    .line 3065
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3066
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)V
    .registers 4

    .line 2875
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2876
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_11

    .line 2879
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAmbientColorTemperatureOverride(F)V

    .line 2881
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final setAreUserDisabledHdrTypesAllowedInternal(Z)V
    .registers 6

    .line 1592
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1593
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-ne v1, p1, :cond_9

    .line 1594
    monitor-exit v0

    return-void

    .line 1596
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 1597
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v1, v1

    if-nez v1, :cond_12

    .line 1598
    monitor-exit v0

    return-void

    .line 1600
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "are_user_disabled_hdr_formats_allowed"

    const/4 v3, 0x0

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    move p1, v3

    :goto_20
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-array p1, v3, [I

    .line 1604
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v1, :cond_2b

    .line 1605
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 1608
    :cond_2b
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayManagerService;[I)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 1613
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public setAutoBrightnessLoggingEnabled(Z)V
    .registers 4

    .line 2837
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2838
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_11

    .line 2841
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAutoBrightnessLoggingEnabled(Z)V

    .line 2843
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    .line 2504
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 2505
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 2506
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 2508
    :try_start_e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v2, p2}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_38

    if-nez v2, :cond_1d

    .line 2515
    :try_start_16
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_3f

    return-void

    .line 2512
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3, p1, v2, v0, p4}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForDisplayLocked(Landroid/hardware/display/BrightnessConfiguration;Lcom/android/server/display/DisplayDevice;ILjava/lang/String;)Z
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_38

    .line 2515
    :try_start_22
    iget-object p4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2517
    iget p4, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq p3, p4, :cond_2d

    .line 2518
    monitor-exit v1

    return-void

    .line 2520
    :cond_2d
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 2522
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 2524
    :cond_36
    monitor-exit v1

    return-void

    :catchall_38
    move-exception p1

    .line 2515
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2516
    throw p1

    :catchall_3f
    move-exception p0

    .line 2524
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/BrightnessConfiguration;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2531
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 2532
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v3

    .line 2533
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2535
    :try_start_e
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_31

    .line 2538
    :try_start_18
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2540
    iget p3, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-ne p2, p3, :cond_2d

    .line 2541
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 2543
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_38

    :catchall_31
    move-exception p1

    .line 2538
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2539
    throw p1

    .line 2543
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_2f

    throw p0
.end method

.method public final setBrightnessConfigurationForUserWithStatsInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/BrightnessConfiguration;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3614
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 3615
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v3

    .line 3616
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p2

    .line 3618
    :try_start_e
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_2d

    .line 3621
    :try_start_18
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 3623
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 3624
    monitor-exit p2

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_34

    :catchall_2d
    move-exception p1

    .line 3621
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 3622
    throw p1

    .line 3624
    :goto_34
    monitor-exit p2
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_2b

    throw p0
.end method

.method public final setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    .line 2714
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2715
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2716
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_22

    .line 2717
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2718
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/IntArray;

    .line 2717
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2720
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1066
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1067
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1069
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1073
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public setDisplayModeDirectorLoggingEnabled(Z)V
    .registers 3

    .line 2857
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2858
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    if-eqz p0, :cond_a

    .line 2859
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->setLoggingEnabled(Z)V

    .line 2861
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final setDisplayOffsetsInternal(III)V
    .registers 6

    .line 2679
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2680
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-nez p1, :cond_d

    .line 2682
    monitor-exit v0

    return-void

    .line 2684
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetXLocked()I

    move-result v1

    if-ne v1, p2, :cond_19

    .line 2685
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetYLocked()I

    move-result v1

    if-eq v1, p3, :cond_20

    .line 2690
    :cond_19
    invoke-virtual {p1, p2, p3}, Lcom/android/server/display/LogicalDisplay;->setDisplayOffsetsLocked(II)V

    const/4 p1, 0x0

    .line 2691
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2693
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final setDisplayPropertiesInternal(IZFIFFZZ)V
    .registers 16

    .line 2631
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2632
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-nez v1, :cond_d

    .line 2634
    monitor-exit v0

    return-void

    .line 2639
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p2, :cond_1a

    .line 2645
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    move p2, v4

    goto :goto_1b

    :cond_1a
    move p2, v3

    :goto_1b
    if-nez p4, :cond_4f

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_4f

    .line 2651
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 2654
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result p4

    goto :goto_4f

    :cond_31
    const-string v2, "DisplayManagerService"

    .line 2656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find a mode for the requestedRefreshRate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " on Display: "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_4f
    :goto_4f
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {p3}, Lcom/android/server/display/DisplayModeDirector;->getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5, p6}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequest(IIFF)V

    .line 2665
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    if-eqz p1, :cond_5f

    if-eqz p7, :cond_5f

    move v3, v4

    .line 2667
    :cond_5f
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getRequestedMinimalPostProcessingLocked()Z

    move-result p1

    if-eq p1, v3, :cond_69

    .line 2668
    invoke-virtual {v1, v3}, Lcom/android/server/display/LogicalDisplay;->setRequestedMinimalPostProcessingLocked(Z)V

    goto :goto_6a

    :cond_69
    move v4, p2

    :goto_6a
    if-eqz v4, :cond_6f

    .line 2673
    invoke-virtual {p0, p8}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2675
    :cond_6f
    monitor-exit v0

    return-void

    :catchall_71
    move-exception p0

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public final setDisplayScalingDisabledInternal(IZ)V
    .registers 5

    .line 2697
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2698
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-nez p1, :cond_d

    .line 2700
    monitor-exit v0

    return-void

    .line 2702
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isDisplayScalingDisabled()Z

    move-result v1

    if-eq v1, p2, :cond_1a

    .line 2706
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayScalingDisabledLocked(Z)V

    const/4 p1, 0x0

    .line 2707
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2709
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final setDisplayStateLimitInternal(Landroid/os/IBinder;I)V
    .registers 13

    const/4 v0, 0x2

    if-eqz p2, :cond_20

    if-eq p2, v0, :cond_20

    const-string p0, "DisplayManagerService"

    .line 3529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[api] setDisplayStateLimitInternal: unsupported : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3530
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3529
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3534
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3535
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3537
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mRequestDisplayStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3538
    :try_start_2c
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v8
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_8c

    .line 3539
    :try_start_2f
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->findDisplayStateLimitLockIndex(Landroid/os/IBinder;)I

    move-result v1

    if-gez v1, :cond_5f

    if-ne p2, v0, :cond_52

    .line 3544
    new-instance v9, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;IJ)V
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_89

    const/4 p2, 0x0

    .line 3546
    :try_start_41
    invoke-interface {p1, v9, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_4a
    .catchall {:try_start_41 .. :try_end_44} :catchall_89

    .line 3551
    :try_start_44
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 3548
    :catch_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DisplayStateLimitLock is already dead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    if-nez p2, :cond_74

    const-string p0, "DisplayManagerService"

    const-string/jumbo p1, "setDisplayStateLimitInternal: sameRequest: unknown"

    .line 3553
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    monitor-exit v8
    :try_end_5d
    .catchall {:try_start_44 .. :try_end_5d} :catchall_89

    :try_start_5d
    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_8c

    return-void

    :cond_5f
    if-nez p2, :cond_67

    .line 3558
    :try_start_61
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_74

    :cond_67
    if-ne p2, v0, :cond_74

    const-string p0, "DisplayManagerService"

    const-string/jumbo p1, "setDisplayStateLimitInternal: sameRequest: on"

    .line 3560
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    monitor-exit v8
    :try_end_72
    .catchall {:try_start_61 .. :try_end_72} :catchall_89

    :try_start_72
    monitor-exit v7
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_8c

    return-void

    .line 3565
    :cond_74
    :goto_74
    :try_start_74
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance p2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, v6}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayManagerService;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 3574
    monitor-exit v8
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_89

    .line 3575
    :try_start_7f
    new-instance p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v6, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3576
    monitor-exit v7
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_8c

    return-void

    :catchall_89
    move-exception p0

    .line 3574
    :try_start_8a
    monitor-exit v8
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw p0

    :catchall_8c
    move-exception p0

    .line 3576
    monitor-exit v7
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8c

    throw p0
.end method

.method public setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 4

    .line 2847
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2848
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_11

    .line 2851
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 2853
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setDisplayedContentSamplingEnabledInternal(IZII)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2803
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2807
    :cond_8
    invoke-static {p0, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result p0

    return p0
.end method

.method public setDockedAndIdleEnabled(ZI)V
    .registers 4

    .line 2885
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2886
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_10

    .line 2889
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAutomaticScreenBrightnessMode(Z)V

    .line 2891
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setRefreshRateSwitchingTypeInternal(I)V
    .registers 2

    .line 2485
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->setModeSwitchingType(I)V

    return-void
.end method

.method public setShouldAlwaysRespectAppRequestedModeInternal(Z)V
    .registers 2

    .line 2477
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->setShouldAlwaysRespectAppRequestedMode(Z)V

    return-void
.end method

.method public final setStableDisplaySizeLocked(II)V
    .registers 4

    .line 2362
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 2364
    :try_start_7
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1, v0}, Lcom/android/server/display/PersistentDataStore;->setStableDisplaySize(Landroid/graphics/Point;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    .line 2366
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    return-void

    :catchall_12
    move-exception p1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2367
    throw p1
.end method

.method public setTestModeEnabled(Z)V
    .registers 4

    .line 3596
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3597
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setTestModeEnabled(Z)V

    .line 3598
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final setUserDisabledHdrTypesInternal([I)V
    .registers 6

    .line 1546
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    if-nez p1, :cond_e

    :try_start_5
    const-string p0, "DisplayManagerService"

    const-string p1, "Null is not an expected argument to setUserDisabledHdrTypesInternal"

    .line 1548
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    monitor-exit v0

    return-void

    .line 1554
    :cond_e
    sget-object v1, Landroid/view/Display$HdrCapabilities;->HDR_TYPES:[I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->isSubsetOf([I[I)Z

    move-result v1

    if-nez v1, :cond_20

    const-string p0, "DisplayManagerService"

    const-string/jumbo p1, "userDisabledHdrTypes contains unexpected types"

    .line 1555
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    monitor-exit v0

    return-void

    .line 1559
    :cond_20
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1560
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1561
    monitor-exit v0

    return-void

    :cond_2d
    const-string v1, ""

    .line 1564
    array-length v2, p1

    if-eqz v2, :cond_44

    const-string v1, ","

    .line 1566
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1565
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1568
    :cond_44
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_disabled_hdr_formats"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1570
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 1571
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v1, :cond_60

    .line 1572
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/display/DisplayManagerService;[I)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 1578
    :cond_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V
    .registers 8

    .line 2387
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, -0x1

    if-eqz p2, :cond_1a

    .line 2388
    :try_start_6
    invoke-static {p2}, Lcom/android/server/display/DisplayManagerService;->isResolutionAndRefreshRateValid(Landroid/view/Display$Mode;)Z

    move-result v2

    if-nez v2, :cond_1a

    if-eq p1, v1, :cond_f

    goto :goto_1a

    .line 2390
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width, height and refresh rate of mode should be greater than 0 when setting the global user preferred display mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_18
    move-exception p0

    goto :goto_42

    :cond_1a
    :goto_1a
    if-nez p2, :cond_1e

    move v2, v1

    goto :goto_22

    .line 2395
    :cond_1e
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    :goto_22
    if-nez p2, :cond_26

    move v3, v1

    goto :goto_2a

    .line 2397
    :cond_26
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    :goto_2a
    if-nez p2, :cond_2e

    const/4 v4, 0x0

    goto :goto_32

    .line 2399
    :cond_2e
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    .line 2401
    :goto_32
    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/android/server/display/DisplayManagerService;->storeModeInPersistentDataStoreLocked(IIIF)V

    if-eq p1, v1, :cond_3b

    .line 2404
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V

    goto :goto_40

    .line 2406
    :cond_3b
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 2407
    invoke-virtual {p0, v3, v2, v4, p2}, Lcom/android/server/display/DisplayManagerService;->storeModeInGlobalSettingsLocked(IIFLandroid/view/Display$Mode;)V

    .line 2410
    :goto_40
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_18

    throw p0
.end method

.method public final setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V
    .registers 3

    .line 2425
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 2429
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    return-void
.end method

.method public final setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V
    .registers 4

    .line 1967
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1968
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p0, :cond_9

    .line 1969
    monitor-exit v0

    return-void

    .line 1972
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplayStateLocked(Landroid/os/IBinder;Z)V

    .line 1973
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 4

    .line 1941
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1942
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p0, :cond_9

    .line 1943
    monitor-exit v0

    return-void

    .line 1946
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 1947
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setupSchedulerPolicies()V
    .registers 4

    .line 819
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    .line 820
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    const/16 v1, 0xa

    const/4 v2, 0x5

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 819
    :goto_12
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 823
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    .line 824
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    .line 823
    :goto_24
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 827
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    .line 828
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    .line 827
    :goto_35
    invoke-static {p0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method

.method public shouldAlwaysRespectAppRequestedModeInternal()Z
    .registers 1

    .line 2481
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->shouldAlwaysRespectAppRequestedMode()Z

    move-result p0

    return p0
.end method

.method public final shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .registers 2

    .line 2033
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final startWifiDisplayScanInternal(I)V
    .registers 4

    .line 1435
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1436
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz p1, :cond_12

    .line 1441
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1442
    monitor-exit v0

    return-void

    .line 1438
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1a
    move-exception p0

    .line 1442
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final startWifiDisplayScanInternal(III)V
    .registers 6

    .line 1658
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1659
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz p1, :cond_12

    .line 1664
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;II)V

    .line 1665
    monitor-exit v0

    return-void

    .line 1661
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1a
    move-exception p0

    .line 1665
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 4

    .line 1446
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    .line 1447
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 1449
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequestedTime:Ljava/lang/String;

    .line 1450
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_2b

    .line 1451
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p1, :cond_2b

    .line 1452
    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    .line 1454
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayAdapter;->getVolumeControllerInstance()Lcom/android/server/display/VolumeController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    :cond_2b
    return-void
.end method

.method public final startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;II)V
    .registers 6

    .line 1669
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    .line 1670
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 1671
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequestedTime:Ljava/lang/String;

    .line 1672
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_2b

    .line 1673
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p1, :cond_2b

    .line 1674
    invoke-virtual {p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked(II)V

    .line 1675
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayAdapter;->getVolumeControllerInstance()Lcom/android/server/display/VolumeController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    :cond_2b
    return-void
.end method

.method public final stopWifiDisplayScanInternal(I)V
    .registers 4

    .line 1461
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1462
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz p1, :cond_12

    .line 1467
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1468
    monitor-exit v0

    return-void

    .line 1464
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1a
    move-exception p0

    .line 1468
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5

    .line 1472
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    .line 1473
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 1475
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequestedTime:Ljava/lang/String;

    .line 1476
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_24

    .line 1477
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_41

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    goto :goto_41

    :cond_24
    if-gez p1, :cond_41

    .line 1481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiDisplayScanRequestCount became negative: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DisplayManagerService"

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    :cond_41
    :goto_41
    return-void
.end method

.method public final storeModeInGlobalSettingsLocked(IIFLandroid/view/Display$Mode;)V
    .registers 7

    .line 2434
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_refresh_rate"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 2436
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v0, "user_preferred_resolution_height"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2438
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "user_preferred_resolution_width"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2440
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance p2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, p4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/Display$Mode;)V

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final storeModeInPersistentDataStoreLocked(IIIF)V
    .registers 6

    .line 2415
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 2419
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore;->setUserPreferredResolution(Lcom/android/server/display/DisplayDevice;II)Z

    .line 2421
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p1, p4}, Lcom/android/server/display/PersistentDataStore;->setUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;F)Z

    return-void
.end method

.method public systemReady(ZZ)V
    .registers 5

    .line 972
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 973
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 974
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    const/4 p1, 0x1

    .line 975
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 978
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 980
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateSettingsLocked()V

    .line 982
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserDisabledHdrTypesFromSettingsLocked()V

    .line 983
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserPreferredDisplayModeSettingsLocked()V

    .line 985
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz p1, :cond_26

    .line 986
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDexEmulator:Lcom/android/server/display/DisplayManagerService$DexEmulator;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->-$$Nest$monSystemReadyLocked(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V

    .line 989
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_7a

    .line 991
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    new-instance p2, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    invoke-direct {p2, p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayModeDirector;->setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V

    .line 993
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayModeDirector;->start(Landroid/hardware/SensorManager;)V

    .line 995
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 997
    new-instance p1, Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayManagerService$SettingsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    .line 999
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-virtual {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->startSynchronizing()V

    .line 1001
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.DREAMING_STARTED"

    .line 1002
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.DREAMING_STOPPED"

    .line 1003
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.DOCK_EVENT"

    .line 1004
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1009
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.wifi.STATE_CHANGE"

    .line 1010
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1011
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p2, v0, p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_7a
    move-exception p0

    .line 989
    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public final systemScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 5

    .line 2755
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2756
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2758
    monitor-exit v0

    return-object v2

    .line 2760
    :cond_c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-nez p0, :cond_16

    .line 2762
    monitor-exit v0

    return-object v2

    .line 2765
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    .line 2766
    new-instance p1, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {p1, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 2767
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 2768
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object p0

    .line 2769
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 2770
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 2771
    invoke-virtual {p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object p0

    .line 2772
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_46

    .line 2773
    invoke-static {p0}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0

    :catchall_46
    move-exception p0

    .line 2772
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final unregisterDisplayBrightnessListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .registers 3

    .line 3457
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3458
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3459
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final unregisterDisplayStateListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 4

    .line 3471
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3472
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3473
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    .line 1061
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateDexDisplayStateInternal(Z)I
    .registers 11

    .line 6188
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 6189
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceRepository;->hasExternalDisplayDevice()Z

    move-result v1

    .line 6190
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b0

    if-eqz v1, :cond_19

    if-eqz p1, :cond_14

    .line 6194
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceRepository;->releaseHDMIWake()V

    goto :goto_19

    .line 6197
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceRepository;->acquireHDMIWake()V

    .line 6202
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 6203
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceRepository;->getDexDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 6205
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    const/4 v3, -0x1

    if-eqz v2, :cond_94

    .line 6206
    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-nez v4, :cond_35

    goto :goto_94

    .line 6212
    :cond_35
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v4, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_5a

    .line 6214
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayDevice;->updateDexEnabledStateLocked(Z)V

    const-string p0, "DisplayManagerService"

    .line 6215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateDexDisplayStateInternalLocked: cannot found display: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6217
    monitor-exit v1

    return v3

    .line 6220
    :cond_5a
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    .line 6221
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    if-eqz p1, :cond_6f

    if-eqz v6, :cond_6f

    .line 6224
    iget v2, v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 6225
    iget v6, v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    goto :goto_72

    .line 6227
    :cond_6f
    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    move v6, v2

    :goto_72
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz p1, :cond_7d

    .line 6232
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayDevice;->updateDexEnabledStateLocked(Z)V

    .line 6233
    invoke-virtual {v0, v7, v2, v6}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFF)Ljava/lang/Runnable;

    goto :goto_83

    .line 6235
    :cond_7d
    invoke-virtual {v0, v8, v2, v6}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFF)Ljava/lang/Runnable;

    .line 6236
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayDevice;->updateDexEnabledStateLocked(Z)V

    .line 6239
    :goto_83
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v4, p1}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    .line 6240
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1, v7}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 6242
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 6243
    monitor-exit v1

    return v3

    :cond_94
    :goto_94
    const-string p0, "DisplayManagerService"

    .line 6208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateDexDisplayStateInternal: abnormal device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    monitor-exit v1

    return v3

    :catchall_ad
    move-exception p0

    .line 6244
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_1c .. :try_end_af} :catchall_ad

    throw p0

    :catchall_b0
    move-exception p0

    .line 6190
    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p0
.end method

.method public final updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .registers 15

    .line 2250
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 2251
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-nez v1, :cond_8b

    .line 2252
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-nez v1, :cond_14

    return-object v2

    .line 2256
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    .line 2257
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2262
    iget v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_38

    .line 2263
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimitLocks:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateLimits:Landroid/util/SparseIntArray;

    .line 2264
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 2263
    invoke-virtual {p0, v4, v7, v0}, Lcom/android/server/display/DisplayManagerService;->getDesiredStateLimitLocked(Ljava/util/ArrayList;ILcom/android/server/display/DisplayDeviceInfo;)I

    move-result v4

    .line 2266
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Lcom/android/server/display/DisplayManagerService;->getCopyOfArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v12, v7

    goto :goto_3a

    :cond_38
    move-object v12, v2

    move v4, v6

    .line 2271
    :goto_3a
    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    const/4 v8, 0x2

    if-eqz v7, :cond_4f

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v9, 0x800000

    and-int/2addr v7, v9

    if-eqz v7, :cond_4f

    .line 2273
    invoke-static {v3}, Landroid/view/Display;->isDozeState(I)Z

    move-result v7

    if-eqz v7, :cond_4f

    move v11, v6

    move v3, v8

    goto :goto_50

    :cond_4f
    move v11, v4

    .line 2278
    :goto_50
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v0, v8, :cond_5b

    invoke-static {v3}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    move v3, v5

    .line 2284
    :cond_5b
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mNeedSkipDozeState:Z

    if-eqz v0, :cond_76

    .line 2285
    invoke-static {v3}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "DisplayManagerService"

    const-string v3, "Ignore setting display state doze while unfolding"

    .line 2286
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v5

    goto :goto_77

    .line 2288
    :cond_6e
    invoke-static {v3}, Landroid/view/Display;->isActiveState(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 2289
    iput-boolean v6, p0, Lcom/android/server/display/DisplayManagerService;->mNeedSkipDozeState:Z

    :cond_76
    move v8, v3

    :goto_77
    if-eqz v8, :cond_8b

    .line 2296
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 2297
    iget v9, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    iget v10, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFFILjava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    :cond_8b
    return-object v2
.end method

.method public final updateEnabledDexDisplayLocked()V
    .registers 1

    return-void
.end method

.method public final updateSettingsLocked()V
    .registers 5

    .line 1224
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "minimal_post_processing_allowed"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    return-void
.end method

.method public final updateUserDisabledHdrTypesFromSettingsLocked()V
    .registers 5

    .line 1229
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 1230
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "are_user_disabled_hdr_formats_allowed"

    const/4 v2, 0x1

    .line 1229
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 1234
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_disabled_hdr_formats"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    :try_start_23
    const-string v2, ","

    .line 1240
    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1241
    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 1242
    :goto_2e
    array-length v2, v0

    if-ge v1, v2, :cond_4d

    .line 1243
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_3b} :catch_3e

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :catch_3e
    move-exception v0

    const-string v1, "DisplayManagerService"

    const-string v2, "Failed to parse USER_DISABLED_HDR_FORMATS. Clearing the setting."

    .line 1246
    invoke-static {v1, v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    goto :goto_4d

    .line 1251
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final updateUserPreferredDisplayModeSettingsLocked()V
    .registers 6

    .line 1264
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_refresh_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 1266
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_preferred_resolution_height"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1268
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "user_preferred_resolution_width"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1270
    new-instance v3, Landroid/view/Display$Mode;

    invoke-direct {v3, v2, v1, v0}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1271
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->isResolutionAndRefreshRateValid(Landroid/view/Display$Mode;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    iput-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    return-void
.end method

.method public final updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 7

    .line 3043
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 3044
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 3045
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object v0

    .line 3046
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 3047
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 3048
    iget v3, v2, Landroid/hardware/display/DisplayViewport;->type:I

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_18

    iget-object v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3050
    iget v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {v3}, Landroid/view/Display;->isActiveState(I)Z

    move-result v3

    iput-boolean v3, v2, Landroid/hardware/display/DisplayViewport;->isActive:Z

    goto :goto_18

    .line 3053
    :cond_45
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz p1, :cond_4f

    .line 3054
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4f
    return-void
.end method

.method public final userScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 3

    .line 2777
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2778
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    .line 2780
    monitor-exit v0

    return-object p0

    .line 2783
    :cond_c
    new-instance p1, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {p1, p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 2785
    invoke-virtual {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object p0

    .line 2786
    invoke-static {p0}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 2787
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 2562
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "DisplayManagerService"

    const-string p1, "brightness curve is too dark"

    .line 2565
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public final validatePackageName(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_20

    .line 1683
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 1685
    array-length p1, p0

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_20

    aget-object v2, p0, v1

    .line 1686
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    return v0
.end method

.method public windowManagerAndInputReady()V
    .registers 5

    .line 950
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 951
    :try_start_3
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 952
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 954
    const-class v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

    .line 960
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    const/4 v1, 0x0

    .line 964
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 965
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method
