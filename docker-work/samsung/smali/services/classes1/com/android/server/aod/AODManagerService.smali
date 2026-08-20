.class public final Lcom/android/server/aod/AODManagerService;
.super Lcom/android/server/SystemService;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/aod/AODManagerService$AODDozeLock;,
        Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;,
        Lcom/android/server/aod/AODManagerService$AODListenerRecord;,
        Lcom/android/server/aod/AODManagerService$LocalService;,
        Lcom/android/server/aod/AODManagerService$BinderService;,
        Lcom/android/server/aod/AODManagerService$AODHandler;,
        Lcom/android/server/aod/AODManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field public static final ANALOG_CLOCK_TYPE_DIVIDER:I = 0x2710

.field public static final AOD_DEBUG:Z = false

.field public static AOD_SCREEN_TURNING_ON_TIMEOUT:I = 0x0

.field public static final AOD_SETTING_CLOCK_TYPE_URI:Ljava/lang/String; = "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

.field public static final AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

.field public static final AOD_TSP_STATE_RETRY_COUNT:I = 0x2

.field public static final AOD_TSP_STATE_RETRY_DELAY:I = 0x1388

.field public static final DEBUG_TURNING_ON_DELAYED:I

.field public static GREAT_SPEN_USP_LEVEL:I = 0x0

.field public static final MSG_AOD_APP_LOG:I = 0x64

.field public static final PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field public static final SUPPORT_AOD:Z

.field public static final SUPPORT_AOD_LIVE_CLOCK:Z

.field public static final SUPPORT_DUAL_DISPLAY_TSP_NODE:Z

.field public static final TAG:Ljava/lang/String; = "AODManagerService"

.field public static final TSP_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field public static final TSP_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/input/enabled"

.field public static final TSP_MAIN_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp1/input/enabled"

.field public static final TSP_SUB_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp2/input/enabled"

.field public static final WACOM_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/aod_enable"

.field public static final WACOM_SPEN_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"


# instance fields
.field public mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

.field public mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

.field public final mAODDozeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/aod/AODManagerService$AODDozeLock;",
            ">;"
        }
    .end annotation
.end field

.field public final mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

.field public mAODLogHandler:Landroid/os/Handler;

.field public mAODLogHandlerThread:Landroid/os/HandlerThread;

.field public mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

.field public mAODTspStateRetryCount:I

.field public mAppLogger:Lcom/android/server/aod/AODLogger;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mCalendarDataDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCalendarDataTimeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContentObserver:Landroid/database/ContentObserver;

.field public final mContext:Landroid/content/Context;

.field public mContextForUser:Landroid/content/Context;

.field public mCoverController:Lcom/android/server/aod/AODSCoverController;

.field public mDefaultDisplayState:I

.field public mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mIsAODAnalogLiveClock:Z

.field public mIsAODModeEnabled:Z

.field public mIsAODStartStop:Z

.field public mIsAODTapToShow:Z

.field public mIsEdgeShowWhenScreenOff:Z

.field public mIsFingerScreenLock:Z

.field public mIsFingerScreenOffIconAOD:Z

.field public mIsMPSMEnabled:Z

.field public mIsSingleTouchMode:Z

.field public mIsUPSMEnabled:Z

.field public final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/aod/AODManagerService$AODListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mLiveClockImageInfo:Ljava/lang/String;

.field public mLiveClockLogger:Lcom/android/server/aod/AODLogger;

.field public final mLock:Ljava/lang/Object;

.field public mLooper:Landroid/os/Looper;

.field public final mRetryAODTspStateRunnable:Ljava/lang/Runnable;

.field public final mScreenTurningOnLock:Ljava/lang/Object;

.field public final mScreenTurningOnRunnable:Ljava/lang/Runnable;

.field public mSelfIconImageInfo:Ljava/lang/String;

.field public mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

.field public mSpenUspLevel:I

.field public mSystemUiUid:I

.field public mTspH:I

.field public mTspLogger:Lcom/android/server/aod/AODLogger;

.field public final mTspRects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mTspW:I

.field public mTspX:I

.field public mTspY:I

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAODChangeListener(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAODDozeLocks(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAODHandler(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAODSettingHelper(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSettingHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAODTspStateRetryCount(Lcom/android/server/aod/AODManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverController(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputDeviceManager(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsAODAnalogLiveClock(Lcom/android/server/aod/AODManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsAODModeEnabled(Lcom/android/server/aod/AODManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSingleTouchMode(Lcom/android/server/aod/AODManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooper(Lcom/android/server/aod/AODManagerService;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenTurningOnLock(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenTurningOnRunnable(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAODCallback(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAODChangeListener(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsAODAnalogLiveClock(Lcom/android/server/aod/AODManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsSingleTouchMode(Lcom/android/server/aod/AODManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$macquireDozeInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddAODAppLog(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODAppLog(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddAODTspLog(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddLogTextInternal(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addLogTextInternal(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAODClockType(Lcom/android/server/aod/AODManagerService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getAODClockType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetActiveImageInfoInternal(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getActiveImageInfoInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreadyToScreenTurningOnInternal(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->readyToScreenTurningOnInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterAODDozeCallbackInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->registerAODDozeCallbackInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterAODListenerInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->registerAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseDozeInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->releaseDozeInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestAODToastInternal(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLiveClockCommandInternal(Lcom/android/server/aod/AODManagerService;III[I)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->setLiveClockCommandInternal(III[I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetLiveClockImageInternal(Lcom/android/server/aod/AODManagerService;II[BLjava/lang/String;)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->setLiveClockImageInternal(II[BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetLiveClockInfoInternal(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I
    .registers 19

    invoke-virtual/range {p0 .. p17}, Lcom/android/server/aod/AODManagerService;->setLiveClockInfoInternal(IJJJJJJJJ)I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$msetLiveClockNeedleInternal(Lcom/android/server/aod/AODManagerService;[B)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->setLiveClockNeedleInternal([B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterAODDozeCallbackInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterAODListenerInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->unregisterAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAODTspRectInternal(Lcom/android/server/aod/AODManagerService;IIIILjava/lang/String;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAODTspState(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDefaultDisplayState(Lcom/android/server/aod/AODManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDozeAlwaysOn(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->updateDozeAlwaysOn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwakeUpInternal(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->wakeUpInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteAODCommandInternal(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetAOD_SCREEN_TURNING_ON_TIMEOUT()I
    .registers 1

    sget v0, Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_TURNING_ON_TIMEOUT:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetAOD_SETTING_CLOCK_TYPE_URI_PARSED()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_TURNING_ON_DELAYED()I
    .registers 1

    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSUPPORT_DUAL_DISPLAY_TSP_NODE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_DUAL_DISPLAY_TSP_NODE:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    const-string v0, "debug.aod.turningondelay"

    const/4 v1, 0x0

    .line 83
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    const-string v0, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    .line 146
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/16 v0, 0x1e

    .line 155
    sput v0, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    .line 158
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "aodversion"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD:Z

    .line 160
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp1/input/enabled"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp2/input/enabled"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v1, 0x1

    :cond_44
    sput-boolean v1, Lcom/android/server/aod/AODManagerService;->SUPPORT_DUAL_DISPLAY_TSP_NODE:Z

    .line 163
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activeclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD_LIVE_CLOCK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    .line 137
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    const/4 v1, -0x1

    .line 153
    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    .line 173
    new-instance v1, Lcom/android/server/aod/AODLogger;

    const-string v2, "AODManagerService_App"

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    .line 174
    new-instance v1, Lcom/android/server/aod/AODLogger;

    const-string v2, "AODManagerService_LiveClock"

    const/16 v3, 0x96

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    .line 175
    new-instance v1, Lcom/android/server/aod/AODLogger;

    const-string v2, "AODManagerService_TSP"

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    .line 177
    new-instance v1, Lcom/android/server/aod/AODManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$1;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    .line 194
    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    .line 196
    new-instance v1, Lcom/android/server/aod/AODManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$2;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mRetryAODTspStateRunnable:Ljava/lang/Runnable;

    .line 206
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 207
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContextForUser:Landroid/content/Context;

    .line 208
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mUserManager:Landroid/os/UserManager;

    .line 209
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 210
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    .line 211
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AODManagerService.LogThread"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    .line 212
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 213
    new-instance v2, Lcom/android/server/aod/AODManagerService$3;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/aod/AODManagerService$3;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    .line 227
    new-instance v2, Lcom/android/server/aod/AODSettingHelper;

    invoke-direct {v2, p1}, Lcom/android/server/aod/AODSettingHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 228
    new-instance v2, Lcom/android/server/aod/AODSCoverController;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-direct {v2, p1, v3}, Lcom/android/server/aod/AODSCoverController;-><init>(Landroid/content/Context;Lcom/android/server/aod/AODSettingHelper;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    .line 230
    new-instance v2, Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/aod/AODManagerService$SettingsObserver;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    .line 232
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 234
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$SettingsObserver;->observe()V

    const-string v1, "display"

    .line 236
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 237
    new-instance v1, Lcom/android/server/aod/AODManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$4;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz p1, :cond_fe

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p1, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 259
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_fe

    .line 261
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V

    .line 266
    :cond_fe
    sput v0, Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_TURNING_ON_TIMEOUT:I

    .line 270
    sget-object p0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AOD_SCREEN_TURNING_ON_TIMEOUT : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_TURNING_ON_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native setActiveImage(I[B)I
.end method

.method public static native setAnalogClockInfo(IIII)I
.end method

.method public static native setAnalogClockInfoV4(IIIIII)I
.end method

.method public static native setCurrentTime(IIIIII)I
.end method

.method public static native setDigitalClockInfo(IIIIIIIIIIIIIIIIIIII)I
.end method

.method public static native setDigitalClockInfoV4(IIIIIIIIIIIIIIII)I
.end method

.method public static native setLiveClockCommand(III[I)I
.end method

.method public static native setLiveClockImage(II[B)I
.end method

.method public static native setLiveClockInfo(IJJJJJJJJ)I
.end method

.method public static native setLiveClockNeedle([B)V
.end method

.method public static native setSelfGridInfo(IIIII)I
.end method

.method public static native setSelfIconInfo(IIIIII)I
.end method

.method public static native setSelfPartialHLPMScan(IIIIIIIII)I
.end method

.method public static native turnOffSelfMove()I
.end method

.method public static native turnOnSelfMove()I
.end method


# virtual methods
.method public final acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 16

    .line 915
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 916
    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDozeInternal: mAODCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_16

    const-string v3, "existed"

    goto :goto_19

    :cond_16
    const-string/jumbo v3, "null"

    :goto_19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_34

    .line 918
    monitor-exit v0

    return-void

    .line 920
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->findAODDozeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v2

    if-gez v2, :cond_76

    .line 923
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/aod/AODManagerService$AODDozeLock;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_7d

    const/4 p2, 0x0

    .line 925
    :try_start_47
    invoke-interface {p1, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_6e
    .catchall {:try_start_47 .. :try_end_4a} :catchall_7d

    .line 929
    :try_start_4a
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    .line 930
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_59

    .line 932
    monitor-exit v0

    return-void

    .line 938
    :cond_59
    iget p1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_65

    const/4 p2, 0x3

    if-eq p1, p2, :cond_65

    const/4 p2, 0x4

    if-eq p1, p2, :cond_65

    goto :goto_6c

    .line 942
    :cond_65
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz p0, :cond_6c

    .line 943
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeAcquired()V

    .line 947
    :cond_6c
    :goto_6c
    monitor-exit v0

    return-void

    .line 927
    :catch_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AOD doze lock is already dead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    const-string p0, "acquireDozeInternal: already acquired"

    .line 935
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    monitor-exit v0

    return-void

    :catchall_7d
    move-exception p0

    .line 947
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_4a .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method public final addAODAppLog(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 1750
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 1751
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1752
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method public final addAODTspLog(Ljava/lang/String;)V
    .registers 3

    .line 1761
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    return-void
.end method

.method public final addLiveClockDumpLog(Ljava/lang/String;)V
    .registers 3

    .line 1757
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    return-void
.end method

.method public final addLogTextInternal(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 826
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 827
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 828
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo p1, "logs"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 829
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 830
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final checkSystemUid()V
    .registers 3

    .line 1723
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1724
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUid(I)Z

    move-result p0

    if-eqz p0, :cond_b

    return-void

    .line 1727
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disallowed call for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkSystemUidOrSystemUiUid()V
    .registers 3

    .line 1731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1732
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUiUid(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_2c

    .line 1735
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disallowed call for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final checkSystemUidOrSystemUiUidOrSystemApp()V
    .registers 3

    .line 1739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1740
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUiUid(I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemApp(I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_32

    .line 1743
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disallowed call for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    return-void
.end method

.method public final displayStateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_1f

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_19

    const/4 p0, 0x3

    if-eq p1, p0, :cond_16

    const/4 p0, 0x4

    if-eq p1, p0, :cond_13

    .line 1778
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p0, "DOZE_SUSPEND"

    return-object p0

    :cond_16
    const-string p0, "DOZE"

    return-object p0

    :cond_19
    const-string p0, "ON"

    return-object p0

    :cond_1c
    const-string p0, "OFF"

    return-object p0

    :cond_1f
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "AODMANAGER (dumpsys AODManagerService)"

    .line 1783
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1785
    invoke-static {p1}, Lcom/android/server/aod/AODConfig;->dump(Ljava/io/PrintWriter;)V

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager.getCurrentUser()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1788
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1789
    :try_start_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAODCallback= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 1791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AODDozeLock= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 1793
    :cond_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_29 .. :try_end_68} :catchall_15c

    .line 1794
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "----- Regarding AOD TSP -----"

    .line 1795
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAODModeEnabled(tsp.cmd aod_enable)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsSingleTouchMode(tsp.input.enabled)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    monitor-enter v1

    .line 1799
    :try_start_a1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tsp touch rect(uid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    .line 1802
    :cond_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_a1 .. :try_end_e0} :catchall_159

    .line 1803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tsp touch : x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "live clock image info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockImageInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Self Icon image info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSelfIconImageInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1807
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    .line 1808
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    .line 1809
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    .line 1811
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    if-eqz p0, :cond_158

    .line 1812
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODSCoverController;->dump(Ljava/io/PrintWriter;)V

    :cond_158
    return-void

    :catchall_159
    move-exception p0

    .line 1802
    :try_start_15a
    monitor-exit v1
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    throw p0

    :catchall_15c
    move-exception p0

    .line 1793
    :try_start_15d
    monitor-exit v0
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15c

    throw p0
.end method

.method public final findAODDozeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5

    .line 995
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 997
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public final getAODClockType()I
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1082
    :try_start_2
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mContextForUser:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1083
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1085
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_23

    .line 1086
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p0, 0x0

    .line 1087
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_2b
    .catchall {:try_start_2 .. :try_end_22} :catchall_29

    move v0, p0

    :cond_23
    if-eqz v1, :cond_32

    .line 1094
    :goto_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_32

    :catchall_29
    move-exception p0

    goto :goto_33

    :catch_2b
    move-exception p0

    .line 1091
    :try_start_2c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    if-eqz v1, :cond_32

    goto :goto_25

    :cond_32
    :goto_32
    return v0

    :goto_33
    if-eqz v1, :cond_38

    .line 1094
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1097
    :cond_38
    throw p0
.end method

.method public final getActiveImageInfoInternal()Ljava/lang/String;
    .registers 1

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSystemUiUid()I
    .registers 5

    .line 1683
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    const-string v0, "com.android.systemui"

    const-wide/32 v1, 0x100000

    const/4 v3, 0x0

    .line 1684
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    return p0
.end method

.method public final isSystemApp(I)Z
    .registers 9

    .line 1697
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1698
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1700
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_54

    .line 1702
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    if-eqz v2, :cond_3d

    .line 1705
    array-length p1, v2

    move v1, v0

    :goto_16
    if-ge v1, p1, :cond_53

    aget-object v3, v2, v1

    const/4 v4, 0x1

    .line 1707
    :try_start_1b
    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 1708
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_25} :catch_2a

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_3a

    return v4

    :catch_2a
    move-exception v5

    .line 1713
    sget-object v6, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "Could not find package [%s]"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1717
    :cond_3d
    sget-object p0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No known packages with uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return v0

    :catchall_54
    move-exception p0

    .line 1702
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1703
    throw p0
.end method

.method public final isSystemUiUid(I)Z
    .registers 2

    .line 1692
    iget p0, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public final isSystemUid(I)Z
    .registers 2

    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 288
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x258

    if-ne p1, v0, :cond_1f

    .line 291
    :try_start_7
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    if-eqz p1, :cond_13

    .line 292
    invoke-virtual {p1}, Lcom/android/server/aod/AODSCoverController;->register()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    :cond_13
    :goto_13
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    const-string v0, "SemInputDeviceManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    :cond_1f
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 276
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getSystemUiUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    if-gtz v0, :cond_f

    .line 279
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SysUI package not found!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_f
    new-instance v0, Lcom/android/server/aod/AODManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$BinderService-IA;)V

    const-string v2, "AODManagerService"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 283
    const-class v0, Lcom/samsung/android/aod/AODManagerInternal;

    new-instance v2, Lcom/android/server/aod/AODManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserSwitching from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContextForUser:Landroid/content/Context;

    .line 305
    sget-boolean p1, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD_LIVE_CLOCK:Z

    if-eqz p1, :cond_3f

    .line 306
    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 307
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 308
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->registerAODClockContentObserver()V

    .line 311
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 316
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked: user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-boolean p1, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD_LIVE_CLOCK:Z

    if-eqz p1, :cond_1e

    .line 318
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->registerAODClockContentObserver()V

    :cond_1e
    return-void
.end method

.method public final readyToScreenTurningOnInternal()V
    .registers 4

    .line 834
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 835
    invoke-static {}, Lcom/android/server/aod/AODConfig;->isNeedsScreenTurningOnDelayed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 836
    sget-object p0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "readyToScreenTurningOn : Not allowed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 839
    :cond_12
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_15
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readyToScreenTurningOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    if-eqz v2, :cond_2f

    .line 842
    invoke-interface {v2}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    const/4 v1, 0x0

    .line 843
    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    .line 844
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_35

    :cond_2f
    const-string/jumbo p0, "readyToScreenTurningOn : Do nothing, There is no Listener"

    .line 846
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :goto_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final registerAODClockContentObserver()V
    .registers 6

    .line 1054
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1055
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1a

    .line 1056
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAODClockContentObserver unregister before ContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    .line 1058
    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Landroid/database/ContentObserver;

    .line 1061
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getAODClockType()I

    move-result v1

    div-int/lit16 v1, v1, 0x2710

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_25

    goto :goto_26

    :cond_25
    move v3, v2

    :goto_26
    iput-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 1062
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerAODClockContentObserver: mIsAODAnalogLiveClock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    new-instance v1, Lcom/android/server/aod/AODManagerService$5;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/aod/AODManagerService$5;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Landroid/database/ContentObserver;

    .line 1074
    sget-object p0, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v3, -0x2

    invoke-virtual {v0, p0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerAODDozeCallbackInternal(Landroid/os/IBinder;)V
    .registers 6

    .line 892
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 893
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-nez v1, :cond_1f

    .line 894
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAODDozeCallbackInternal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    goto :goto_27

    .line 897
    :cond_1f
    sget-object p0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerAODDozeCallbackInternal : already registered"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final registerAODListenerInternal(Landroid/os/IBinder;)V
    .registers 6

    .line 852
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 855
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v2, :cond_9

    .line 857
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-$$Nest$fgettoken(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 858
    sget-object p0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerAODListenerInternal : already registered"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    monitor-exit v0

    return-void

    .line 863
    :cond_2b
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    .line 864
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final releaseDozeInternal(Landroid/os/IBinder;)V
    .registers 6

    .line 951
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 952
    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseDozeInternal: mAODCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_17

    const-string v3, "existed"

    goto :goto_1a

    :cond_17
    const-string/jumbo v3, "null"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_58

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    goto :goto_58

    .line 956
    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->findAODDozeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    if-gez p1, :cond_45

    const-string/jumbo p0, "releaseDozeInternal: cannot find"

    .line 958
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    monitor-exit v0

    return-void

    .line 961
    :cond_45
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 962
    iget-object v2, v1, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 963
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->removeDozeLockLocked(I)V

    .line 964
    monitor-exit v0

    return-void

    .line 954
    :cond_58
    :goto_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    .line 964
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public final removeDozeLockLocked(I)V
    .registers 3

    .line 968
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 969
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 970
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz p0, :cond_14

    .line 971
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeReleased()V

    :cond_14
    return-void
.end method

.method public final removeDozeLockLocked(Lcom/android/server/aod/AODManagerService$AODDozeLock;Z)V
    .registers 4

    .line 977
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_16

    .line 978
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 979
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz p0, :cond_16

    .line 980
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeReleased()V

    :cond_16
    return-void
.end method

.method public final requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .registers 6

    .line 986
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter p1

    .line 987
    :try_start_3
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestAODToastInternal: mAODCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v2, :cond_17

    const-string v2, "existed"

    goto :goto_1a

    :cond_17
    const-string/jumbo v2, "null"

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz p0, :cond_33

    .line 989
    invoke-virtual {p0, p2}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V

    .line 991
    :cond_33
    monitor-exit p1

    return-void

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final requestReCalToTSP()V
    .registers 8

    const-string/jumbo v0, "requestReCalToTSP"

    .line 543
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v3, "sync_changed,1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 544
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setLiveClockCommandInternal(III[I)I
    .registers 5

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 1049
    sget-object p0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string p1, "AODConfig.SUPPORT_ACTIVE_CLOCK is FALSE"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final setLiveClockImageInternal(II[BLjava/lang/String;)I
    .registers 5

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 1039
    sget-object p0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string p1, "AODConfig.SUPPORT_ACTIVE_CLOCK is FALSE"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final setLiveClockInfoInternal(IJJJJJJJJ)I
    .registers 19

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method public final setLiveClockNeedleInternal([B)V
    .registers 2

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    return-void
.end method

.method public final supportPartialDisplayOff(Ljava/lang/String;)Z
    .registers 9

    const-string/jumbo p0, "supportPartialDisplayOff IOException : "

    .line 383
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    const/4 v1, 0x0

    .line 386
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_80

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_80

    .line 390
    :cond_1e
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_aa
    .catchall {:try_start_10 .. :try_end_28} :catchall_a8

    .line 392
    :try_start_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5c

    const/4 v2, 0x2

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_7d
    .catchall {:try_start_28 .. :try_end_33} :catchall_7a

    if-nez v4, :cond_55

    .line 396
    :try_start_35
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_39} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_7d
    .catchall {:try_start_35 .. :try_end_39} :catchall_7a

    goto :goto_55

    :catch_3a
    move-exception p1

    .line 398
    :try_start_3b
    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "supportPartialDisplayOff NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 402
    :cond_55
    :goto_55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_58} :catch_7d
    .catchall {:try_start_3b .. :try_end_58} :catchall_7a

    const/4 p1, -0x1

    if-ne v2, p1, :cond_5d

    return v3

    :cond_5c
    move-object v1, v0

    :cond_5d
    if-eqz v1, :cond_d4

    .line 415
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_64

    goto/16 :goto_d4

    :catch_64
    move-exception p1

    .line 418
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :catchall_7a
    move-exception p1

    move-object v1, v0

    goto :goto_d6

    :catch_7d
    move-exception p1

    move-object v1, v0

    goto :goto_ab

    .line 387
    :cond_80
    :goto_80
    :try_start_80
    sget-object p1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supportPartialDisplayOff file.exists() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , file.canWrite() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_a7} :catch_aa
    .catchall {:try_start_80 .. :try_end_a7} :catchall_a8

    return v3

    :catchall_a8
    move-exception p1

    goto :goto_d6

    :catch_aa
    move-exception p1

    .line 410
    :goto_ab
    :try_start_ab
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supportPartialDisplayOff Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c5
    .catchall {:try_start_ab .. :try_end_c5} :catchall_a8

    if-eqz v1, :cond_d4

    .line 415
    :try_start_c7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_d4

    :catch_cb
    move-exception p1

    .line 418
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6c

    :cond_d4
    :goto_d4
    const/4 p0, 0x1

    return p0

    :goto_d6
    if-eqz v1, :cond_f1

    .line 415
    :try_start_d8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_f1

    :catch_dc
    move-exception v0

    .line 418
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_f1
    :goto_f1
    throw p1
.end method

.method public final unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V
    .registers 5

    .line 903
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 904
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v1, :cond_23

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-$$Nest$fgettoken(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 905
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterAODDozeCallbackInternal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p1, 0x0

    .line 907
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    goto :goto_2b

    .line 909
    :cond_23
    sget-object p0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterAODDozeCallbackInternal : cannot find matched callback"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :goto_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final unregisterAODListenerInternal(Landroid/os/IBinder;)V
    .registers 7

    .line 869
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 873
    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v3, :cond_a

    .line 875
    invoke-static {v3}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-$$Nest$fgettoken(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v1, v3

    goto :goto_a

    :cond_24
    if-nez v1, :cond_30

    .line 881
    sget-object p0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterAODListenerInternal : cannot find the matched host"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    monitor-exit v0

    return-void

    .line 884
    :cond_30
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 885
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3d
    const/4 p0, 0x0

    .line 887
    invoke-interface {p1, v1, p0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 888
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final updateAODChargingMode(Z)V
    .registers 4

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isDozeAlwaysOn()Z

    move-result v0
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_6} :catch_1d

    if-eq v0, p1, :cond_1c

    .line 708
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {p1}, Lcom/android/server/aod/AODSettingHelper;->isAODChargingMode()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 709
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/aod/AODSettingHelper;->setAODChargingMode(Z)V

    const-string/jumbo p1, "updateAODChargingMode: aodChargingMode = true"

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    :cond_1c
    return-void

    :catch_1d
    move-exception p0

    .line 704
    sget-object p1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAODChargingMode : doze_always_on doesn\'t exist. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateAODTspRectInternal(IIIILjava/lang/String;)V
    .registers 8

    .line 426
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 427
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    monitor-enter v0

    if-gez p3, :cond_14

    if-gez p4, :cond_14

    if-gez p1, :cond_14

    if-gez p2, :cond_14

    .line 429
    :try_start_e
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    invoke-virtual {p1, p5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 431
    :cond_14
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    invoke-virtual {v1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_2b

    .line 433
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 434
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    invoke-virtual {p1, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 436
    :cond_2b
    iput p3, v1, Landroid/graphics/Rect;->left:I

    .line 437
    iput p4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p1

    .line 438
    iput p3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, p2

    .line 439
    iput p4, v1, Landroid/graphics/Rect;->bottom:I

    .line 442
    :goto_35
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_1ab

    .line 444
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 445
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_87

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 447
    sget-object p4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAODTspRectInternal union: key : "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " rect : "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_e .. :try_end_86} :catchall_1ad

    goto :goto_4c

    :cond_87
    const/4 p2, 0x0

    .line 452
    :try_start_88
    new-instance p3, Ljava/io/File;

    const-string p4, "/sys/class/sec/tsp/cmd"

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_16d

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result p4

    if-nez p4, :cond_9d

    goto/16 :goto_16d

    .line 456
    :cond_9d
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_a2} :catch_185
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_a2} :catch_172
    .catchall {:try_start_88 .. :try_end_a2} :catchall_16f

    .line 457
    :try_start_a2
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iput p3, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    .line 458
    iget p5, p1, Landroid/graphics/Rect;->top:I

    iput p5, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    .line 459
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    .line 460
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "set_aod_rect,"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "UTF-8"

    .line 463
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 464
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 466
    new-instance p1, Ljava/io/File;

    const-string p3, "/sys/class/sensors/light_sensor/set_aod_rect/"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_157

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p3

    if-nez p3, :cond_106

    goto :goto_157

    .line 470
    :cond_106
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10b
    .catch Ljava/io/FileNotFoundException; {:try_start_a2 .. :try_end_10b} :catch_169
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_10b} :catch_165
    .catchall {:try_start_a2 .. :try_end_10b} :catchall_161

    .line 471
    :try_start_10b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    .line 472
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write([B)V

    .line 473
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V
    :try_end_143
    .catch Ljava/io/FileNotFoundException; {:try_start_10b .. :try_end_143} :catch_155
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_143} :catch_153
    .catchall {:try_start_10b .. :try_end_143} :catchall_151

    .line 481
    :try_start_143
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    .line 484
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_149} :catch_14b
    .catchall {:try_start_143 .. :try_end_149} :catchall_1ad

    goto/16 :goto_1ab

    :catch_14b
    move-exception p0

    .line 487
    :goto_14c
    :try_start_14c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_1ad

    goto/16 :goto_1ab

    :catchall_151
    move-exception p0

    goto :goto_163

    :catch_153
    move-exception p0

    goto :goto_167

    :catch_155
    move-exception p0

    goto :goto_16b

    .line 481
    :cond_157
    :goto_157
    :try_start_157
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_15b
    .catchall {:try_start_157 .. :try_end_15a} :catchall_1ad

    goto :goto_15f

    :catch_15b
    move-exception p0

    .line 487
    :try_start_15c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    :goto_15f
    monitor-exit v0

    return-void

    :catchall_161
    move-exception p0

    move-object p3, p2

    :goto_163
    move-object p2, p4

    goto :goto_199

    :catch_165
    move-exception p0

    move-object p3, p2

    :goto_167
    move-object p2, p4

    goto :goto_174

    :catch_169
    move-exception p0

    move-object p3, p2

    :goto_16b
    move-object p2, p4

    goto :goto_187

    :cond_16d
    :goto_16d
    monitor-exit v0
    :try_end_16e
    .catchall {:try_start_15c .. :try_end_16e} :catchall_1ad

    return-void

    :catchall_16f
    move-exception p0

    move-object p3, p2

    goto :goto_199

    :catch_172
    move-exception p0

    move-object p3, p2

    .line 477
    :goto_174
    :try_start_174
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_177
    .catchall {:try_start_174 .. :try_end_177} :catchall_198

    if-eqz p2, :cond_17f

    .line 481
    :try_start_179
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_17f

    :catch_17d
    move-exception p0

    goto :goto_14c

    :cond_17f
    :goto_17f
    if-eqz p3, :cond_1ab

    .line 484
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_184} :catch_17d
    .catchall {:try_start_179 .. :try_end_184} :catchall_1ad

    goto :goto_1ab

    :catch_185
    move-exception p0

    move-object p3, p2

    .line 475
    :goto_187
    :try_start_187
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_198

    if-eqz p2, :cond_192

    .line 481
    :try_start_18c
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_192

    :catch_190
    move-exception p0

    goto :goto_14c

    :cond_192
    :goto_192
    if-eqz p3, :cond_1ab

    .line 484
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_197} :catch_190
    .catchall {:try_start_18c .. :try_end_197} :catchall_1ad

    goto :goto_1ab

    :catchall_198
    move-exception p0

    :goto_199
    if-eqz p2, :cond_1a1

    .line 481
    :try_start_19b
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_1a1

    :catch_19f
    move-exception p1

    goto :goto_1a7

    :cond_1a1
    :goto_1a1
    if-eqz p3, :cond_1aa

    .line 484
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a6} :catch_19f
    .catchall {:try_start_19b .. :try_end_1a6} :catchall_1ad

    goto :goto_1aa

    .line 487
    :goto_1a7
    :try_start_1a7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    :cond_1aa
    :goto_1aa
    throw p0

    .line 491
    :cond_1ab
    :goto_1ab
    monitor-exit v0

    return-void

    :catchall_1ad
    move-exception p0

    monitor-exit v0
    :try_end_1af
    .catchall {:try_start_1a7 .. :try_end_1af} :catchall_1ad

    throw p0
.end method

.method public final updateAODTspState()V
    .registers 6

    .line 790
    sget-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD:Z

    if-eqz v0, :cond_85

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_85

    .line 794
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAODTspState: mIsAODModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEdgeShowEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 795
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    if-eqz v0, :cond_38

    goto :goto_3a

    :cond_38
    move v0, v1

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v0, v2

    :goto_3b
    const-string v3, "/sys/class/sec/tsp/cmd"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Ljava/lang/String;Z)V

    .line 797
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6a

    .line 798
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    .line 799
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAODTspState: mSpenUspLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_6a
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    sget v3, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    if-lt v0, v3, :cond_84

    const-string/jumbo v0, "updateAODWacomState"

    .line 803
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 804
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    if-eqz v0, :cond_7f

    :cond_7e
    move v1, v2

    :cond_7f
    const-string v0, "/sys/class/sec/sec_epen/aod_enable"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->updateAODWacomState(Ljava/lang/String;Z)V

    :cond_84
    return-void

    :cond_85
    :goto_85
    const-string/jumbo v0, "updateAODTspState do not need to update TSP state, Not support AOD"

    .line 791
    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    return-void
.end method

.method public final updateAODTspState(Ljava/lang/String;Z)V
    .registers 11

    .line 495
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 496
    sget-boolean v0, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    if-eqz v0, :cond_e

    const-string/jumbo p1, "updateAODTspState skip -- AOD TSP"

    .line 497
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    return-void

    :cond_e
    if-nez p2, :cond_34

    .line 502
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    monitor-enter v0

    .line 503
    :try_start_13
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Ljava/util/HashMap;

    const-string v2, "com.samsung.android.app.aodservice"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_2f

    .line 504
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "com.samsung.android.app.aodservice"

    move-object v2, p0

    .line 506
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIILjava/lang/String;)V

    .line 508
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw p0

    :cond_34
    :goto_34
    const/4 v0, 0x0

    .line 513
    :try_start_35
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_85

    .line 517
    :cond_47
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_4c} :catch_b3
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4c} :catch_88
    .catchall {:try_start_35 .. :try_end_4c} :catchall_86

    .line 518
    :try_start_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aod_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5b

    const-string p2, "1"

    goto :goto_5d

    :cond_5b
    const-string p2, "0"

    :goto_5d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    .line 519
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 520
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_70} :catch_82
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_70} :catch_7f
    .catchall {:try_start_4c .. :try_end_70} :catchall_7c

    .line 534
    :try_start_70
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_75

    goto/16 :goto_dd

    :catch_75
    move-exception p1

    .line 537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c9

    :catchall_7c
    move-exception p2

    move-object v0, p1

    goto :goto_de

    :catch_7f
    move-exception p2

    move-object v0, p1

    goto :goto_89

    :catch_82
    move-exception p2

    move-object v0, p1

    goto :goto_b4

    :cond_85
    :goto_85
    return-void

    :catchall_86
    move-exception p2

    goto :goto_de

    :catch_88
    move-exception p2

    .line 525
    :goto_89
    :try_start_89
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo p1, "updateAODTspState -- IOException"

    .line 526
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 527
    iget p1, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_a6

    .line 528
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mRetryAODTspStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 529
    iget p1, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I
    :try_end_a6
    .catchall {:try_start_89 .. :try_end_a6} :catchall_86

    :cond_a6
    if-eqz v0, :cond_dd

    .line 534
    :try_start_a8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_dd

    :catch_ac
    move-exception p1

    .line 537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c9

    :catch_b3
    move-exception p2

    .line 522
    :goto_b4
    :try_start_b4
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string/jumbo p1, "updateAODTspState -- FileNotFoundException"

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_86

    if-eqz v0, :cond_dd

    .line 534
    :try_start_bf
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_dd

    :catch_c3
    move-exception p1

    .line 537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c9
    const-string/jumbo v0, "updateAODTspState -- "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    :cond_dd
    :goto_dd
    return-void

    :goto_de
    if-eqz v0, :cond_fe

    .line 534
    :try_start_e0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_e4

    goto :goto_fe

    :catch_e4
    move-exception p1

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAODTspState -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 539
    :cond_fe
    :goto_fe
    throw p2
.end method

.method public final updateAODWacomState(Ljava/lang/String;Z)V
    .registers 6

    const-string/jumbo v0, "updateAODWacomState -- "

    .line 548
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 549
    sget-boolean v1, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    if-eqz v1, :cond_11

    const-string/jumbo p1, "updateAODWacomState skip -- AOD Wacom"

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    return-void

    :cond_11
    const/4 v1, 0x0

    .line 555
    :try_start_12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_50

    .line 559
    :cond_24
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_29} :catch_6a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_29} :catch_53
    .catchall {:try_start_12 .. :try_end_29} :catchall_51

    if-eqz p2, :cond_2e

    :try_start_2b
    const-string p2, "1"

    goto :goto_30

    :cond_2e
    const-string p2, "0"

    :goto_30
    const-string v1, "UTF-8"

    .line 561
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 562
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_3c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3c} :catch_4a
    .catchall {:try_start_2b .. :try_end_3c} :catchall_47

    .line 572
    :try_start_3c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_91

    :catch_40
    move-exception p1

    .line 575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_80

    :catchall_47
    move-exception p2

    move-object v1, p1

    goto :goto_92

    :catch_4a
    move-exception p2

    move-object v1, p1

    goto :goto_54

    :catch_4d
    move-exception p2

    move-object v1, p1

    goto :goto_6b

    :cond_50
    :goto_50
    return-void

    :catchall_51
    move-exception p2

    goto :goto_92

    :catch_53
    move-exception p2

    .line 567
    :goto_54
    :try_start_54
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo p1, "updateAODWacomState -- IOException"

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_51

    if-eqz v1, :cond_91

    .line 572
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_91

    :catch_63
    move-exception p1

    .line 575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_80

    :catch_6a
    move-exception p2

    .line 564
    :goto_6b
    :try_start_6b
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string/jumbo p1, "updateAODWacomState -- FileNotFoundException"

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_51

    if-eqz v1, :cond_91

    .line 572
    :try_start_76
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_91

    :catch_7a
    move-exception p1

    .line 575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    :cond_91
    :goto_91
    return-void

    :goto_92
    if-eqz v1, :cond_af

    .line 572
    :try_start_94
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_af

    :catch_98
    move-exception p1

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 577
    :cond_af
    :goto_af
    throw p2
.end method

.method public updateBatteryStats()V
    .registers 3

    .line 661
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result v0

    .line 662
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    if-eq v1, v0, :cond_c

    .line 663
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    :cond_c
    return-void
.end method

.method public final updateDefaultDisplayState(I)V
    .registers 8

    .line 323
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 324
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 326
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_f

    goto :goto_82

    .line 329
    :cond_f
    :try_start_f
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestReCalToTSP IsSingleTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " / previousDisplayState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->displayStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    if-eqz v4, :cond_43

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3e

    const/4 v4, 0x4

    if-ne v0, v4, :cond_41

    .line 332
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->requestReCalToTSP()V

    .line 334
    :cond_41
    iput-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    :cond_43
    if-eq v0, p1, :cond_82

    .line 336
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 337
    invoke-virtual {p1}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result p1

    if-eqz p1, :cond_82

    .line 338
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {p1}, Lcom/android/server/aod/AODSettingHelper;->clearAODShowState()V

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDefaultDisplayState clear aod_show_state, previousDisplayState="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerService;->displayStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 343
    :cond_6c
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 344
    invoke-virtual {p0, v0, v3}, Lcom/android/server/aod/AODManagerService;->removeDozeLockLocked(Lcom/android/server/aod/AODManagerService$AODDozeLock;Z)V

    goto :goto_72

    .line 348
    :cond_82
    :goto_82
    monitor-exit v1

    return-void

    :catchall_84
    move-exception p0

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_f .. :try_end_86} :catchall_84

    throw p0
.end method

.method public final updateDozeAlwaysOn()V
    .registers 5

    .line 679
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isDozeAlwaysOn()Z

    move-result v1
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_9} :catch_3c
    .catchall {:try_start_3 .. :try_end_9} :catchall_3a

    .line 688
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDozeAlwaysOn: dozeAlwaysOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_2b

    .line 691
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/aod/AODSettingHelper;->setAODEnabled(Z)V

    .line 693
    :cond_2b
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODChargingMode()Z

    move-result v2

    if-eq v1, v2, :cond_38

    .line 694
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {p0, v1}, Lcom/android/server/aod/AODSettingHelper;->setAODChargingMode(Z)V

    .line 696
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    goto :goto_58

    :catch_3c
    move-exception v1

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDozeAlwaysOn : doze_always_on doesn\'t exist. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 685
    monitor-exit v0

    return-void

    .line 696
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_3a

    throw p0
.end method

.method public final updateSettings()V
    .registers 15

    .line 716
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 717
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateSettings do not need to update in factory binary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 720
    :cond_f
    iget-object v7, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 721
    :try_start_12
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v1

    .line 722
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODTapToShow()Z

    move-result v2

    .line 723
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v3}, Lcom/android/server/aod/AODSettingHelper;->isFingerScreenLock()Z

    move-result v3

    .line 724
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v4}, Lcom/android/server/aod/AODSettingHelper;->isFingerScreenOffIconAOD()Z

    move-result v4

    .line 725
    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v5}, Lcom/android/server/aod/AODSettingHelper;->isEdgeShowWhenScreenOff()Z

    move-result v5

    .line 726
    iget-object v6, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v6}, Lcom/android/server/aod/AODSettingHelper;->isMPSMEnabled()Z

    move-result v8

    .line 727
    iget-object v6, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v6}, Lcom/android/server/aod/AODSettingHelper;->isUPSMEnabled()Z

    move-result v9

    .line 729
    iget-boolean v6, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v1, :cond_55

    iget-boolean v12, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    if-ne v12, v2, :cond_55

    iget-boolean v12, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    if-ne v12, v3, :cond_55

    iget-boolean v12, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    if-ne v12, v4, :cond_55

    iget-boolean v12, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    if-eq v12, v5, :cond_53

    goto :goto_55

    :cond_53
    move v12, v10

    goto :goto_56

    :cond_55
    :goto_55
    move v12, v11

    :goto_56
    if-nez v12, :cond_61

    .line 734
    iget-boolean v13, p0, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    if-ne v13, v8, :cond_60

    iget-boolean v13, p0, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    if-eq v13, v9, :cond_61

    :cond_60
    move v10, v11

    :cond_61
    if-eqz v12, :cond_132

    if-ne v6, v1, :cond_69

    .line 738
    iget-boolean v6, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    if-eq v6, v5, :cond_73

    .line 740
    :cond_69
    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 741
    iput-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsEdgeShowWhenScreenOff:Z

    .line 742
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->updateAODTspState()V

    .line 743
    invoke-virtual {p0, v1}, Lcom/android/server/aod/AODManagerService;->updateAODChargingMode(Z)V

    .line 745
    :cond_73
    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 746
    iput-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 747
    iput-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 748
    iput-boolean v8, p0, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 749
    iput-boolean v9, p0, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 751
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-eqz v1, :cond_83

    if-nez v2, :cond_87

    :cond_83
    if-eqz v3, :cond_dd

    if-eqz v4, :cond_dd

    .line 753
    :cond_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: singletap_enable,1 mIsAODModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAODTapToShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenOffIconAOD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsUPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v3, "singletap_enable,1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 759
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_132

    .line 761
    :cond_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: singletap_enable,0 mIsAODModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAODTapToShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenOffIconAOD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsUPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v3, "singletap_enable,0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 767
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_132
    :goto_132
    if-eqz v10, :cond_181

    .line 772
    iput-boolean v8, p0, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 773
    iput-boolean v9, p0, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: changePowerSavingMode mIsAODModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAODTapToShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenOffIconAOD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsUPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 782
    :cond_181
    monitor-exit v7

    return-void

    :catchall_183
    move-exception v0

    monitor-exit v7
    :try_end_185
    .catchall {:try_start_12 .. :try_end_185} :catchall_183

    throw v0
.end method

.method public final wakeUpInternal()V
    .registers 4

    .line 809
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 811
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 812
    :try_start_6
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_11

    .line 813
    monitor-exit v0

    return-void

    .line 815
    :cond_11
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v1, :cond_17

    .line 817
    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onScreenTurningOn()V

    goto :goto_17

    .line 820
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo p3, "writeAODCommandInternal finally Exception : "

    .line 352
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 p0, 0x0

    .line 355
    :try_start_7
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_3d

    .line 360
    :cond_19
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_1e} :catch_97
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1e} :catch_6a
    .catchall {:try_start_7 .. :try_end_1e} :catchall_65

    :try_start_1e
    const-string p0, "UTF-8"

    .line 361
    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 362
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_2a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_39
    .catchall {:try_start_1e .. :try_end_2a} :catchall_d1

    .line 372
    :try_start_2a
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2f

    goto/16 :goto_d0

    :catch_2f
    move-exception p0

    .line 375
    sget-object p1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_c3

    :catch_39
    move-exception p0

    goto :goto_6e

    :catch_3b
    move-exception p0

    goto :goto_9b

    .line 357
    :cond_3d
    :goto_3d
    :try_start_3d
    sget-object p1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "writeAODCommandInternal file.exists() : "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, " , file.canWrite() : "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_64} :catch_97
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_64} :catch_6a
    .catchall {:try_start_3d .. :try_end_64} :catchall_65

    return-void

    :catchall_65
    move-exception p1

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_d2

    :catch_6a
    move-exception p1

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    .line 367
    :goto_6e
    :try_start_6e
    sget-object p2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "writeAODCommandInternal IOException : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_6e .. :try_end_88} :catchall_d1

    if-eqz p1, :cond_d0

    .line 372
    :try_start_8a
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_d0

    :catch_8e
    move-exception p0

    .line 375
    sget-object p1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c3

    :catch_97
    move-exception p1

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    .line 364
    :goto_9b
    :try_start_9b
    sget-object p2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "writeAODCommandInternal FileNotFoundException : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_9b .. :try_end_b5} :catchall_d1

    if-eqz p1, :cond_d0

    .line 372
    :try_start_b7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_d0

    :catch_bb
    move-exception p0

    .line 375
    sget-object p1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    :goto_d0
    return-void

    :catchall_d1
    move-exception p0

    :goto_d2
    if-eqz p1, :cond_ed

    .line 372
    :try_start_d4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_ed

    :catch_d8
    move-exception p1

    .line 375
    sget-object p2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_ed
    :goto_ed
    throw p0
.end method
